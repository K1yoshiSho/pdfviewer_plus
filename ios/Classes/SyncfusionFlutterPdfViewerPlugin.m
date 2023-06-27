#import "SyncfusionFlutterPdfViewerPlugin.h"
#if __has_include(<pdfviewer_plus/pdfviewer_plus-Swift.h>)
#import <pdfviewer_plus/pdfviewer_plus-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "pdfviewer_plus-Swift.h"
#endif

@implementation SyncfusionFlutterPdfViewerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSyncfusionFlutterPdfViewerPlugin registerWithRegistrar:registrar];
}
@end
