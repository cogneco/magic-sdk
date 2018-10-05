# ooc-kean changes by release

## Release 2.27.0

- **No changes**

## Release 2.26.0

- **Removed unsafe vector sharing in VectorList**

## Release 2.25.0

- **Added generic graphic buffer identifier**

## Release 2.24.0

- **Added warning when EGL recycle bin becomes full**

## Release 2.23.0

- **Fixed bug in FloatBox2D::createFromBottom**

## Release 2.22.0

- **DateTime now() works with millisecond precision**
- **Added lazy creation of framebufferobject**

## Release 2.21.0

- **Now possible to set both min/mag filter in a single call**
- **Now possible to update existing mesh**
- **Added methods to create a FloatBox2D from different corners/edges**
- **Added jenkins file for automatic testing**

## Release 2.20.0

- **Added FloatVector2DCircularBuffer**

## Release 2.19.0

- **Added create() function to create Image of the same size**
- **Added exists() and all() methods for List**
- **Bugfix to floating point equals() function**
- **Bugfixes in geometry classes to reduce floating point roundoff**

## Release 2.18.0

- **Minor redesign and error assertions added in Image classes**
- **Added []-operators for FloatVector3D**

## Release 2.17.0

- **Added transform of FloatVector3D**
- **Improved CPU drawing for GraphicBufferYuv420Semiplanar**

## Release 2.16.0

- **Removed flags to EGL for compatibility with new computers**
- **Added crop box argument for image distance function**

## Release 2.15.0

- **License copyright year bumped to 2017**

## Release 2.14.0

- **Fixed bugs in ConvexHull2D and Range**
- **Removed Shell2D classes**
- **Now supports drawing from EGLYuv to OpenGLMonochrome and OpenGLUv**
- **Fixed line shader for native YUV**

## Release 2.13.0

- **The gpuOff version flag was removed to reduce code bloat**
- **Added timedWait for WaitCondition**
- **Fixed race conditions in Promise and ThreadPool**

## Release 2.12.0

- **Simple optimizations to FloatConvexHull2D**
- **Shader leak for nativeYuv fixed**
- **Input to Quaternion SLERP always normalized**

## Release 2.11.0

- **Changes to support new rock version**
- **VectorList now resizes exponentially instead of linearly**
- **Bugfixes and better error checking in draw and OpenGL namespaces**
- **Made it possible to draw text on the CPU**

## Release 2.10.0

- **Various minor bugfixes to draw and system namespaces**
- **Profiler uses TimeSpan**
- **Using Debug error() instead of raise() in most places**

## Release  2.9.0

- **Added support for utilizing YUV extension in OpenGL**
- **Fixed memory leaks in debugGL printouts**
- **Added some new promises**

## Release  2.8.0

- **Standardized the existence of methods and properties in Vector and Point covers**
- **Normalizing the zero vector returns a zero vector instead of NaN values**
- **Bilinear interpolation added to ColorUv and ColorMonochrome**

## Release  2.7.0

- **Added function for checking if value is inside a certain range in TimeSpan.**

## Release  2.6.0

- **Text completely removed in favor of String**
- **Fixed various thread-related bugs and race conditions**
- **Removed Synchronized class**
- **Added support for C11 atomics**
- **The -Ddeterministic flag automatically sets the random generator seeds to fixed values**

## Release-2.5.0

- **Bug fixes in ReferenceCounter**
- **toString() now takes number of decimals as argument**

## Release-2.4.0

- **Fixed bug with multiple freeing of string literals**

- **Implemented SortedVectorList**

- **Major cleanup of draw namespace**

- **Added function for removing range of values in a VectorList**

- **Refactored Promise/Future**

- **Added preallocate and preregister functions to GpuContext**

- **Now using correct usage flags when uploading and downloading from GraphicBuffer**

## Release-2.3.0

- **Large clean up in draw module**
Major clean up of how the draw API works internally. Coordinate systems are replaced with flipping in DrawState. Added support for alpha blending.

- **HashMap and LinkedList are working**
LinkedList does not contain memory leaks anymore and a new (and working) implementation of HashMap has been written.

- **No more memory leaks in tests**
All the earlier memory leaks in all the tests have now been fixed and at the moment we do not have any memory leaks in the tests.

- **PromiseCollector and SynchronizedResource deleted**
We removed PromiseCollector and SynchronizedResource because they did no longer fill any purpose.
