# TODO(@connorbaker): Copied from 11.0 -- should be regenerated.
{ lib
, # macOS things
  frameworks
, libnetwork
, libs
, MacOSX-SDK
, objc4
,
}: {
  # Used to add dependencies which are not picked up by gen-frameworks.py.
  # Some of these are simply private frameworks the generator does not see.
  # Trial and error, building things and adding dependencies when they fail.
  addToFrameworks =
    let
      inherit (libs) libDER;
      libobjc = objc4;
    in
    with frameworks; {
      # Below this comment are entries migrated from before the generator was
      # added. If, for a given framework, you are able to reverify the extra
      # deps are really necessary on top of the generator deps, move it above
      # this comment (and maybe document your findings).
      AVFoundation = { inherit ApplicationServices AVFCapture AVFCore; };
      Accelerate = { inherit CoreWLAN IOBluetooth; };
      AddressBook = { inherit AddressBookCore ContactsPersistence libobjc; };
      AppKit = { inherit AudioToolbox AudioUnit UIFoundation; };
      AudioToolbox = { inherit AudioToolboxCore; };
      AudioUnit = { inherit Carbon CoreAudio; };
      Carbon = { inherit IOKit QuartzCore libobjc; };
      CoreAudio = { inherit IOKit; };
      CoreFoundation = { inherit libobjc; };
      CoreGraphics = { inherit SystemConfiguration; };
      CoreMIDIServer = { inherit CoreMIDI; };
      CoreMedia = { inherit ApplicationServices AudioToolbox AudioUnit; };
      CoreServices = { inherit CoreAudio NetFS ServiceManagement; };
      CoreWLAN = { inherit SecurityFoundation; };
      DiscRecording = { inherit IOKit libobjc; };
      Foundation = { inherit SystemConfiguration libobjc; };
      GameKit = { inherit GameCenterFoundation GameCenterUI GameCenterUICore ReplayKit; };
      ICADevices = { inherit Carbon libobjc; };
      IOBluetooth = { inherit CoreBluetooth; };
      JavaScriptCore = { inherit libobjc; };
      Kernel = { inherit IOKit; };
      LinkPresentation = { inherit URLFormatting; };
      MediaToolbox = { inherit AudioUnit; };
      MetricKit = { inherit SignpostMetrics; };
      Network = { inherit libnetwork; };
      PCSC = { inherit CoreData; };
      PassKit = { inherit PassKitCore; };
      QTKit = { inherit CoreMedia CoreMediaIO MediaToolbox VideoToolbox; };
      Quartz = { inherit QTKit; };
      QuartzCore = { inherit ApplicationServices CoreImage CoreVideo Metal OpenCL libobjc; };
      Security = { inherit IOKit libDER; };
      TWAIN = { inherit Carbon; };
      VideoDecodeAcceleration = { inherit CoreVideo; };
      WebKit = { inherit ApplicationServices Carbon libobjc; };
    };

  # Used to remove dependencies which are picked up by gen-frameworks.py -- used mainly to break
  # cyclic dependencies.
  removeFromFrameworks = { };

  # Overrides for framework derivations.
  overrideFrameworks = super: {
    CoreFoundation = lib.overrideDerivation super.CoreFoundation (drv: {
      setupHook = ../scripts/forceLinkCoreFoundationFramework.sh;
    });

    # Seems to be appropriate given https://developer.apple.com/forums/thread/666686
    JavaVM = super.JavaNativeFoundation;

    CoreVideo = lib.overrideDerivation super.CoreVideo (drv: {
      installPhase =
        drv.installPhase
        + ''
          # When used as a module, complains about a missing import for
          # Darwin.C.stdint. Apparently fixed in later SDKs.
          awk -i inplace '/CFBase.h/ { print "#include <stdint.h>" } { print }' \
            $out/Library/Frameworks/CoreVideo.framework/Headers/CVBase.h
        '';
    });

    System = lib.overrideDerivation super.System (drv: {
      installPhase =
        drv.installPhase
        + ''
          # Contrarily to the other frameworks, System framework's TBD file
          # is a symlink pointing to ${MacOSX-SDK}/usr/lib/libSystem.B.tbd.
          # This produces an error when installing the framework as:
          #   1. The original file is not copied into the output directory
          #   2. Even if it was copied, the relative path wouldn't match
          # Thus, it is easier to replace the file than to fix the symlink.
          cp --remove-destination ${MacOSX-SDK}/usr/lib/libSystem.B.tbd \
            $out/Library/Frameworks/System.framework/Versions/B/System.tbd
        '';
    });
  };
}
