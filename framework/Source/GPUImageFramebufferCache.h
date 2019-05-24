#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>
#import "GPUImageFramebuffer.h"

#import <MoltenGL/MoltenGL.h>
#import <MoltenGL/EAGLDrawable.h>
#import <MoltenGL/gl.h>
#import <MoltenGL/glext.h>
#import <MoltenGL/EAGL.h>
#import <MoltenGL/GLKView.h>

@interface GPUImageFramebufferCache : NSObject

// Framebuffer management
- (GPUImageFramebuffer *)fetchFramebufferForSize:(CGSize)framebufferSize textureOptions:(GPUTextureOptions)textureOptions onlyTexture:(BOOL)onlyTexture;
- (GPUImageFramebuffer *)fetchFramebufferForSize:(CGSize)framebufferSize onlyTexture:(BOOL)onlyTexture;
- (void)returnFramebufferToCache:(GPUImageFramebuffer *)framebuffer;
- (void)purgeAllUnassignedFramebuffers;
- (void)addFramebufferToActiveImageCaptureList:(GPUImageFramebuffer *)framebuffer;
- (void)removeFramebufferFromActiveImageCaptureList:(GPUImageFramebuffer *)framebuffer;

@end
