# This file is generated by gen-frameworks.nix.
# Do not edit, put overrides in apple_sdk.nix instead.
{ libs, frameworks }: with libs; with frameworks;
{
  AGL = { inherit Carbon OpenGL; };
  AVFAudio = { inherit AudioToolbox CoreAudioTypes CoreMIDI CoreMedia Foundation; };
  AVFoundation = { inherit AVFAudio CoreAudio CoreFoundation CoreGraphics CoreMIDI CoreMedia CoreVideo Foundation IOKit ImageIO MediaToolbox Metal QuartzCore UniformTypeIdentifiers simd; };
  AVKit = { inherit AVFoundation AppKit Cocoa Foundation; };
  AVRouting = { inherit Foundation Network; };
  Accelerate = { inherit CoreFoundation CoreGraphics CoreVideo Foundation IOKit Metal simd; };
  Accessibility = { inherit CoreFoundation CoreGraphics Foundation IOKit; };
  Accounts = { inherit Foundation; };
  AdServices = { inherit Foundation; };
  AdSupport = { inherit Foundation; };
  AddressBook = { inherit Carbon Cocoa CoreFoundation Foundation; };
  AppIntents = { inherit CoreFoundation CoreGraphics CoreLocation ExtensionFoundation Foundation IOKit UniformTypeIdentifiers; };
  AppKit = { inherit Accessibility ApplicationServices CoreData CoreFoundation CoreGraphics CoreImage Foundation IOKit Metal OpenGL QuartzCore; };
  AppTrackingTransparency = { inherit Foundation; };
  AppleScriptKit = { };
  AppleScriptObjC = { inherit Foundation; };
  ApplicationServices = { inherit ColorSync CoreFoundation CoreGraphics CoreServices CoreText Foundation ImageIO; };
  AudioToolbox = { inherit Carbon CoreAudio CoreAudioTypes CoreFoundation CoreMIDI Foundation; };
  AudioUnit = { inherit AudioToolbox; };
  AudioVideoBridging = { inherit Foundation IOKit; };
  AuthenticationServices = { inherit AppKit CoreData CoreFoundation CoreGraphics CoreImage Foundation IOKit Metal QuartzCore Security; };
  AutomaticAssessmentConfiguration = { inherit Foundation; };
  Automator = { inherit AppKit Cocoa Foundation OSAKit; };
  BackgroundAssets = { inherit CoreFoundation ExtensionFoundation Foundation IOKit; };
  BackgroundTasks = { inherit Foundation; };
  BusinessChat = { inherit Cocoa Foundation; };
  CFNetwork = { inherit CoreFoundation; };
  CalendarStore = { };
  CallKit = { inherit CoreFoundation Foundation IOKit; };
  CarKey = { inherit Foundation; };
  Carbon = { inherit ApplicationServices CoreServices Foundation Security; };
  Charts = { inherit Foundation SwiftUI; };
  ClassKit = { inherit CoreGraphics Foundation; };
  CloudKit = { inherit AVFoundation CoreFoundation CoreLocation CoreTransferable Foundation IOKit UniformTypeIdentifiers; };
  Cocoa = { inherit AppKit CoreData Foundation; };
  Collaboration = { inherit AppKit CoreServices Foundation; };
  ColorSync = { inherit CoreFoundation; };
  Combine = { };
  Contacts = { inherit CoreFoundation Foundation IOKit; };
  ContactsUI = { inherit AppKit; };
  CoreAudio = { inherit CoreAudioTypes CoreFoundation; };
  CoreAudioKit = { inherit AVFAudio AVFoundation AppKit AudioUnit Cocoa CoreAudio CoreData CoreFoundation CoreGraphics CoreImage CoreMIDI CoreMedia Foundation IOKit Metal QuartzCore; };
  CoreAudioTypes = { inherit CoreFoundation; };
  CoreBluetooth = { inherit Foundation; };
  CoreData = { inherit Combine CoreFoundation Foundation IOKit; };
  CoreDisplay = { };
  CoreFoundation = { };
  CoreGraphics = { inherit CoreFoundation IOKit; };
  CoreHaptics = { inherit Foundation; };
  CoreImage = { inherit CoreFoundation CoreGraphics CoreVideo Foundation IOKit IOSurface ImageIO Metal OpenGL; };
  CoreLocation = { inherit CoreFoundation Foundation IOKit; };
  CoreMIDI = { inherit CoreFoundation Foundation IOKit; };
  CoreMIDIServer = { };
  CoreML = { inherit CoreFoundation CoreGraphics CoreVideo Foundation IOKit ImageIO Metal; };
  CoreMedia = { inherit CoreAudio CoreAudioTypes CoreFoundation CoreGraphics CoreVideo Foundation IOKit Metal; };
  CoreMediaIO = { inherit CoreAudio CoreFoundation CoreGraphics CoreMedia Foundation IOKit Metal; };
  CoreMotion = { inherit Foundation; };
  CoreServices = { inherit CFNetwork CoreFoundation DiskArbitration Security; };
  CoreSpotlight = { inherit CoreFoundation Foundation IOKit UniformTypeIdentifiers; };
  CoreTelephony = { inherit CoreFoundation Foundation; };
  CoreText = { inherit CoreFoundation CoreGraphics; };
  CoreTransferable = { inherit Combine CoreFoundation Foundation IOKit UniformTypeIdentifiers; };
  CoreVideo = { inherit ApplicationServices CoreFoundation CoreGraphics IOSurface Metal OpenGL; };
  CoreWLAN = { inherit Foundation IOKit; };
  CreateML = { inherit AVFoundation Combine CoreAudio CoreFoundation CoreGraphics CoreImage CoreML CoreMedia CoreVideo Foundation IOKit ImageIO Metal MetalPerformanceShaders NaturalLanguage TabularData UniformTypeIdentifiers VideoToolbox Vision simd; };
  CreateMLComponents = { inherit AVFAudio AVFoundation Combine CoreAudio CoreFoundation CoreGraphics CoreImage CoreMIDI CoreML CoreMedia CoreVideo Foundation IOKit Metal SoundAnalysis TabularData UniformTypeIdentifiers Vision; };
  CryptoKit = { inherit CoreFoundation Foundation IOKit LocalAuthentication Security; };
  CryptoTokenKit = { inherit CoreFoundation Foundation IOKit Security; };
  DVDPlayback = { inherit ApplicationServices CoreFoundation Security; };
  DataDetection = { inherit CoreFoundation Foundation IOKit; };
  DeveloperToolsSupport = { };
  DeviceActivity = { inherit Foundation ManagedSettings; };
  DeviceCheck = { inherit Foundation; };
  DirectoryService = { inherit CoreFoundation; };
  DiscRecording = { inherit CoreServices Foundation; };
  DiscRecordingUI = { inherit Carbon Cocoa DiscRecording; };
  DiskArbitration = { inherit CoreFoundation IOKit; };
  DriverKit = { };
  EventKit = { inherit CoreGraphics CoreLocation Foundation; };
  ExceptionHandling = { inherit Foundation; };
  ExecutionPolicy = { inherit Foundation; };
  ExposureNotification = { inherit Foundation; };
  ExtensionFoundation = { inherit Foundation; };
  ExtensionKit = { inherit AppKit CoreData CoreFoundation CoreGraphics CoreImage ExtensionFoundation Foundation IOKit Metal OSLog QuartzCore SwiftUI; };
  ExternalAccessory = { inherit Foundation; };
  FamilyControls = { inherit Combine CoreFoundation CoreServices Foundation IOKit; };
  FileProvider = { inherit CoreFoundation CoreGraphics Foundation IOKit; };
  FileProviderUI = { inherit AppKit FileProvider Foundation; };
  FinderSync = { inherit AppKit Foundation; };
  ForceFeedback = { inherit CoreFoundation IOKit; };
  Foundation = { inherit Combine CoreFoundation CoreServices IOKit Security; };
  GLKit = { inherit AppKit CoreData CoreFoundation CoreGraphics CoreImage Foundation IOKit Metal ModelIO OpenGL QuartzCore simd; };
  GLUT = { inherit OpenGL; };
  GSS = { inherit CoreFoundation; };
  GameController = { inherit AppKit CoreData CoreFoundation CoreGraphics CoreImage Foundation IOKit Metal QuartzCore; };
  GameKit = { inherit AppKit Cocoa Contacts CoreGraphics Foundation GameController GameplayKit Metal MetalKit ModelIO SceneKit SpriteKit simd; };
  GameplayKit = { inherit AppKit CoreData CoreFoundation CoreGraphics CoreImage Foundation GLKit IOKit Metal ModelIO QuartzCore SceneKit SpriteKit simd; };
  GroupActivities = { inherit AVFoundation CloudKit Combine CoreGraphics CryptoKit Foundation Network UniformTypeIdentifiers; };
  HealthKit = { inherit CoreFoundation CoreLocation Foundation IOKit UniformTypeIdentifiers; };
  Hypervisor = { };
  ICADevices = { inherit CoreFoundation CoreGraphics CoreServices IOBluetooth; };
  IMServicePlugIn = { inherit Foundation; };
  IOBluetooth = { inherit CoreAudio CoreFoundation CoreServices Foundation IOKit; };
  IOBluetoothUI = { inherit Cocoa IOBluetooth; };
  IOKit = { inherit CoreFoundation; };
  IOSurface = { inherit CoreFoundation Foundation IOKit; };
  IOUSBHost = { inherit Foundation IOKit; };
  IdentityLookup = { inherit Foundation; };
  ImageCaptureCore = { inherit Cocoa CoreGraphics Foundation; };
  ImageIO = { inherit CoreFoundation CoreGraphics; };
  InputMethodKit = { inherit Carbon Cocoa Foundation; };
  InstallerPlugins = { };
  InstantMessage = { };
  Intents = { inherit CoreFoundation CoreGraphics CoreLocation Foundation IOKit UserNotifications; };
  IntentsUI = { inherit AppKit Intents; };
  JavaNativeFoundation = { inherit Foundation; };
  JavaRuntimeSupport = { inherit ApplicationServices Cocoa Foundation QuartzCore; };
  JavaScriptCore = { inherit CoreFoundation CoreGraphics Foundation; };
  Kerberos = { };
  Kernel = { };
  KernelManagement = { inherit Foundation; };
  LDAP = { };
  LatentSemanticMapping = { inherit Carbon CoreFoundation; };
  LinkPresentation = { inherit AppKit Foundation; };
  LocalAuthentication = { inherit Foundation Security; };
  LocalAuthenticationEmbeddedUI = { inherit AppKit Foundation LocalAuthentication; };
  MLCompute = { inherit CoreFoundation Foundation IOKit Metal; };
  MailKit = { inherit AppKit Foundation; };
  ManagedSettings = { inherit Combine Foundation; };
  MapKit = { inherit AppKit CoreData CoreFoundation CoreGraphics CoreImage CoreLocation Foundation IOKit Metal QuartzCore; };
  Matter = { inherit Foundation Security; };
  MediaAccessibility = { inherit CoreFoundation CoreGraphics CoreText; };
  MediaLibrary = { inherit Foundation; };
  MediaPlayer = { inherit AVFoundation CoreAudio CoreFoundation CoreGraphics CoreMIDI CoreMedia Foundation IOKit Metal QuartzCore UniformTypeIdentifiers simd; };
  MediaToolbox = { inherit AudioToolbox CoreFoundation CoreMedia; };
  Message = { };
  Metal = { inherit CoreFoundation Foundation IOKit IOSurface; };
  MetalFX = { inherit Metal; };
  MetalKit = { inherit AppKit CoreData CoreFoundation CoreGraphics CoreImage Foundation IOKit Metal ModelIO QuartzCore simd; };
  MetalPerformanceShaders = { inherit CoreGraphics Foundation Metal simd; };
  MetalPerformanceShadersGraph = { inherit Foundation MetalPerformanceShaders; };
  MetricKit = { inherit CoreFoundation Foundation IOKit; };
  ModelIO = { inherit CoreFoundation CoreGraphics Foundation IOKit simd; };
  MultipeerConnectivity = { inherit Cocoa Foundation; };
  MusicKit = { inherit Combine CoreGraphics Foundation; };
  NaturalLanguage = { inherit CoreFoundation Foundation IOKit; };
  NearbyInteraction = { inherit CoreFoundation Foundation IOKit simd; };
  NetFS = { inherit CoreFoundation; };
  Network = { inherit CoreFoundation Foundation Security; };
  NetworkExtension = { inherit Foundation Network Security; };
  NotificationCenter = { inherit AppKit Foundation; };
  OSAKit = { inherit Carbon Cocoa; };
  OSLog = { inherit CoreFoundation Foundation IOKit; };
  OpenAL = { };
  OpenCL = { inherit OpenGL; };
  OpenDirectory = { inherit CoreFoundation Foundation; };
  OpenGL = { };
  PCSC = { };
  PDFKit = { inherit AppKit Cocoa; };
  PHASE = { inherit AVFAudio AVFoundation CoreAudioTypes Foundation ModelIO simd; };
  ParavirtualizedGraphics = { inherit AppKit CoreVideo Foundation IOSurface Metal; };
  PassKit = { inherit AppKit Contacts CoreData CoreFoundation CoreGraphics CoreImage Foundation IOKit Metal QuartzCore; };
  PencilKit = { inherit AppKit Cocoa CoreData CoreFoundation CoreGraphics CoreImage Foundation IOKit Metal QuartzCore; };
  Photos = { inherit AVFoundation CoreAudio CoreFoundation CoreGraphics CoreImage CoreLocation CoreMIDI CoreMedia Foundation IOKit ImageIO Metal QuartzCore UniformTypeIdentifiers simd; };
  PhotosUI = { inherit AVFoundation AppKit CoreAudio CoreData CoreFoundation CoreGraphics CoreImage CoreLocation CoreMIDI CoreMedia Foundation IOKit MapKit Metal Photos QuartzCore UniformTypeIdentifiers simd; };
  PreferencePanes = { inherit Cocoa; };
  PushKit = { inherit Foundation; };
  PushToTalk = { };
  QTKit = { };
  Quartz = { inherit AppKit ApplicationServices Cocoa CoreImage Foundation ImageCaptureCore OpenGL PDFKit QuartzCore QuickLookUI; };
  QuartzCore = { inherit CoreFoundation CoreGraphics CoreVideo Foundation IOKit Metal OpenGL; };
  QuickLook = { inherit ApplicationServices CoreFoundation; };
  QuickLookThumbnailing = { inherit CoreGraphics Foundation UniformTypeIdentifiers; };
  QuickLookUI = { inherit AppKit CoreData CoreFoundation CoreGraphics CoreImage Foundation IOKit Metal PDFKit QuartzCore QuickLook UniformTypeIdentifiers; };
  RealityFoundation = { inherit AVFAudio AVFoundation Accessibility AppKit AudioToolbox Combine CoreAudio CoreFoundation CoreGraphics CoreMIDI CoreMedia CoreMotion CoreText CoreVideo Foundation IOKit Metal QuartzCore simd; };
  RealityKit = { inherit AppKit Combine CoreData CoreFoundation CoreGraphics CoreImage Foundation IOKit Metal MultipeerConnectivity QuartzCore RealityFoundation simd; };
  ReplayKit = { inherit AVFoundation AppKit Foundation; };
  Ruby = { };
  SafariServices = { inherit AppKit CoreData CoreFoundation CoreGraphics CoreImage Foundation IOKit Metal QuartzCore; };
  SafetyKit = { inherit CoreLocation Foundation; };
  SceneKit = { inherit AppKit CoreData CoreFoundation CoreGraphics CoreImage Foundation GLKit IOKit Metal ModelIO QuartzCore simd; };
  ScreenCaptureKit = { inherit AppKit CoreGraphics CoreMedia Foundation; };
  ScreenSaver = { inherit AppKit Foundation; };
  ScreenTime = { inherit AppKit Foundation; };
  ScriptingBridge = { inherit ApplicationServices CoreServices Foundation; };
  Security = { inherit CoreFoundation; };
  SecurityFoundation = { inherit Foundation Security; };
  SecurityInterface = { inherit AppKit Cocoa Security SecurityFoundation; };
  SensorKit = { inherit CoreFoundation CoreLocation Foundation; };
  ServiceManagement = { inherit CoreFoundation Foundation Security; };
  SharedWithYou = { inherit AppKit Combine CoreData CoreFoundation CoreGraphics CoreImage CoreTransferable Foundation IOKit Metal OSLog QuartzCore SharedWithYouCore SwiftUI UniformTypeIdentifiers; };
  SharedWithYouCore = { inherit CoreFoundation Foundation IOKit; };
  ShazamKit = { inherit AVFAudio AVFoundation CoreAudio CoreFoundation CoreGraphics CoreMIDI CoreMedia Foundation IOKit Metal MusicKit QuartzCore UniformTypeIdentifiers simd; };
  Social = { inherit AppKit Foundation; };
  SoundAnalysis = { inherit AVFoundation CoreAudio CoreFoundation CoreGraphics CoreMIDI CoreML CoreMedia Foundation IOKit Metal QuartzCore UniformTypeIdentifiers simd; };
  Speech = { inherit AVFoundation CoreAudio CoreFoundation CoreGraphics CoreMIDI CoreMedia Foundation IOKit Metal QuartzCore UniformTypeIdentifiers simd; };
  SpriteKit = { inherit AppKit Cocoa CoreData CoreFoundation CoreGraphics CoreImage Foundation GLKit IOKit Metal ModelIO QuartzCore simd; };
  StoreKit = { inherit AppKit CoreData CoreFoundation CoreGraphics CoreImage CryptoKit Foundation IOKit Metal QuartzCore Security; };
  SwiftUI = { inherit Accessibility AppKit Combine CoreData CoreFoundation CoreGraphics CoreImage CoreTransferable DeveloperToolsSupport Foundation IOKit Metal OSLog QuartzCore UniformTypeIdentifiers; };
  SyncServices = { };
  System = { };
  SystemConfiguration = { inherit CoreFoundation Security; };
  SystemExtensions = { inherit Foundation; };
  TWAIN = { };
  TabularData = { inherit Combine Foundation; };
  Tcl = { };
  ThreadNetwork = { inherit Foundation; };
  Tk = { };
  UniformTypeIdentifiers = { inherit CoreFoundation Foundation IOKit; };
  UserNotifications = { inherit Foundation; };
  UserNotificationsUI = { inherit AppKit; };
  VideoDecodeAcceleration = { };
  VideoSubscriberAccount = { inherit Foundation; };
  VideoToolbox = { inherit CoreFoundation CoreGraphics CoreMedia CoreVideo; };
  Virtualization = { inherit AppKit Cocoa CoreData CoreFoundation CoreGraphics CoreImage Foundation IOKit Metal QuartzCore; };
  Vision = { inherit CoreAudio CoreFoundation CoreGraphics CoreML CoreMedia CoreVideo Foundation IOKit ImageIO Metal simd; };
  VisionKit = { inherit AppKit Foundation; };
  WeatherKit = { inherit CoreLocation Foundation; };
  WebKit = { inherit AppKit CoreData CoreFoundation CoreGraphics CoreImage Foundation IOKit JavaScriptCore Metal QuartzCore; };
  WidgetKit = { inherit Combine CoreFoundation Foundation IOKit Intents SwiftUI; };
  iTunesLibrary = { inherit Foundation; };
  vecLib = { };
  vmnet = { };
}
