// Generated with c2chapel version 0.1.0

module CRayLib 
{
// Header given to c2chapel:
   require "raylib.h";

// Note: Generated with fake std headers

use CTypes;
// #define'd integer literals:
// Note: some of these may have been defined with an ifdef
extern const RAYLIB_VERSION_MAJOR : int;
extern const RAYLIB_VERSION_MINOR : int;
extern const RAYLIB_VERSION_PATCH : int;

// End of #define'd integer literals

extern record Color {
  var r : c_uchar;
  var g : c_uchar;
  var b : c_uchar;
  var a : c_uchar;
}


extern proc InitWindow(width : c_int, height : c_int, title : c_ptrConst(c_char)) : void;

extern proc CloseWindow() : void;

extern proc WindowShouldClose() : bool;

extern proc IsWindowReady() : bool;

extern proc IsWindowFullscreen() : bool;

extern proc IsWindowHidden() : bool;

extern proc IsWindowMinimized() : bool;

extern proc IsWindowMaximized() : bool;

extern proc IsWindowFocused() : bool;

extern proc IsWindowResized() : bool;

extern proc IsWindowState(flag : c_uint) : bool;

extern proc SetWindowState(flags : c_uint) : void;

extern proc ClearWindowState(flags : c_uint) : void;

extern proc ToggleFullscreen() : void;

extern proc ToggleBorderlessWindowed() : void;

extern proc MaximizeWindow() : void;

extern proc MinimizeWindow() : void;

extern proc RestoreWindow() : void;

extern proc SetWindowIcon(in image : Image) : void;

extern proc SetWindowIcons(ref images : Image, count : c_int) : void;

extern proc SetWindowIcons(images : c_ptr(Image), count : c_int) : void;

extern proc SetWindowTitle(title : c_ptrConst(c_char)) : void;

extern proc SetWindowPosition(x : c_int, y : c_int) : void;

extern proc SetWindowMonitor(monitor : c_int) : void;

extern proc SetWindowMinSize(width : c_int, height : c_int) : void;

extern proc SetWindowMaxSize(width : c_int, height : c_int) : void;

extern proc SetWindowSize(width : c_int, height : c_int) : void;

extern proc SetWindowOpacity(opacity : c_float) : void;

extern proc SetWindowFocused() : void;

extern proc GetWindowHandle() : c_ptr(void);

extern proc GetScreenWidth() : c_int;

extern proc GetScreenHeight() : c_int;

extern proc GetRenderWidth() : c_int;

extern proc GetRenderHeight() : c_int;

extern proc GetMonitorCount() : c_int;

extern proc GetCurrentMonitor() : c_int;

extern proc GetMonitorPosition(monitor : c_int) : Vector2;

extern proc GetMonitorWidth(monitor : c_int) : c_int;

extern proc GetMonitorHeight(monitor : c_int) : c_int;

extern proc GetMonitorPhysicalWidth(monitor : c_int) : c_int;

extern proc GetMonitorPhysicalHeight(monitor : c_int) : c_int;

extern proc GetMonitorRefreshRate(monitor : c_int) : c_int;

extern proc GetWindowPosition() : Vector2;

extern proc GetWindowScaleDPI() : Vector2;

extern proc GetMonitorName(monitor : c_int) : c_ptrConst(c_char);

extern proc SetClipboardText(text : c_ptrConst(c_char)) : void;

extern proc GetClipboardText() : c_ptrConst(c_char);

extern proc EnableEventWaiting() : void;

extern proc DisableEventWaiting() : void;

extern proc ShowCursor() : void;

extern proc HideCursor() : void;

extern proc IsCursorHidden() : bool;

extern proc EnableCursor() : void;

extern proc DisableCursor() : void;

extern proc IsCursorOnScreen() : bool;

extern proc ClearBackground(in color : Color) : void;

extern proc BeginDrawing() : void;

extern proc EndDrawing() : void;

extern proc BeginMode2D(in camera : Camera2D) : void;

extern proc EndMode2D() : void;

extern proc BeginMode3D(in camera : Camera3D) : void;

extern proc EndMode3D() : void;

extern proc BeginTextureMode(in target : RenderTexture2D) : void;

extern proc EndTextureMode() : void;

extern proc BeginShaderMode(in shader : Shader) : void;

extern proc EndShaderMode() : void;

extern proc BeginBlendMode(mode : c_int) : void;

extern proc EndBlendMode() : void;

extern proc BeginScissorMode(x : c_int, y : c_int, width : c_int, height : c_int) : void;

extern proc EndScissorMode() : void;

extern proc BeginVrStereoMode(in config_arg : VrStereoConfig) : void;

extern proc EndVrStereoMode() : void;

extern proc LoadVrStereoConfig(in device : VrDeviceInfo) : VrStereoConfig;

extern proc UnloadVrStereoConfig(in config_arg : VrStereoConfig) : void;

extern proc LoadShader(vsFileName : c_ptrConst(c_char), fsFileName : c_ptrConst(c_char)) : Shader;

extern proc LoadShaderFromMemory(vsCode : c_ptrConst(c_char), fsCode : c_ptrConst(c_char)) : Shader;

extern proc IsShaderReady(in shader : Shader) : bool;

extern proc GetShaderLocation(in shader : Shader, uniformName : c_ptrConst(c_char)) : c_int;

extern proc GetShaderLocationAttrib(in shader : Shader, attribName : c_ptrConst(c_char)) : c_int;

extern proc SetShaderValue(in shader : Shader, locIndex : c_int, value : c_ptrConst(void), uniformType : c_int) : void;

extern proc SetShaderValueV(in shader : Shader, locIndex : c_int, value : c_ptrConst(void), uniformType : c_int, count : c_int) : void;

extern proc SetShaderValueMatrix(in shader : Shader, locIndex : c_int, in mat : Matrix) : void;

extern proc SetShaderValueTexture(in shader : Shader, locIndex : c_int, in texture : Texture2D) : void;

extern proc UnloadShader(in shader : Shader) : void;

extern proc GetScreenToWorldRay(in position : Vector2, in camera : Camera) : Ray;

extern proc GetScreenToWorldRayEx(in position : Vector2, in camera : Camera, width : c_int, height : c_int) : Ray;

extern proc GetWorldToScreen(in position : Vector3, in camera : Camera) : Vector2;

extern proc GetWorldToScreenEx(in position : Vector3, in camera : Camera, width : c_int, height : c_int) : Vector2;

extern proc GetWorldToScreen2D(in position : Vector2, in camera : Camera2D) : Vector2;

extern proc GetScreenToWorld2D(in position : Vector2, in camera : Camera2D) : Vector2;

extern proc GetCameraMatrix(in camera : Camera) : Matrix;

extern proc GetCameraMatrix2D(in camera : Camera2D) : Matrix;

extern proc SetTargetFPS(fps : c_int) : void;

extern proc GetFrameTime() : c_float;

extern proc GetTime() : c_double;

extern proc GetFPS() : c_int;

extern proc SwapScreenBuffer() : void;

extern proc PollInputEvents() : void;

extern proc WaitTime(seconds : c_double) : void;

extern proc SetRandomSeed(seed : c_uint) : void;

extern proc GetRandomValue(min : c_int, max : c_int) : c_int;

extern proc LoadRandomSequence(count : c_uint, min : c_int, max : c_int) : c_ptr(c_int);

extern proc UnloadRandomSequence(ref sequence : c_int) : void;

extern proc UnloadRandomSequence(sequence : c_ptr(c_int)) : void;

extern proc TakeScreenshot(fileName : c_ptrConst(c_char)) : void;

extern proc SetConfigFlags(flags : c_uint) : void;

extern proc OpenURL(url : c_ptrConst(c_char)) : void;

extern proc TraceLog(logLevel : c_int, text : c_ptrConst(c_char), c__varargs ...) : void;

// Overload for empty varargs
extern proc TraceLog(logLevel : c_int,text : c_ptrConst(c_char)) : void;

extern proc SetTraceLogLevel(logLevel : c_int) : void;

extern proc MemAlloc(size : c_uint) : c_ptr(void);

extern proc MemRealloc(ptr : c_ptr(void), size : c_uint) : c_ptr(void);

extern proc MemFree(ptr : c_ptr(void)) : void;

extern proc SetTraceLogCallback(callback : TraceLogCallback) : void;

extern proc SetLoadFileDataCallback(callback : LoadFileDataCallback) : void;

extern proc SetSaveFileDataCallback(callback : SaveFileDataCallback) : void;

extern proc SetLoadFileTextCallback(callback : LoadFileTextCallback) : void;

extern proc SetSaveFileTextCallback(callback : SaveFileTextCallback) : void;

extern proc LoadFileData(fileName : c_ptrConst(c_char), ref dataSize : c_int) : c_ptr(c_uchar);

extern proc LoadFileData(fileName : c_ptrConst(c_char), dataSize : c_ptr(c_int)) : c_ptr(c_uchar);

extern proc UnloadFileData(data : c_ptr(c_uchar)) : void;

extern proc SaveFileData(fileName : c_ptrConst(c_char), data : c_ptr(void), dataSize : c_int) : bool;

extern proc ExportDataAsCode(data : c_ptrConst(c_uchar), dataSize : c_int, fileName : c_ptrConst(c_char)) : bool;

extern proc LoadFileText(fileName : c_ptrConst(c_char)) : c_ptr(c_char);

extern proc UnloadFileText(text : c_ptr(c_char)) : void;

extern proc SaveFileText(fileName : c_ptrConst(c_char), text : c_ptr(c_char)) : bool;

extern proc FileExists(fileName : c_ptrConst(c_char)) : bool;

extern proc DirectoryExists(dirPath : c_ptrConst(c_char)) : bool;

extern proc IsFileExtension(fileName : c_ptrConst(c_char), ext : c_ptrConst(c_char)) : bool;

extern proc GetFileLength(fileName : c_ptrConst(c_char)) : c_int;

extern proc GetFileExtension(fileName : c_ptrConst(c_char)) : c_ptrConst(c_char);

extern proc GetFileName(filePath : c_ptrConst(c_char)) : c_ptrConst(c_char);

extern proc GetFileNameWithoutExt(filePath : c_ptrConst(c_char)) : c_ptrConst(c_char);

extern proc GetDirectoryPath(filePath : c_ptrConst(c_char)) : c_ptrConst(c_char);

extern proc GetPrevDirectoryPath(dirPath : c_ptrConst(c_char)) : c_ptrConst(c_char);

extern proc GetWorkingDirectory() : c_ptrConst(c_char);

extern proc GetApplicationDirectory() : c_ptrConst(c_char);

extern proc ChangeDirectory(dir : c_ptrConst(c_char)) : bool;

extern proc IsPathFile(path : c_ptrConst(c_char)) : bool;

extern proc IsFileNameValid(fileName : c_ptrConst(c_char)) : bool;

extern proc LoadDirectoryFiles(dirPath : c_ptrConst(c_char)) : FilePathList;

extern proc LoadDirectoryFilesEx(basePath : c_ptrConst(c_char), filter : c_ptrConst(c_char), scanSubdirs : bool) : FilePathList;

extern proc UnloadDirectoryFiles(in files : FilePathList) : void;

extern proc IsFileDropped() : bool;

extern proc LoadDroppedFiles() : FilePathList;

extern proc UnloadDroppedFiles(in files : FilePathList) : void;

extern proc GetFileModTime(fileName : c_ptrConst(c_char)) : c_long;

extern proc CompressData(data : c_ptrConst(c_uchar), dataSize : c_int, ref compDataSize : c_int) : c_ptr(c_uchar);

extern proc CompressData(data : c_ptrConst(c_uchar), dataSize : c_int, compDataSize : c_ptr(c_int)) : c_ptr(c_uchar);

extern proc DecompressData(compData : c_ptrConst(c_uchar), compDataSize : c_int, ref dataSize : c_int) : c_ptr(c_uchar);

extern proc DecompressData(compData : c_ptrConst(c_uchar), compDataSize : c_int, dataSize : c_ptr(c_int)) : c_ptr(c_uchar);

extern proc EncodeDataBase64(data : c_ptrConst(c_uchar), dataSize : c_int, ref outputSize : c_int) : c_ptr(c_char);

extern proc EncodeDataBase64(data : c_ptrConst(c_uchar), dataSize : c_int, outputSize : c_ptr(c_int)) : c_ptr(c_char);

extern proc DecodeDataBase64(data : c_ptrConst(c_uchar), ref outputSize : c_int) : c_ptr(c_uchar);

extern proc DecodeDataBase64(data : c_ptrConst(c_uchar), outputSize : c_ptr(c_int)) : c_ptr(c_uchar);

extern proc LoadAutomationEventList(fileName : c_ptrConst(c_char)) : AutomationEventList;

extern proc UnloadAutomationEventList(in list : AutomationEventList) : void;

extern proc ExportAutomationEventList(in list : AutomationEventList, fileName : c_ptrConst(c_char)) : bool;

extern proc SetAutomationEventList(ref list : AutomationEventList) : void;

extern proc SetAutomationEventList(list : c_ptr(AutomationEventList)) : void;

extern proc SetAutomationEventBaseFrame(frame : c_int) : void;

extern proc StartAutomationEventRecording() : void;

extern proc StopAutomationEventRecording() : void;

extern proc PlayAutomationEvent(in event : AutomationEvent) : void;

extern proc IsKeyPressed(key : c_int) : bool;

extern proc IsKeyPressedRepeat(key : c_int) : bool;

extern proc IsKeyDown(key : c_int) : bool;

extern proc IsKeyReleased(key : c_int) : bool;

extern proc IsKeyUp(key : c_int) : bool;

extern proc GetKeyPressed() : c_int;

extern proc GetCharPressed() : c_int;

extern proc SetExitKey(key : c_int) : void;

extern proc IsGamepadAvailable(gamepad : c_int) : bool;

extern proc GetGamepadName(gamepad : c_int) : c_ptrConst(c_char);

extern proc IsGamepadButtonPressed(gamepad : c_int, button : c_int) : bool;

extern proc IsGamepadButtonDown(gamepad : c_int, button : c_int) : bool;

extern proc IsGamepadButtonReleased(gamepad : c_int, button : c_int) : bool;

extern proc IsGamepadButtonUp(gamepad : c_int, button : c_int) : bool;

extern proc GetGamepadButtonPressed() : c_int;

extern proc GetGamepadAxisCount(gamepad : c_int) : c_int;

extern proc GetGamepadAxisMovement(gamepad : c_int, axis : c_int) : c_float;

extern proc SetGamepadMappings(mappings : c_ptrConst(c_char)) : c_int;

extern proc SetGamepadVibration(gamepad : c_int, leftMotor : c_float, rightMotor : c_float) : void;

extern proc IsMouseButtonPressed(button : c_int) : bool;

extern proc IsMouseButtonDown(button : c_int) : bool;

extern proc IsMouseButtonReleased(button : c_int) : bool;

extern proc IsMouseButtonUp(button : c_int) : bool;

extern proc GetMouseX() : c_int;

extern proc GetMouseY() : c_int;

extern proc GetMousePosition() : Vector2;

extern proc GetMouseDelta() : Vector2;

extern proc SetMousePosition(x : c_int, y : c_int) : void;

extern proc SetMouseOffset(offsetX : c_int, offsetY : c_int) : void;

extern proc SetMouseScale(scaleX : c_float, scaleY : c_float) : void;

extern proc GetMouseWheelMove() : c_float;

extern proc GetMouseWheelMoveV() : Vector2;

extern proc SetMouseCursor(cursor : c_int) : void;

extern proc GetTouchX() : c_int;

extern proc GetTouchY() : c_int;

extern proc GetTouchPosition(index_arg : c_int) : Vector2;

extern proc GetTouchPointId(index_arg : c_int) : c_int;

extern proc GetTouchPointCount() : c_int;

extern proc SetGesturesEnabled(flags : c_uint) : void;

extern proc IsGestureDetected(gesture : c_uint) : bool;

extern proc GetGestureDetected() : c_int;

extern proc GetGestureHoldDuration() : c_float;

extern proc GetGestureDragVector() : Vector2;

extern proc GetGestureDragAngle() : c_float;

extern proc GetGesturePinchVector() : Vector2;

extern proc GetGesturePinchAngle() : c_float;

extern proc UpdateCamera(ref camera : Camera, mode : c_int) : void;

extern proc UpdateCamera(camera : c_ptr(Camera), mode : c_int) : void;

extern proc UpdateCameraPro(ref camera : Camera, in movement : Vector3, in rotation : Vector3, zoom : c_float) : void;

extern proc UpdateCameraPro(camera : c_ptr(Camera), in movement : Vector3, in rotation : Vector3, zoom : c_float) : void;

extern proc SetShapesTexture(in texture : Texture2D, in source : Rectangle) : void;

extern proc GetShapesTexture() : Texture2D;

extern proc GetShapesTextureRectangle() : Rectangle;

extern proc DrawPixel(posX : c_int, posY : c_int, in color : Color) : void;

extern proc DrawPixelV(in position : Vector2, in color : Color) : void;

extern proc DrawLine(startPosX : c_int, startPosY : c_int, endPosX : c_int, endPosY : c_int, in color : Color) : void;

extern proc DrawLineV(in startPos : Vector2, in endPos : Vector2, in color : Color) : void;

extern proc DrawLineEx(in startPos : Vector2, in endPos : Vector2, thick : c_float, in color : Color) : void;

extern proc DrawLineStrip(const ref points : Vector2, pointCount : c_int, in color : Color) : void;

extern proc DrawLineStrip(points : c_ptrConst(Vector2), pointCount : c_int, in color : Color) : void;

extern proc DrawLineBezier(in startPos : Vector2, in endPos : Vector2, thick : c_float, in color : Color) : void;

extern proc DrawCircle(centerX : c_int, centerY : c_int, radius : c_float, in color : Color) : void;

extern proc DrawCircleSector(in center : Vector2, radius : c_float, startAngle : c_float, endAngle : c_float, segments : c_int, in color : Color) : void;

extern proc DrawCircleSectorLines(in center : Vector2, radius : c_float, startAngle : c_float, endAngle : c_float, segments : c_int, in color : Color) : void;

extern proc DrawCircleGradient(centerX : c_int, centerY : c_int, radius : c_float, in color1 : Color, in color2 : Color) : void;

extern proc DrawCircleV(in center : Vector2, radius : c_float, in color : Color) : void;

extern proc DrawCircleLines(centerX : c_int, centerY : c_int, radius : c_float, in color : Color) : void;

extern proc DrawCircleLinesV(in center : Vector2, radius : c_float, in color : Color) : void;

extern proc DrawEllipse(centerX : c_int, centerY : c_int, radiusH : c_float, radiusV : c_float, in color : Color) : void;

extern proc DrawEllipseLines(centerX : c_int, centerY : c_int, radiusH : c_float, radiusV : c_float, in color : Color) : void;

extern proc DrawRing(in center : Vector2, innerRadius : c_float, outerRadius : c_float, startAngle : c_float, endAngle : c_float, segments : c_int, in color : Color) : void;

extern proc DrawRingLines(in center : Vector2, innerRadius : c_float, outerRadius : c_float, startAngle : c_float, endAngle : c_float, segments : c_int, in color : Color) : void;

extern proc DrawRectangle(posX : c_int, posY : c_int, width : c_int, height : c_int, in color : Color) : void;

extern proc DrawRectangleV(in position : Vector2, in size : Vector2, in color : Color) : void;

extern proc DrawRectangleRec(in rec : Rectangle, in color : Color) : void;

extern proc DrawRectanglePro(in rec : Rectangle, in origin : Vector2, rotation : c_float, in color : Color) : void;

extern proc DrawRectangleGradientV(posX : c_int, posY : c_int, width : c_int, height : c_int, in color1 : Color, in color2 : Color) : void;

extern proc DrawRectangleGradientH(posX : c_int, posY : c_int, width : c_int, height : c_int, in color1 : Color, in color2 : Color) : void;

extern proc DrawRectangleGradientEx(in rec : Rectangle, in col1 : Color, in col2 : Color, in col3 : Color, in col4 : Color) : void;

extern proc DrawRectangleLines(posX : c_int, posY : c_int, width : c_int, height : c_int, in color : Color) : void;

extern proc DrawRectangleLinesEx(in rec : Rectangle, lineThick : c_float, in color : Color) : void;

extern proc DrawRectangleRounded(in rec : Rectangle, roundness : c_float, segments : c_int, in color : Color) : void;

extern proc DrawRectangleRoundedLines(in rec : Rectangle, roundness : c_float, segments : c_int, in color : Color) : void;

extern proc DrawRectangleRoundedLinesEx(in rec : Rectangle, roundness : c_float, segments : c_int, lineThick : c_float, in color : Color) : void;

extern proc DrawTriangle(in v1 : Vector2, in v2 : Vector2, in v3 : Vector2, in color : Color) : void;

extern proc DrawTriangleLines(in v1 : Vector2, in v2 : Vector2, in v3 : Vector2, in color : Color) : void;

extern proc DrawTriangleFan(const ref points : Vector2, pointCount : c_int, in color : Color) : void;

extern proc DrawTriangleFan(points : c_ptrConst(Vector2), pointCount : c_int, in color : Color) : void;

extern proc DrawTriangleStrip(const ref points : Vector2, pointCount : c_int, in color : Color) : void;

extern proc DrawTriangleStrip(points : c_ptrConst(Vector2), pointCount : c_int, in color : Color) : void;

extern proc DrawPoly(in center : Vector2, sides : c_int, radius : c_float, rotation : c_float, in color : Color) : void;

extern proc DrawPolyLines(in center : Vector2, sides : c_int, radius : c_float, rotation : c_float, in color : Color) : void;

extern proc DrawPolyLinesEx(in center : Vector2, sides : c_int, radius : c_float, rotation : c_float, lineThick : c_float, in color : Color) : void;

extern proc DrawSplineLinear(const ref points : Vector2, pointCount : c_int, thick : c_float, in color : Color) : void;

extern proc DrawSplineLinear(points : c_ptrConst(Vector2), pointCount : c_int, thick : c_float, in color : Color) : void;

extern proc DrawSplineBasis(const ref points : Vector2, pointCount : c_int, thick : c_float, in color : Color) : void;

extern proc DrawSplineBasis(points : c_ptrConst(Vector2), pointCount : c_int, thick : c_float, in color : Color) : void;

extern proc DrawSplineCatmullRom(const ref points : Vector2, pointCount : c_int, thick : c_float, in color : Color) : void;

extern proc DrawSplineCatmullRom(points : c_ptrConst(Vector2), pointCount : c_int, thick : c_float, in color : Color) : void;

extern proc DrawSplineBezierQuadratic(const ref points : Vector2, pointCount : c_int, thick : c_float, in color : Color) : void;

extern proc DrawSplineBezierQuadratic(points : c_ptrConst(Vector2), pointCount : c_int, thick : c_float, in color : Color) : void;

extern proc DrawSplineBezierCubic(const ref points : Vector2, pointCount : c_int, thick : c_float, in color : Color) : void;

extern proc DrawSplineBezierCubic(points : c_ptrConst(Vector2), pointCount : c_int, thick : c_float, in color : Color) : void;

extern proc DrawSplineSegmentLinear(in p1 : Vector2, in p2 : Vector2, thick : c_float, in color : Color) : void;

extern proc DrawSplineSegmentBasis(in p1 : Vector2, in p2 : Vector2, in p3 : Vector2, in p4 : Vector2, thick : c_float, in color : Color) : void;

extern proc DrawSplineSegmentCatmullRom(in p1 : Vector2, in p2 : Vector2, in p3 : Vector2, in p4 : Vector2, thick : c_float, in color : Color) : void;

extern proc DrawSplineSegmentBezierQuadratic(in p1 : Vector2, in c2 : Vector2, in p3 : Vector2, thick : c_float, in color : Color) : void;

extern proc DrawSplineSegmentBezierCubic(in p1 : Vector2, in c2 : Vector2, in c3 : Vector2, in p4 : Vector2, thick : c_float, in color : Color) : void;

extern proc GetSplinePointLinear(in startPos : Vector2, in endPos : Vector2, t : c_float) : Vector2;

extern proc GetSplinePointBasis(in p1 : Vector2, in p2 : Vector2, in p3 : Vector2, in p4 : Vector2, t : c_float) : Vector2;

extern proc GetSplinePointCatmullRom(in p1 : Vector2, in p2 : Vector2, in p3 : Vector2, in p4 : Vector2, t : c_float) : Vector2;

extern proc GetSplinePointBezierQuad(in p1 : Vector2, in c2 : Vector2, in p3 : Vector2, t : c_float) : Vector2;

extern proc GetSplinePointBezierCubic(in p1 : Vector2, in c2 : Vector2, in c3 : Vector2, in p4 : Vector2, t : c_float) : Vector2;

extern proc CheckCollisionRecs(in rec1 : Rectangle, in rec2 : Rectangle) : bool;

extern proc CheckCollisionCircles(in center1 : Vector2, radius1 : c_float, in center2 : Vector2, radius2 : c_float) : bool;

extern proc CheckCollisionCircleRec(in center : Vector2, radius : c_float, in rec : Rectangle) : bool;

extern proc CheckCollisionPointRec(in point : Vector2, in rec : Rectangle) : bool;

extern proc CheckCollisionPointCircle(in point : Vector2, in center : Vector2, radius : c_float) : bool;

extern proc CheckCollisionPointTriangle(in point : Vector2, in p1 : Vector2, in p2 : Vector2, in p3 : Vector2) : bool;

extern proc CheckCollisionPointPoly(in point : Vector2, const ref points : Vector2, pointCount : c_int) : bool;

extern proc CheckCollisionPointPoly(in point : Vector2, points : c_ptrConst(Vector2), pointCount : c_int) : bool;

extern proc CheckCollisionLines(in startPos1 : Vector2, in endPos1 : Vector2, in startPos2 : Vector2, in endPos2 : Vector2, ref collisionPoint : Vector2) : bool;

extern proc CheckCollisionLines(in startPos1 : Vector2, in endPos1 : Vector2, in startPos2 : Vector2, in endPos2 : Vector2, collisionPoint : c_ptr(Vector2)) : bool;

extern proc CheckCollisionPointLine(in point : Vector2, in p1 : Vector2, in p2 : Vector2, threshold : c_int) : bool;

extern proc CheckCollisionCircleLine(in center : Vector2, radius : c_float, in p1 : Vector2, in p2 : Vector2) : bool;

extern proc GetCollisionRec(in rec1 : Rectangle, in rec2 : Rectangle) : Rectangle;

extern proc LoadImage(fileName : c_ptrConst(c_char)) : Image;

extern proc LoadImageRaw(fileName : c_ptrConst(c_char), width : c_int, height : c_int, format : c_int, headerSize : c_int) : Image;

extern proc LoadImageSvg(fileNameOrString : c_ptrConst(c_char), width : c_int, height : c_int) : Image;

extern proc LoadImageAnim(fileName : c_ptrConst(c_char), ref frames : c_int) : Image;

extern proc LoadImageAnim(fileName : c_ptrConst(c_char), frames : c_ptr(c_int)) : Image;

extern proc LoadImageAnimFromMemory(fileType : c_ptrConst(c_char), fileData : c_ptrConst(c_uchar), dataSize : c_int, ref frames : c_int) : Image;

extern proc LoadImageAnimFromMemory(fileType : c_ptrConst(c_char), fileData : c_ptrConst(c_uchar), dataSize : c_int, frames : c_ptr(c_int)) : Image;

extern proc LoadImageFromMemory(fileType : c_ptrConst(c_char), fileData : c_ptrConst(c_uchar), dataSize : c_int) : Image;

extern proc LoadImageFromTexture(in texture : Texture2D) : Image;

extern proc LoadImageFromScreen() : Image;

extern proc IsImageReady(in image : Image) : bool;

extern proc UnloadImage(in image : Image) : void;

extern proc ExportImage(in image : Image, fileName : c_ptrConst(c_char)) : bool;

extern proc ExportImageToMemory(in image : Image, fileType : c_ptrConst(c_char), ref fileSize : c_int) : c_ptr(c_uchar);

extern proc ExportImageToMemory(in image : Image, fileType : c_ptrConst(c_char), fileSize : c_ptr(c_int)) : c_ptr(c_uchar);

extern proc ExportImageAsCode(in image : Image, fileName : c_ptrConst(c_char)) : bool;

extern proc GenImageColor(width : c_int, height : c_int, in color : Color) : Image;

extern proc GenImageGradientLinear(width : c_int, height : c_int, direction : c_int, in start : Color, in end : Color) : Image;

extern proc GenImageGradientRadial(width : c_int, height : c_int, density : c_float, in inner : Color, in outer : Color) : Image;

extern proc GenImageGradientSquare(width : c_int, height : c_int, density : c_float, in inner : Color, in outer : Color) : Image;

extern proc GenImageChecked(width : c_int, height : c_int, checksX : c_int, checksY : c_int, in col1 : Color, in col2 : Color) : Image;

extern proc GenImageWhiteNoise(width : c_int, height : c_int, factor : c_float) : Image;

extern proc GenImagePerlinNoise(width : c_int, height : c_int, offsetX : c_int, offsetY : c_int, scale : c_float) : Image;

extern proc GenImageCellular(width : c_int, height : c_int, tileSize : c_int) : Image;

extern proc GenImageText(width : c_int, height : c_int, text : c_ptrConst(c_char)) : Image;

extern proc ImageCopy(in image : Image) : Image;

extern proc ImageFromImage(in image : Image, in rec : Rectangle) : Image;

extern proc ImageText(text : c_ptrConst(c_char), fontSize : c_int, in color : Color) : Image;

extern proc ImageTextEx(in font : Font, text : c_ptrConst(c_char), fontSize : c_float, spacing : c_float, in tint : Color) : Image;

extern proc ImageFormat(ref image : Image, newFormat : c_int) : void;

extern proc ImageFormat(image : c_ptr(Image), newFormat : c_int) : void;

extern proc ImageToPOT(ref image : Image, in fill : Color) : void;

extern proc ImageToPOT(image : c_ptr(Image), in fill : Color) : void;

extern proc ImageCrop(ref image : Image, in crop : Rectangle) : void;

extern proc ImageCrop(image : c_ptr(Image), in crop : Rectangle) : void;

extern proc ImageAlphaCrop(ref image : Image, threshold : c_float) : void;

extern proc ImageAlphaCrop(image : c_ptr(Image), threshold : c_float) : void;

extern proc ImageAlphaClear(ref image : Image, in color : Color, threshold : c_float) : void;

extern proc ImageAlphaClear(image : c_ptr(Image), in color : Color, threshold : c_float) : void;

extern proc ImageAlphaMask(ref image : Image, in alphaMask : Image) : void;

extern proc ImageAlphaMask(image : c_ptr(Image), in alphaMask : Image) : void;

extern proc ImageAlphaPremultiply(ref image : Image) : void;

extern proc ImageAlphaPremultiply(image : c_ptr(Image)) : void;

extern proc ImageBlurGaussian(ref image : Image, blurSize : c_int) : void;

extern proc ImageBlurGaussian(image : c_ptr(Image), blurSize : c_int) : void;

extern proc ImageKernelConvolution(ref image : Image, ref kernel : c_float, kernelSize : c_int) : void;

extern proc ImageKernelConvolution(image : c_ptr(Image), kernel : c_ptr(c_float), kernelSize : c_int) : void;

extern proc ImageResize(ref image : Image, newWidth : c_int, newHeight : c_int) : void;

extern proc ImageResize(image : c_ptr(Image), newWidth : c_int, newHeight : c_int) : void;

extern proc ImageResizeNN(ref image : Image, newWidth : c_int, newHeight : c_int) : void;

extern proc ImageResizeNN(image : c_ptr(Image), newWidth : c_int, newHeight : c_int) : void;

extern proc ImageResizeCanvas(ref image : Image, newWidth : c_int, newHeight : c_int, offsetX : c_int, offsetY : c_int, in fill : Color) : void;

extern proc ImageResizeCanvas(image : c_ptr(Image), newWidth : c_int, newHeight : c_int, offsetX : c_int, offsetY : c_int, in fill : Color) : void;

extern proc ImageMipmaps(ref image : Image) : void;

extern proc ImageMipmaps(image : c_ptr(Image)) : void;

extern proc ImageDither(ref image : Image, rBpp : c_int, gBpp : c_int, bBpp : c_int, aBpp : c_int) : void;

extern proc ImageDither(image : c_ptr(Image), rBpp : c_int, gBpp : c_int, bBpp : c_int, aBpp : c_int) : void;

extern proc ImageFlipVertical(ref image : Image) : void;

extern proc ImageFlipVertical(image : c_ptr(Image)) : void;

extern proc ImageFlipHorizontal(ref image : Image) : void;

extern proc ImageFlipHorizontal(image : c_ptr(Image)) : void;

extern proc ImageRotate(ref image : Image, degrees : c_int) : void;

extern proc ImageRotate(image : c_ptr(Image), degrees : c_int) : void;

extern proc ImageRotateCW(ref image : Image) : void;

extern proc ImageRotateCW(image : c_ptr(Image)) : void;

extern proc ImageRotateCCW(ref image : Image) : void;

extern proc ImageRotateCCW(image : c_ptr(Image)) : void;

extern proc ImageColorTint(ref image : Image, in color : Color) : void;

extern proc ImageColorTint(image : c_ptr(Image), in color : Color) : void;

extern proc ImageColorInvert(ref image : Image) : void;

extern proc ImageColorInvert(image : c_ptr(Image)) : void;

extern proc ImageColorGrayscale(ref image : Image) : void;

extern proc ImageColorGrayscale(image : c_ptr(Image)) : void;

extern proc ImageColorContrast(ref image : Image, contrast : c_float) : void;

extern proc ImageColorContrast(image : c_ptr(Image), contrast : c_float) : void;

extern proc ImageColorBrightness(ref image : Image, brightness : c_int) : void;

extern proc ImageColorBrightness(image : c_ptr(Image), brightness : c_int) : void;

extern proc ImageColorReplace(ref image : Image, in color : Color, in replace : Color) : void;

extern proc ImageColorReplace(image : c_ptr(Image), in color : Color, in replace : Color) : void;

extern proc LoadImageColors(in image : Image) : c_ptr(Color);

extern proc LoadImagePalette(in image : Image, maxPaletteSize : c_int, ref colorCount : c_int) : c_ptr(Color);

extern proc LoadImagePalette(in image : Image, maxPaletteSize : c_int, colorCount : c_ptr(c_int)) : c_ptr(Color);

extern proc UnloadImageColors(ref colors : Color) : void;

extern proc UnloadImageColors(colors : c_ptr(Color)) : void;

extern proc UnloadImagePalette(ref colors : Color) : void;

extern proc UnloadImagePalette(colors : c_ptr(Color)) : void;

extern proc GetImageAlphaBorder(in image : Image, threshold : c_float) : Rectangle;

extern proc GetImageColor(in image : Image, x : c_int, y : c_int) : Color;

extern proc ImageClearBackground(ref dst : Image, in color : Color) : void;

extern proc ImageClearBackground(dst : c_ptr(Image), in color : Color) : void;

extern proc ImageDrawPixel(ref dst : Image, posX : c_int, posY : c_int, in color : Color) : void;

extern proc ImageDrawPixel(dst : c_ptr(Image), posX : c_int, posY : c_int, in color : Color) : void;

extern proc ImageDrawPixelV(ref dst : Image, in position : Vector2, in color : Color) : void;

extern proc ImageDrawPixelV(dst : c_ptr(Image), in position : Vector2, in color : Color) : void;

extern proc ImageDrawLine(ref dst : Image, startPosX : c_int, startPosY : c_int, endPosX : c_int, endPosY : c_int, in color : Color) : void;

extern proc ImageDrawLine(dst : c_ptr(Image), startPosX : c_int, startPosY : c_int, endPosX : c_int, endPosY : c_int, in color : Color) : void;

extern proc ImageDrawLineV(ref dst : Image, in start : Vector2, in end : Vector2, in color : Color) : void;

extern proc ImageDrawLineV(dst : c_ptr(Image), in start : Vector2, in end : Vector2, in color : Color) : void;

extern proc ImageDrawCircle(ref dst : Image, centerX : c_int, centerY : c_int, radius : c_int, in color : Color) : void;

extern proc ImageDrawCircle(dst : c_ptr(Image), centerX : c_int, centerY : c_int, radius : c_int, in color : Color) : void;

extern proc ImageDrawCircleV(ref dst : Image, in center : Vector2, radius : c_int, in color : Color) : void;

extern proc ImageDrawCircleV(dst : c_ptr(Image), in center : Vector2, radius : c_int, in color : Color) : void;

extern proc ImageDrawCircleLines(ref dst : Image, centerX : c_int, centerY : c_int, radius : c_int, in color : Color) : void;

extern proc ImageDrawCircleLines(dst : c_ptr(Image), centerX : c_int, centerY : c_int, radius : c_int, in color : Color) : void;

extern proc ImageDrawCircleLinesV(ref dst : Image, in center : Vector2, radius : c_int, in color : Color) : void;

extern proc ImageDrawCircleLinesV(dst : c_ptr(Image), in center : Vector2, radius : c_int, in color : Color) : void;

extern proc ImageDrawRectangle(ref dst : Image, posX : c_int, posY : c_int, width : c_int, height : c_int, in color : Color) : void;

extern proc ImageDrawRectangle(dst : c_ptr(Image), posX : c_int, posY : c_int, width : c_int, height : c_int, in color : Color) : void;

extern proc ImageDrawRectangleV(ref dst : Image, in position : Vector2, in size : Vector2, in color : Color) : void;

extern proc ImageDrawRectangleV(dst : c_ptr(Image), in position : Vector2, in size : Vector2, in color : Color) : void;

extern proc ImageDrawRectangleRec(ref dst : Image, in rec : Rectangle, in color : Color) : void;

extern proc ImageDrawRectangleRec(dst : c_ptr(Image), in rec : Rectangle, in color : Color) : void;

extern proc ImageDrawRectangleLines(ref dst : Image, in rec : Rectangle, thick : c_int, in color : Color) : void;

extern proc ImageDrawRectangleLines(dst : c_ptr(Image), in rec : Rectangle, thick : c_int, in color : Color) : void;

extern proc ImageDraw(ref dst : Image, in src : Image, in srcRec : Rectangle, in dstRec : Rectangle, in tint : Color) : void;

extern proc ImageDraw(dst : c_ptr(Image), in src : Image, in srcRec : Rectangle, in dstRec : Rectangle, in tint : Color) : void;

extern proc ImageDrawText(ref dst : Image, text : c_ptrConst(c_char), posX : c_int, posY : c_int, fontSize : c_int, in color : Color) : void;

extern proc ImageDrawText(dst : c_ptr(Image), text : c_ptrConst(c_char), posX : c_int, posY : c_int, fontSize : c_int, in color : Color) : void;

extern proc ImageDrawTextEx(ref dst : Image, in font : Font, text : c_ptrConst(c_char), in position : Vector2, fontSize : c_float, spacing : c_float, in tint : Color) : void;

extern proc ImageDrawTextEx(dst : c_ptr(Image), in font : Font, text : c_ptrConst(c_char), in position : Vector2, fontSize : c_float, spacing : c_float, in tint : Color) : void;

extern proc LoadTexture(fileName : c_ptrConst(c_char)) : Texture2D;

extern proc LoadTextureFromImage(in image : Image) : Texture2D;

extern proc LoadTextureCubemap(in image : Image, layout : c_int) : TextureCubemap;

extern proc LoadRenderTexture(width : c_int, height : c_int) : RenderTexture2D;

extern proc IsTextureReady(in texture : Texture2D) : bool;

extern proc UnloadTexture(in texture : Texture2D) : void;

extern proc IsRenderTextureReady(in target : RenderTexture2D) : bool;

extern proc UnloadRenderTexture(in target : RenderTexture2D) : void;

extern proc UpdateTexture(in texture : Texture2D, pixels : c_ptrConst(void)) : void;

extern proc UpdateTextureRec(in texture : Texture2D, in rec : Rectangle, pixels : c_ptrConst(void)) : void;

extern proc GenTextureMipmaps(ref texture : Texture2D) : void;

extern proc GenTextureMipmaps(texture : c_ptr(Texture2D)) : void;

extern proc SetTextureFilter(in texture : Texture2D, filter : c_int) : void;

extern proc SetTextureWrap(in texture : Texture2D, wrap : c_int) : void;

extern proc DrawTexture(in texture : Texture2D, posX : c_int, posY : c_int, in tint : Color) : void;

extern proc DrawTextureV(in texture : Texture2D, in position : Vector2, in tint : Color) : void;

extern proc DrawTextureEx(in texture : Texture2D, in position : Vector2, rotation : c_float, scale : c_float, in tint : Color) : void;

extern proc DrawTextureRec(in texture : Texture2D, in source : Rectangle, in position : Vector2, in tint : Color) : void;

extern proc DrawTexturePro(in texture : Texture2D, in source : Rectangle, in dest : Rectangle, in origin : Vector2, rotation : c_float, in tint : Color) : void;

extern proc DrawTextureNPatch(in texture : Texture2D, in nPatchInfo : NPatchInfo, in dest : Rectangle, in origin : Vector2, rotation : c_float, in tint : Color) : void;

extern proc ColorIsEqual(in col1 : Color, in col2 : Color) : bool;

extern proc Fade(in color : Color, alpha : c_float) : Color;

extern proc ColorToInt(in color : Color) : c_int;

extern proc ColorNormalize(in color : Color) : Vector4;

extern proc ColorFromNormalized(in normalized : Vector4) : Color;

extern proc ColorToHSV(in color : Color) : Vector3;

extern proc ColorFromHSV(hue : c_float, saturation : c_float, value : c_float) : Color;

extern proc ColorTint(in color : Color, in tint : Color) : Color;

extern proc ColorBrightness(in color : Color, factor : c_float) : Color;

extern proc ColorContrast(in color : Color, contrast : c_float) : Color;

extern proc ColorAlpha(in color : Color, alpha : c_float) : Color;

extern proc ColorAlphaBlend(in dst : Color, in src : Color, in tint : Color) : Color;

extern proc GetColor(hexValue : c_uint) : Color;

extern proc GetPixelColor(srcPtr : c_ptr(void), format : c_int) : Color;

extern proc SetPixelColor(dstPtr : c_ptr(void), in color : Color, format : c_int) : void;

extern proc GetPixelDataSize(width : c_int, height : c_int, format : c_int) : c_int;

extern proc GetFontDefault() : Font;

extern proc LoadFont(fileName : c_ptrConst(c_char)) : Font;

extern proc LoadFontEx(fileName : c_ptrConst(c_char), fontSize : c_int, ref codepoints : c_int, codepointCount : c_int) : Font;

extern proc LoadFontEx(fileName : c_ptrConst(c_char), fontSize : c_int, codepoints : c_ptr(c_int), codepointCount : c_int) : Font;

extern proc LoadFontFromImage(in image : Image, in key : Color, firstChar : c_int) : Font;

extern proc LoadFontFromMemory(fileType : c_ptrConst(c_char), fileData : c_ptrConst(c_uchar), dataSize : c_int, fontSize : c_int, ref codepoints : c_int, codepointCount : c_int) : Font;

extern proc LoadFontFromMemory(fileType : c_ptrConst(c_char), fileData : c_ptrConst(c_uchar), dataSize : c_int, fontSize : c_int, codepoints : c_ptr(c_int), codepointCount : c_int) : Font;

extern proc IsFontReady(in font : Font) : bool;

extern proc LoadFontData(fileData : c_ptrConst(c_uchar), dataSize : c_int, fontSize : c_int, ref codepoints : c_int, codepointCount : c_int, type_arg : c_int) : c_ptr(GlyphInfo);

extern proc LoadFontData(fileData : c_ptrConst(c_uchar), dataSize : c_int, fontSize : c_int, codepoints : c_ptr(c_int), codepointCount : c_int, type_arg : c_int) : c_ptr(GlyphInfo);

extern proc GenImageFontAtlas(const ref glyphs : GlyphInfo, ref glyphRecs : c_ptr(Rectangle), glyphCount : c_int, fontSize : c_int, padding : c_int, packMethod : c_int) : Image;

extern proc GenImageFontAtlas(glyphs : c_ptrConst(GlyphInfo), glyphRecs : c_ptr(c_ptr(Rectangle)), glyphCount : c_int, fontSize : c_int, padding : c_int, packMethod : c_int) : Image;

extern proc UnloadFontData(ref glyphs : GlyphInfo, glyphCount : c_int) : void;

extern proc UnloadFontData(glyphs : c_ptr(GlyphInfo), glyphCount : c_int) : void;

extern proc UnloadFont(in font : Font) : void;

extern proc ExportFontAsCode(in font : Font, fileName : c_ptrConst(c_char)) : bool;

extern proc DrawFPS(posX : c_int, posY : c_int) : void;

extern proc DrawText(text : c_ptrConst(c_char), posX : c_int, posY : c_int, fontSize : c_int, in color : Color) : void;

extern proc DrawTextEx(in font : Font, text : c_ptrConst(c_char), in position : Vector2, fontSize : c_float, spacing : c_float, in tint : Color) : void;

extern proc DrawTextPro(in font : Font, text : c_ptrConst(c_char), in position : Vector2, in origin : Vector2, rotation : c_float, fontSize : c_float, spacing : c_float, in tint : Color) : void;

extern proc DrawTextCodepoint(in font : Font, codepoint : c_int, in position : Vector2, fontSize : c_float, in tint : Color) : void;

extern proc DrawTextCodepoints(in font : Font, const ref codepoints : c_int, codepointCount : c_int, in position : Vector2, fontSize : c_float, spacing : c_float, in tint : Color) : void;

extern proc DrawTextCodepoints(in font : Font, codepoints : c_ptrConst(c_int), codepointCount : c_int, in position : Vector2, fontSize : c_float, spacing : c_float, in tint : Color) : void;

extern proc SetTextLineSpacing(spacing : c_int) : void;

extern proc MeasureText(text : c_ptrConst(c_char), fontSize : c_int) : c_int;

extern proc MeasureTextEx(in font : Font, text : c_ptrConst(c_char), fontSize : c_float, spacing : c_float) : Vector2;

extern proc GetGlyphIndex(in font : Font, codepoint : c_int) : c_int;

extern proc GetGlyphInfo(in font : Font, codepoint : c_int) : GlyphInfo;

extern proc GetGlyphAtlasRec(in font : Font, codepoint : c_int) : Rectangle;

extern proc LoadUTF8(const ref codepoints : c_int, length : c_int) : c_ptr(c_char);

extern proc LoadUTF8(codepoints : c_ptrConst(c_int), length : c_int) : c_ptr(c_char);

extern proc UnloadUTF8(text : c_ptr(c_char)) : void;

extern proc LoadCodepoints(text : c_ptrConst(c_char), ref count : c_int) : c_ptr(c_int);

extern proc LoadCodepoints(text : c_ptrConst(c_char), count : c_ptr(c_int)) : c_ptr(c_int);

extern proc UnloadCodepoints(ref codepoints : c_int) : void;

extern proc UnloadCodepoints(codepoints : c_ptr(c_int)) : void;

extern proc GetCodepointCount(text : c_ptrConst(c_char)) : c_int;

extern proc GetCodepoint(text : c_ptrConst(c_char), ref codepointSize : c_int) : c_int;

extern proc GetCodepoint(text : c_ptrConst(c_char), codepointSize : c_ptr(c_int)) : c_int;

extern proc GetCodepointNext(text : c_ptrConst(c_char), ref codepointSize : c_int) : c_int;

extern proc GetCodepointNext(text : c_ptrConst(c_char), codepointSize : c_ptr(c_int)) : c_int;

extern proc GetCodepointPrevious(text : c_ptrConst(c_char), ref codepointSize : c_int) : c_int;

extern proc GetCodepointPrevious(text : c_ptrConst(c_char), codepointSize : c_ptr(c_int)) : c_int;

extern proc CodepointToUTF8(codepoint : c_int, ref utf8Size : c_int) : c_ptrConst(c_char);

extern proc CodepointToUTF8(codepoint : c_int, utf8Size : c_ptr(c_int)) : c_ptrConst(c_char);

extern proc TextCopy(dst : c_ptr(c_char), src : c_ptrConst(c_char)) : c_int;

extern proc TextIsEqual(text1 : c_ptrConst(c_char), text2 : c_ptrConst(c_char)) : bool;

extern proc TextLength(text : c_ptrConst(c_char)) : c_uint;

extern proc TextFormat(text : c_ptrConst(c_char), c__varargs ...) : c_ptrConst(c_char);

// Overload for empty varargs
extern proc TextFormat(text : c_ptrConst(c_char)) : c_ptrConst(c_char);

extern proc TextSubtext(text : c_ptrConst(c_char), position : c_int, length : c_int) : c_ptrConst(c_char);

extern proc TextReplace(text : c_ptrConst(c_char), replace : c_ptrConst(c_char), by_arg : c_ptrConst(c_char)) : c_ptr(c_char);

extern proc TextInsert(text : c_ptrConst(c_char), insert : c_ptrConst(c_char), position : c_int) : c_ptr(c_char);

extern proc TextJoin(ref textList : c_ptrConst(c_char), count : c_int, delimiter : c_ptrConst(c_char)) : c_ptrConst(c_char);

extern proc TextJoin(textList : c_ptr(c_ptrConst(c_char)), count : c_int, delimiter : c_ptrConst(c_char)) : c_ptrConst(c_char);

extern proc TextSplit(text : c_ptrConst(c_char), delimiter : c_char, ref count : c_int) : c_ptr(c_ptrConst(c_char));

extern proc TextSplit(text : c_ptrConst(c_char), delimiter : c_char, count : c_ptr(c_int)) : c_ptr(c_ptrConst(c_char));

extern proc TextAppend(text : c_ptr(c_char), append : c_ptrConst(c_char), ref position : c_int) : void;

extern proc TextAppend(text : c_ptr(c_char), append : c_ptrConst(c_char), position : c_ptr(c_int)) : void;

extern proc TextFindIndex(text : c_ptrConst(c_char), find : c_ptrConst(c_char)) : c_int;

extern proc TextToUpper(text : c_ptrConst(c_char)) : c_ptrConst(c_char);

extern proc TextToLower(text : c_ptrConst(c_char)) : c_ptrConst(c_char);

extern proc TextToPascal(text : c_ptrConst(c_char)) : c_ptrConst(c_char);

extern proc TextToSnake(text : c_ptrConst(c_char)) : c_ptrConst(c_char);

extern proc TextToCamel(text : c_ptrConst(c_char)) : c_ptrConst(c_char);

extern proc TextToInteger(text : c_ptrConst(c_char)) : c_int;

extern proc TextToFloat(text : c_ptrConst(c_char)) : c_float;

extern proc DrawLine3D(in startPos : Vector3, in endPos : Vector3, in color : Color) : void;

extern proc DrawPoint3D(in position : Vector3, in color : Color) : void;

extern proc DrawCircle3D(in center : Vector3, radius : c_float, in rotationAxis : Vector3, rotationAngle : c_float, in color : Color) : void;

extern proc DrawTriangle3D(in v1 : Vector3, in v2 : Vector3, in v3 : Vector3, in color : Color) : void;

extern proc DrawTriangleStrip3D(const ref points : Vector3, pointCount : c_int, in color : Color) : void;

extern proc DrawTriangleStrip3D(points : c_ptrConst(Vector3), pointCount : c_int, in color : Color) : void;

extern proc DrawCube(in position : Vector3, width : c_float, height : c_float, length : c_float, in color : Color) : void;

extern proc DrawCubeV(in position : Vector3, in size : Vector3, in color : Color) : void;

extern proc DrawCubeWires(in position : Vector3, width : c_float, height : c_float, length : c_float, in color : Color) : void;

extern proc DrawCubeWiresV(in position : Vector3, in size : Vector3, in color : Color) : void;

extern proc DrawSphere(in centerPos : Vector3, radius : c_float, in color : Color) : void;

extern proc DrawSphereEx(in centerPos : Vector3, radius : c_float, rings : c_int, slices : c_int, in color : Color) : void;

extern proc DrawSphereWires(in centerPos : Vector3, radius : c_float, rings : c_int, slices : c_int, in color : Color) : void;

extern proc DrawCylinder(in position : Vector3, radiusTop : c_float, radiusBottom : c_float, height : c_float, slices : c_int, in color : Color) : void;

extern proc DrawCylinderEx(in startPos : Vector3, in endPos : Vector3, startRadius : c_float, endRadius : c_float, sides : c_int, in color : Color) : void;

extern proc DrawCylinderWires(in position : Vector3, radiusTop : c_float, radiusBottom : c_float, height : c_float, slices : c_int, in color : Color) : void;

extern proc DrawCylinderWiresEx(in startPos : Vector3, in endPos : Vector3, startRadius : c_float, endRadius : c_float, sides : c_int, in color : Color) : void;

extern proc DrawCapsule(in startPos : Vector3, in endPos : Vector3, radius : c_float, slices : c_int, rings : c_int, in color : Color) : void;

extern proc DrawCapsuleWires(in startPos : Vector3, in endPos : Vector3, radius : c_float, slices : c_int, rings : c_int, in color : Color) : void;

extern proc DrawPlane(in centerPos : Vector3, in size : Vector2, in color : Color) : void;

extern proc DrawRay(in ray : Ray, in color : Color) : void;

extern proc DrawGrid(slices : c_int, spacing : c_float) : void;

extern proc LoadModel(fileName : c_ptrConst(c_char)) : Model;

extern proc LoadModelFromMesh(in mesh : Mesh) : Model;

extern proc IsModelReady(in model : Model) : bool;

extern proc UnloadModel(in model : Model) : void;

extern proc GetModelBoundingBox(in model : Model) : BoundingBox;

extern proc DrawModel(in model : Model, in position : Vector3, scale : c_float, in tint : Color) : void;

extern proc DrawModelEx(in model : Model, in position : Vector3, in rotationAxis : Vector3, rotationAngle : c_float, in scale : Vector3, in tint : Color) : void;

extern proc DrawModelWires(in model : Model, in position : Vector3, scale : c_float, in tint : Color) : void;

extern proc DrawModelWiresEx(in model : Model, in position : Vector3, in rotationAxis : Vector3, rotationAngle : c_float, in scale : Vector3, in tint : Color) : void;

extern proc DrawBoundingBox(in box : BoundingBox, in color : Color) : void;

extern proc DrawBillboard(in camera : Camera, in texture : Texture2D, in position : Vector3, size : c_float, in tint : Color) : void;

extern proc DrawBillboardRec(in camera : Camera, in texture : Texture2D, in source : Rectangle, in position : Vector3, in size : Vector2, in tint : Color) : void;

extern proc DrawBillboardPro(in camera : Camera, in texture : Texture2D, in source : Rectangle, in position : Vector3, in up : Vector3, in size : Vector2, in origin : Vector2, rotation : c_float, in tint : Color) : void;

extern proc UploadMesh(ref mesh : Mesh, dynamic : bool) : void;

extern proc UploadMesh(mesh : c_ptr(Mesh), dynamic : bool) : void;

extern proc UpdateMeshBuffer(in mesh : Mesh, index_arg : c_int, data : c_ptrConst(void), dataSize : c_int, offset : c_int) : void;

extern proc UnloadMesh(in mesh : Mesh) : void;

extern proc DrawMesh(in mesh : Mesh, in material : Material, in transform : Matrix) : void;

extern proc DrawMeshInstanced(in mesh : Mesh, in material : Material, const ref transforms : Matrix, instances : c_int) : void;

extern proc DrawMeshInstanced(in mesh : Mesh, in material : Material, transforms : c_ptrConst(Matrix), instances : c_int) : void;

extern proc GetMeshBoundingBox(in mesh : Mesh) : BoundingBox;

extern proc GenMeshTangents(ref mesh : Mesh) : void;

extern proc GenMeshTangents(mesh : c_ptr(Mesh)) : void;

extern proc ExportMesh(in mesh : Mesh, fileName : c_ptrConst(c_char)) : bool;

extern proc ExportMeshAsCode(in mesh : Mesh, fileName : c_ptrConst(c_char)) : bool;

extern proc GenMeshPoly(sides : c_int, radius : c_float) : Mesh;

extern proc GenMeshPlane(width : c_float, length : c_float, resX : c_int, resZ : c_int) : Mesh;

extern proc GenMeshCube(width : c_float, height : c_float, length : c_float) : Mesh;

extern proc GenMeshSphere(radius : c_float, rings : c_int, slices : c_int) : Mesh;

extern proc GenMeshHemiSphere(radius : c_float, rings : c_int, slices : c_int) : Mesh;

extern proc GenMeshCylinder(radius : c_float, height : c_float, slices : c_int) : Mesh;

extern proc GenMeshCone(radius : c_float, height : c_float, slices : c_int) : Mesh;

extern proc GenMeshTorus(radius : c_float, size : c_float, radSeg : c_int, sides : c_int) : Mesh;

extern proc GenMeshKnot(radius : c_float, size : c_float, radSeg : c_int, sides : c_int) : Mesh;

extern proc GenMeshHeightmap(in heightmap : Image, in size : Vector3) : Mesh;

extern proc GenMeshCubicmap(in cubicmap : Image, in cubeSize : Vector3) : Mesh;

extern proc LoadMaterials(fileName : c_ptrConst(c_char), ref materialCount : c_int) : c_ptr(Material);

extern proc LoadMaterials(fileName : c_ptrConst(c_char), materialCount : c_ptr(c_int)) : c_ptr(Material);

extern proc LoadMaterialDefault() : Material;

extern proc IsMaterialReady(in material : Material) : bool;

extern proc UnloadMaterial(in material : Material) : void;

extern proc SetMaterialTexture(ref material : Material, mapType : c_int, in texture : Texture2D) : void;

extern proc SetMaterialTexture(material : c_ptr(Material), mapType : c_int, in texture : Texture2D) : void;

extern proc SetModelMeshMaterial(ref model : Model, meshId : c_int, materialId : c_int) : void;

extern proc SetModelMeshMaterial(model : c_ptr(Model), meshId : c_int, materialId : c_int) : void;

extern proc LoadModelAnimations(fileName : c_ptrConst(c_char), ref animCount : c_int) : c_ptr(ModelAnimation);

extern proc LoadModelAnimations(fileName : c_ptrConst(c_char), animCount : c_ptr(c_int)) : c_ptr(ModelAnimation);

extern proc UpdateModelAnimation(in model : Model, in anim : ModelAnimation, frame : c_int) : void;

extern proc UnloadModelAnimation(in anim : ModelAnimation) : void;

extern proc UnloadModelAnimations(ref animations : ModelAnimation, animCount : c_int) : void;

extern proc UnloadModelAnimations(animations : c_ptr(ModelAnimation), animCount : c_int) : void;

extern proc IsModelAnimationValid(in model : Model, in anim : ModelAnimation) : bool;

extern proc CheckCollisionSpheres(in center1 : Vector3, radius1 : c_float, in center2 : Vector3, radius2 : c_float) : bool;

extern proc CheckCollisionBoxes(in box1 : BoundingBox, in box2 : BoundingBox) : bool;

extern proc CheckCollisionBoxSphere(in box : BoundingBox, in center : Vector3, radius : c_float) : bool;

extern proc GetRayCollisionSphere(in ray : Ray, in center : Vector3, radius : c_float) : RayCollision;

extern proc GetRayCollisionBox(in ray : Ray, in box : BoundingBox) : RayCollision;

extern proc GetRayCollisionMesh(in ray : Ray, in mesh : Mesh, in transform : Matrix) : RayCollision;

extern proc GetRayCollisionTriangle(in ray : Ray, in p1 : Vector3, in p2 : Vector3, in p3 : Vector3) : RayCollision;

extern proc GetRayCollisionQuad(in ray : Ray, in p1 : Vector3, in p2 : Vector3, in p3 : Vector3, in p4 : Vector3) : RayCollision;

extern proc InitAudioDevice() : void;

extern proc CloseAudioDevice() : void;

extern proc IsAudioDeviceReady() : bool;

extern proc SetMasterVolume(volume : c_float) : void;

extern proc GetMasterVolume() : c_float;

extern proc LoadWave(fileName : c_ptrConst(c_char)) : Wave;

extern proc LoadWaveFromMemory(fileType : c_ptrConst(c_char), fileData : c_ptrConst(c_uchar), dataSize : c_int) : Wave;

extern proc IsWaveReady(in wave : Wave) : bool;

extern proc LoadSound(fileName : c_ptrConst(c_char)) : Sound;

extern proc LoadSoundFromWave(in wave : Wave) : Sound;

extern proc LoadSoundAlias(in source : Sound) : Sound;

extern proc IsSoundReady(in sound : Sound) : bool;

extern proc UpdateSound(in sound : Sound, data : c_ptrConst(void), sampleCount : c_int) : void;

extern proc UnloadWave(in wave : Wave) : void;

extern proc UnloadSound(in sound : Sound) : void;

extern proc UnloadSoundAlias(in alias : Sound) : void;

extern proc ExportWave(in wave : Wave, fileName : c_ptrConst(c_char)) : bool;

extern proc ExportWaveAsCode(in wave : Wave, fileName : c_ptrConst(c_char)) : bool;

extern proc PlaySound(in sound : Sound) : void;

extern proc StopSound(in sound : Sound) : void;

extern proc PauseSound(in sound : Sound) : void;

extern proc ResumeSound(in sound : Sound) : void;

extern proc IsSoundPlaying(in sound : Sound) : bool;

extern proc SetSoundVolume(in sound : Sound, volume : c_float) : void;

extern proc SetSoundPitch(in sound : Sound, pitch : c_float) : void;

extern proc SetSoundPan(in sound : Sound, pan : c_float) : void;

extern proc WaveCopy(in wave : Wave) : Wave;

extern proc WaveCrop(ref wave : Wave, initFrame : c_int, finalFrame : c_int) : void;

extern proc WaveCrop(wave : c_ptr(Wave), initFrame : c_int, finalFrame : c_int) : void;

extern proc WaveFormat(ref wave : Wave, sampleRate : c_int, sampleSize : c_int, channels : c_int) : void;

extern proc WaveFormat(wave : c_ptr(Wave), sampleRate : c_int, sampleSize : c_int, channels : c_int) : void;

extern proc LoadWaveSamples(in wave : Wave) : c_ptr(c_float);

extern proc UnloadWaveSamples(ref samples : c_float) : void;

extern proc UnloadWaveSamples(samples : c_ptr(c_float)) : void;

extern proc LoadMusicStream(fileName : c_ptrConst(c_char)) : Music;

extern proc LoadMusicStreamFromMemory(fileType : c_ptrConst(c_char), data : c_ptrConst(c_uchar), dataSize : c_int) : Music;

extern proc IsMusicReady(in music : Music) : bool;

extern proc UnloadMusicStream(in music : Music) : void;

extern proc PlayMusicStream(in music : Music) : void;

extern proc IsMusicStreamPlaying(in music : Music) : bool;

extern proc UpdateMusicStream(in music : Music) : void;

extern proc StopMusicStream(in music : Music) : void;

extern proc PauseMusicStream(in music : Music) : void;

extern proc ResumeMusicStream(in music : Music) : void;

extern proc SeekMusicStream(in music : Music, position : c_float) : void;

extern proc SetMusicVolume(in music : Music, volume : c_float) : void;

extern proc SetMusicPitch(in music : Music, pitch : c_float) : void;

extern proc SetMusicPan(in music : Music, pan : c_float) : void;

extern proc GetMusicTimeLength(in music : Music) : c_float;

extern proc GetMusicTimePlayed(in music : Music) : c_float;

extern proc LoadAudioStream(sampleRate : c_uint, sampleSize : c_uint, channels : c_uint) : AudioStream;

extern proc IsAudioStreamReady(in stream : AudioStream) : bool;

extern proc UnloadAudioStream(in stream : AudioStream) : void;

extern proc UpdateAudioStream(in stream : AudioStream, data : c_ptrConst(void), frameCount : c_int) : void;

extern proc IsAudioStreamProcessed(in stream : AudioStream) : bool;

extern proc PlayAudioStream(in stream : AudioStream) : void;

extern proc PauseAudioStream(in stream : AudioStream) : void;

extern proc ResumeAudioStream(in stream : AudioStream) : void;

extern proc IsAudioStreamPlaying(in stream : AudioStream) : bool;

extern proc StopAudioStream(in stream : AudioStream) : void;

extern proc SetAudioStreamVolume(in stream : AudioStream, volume : c_float) : void;

extern proc SetAudioStreamPitch(in stream : AudioStream, pitch : c_float) : void;

extern proc SetAudioStreamPan(in stream : AudioStream, pan : c_float) : void;

extern proc SetAudioStreamBufferSizeDefault(size : c_int) : void;

extern proc SetAudioStreamCallback(in stream : AudioStream, callback : AudioCallback) : void;

extern proc AttachAudioStreamProcessor(in stream : AudioStream, processor : AudioCallback) : void;

extern proc DetachAudioStreamProcessor(in stream : AudioStream, processor : AudioCallback) : void;

extern proc AttachAudioMixedProcessor(processor : AudioCallback) : void;

extern proc DetachAudioMixedProcessor(processor : AudioCallback) : void;

// ==== c2chapel typedefs ====

extern type AudioCallback = c_fn_ptr;

extern record AudioStream {
  var buffer : c_ptr(rAudioBuffer);
  var processor : c_ptr(rAudioProcessor);
  var sampleRate : c_uint;
  var sampleSize : c_uint;
  var channels : c_uint;
}

// Fields omitted because one or more of the identifiers is a Chapel keyword
extern record AutomationEvent {}

extern record AutomationEventList {
  var capacity : c_uint;
  var count : c_uint;
  var events : c_ptr(AutomationEvent);
}

// BlendMode enum
extern type BlendMode = c_int;
extern const BLEND_ALPHA :BlendMode;
extern const BLEND_ADDITIVE :BlendMode;
extern const BLEND_MULTIPLIED :BlendMode;
extern const BLEND_ADD_COLORS :BlendMode;
extern const BLEND_SUBTRACT_COLORS :BlendMode;
extern const BLEND_ALPHA_PREMULTIPLY :BlendMode;
extern const BLEND_CUSTOM :BlendMode;
extern const BLEND_CUSTOM_SEPARATE :BlendMode;


extern record BoneInfo {
  var name : c_ptr(c_char);
  var parent : c_int;
}

extern record BoundingBox {
  var min : Vector3;
  var max : Vector3;
}

extern type Camera = Camera3D;

extern record Camera2D {
  var offset : Vector2;
  var target : Vector2;
  var rotation : c_float;
  var zoom : c_float;
}

extern record Camera3D {
  var position : Vector3;
  var target : Vector3;
  var up : Vector3;
  var fovy : c_float;
  var projection : c_int;
}

// CameraMode enum
extern type CameraMode = c_int;
extern const CAMERA_CUSTOM :CameraMode;
extern const CAMERA_FREE :CameraMode;
extern const CAMERA_ORBITAL :CameraMode;
extern const CAMERA_FIRST_PERSON :CameraMode;
extern const CAMERA_THIRD_PERSON :CameraMode;


// CameraProjection enum
extern type CameraProjection = c_int;
extern const CAMERA_PERSPECTIVE :CameraProjection;
extern const CAMERA_ORTHOGRAPHIC :CameraProjection;


// ConfigFlags enum
extern type ConfigFlags = c_int;
extern const FLAG_VSYNC_HINT :ConfigFlags;
extern const FLAG_FULLSCREEN_MODE :ConfigFlags;
extern const FLAG_WINDOW_RESIZABLE :ConfigFlags;
extern const FLAG_WINDOW_UNDECORATED :ConfigFlags;
extern const FLAG_WINDOW_HIDDEN :ConfigFlags;
extern const FLAG_WINDOW_MINIMIZED :ConfigFlags;
extern const FLAG_WINDOW_MAXIMIZED :ConfigFlags;
extern const FLAG_WINDOW_UNFOCUSED :ConfigFlags;
extern const FLAG_WINDOW_TOPMOST :ConfigFlags;
extern const FLAG_WINDOW_ALWAYS_RUN :ConfigFlags;
extern const FLAG_WINDOW_TRANSPARENT :ConfigFlags;
extern const FLAG_WINDOW_HIGHDPI :ConfigFlags;
extern const FLAG_WINDOW_MOUSE_PASSTHROUGH :ConfigFlags;
extern const FLAG_BORDERLESS_WINDOWED_MODE :ConfigFlags;
extern const FLAG_MSAA_4X_HINT :ConfigFlags;
extern const FLAG_INTERLACED_HINT :ConfigFlags;


// CubemapLayout enum
extern type CubemapLayout = c_int;
extern const CUBEMAP_LAYOUT_AUTO_DETECT :CubemapLayout;
extern const CUBEMAP_LAYOUT_LINE_VERTICAL :CubemapLayout;
extern const CUBEMAP_LAYOUT_LINE_HORIZONTAL :CubemapLayout;
extern const CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR :CubemapLayout;
extern const CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE :CubemapLayout;
extern const CUBEMAP_LAYOUT_PANORAMA :CubemapLayout;


extern record FilePathList {
  var capacity : c_uint;
  var count : c_uint;
  var paths : c_ptr(c_ptr(c_char));
}

extern record Font {
  var baseSize : c_int;
  var glyphCount : c_int;
  var glyphPadding : c_int;
  var texture : Texture2D;
  var recs : c_ptr(Rectangle);
  var glyphs : c_ptr(GlyphInfo);
}

// FontType enum
extern type FontType = c_int;
extern const FONT_DEFAULT :FontType;
extern const FONT_BITMAP :FontType;
extern const FONT_SDF :FontType;


// GamepadAxis enum
extern type GamepadAxis = c_int;
extern const GAMEPAD_AXIS_LEFT_X :GamepadAxis;
extern const GAMEPAD_AXIS_LEFT_Y :GamepadAxis;
extern const GAMEPAD_AXIS_RIGHT_X :GamepadAxis;
extern const GAMEPAD_AXIS_RIGHT_Y :GamepadAxis;
extern const GAMEPAD_AXIS_LEFT_TRIGGER :GamepadAxis;
extern const GAMEPAD_AXIS_RIGHT_TRIGGER :GamepadAxis;


// GamepadButton enum
extern type GamepadButton = c_int;
extern const GAMEPAD_BUTTON_UNKNOWN :GamepadButton;
extern const GAMEPAD_BUTTON_LEFT_FACE_UP :GamepadButton;
extern const GAMEPAD_BUTTON_LEFT_FACE_RIGHT :GamepadButton;
extern const GAMEPAD_BUTTON_LEFT_FACE_DOWN :GamepadButton;
extern const GAMEPAD_BUTTON_LEFT_FACE_LEFT :GamepadButton;
extern const GAMEPAD_BUTTON_RIGHT_FACE_UP :GamepadButton;
extern const GAMEPAD_BUTTON_RIGHT_FACE_RIGHT :GamepadButton;
extern const GAMEPAD_BUTTON_RIGHT_FACE_DOWN :GamepadButton;
extern const GAMEPAD_BUTTON_RIGHT_FACE_LEFT :GamepadButton;
extern const GAMEPAD_BUTTON_LEFT_TRIGGER_1 :GamepadButton;
extern const GAMEPAD_BUTTON_LEFT_TRIGGER_2 :GamepadButton;
extern const GAMEPAD_BUTTON_RIGHT_TRIGGER_1 :GamepadButton;
extern const GAMEPAD_BUTTON_RIGHT_TRIGGER_2 :GamepadButton;
extern const GAMEPAD_BUTTON_MIDDLE_LEFT :GamepadButton;
extern const GAMEPAD_BUTTON_MIDDLE :GamepadButton;
extern const GAMEPAD_BUTTON_MIDDLE_RIGHT :GamepadButton;
extern const GAMEPAD_BUTTON_LEFT_THUMB :GamepadButton;
extern const GAMEPAD_BUTTON_RIGHT_THUMB :GamepadButton;


// Gesture enum
extern type Gesture = c_int;
extern const GESTURE_NONE :Gesture;
extern const GESTURE_TAP :Gesture;
extern const GESTURE_DOUBLETAP :Gesture;
extern const GESTURE_HOLD :Gesture;
extern const GESTURE_DRAG :Gesture;
extern const GESTURE_SWIPE_RIGHT :Gesture;
extern const GESTURE_SWIPE_LEFT :Gesture;
extern const GESTURE_SWIPE_UP :Gesture;
extern const GESTURE_SWIPE_DOWN :Gesture;
extern const GESTURE_PINCH_IN :Gesture;
extern const GESTURE_PINCH_OUT :Gesture;


extern record GlyphInfo {
  var value : c_int;
  var offsetX : c_int;
  var offsetY : c_int;
  var advanceX : c_int;
  var image : Image;
}

extern record Image {
  var data : c_ptr(void);
  var width : c_int;
  var height : c_int;
  var mipmaps : c_int;
  var format : c_int;
}

// KeyboardKey enum
extern type KeyboardKey = c_int;
extern const KEY_NULL :KeyboardKey;
extern const KEY_APOSTROPHE :KeyboardKey;
extern const KEY_COMMA :KeyboardKey;
extern const KEY_MINUS :KeyboardKey;
extern const KEY_PERIOD :KeyboardKey;
extern const KEY_SLASH :KeyboardKey;
extern const KEY_ZERO :KeyboardKey;
extern const KEY_ONE :KeyboardKey;
extern const KEY_TWO :KeyboardKey;
extern const KEY_THREE :KeyboardKey;
extern const KEY_FOUR :KeyboardKey;
extern const KEY_FIVE :KeyboardKey;
extern const KEY_SIX :KeyboardKey;
extern const KEY_SEVEN :KeyboardKey;
extern const KEY_EIGHT :KeyboardKey;
extern const KEY_NINE :KeyboardKey;
extern const KEY_SEMICOLON :KeyboardKey;
extern const KEY_EQUAL :KeyboardKey;
extern const KEY_A :KeyboardKey;
extern const KEY_B :KeyboardKey;
extern const KEY_C :KeyboardKey;
extern const KEY_D :KeyboardKey;
extern const KEY_E :KeyboardKey;
extern const KEY_F :KeyboardKey;
extern const KEY_G :KeyboardKey;
extern const KEY_H :KeyboardKey;
extern const KEY_I :KeyboardKey;
extern const KEY_J :KeyboardKey;
extern const KEY_K :KeyboardKey;
extern const KEY_L :KeyboardKey;
extern const KEY_M :KeyboardKey;
extern const KEY_N :KeyboardKey;
extern const KEY_O :KeyboardKey;
extern const KEY_P :KeyboardKey;
extern const KEY_Q :KeyboardKey;
extern const KEY_R :KeyboardKey;
extern const KEY_S :KeyboardKey;
extern const KEY_T :KeyboardKey;
extern const KEY_U :KeyboardKey;
extern const KEY_V :KeyboardKey;
extern const KEY_W :KeyboardKey;
extern const KEY_X :KeyboardKey;
extern const KEY_Y :KeyboardKey;
extern const KEY_Z :KeyboardKey;
extern const KEY_LEFT_BRACKET :KeyboardKey;
extern const KEY_BACKSLASH :KeyboardKey;
extern const KEY_RIGHT_BRACKET :KeyboardKey;
extern const KEY_GRAVE :KeyboardKey;
extern const KEY_SPACE :KeyboardKey;
extern const KEY_ESCAPE :KeyboardKey;
extern const KEY_ENTER :KeyboardKey;
extern const KEY_TAB :KeyboardKey;
extern const KEY_BACKSPACE :KeyboardKey;
extern const KEY_INSERT :KeyboardKey;
extern const KEY_DELETE :KeyboardKey;
extern const KEY_RIGHT :KeyboardKey;
extern const KEY_LEFT :KeyboardKey;
extern const KEY_DOWN :KeyboardKey;
extern const KEY_UP :KeyboardKey;
extern const KEY_PAGE_UP :KeyboardKey;
extern const KEY_PAGE_DOWN :KeyboardKey;
extern const KEY_HOME :KeyboardKey;
extern const KEY_END :KeyboardKey;
extern const KEY_CAPS_LOCK :KeyboardKey;
extern const KEY_SCROLL_LOCK :KeyboardKey;
extern const KEY_NUM_LOCK :KeyboardKey;
extern const KEY_PRINT_SCREEN :KeyboardKey;
extern const KEY_PAUSE :KeyboardKey;
extern const KEY_F1 :KeyboardKey;
extern const KEY_F2 :KeyboardKey;
extern const KEY_F3 :KeyboardKey;
extern const KEY_F4 :KeyboardKey;
extern const KEY_F5 :KeyboardKey;
extern const KEY_F6 :KeyboardKey;
extern const KEY_F7 :KeyboardKey;
extern const KEY_F8 :KeyboardKey;
extern const KEY_F9 :KeyboardKey;
extern const KEY_F10 :KeyboardKey;
extern const KEY_F11 :KeyboardKey;
extern const KEY_F12 :KeyboardKey;
extern const KEY_LEFT_SHIFT :KeyboardKey;
extern const KEY_LEFT_CONTROL :KeyboardKey;
extern const KEY_LEFT_ALT :KeyboardKey;
extern const KEY_LEFT_SUPER :KeyboardKey;
extern const KEY_RIGHT_SHIFT :KeyboardKey;
extern const KEY_RIGHT_CONTROL :KeyboardKey;
extern const KEY_RIGHT_ALT :KeyboardKey;
extern const KEY_RIGHT_SUPER :KeyboardKey;
extern const KEY_KB_MENU :KeyboardKey;
extern const KEY_KP_0 :KeyboardKey;
extern const KEY_KP_1 :KeyboardKey;
extern const KEY_KP_2 :KeyboardKey;
extern const KEY_KP_3 :KeyboardKey;
extern const KEY_KP_4 :KeyboardKey;
extern const KEY_KP_5 :KeyboardKey;
extern const KEY_KP_6 :KeyboardKey;
extern const KEY_KP_7 :KeyboardKey;
extern const KEY_KP_8 :KeyboardKey;
extern const KEY_KP_9 :KeyboardKey;
extern const KEY_KP_DECIMAL :KeyboardKey;
extern const KEY_KP_DIVIDE :KeyboardKey;
extern const KEY_KP_MULTIPLY :KeyboardKey;
extern const KEY_KP_SUBTRACT :KeyboardKey;
extern const KEY_KP_ADD :KeyboardKey;
extern const KEY_KP_ENTER :KeyboardKey;
extern const KEY_KP_EQUAL :KeyboardKey;
extern const KEY_BACK :KeyboardKey;
extern const KEY_MENU :KeyboardKey;
extern const KEY_VOLUME_UP :KeyboardKey;
extern const KEY_VOLUME_DOWN :KeyboardKey;


extern type LoadFileDataCallback = c_fn_ptr;

extern type LoadFileTextCallback = c_fn_ptr;

extern record Material {
  var shader : Shader;
  var maps : c_ptr(MaterialMap);
  var params : c_ptr(c_float);
}

extern record MaterialMap {
  var texture : Texture2D;
  var color : Color;
  var value : c_float;
}

// MaterialMapIndex enum
extern type MaterialMapIndex = c_int;
extern const MATERIAL_MAP_ALBEDO :MaterialMapIndex;
extern const MATERIAL_MAP_METALNESS :MaterialMapIndex;
extern const MATERIAL_MAP_NORMAL :MaterialMapIndex;
extern const MATERIAL_MAP_ROUGHNESS :MaterialMapIndex;
extern const MATERIAL_MAP_OCCLUSION :MaterialMapIndex;
extern const MATERIAL_MAP_EMISSION :MaterialMapIndex;
extern const MATERIAL_MAP_HEIGHT :MaterialMapIndex;
extern const MATERIAL_MAP_CUBEMAP :MaterialMapIndex;
extern const MATERIAL_MAP_IRRADIANCE :MaterialMapIndex;
extern const MATERIAL_MAP_PREFILTER :MaterialMapIndex;
extern const MATERIAL_MAP_BRDF :MaterialMapIndex;


extern record Matrix {
  var m0 : c_float;
  var m4 : c_float;
  var m8 : c_float;
  var m12 : c_float;
  var m1 : c_float;
  var m5 : c_float;
  var m9 : c_float;
  var m13 : c_float;
  var m2 : c_float;
  var m6 : c_float;
  var m10 : c_float;
  var m14 : c_float;
  var m3 : c_float;
  var m7 : c_float;
  var m11 : c_float;
  var m15 : c_float;
}

extern record Mesh {
  var vertexCount : c_int;
  var triangleCount : c_int;
  var vertices : c_ptr(c_float);
  var texcoords : c_ptr(c_float);
  var texcoords2 : c_ptr(c_float);
  var normals : c_ptr(c_float);
  var tangents : c_ptr(c_float);
  var colors : c_ptr(c_uchar);
  var indices : c_ptr(c_ushort);
  var animVertices : c_ptr(c_float);
  var animNormals : c_ptr(c_float);
  var boneIds : c_ptr(c_uchar);
  var boneWeights : c_ptr(c_float);
  var vaoId : c_uint;
  var vboId : c_ptr(c_uint);
}

extern record Model {
  var transform : Matrix;
  var meshCount : c_int;
  var materialCount : c_int;
  var meshes : c_ptr(Mesh);
  var materials : c_ptr(Material);
  var meshMaterial : c_ptr(c_int);
  var boneCount : c_int;
  var bones : c_ptr(BoneInfo);
  var bindPose : c_ptr(Transform);
}

extern record ModelAnimation {
  var boneCount : c_int;
  var frameCount : c_int;
  var bones : c_ptr(BoneInfo);
  var framePoses : c_ptr(c_ptr(Transform));
  var name : c_ptr(c_char);
}

// MouseButton enum
extern type MouseButton = c_int;
extern const MOUSE_BUTTON_LEFT :MouseButton;
extern const MOUSE_BUTTON_RIGHT :MouseButton;
extern const MOUSE_BUTTON_MIDDLE :MouseButton;
extern const MOUSE_BUTTON_SIDE :MouseButton;
extern const MOUSE_BUTTON_EXTRA :MouseButton;
extern const MOUSE_BUTTON_FORWARD :MouseButton;
extern const MOUSE_BUTTON_BACK :MouseButton;


// MouseCursor enum
extern type MouseCursor = c_int;
extern const MOUSE_CURSOR_DEFAULT :MouseCursor;
extern const MOUSE_CURSOR_ARROW :MouseCursor;
extern const MOUSE_CURSOR_IBEAM :MouseCursor;
extern const MOUSE_CURSOR_CROSSHAIR :MouseCursor;
extern const MOUSE_CURSOR_POINTING_HAND :MouseCursor;
extern const MOUSE_CURSOR_RESIZE_EW :MouseCursor;
extern const MOUSE_CURSOR_RESIZE_NS :MouseCursor;
extern const MOUSE_CURSOR_RESIZE_NWSE :MouseCursor;
extern const MOUSE_CURSOR_RESIZE_NESW :MouseCursor;
extern const MOUSE_CURSOR_RESIZE_ALL :MouseCursor;
extern const MOUSE_CURSOR_NOT_ALLOWED :MouseCursor;


extern record Music {
  var stream : AudioStream;
  var frameCount : c_uint;
  var looping : bool;
  var ctxType : c_int;
  var ctxData : c_ptr(void);
}

extern record NPatchInfo {
  var source : Rectangle;
  var left : c_int;
  var top : c_int;
  var right : c_int;
  var bottom : c_int;
  var layout : c_int;
}

// NPatchLayout enum
extern type NPatchLayout = c_int;
extern const NPATCH_NINE_PATCH :NPatchLayout;
extern const NPATCH_THREE_PATCH_VERTICAL :NPatchLayout;
extern const NPATCH_THREE_PATCH_HORIZONTAL :NPatchLayout;


// PixelFormat enum
extern type PixelFormat = c_int;
extern const PIXELFORMAT_UNCOMPRESSED_GRAYSCALE :PixelFormat;
extern const PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA :PixelFormat;
extern const PIXELFORMAT_UNCOMPRESSED_R5G6B5 :PixelFormat;
extern const PIXELFORMAT_UNCOMPRESSED_R8G8B8 :PixelFormat;
extern const PIXELFORMAT_UNCOMPRESSED_R5G5B5A1 :PixelFormat;
extern const PIXELFORMAT_UNCOMPRESSED_R4G4B4A4 :PixelFormat;
extern const PIXELFORMAT_UNCOMPRESSED_R8G8B8A8 :PixelFormat;
extern const PIXELFORMAT_UNCOMPRESSED_R32 :PixelFormat;
extern const PIXELFORMAT_UNCOMPRESSED_R32G32B32 :PixelFormat;
extern const PIXELFORMAT_UNCOMPRESSED_R32G32B32A32 :PixelFormat;
extern const PIXELFORMAT_UNCOMPRESSED_R16 :PixelFormat;
extern const PIXELFORMAT_UNCOMPRESSED_R16G16B16 :PixelFormat;
extern const PIXELFORMAT_UNCOMPRESSED_R16G16B16A16 :PixelFormat;
extern const PIXELFORMAT_COMPRESSED_DXT1_RGB :PixelFormat;
extern const PIXELFORMAT_COMPRESSED_DXT1_RGBA :PixelFormat;
extern const PIXELFORMAT_COMPRESSED_DXT3_RGBA :PixelFormat;
extern const PIXELFORMAT_COMPRESSED_DXT5_RGBA :PixelFormat;
extern const PIXELFORMAT_COMPRESSED_ETC1_RGB :PixelFormat;
extern const PIXELFORMAT_COMPRESSED_ETC2_RGB :PixelFormat;
extern const PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA :PixelFormat;
extern const PIXELFORMAT_COMPRESSED_PVRT_RGB :PixelFormat;
extern const PIXELFORMAT_COMPRESSED_PVRT_RGBA :PixelFormat;
extern const PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA :PixelFormat;
extern const PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA :PixelFormat;


extern type Quaternion = Vector4;

extern record Ray {
  var position : Vector3;
  var direction : Vector3;
}

extern record RayCollision {
  var hit : bool;
  var distance : c_float;
  var point : Vector3;
  var normal : Vector3;
}

extern record Rectangle {
  var x : c_float;
  var y : c_float;
  var width : c_float;
  var height : c_float;
}

extern record RenderTexture {
  var id : c_uint;
  var texture : Texture;
  var depth : Texture;
}

extern type RenderTexture2D = RenderTexture;

extern type SaveFileDataCallback = c_fn_ptr;

extern type SaveFileTextCallback = c_fn_ptr;

extern record Shader {
  var id : c_uint;
  var locs : c_ptr(c_int);
}

// ShaderAttributeDataType enum
extern type ShaderAttributeDataType = c_int;
extern const SHADER_ATTRIB_FLOAT :ShaderAttributeDataType;
extern const SHADER_ATTRIB_VEC2 :ShaderAttributeDataType;
extern const SHADER_ATTRIB_VEC3 :ShaderAttributeDataType;
extern const SHADER_ATTRIB_VEC4 :ShaderAttributeDataType;


// ShaderLocationIndex enum
extern type ShaderLocationIndex = c_int;
extern const SHADER_LOC_VERTEX_POSITION :ShaderLocationIndex;
extern const SHADER_LOC_VERTEX_TEXCOORD01 :ShaderLocationIndex;
extern const SHADER_LOC_VERTEX_TEXCOORD02 :ShaderLocationIndex;
extern const SHADER_LOC_VERTEX_NORMAL :ShaderLocationIndex;
extern const SHADER_LOC_VERTEX_TANGENT :ShaderLocationIndex;
extern const SHADER_LOC_VERTEX_COLOR :ShaderLocationIndex;
extern const SHADER_LOC_MATRIX_MVP :ShaderLocationIndex;
extern const SHADER_LOC_MATRIX_VIEW :ShaderLocationIndex;
extern const SHADER_LOC_MATRIX_PROJECTION :ShaderLocationIndex;
extern const SHADER_LOC_MATRIX_MODEL :ShaderLocationIndex;
extern const SHADER_LOC_MATRIX_NORMAL :ShaderLocationIndex;
extern const SHADER_LOC_VECTOR_VIEW :ShaderLocationIndex;
extern const SHADER_LOC_COLOR_DIFFUSE :ShaderLocationIndex;
extern const SHADER_LOC_COLOR_SPECULAR :ShaderLocationIndex;
extern const SHADER_LOC_COLOR_AMBIENT :ShaderLocationIndex;
extern const SHADER_LOC_MAP_ALBEDO :ShaderLocationIndex;
extern const SHADER_LOC_MAP_METALNESS :ShaderLocationIndex;
extern const SHADER_LOC_MAP_NORMAL :ShaderLocationIndex;
extern const SHADER_LOC_MAP_ROUGHNESS :ShaderLocationIndex;
extern const SHADER_LOC_MAP_OCCLUSION :ShaderLocationIndex;
extern const SHADER_LOC_MAP_EMISSION :ShaderLocationIndex;
extern const SHADER_LOC_MAP_HEIGHT :ShaderLocationIndex;
extern const SHADER_LOC_MAP_CUBEMAP :ShaderLocationIndex;
extern const SHADER_LOC_MAP_IRRADIANCE :ShaderLocationIndex;
extern const SHADER_LOC_MAP_PREFILTER :ShaderLocationIndex;
extern const SHADER_LOC_MAP_BRDF :ShaderLocationIndex;


// ShaderUniformDataType enum
extern type ShaderUniformDataType = c_int;
extern const SHADER_UNIFORM_FLOAT :ShaderUniformDataType;
extern const SHADER_UNIFORM_VEC2 :ShaderUniformDataType;
extern const SHADER_UNIFORM_VEC3 :ShaderUniformDataType;
extern const SHADER_UNIFORM_VEC4 :ShaderUniformDataType;
extern const SHADER_UNIFORM_INT :ShaderUniformDataType;
extern const SHADER_UNIFORM_IVEC2 :ShaderUniformDataType;
extern const SHADER_UNIFORM_IVEC3 :ShaderUniformDataType;
extern const SHADER_UNIFORM_IVEC4 :ShaderUniformDataType;
extern const SHADER_UNIFORM_SAMPLER2D :ShaderUniformDataType;


extern record Sound {
  var stream : AudioStream;
  var frameCount : c_uint;
}

extern record Texture {
  var id : c_uint;
  var width : c_int;
  var height : c_int;
  var mipmaps : c_int;
  var format : c_int;
}

extern type Texture2D = Texture;

extern type TextureCubemap = Texture;

// TextureFilter enum
extern type TextureFilter = c_int;
extern const TEXTURE_FILTER_POINT :TextureFilter;
extern const TEXTURE_FILTER_BILINEAR :TextureFilter;
extern const TEXTURE_FILTER_TRILINEAR :TextureFilter;
extern const TEXTURE_FILTER_ANISOTROPIC_4X :TextureFilter;
extern const TEXTURE_FILTER_ANISOTROPIC_8X :TextureFilter;
extern const TEXTURE_FILTER_ANISOTROPIC_16X :TextureFilter;


// TextureWrap enum
extern type TextureWrap = c_int;
extern const TEXTURE_WRAP_REPEAT :TextureWrap;
extern const TEXTURE_WRAP_CLAMP :TextureWrap;
extern const TEXTURE_WRAP_MIRROR_REPEAT :TextureWrap;
extern const TEXTURE_WRAP_MIRROR_CLAMP :TextureWrap;


extern type TraceLogCallback = c_fn_ptr;

// TraceLogLevel enum
extern type TraceLogLevel = c_int;
extern const LOG_ALL :TraceLogLevel;
extern const LOG_TRACE :TraceLogLevel;
extern const LOG_DEBUG :TraceLogLevel;
extern const LOG_INFO :TraceLogLevel;
extern const LOG_WARNING :TraceLogLevel;
extern const LOG_ERROR :TraceLogLevel;
extern const LOG_FATAL :TraceLogLevel;
extern const LOG_NONE :TraceLogLevel;


extern record Transform {
  var translation : Vector3;
  var rotation : Quaternion;
  var scale : Vector3;
}

extern record Vector2 {
  var x : c_float;
  var y : c_float;
}

extern record Vector3 {
  var x : c_float;
  var y : c_float;
  var z : c_float;
}

extern record Vector4 {
  var x : c_float;
  var y : c_float;
  var z : c_float;
  var w : c_float;
}

extern record VrDeviceInfo {
  var hResolution : c_int;
  var vResolution : c_int;
  var hScreenSize : c_float;
  var vScreenSize : c_float;
  var eyeToScreenDistance : c_float;
  var lensSeparationDistance : c_float;
  var interpupillaryDistance : c_float;
  var lensDistortionValues : c_ptr(c_float);
  var chromaAbCorrection : c_ptr(c_float);
}

extern record VrStereoConfig {
  var projection : c_ptr(Matrix);
  var viewOffset : c_ptr(Matrix);
  var leftLensCenter : c_ptr(c_float);
  var rightLensCenter : c_ptr(c_float);
  var leftScreenCenter : c_ptr(c_float);
  var rightScreenCenter : c_ptr(c_float);
  var scale : c_ptr(c_float);
  var scaleIn : c_ptr(c_float);
}

extern record Wave {
  var frameCount : c_uint;
  var sampleRate : c_uint;
  var sampleSize : c_uint;
  var channels : c_uint;
  var data : c_ptr(void);
}

// Opaque struct?
extern record rAudioBuffer {};

// Opaque struct?
extern record rAudioProcessor {};

// c2chapel thinks these typedefs are from the fake headers:
/*
extern type FILE = c_int;

// Opaque struct?
extern record MirBlob {};

// Opaque struct?
extern record MirBufferStream {};

// Opaque struct?
extern record MirConnection {};

// Opaque struct?
extern record MirDisplayConfig {};

extern type MirEGLNativeDisplayType = c_ptr(void);

extern type MirEGLNativeWindowType = c_ptr(void);

// Opaque struct?
extern record MirPersistentId {};

// Opaque struct?
extern record MirPromptSession {};

// Opaque struct?
extern record MirScreencast {};

// Opaque struct?
extern record MirSurface {};

// Opaque struct?
extern record MirSurfaceSpec {};

extern type _LOCK_RECURSIVE_T = c_int;

extern type _LOCK_T = c_int;

extern type __FILE = c_int;

extern type __ULong = c_int;

extern type __builtin_va_list = c_int;

extern type __dev_t = c_int;

extern type __gid_t = c_int;

extern type __gnuc_va_list = c_int;

extern type __int16_t = c_int;

extern type __int32_t = c_int;

extern type __int64_t = c_int;

extern type __int8_t = c_int;

extern type __int_least16_t = c_int;

extern type __int_least32_t = c_int;

extern type __loff_t = c_int;

extern type __off_t = c_int;

extern type __pid_t = c_int;

extern type __s16 = c_int;

extern type __s32 = c_int;

extern type __s64 = c_int;

extern type __s8 = c_int;

extern type __sigset_t = c_int;

extern type __tzinfo_type = c_int;

extern type __tzrule_type = c_int;

extern type __u16 = c_int;

extern type __u32 = c_int;

extern type __u64 = c_int;

extern type __u8 = c_int;

extern type __uid_t = c_int;

extern type __uint16_t = c_int;

extern type __uint32_t = c_int;

extern type __uint64_t = c_int;

extern type __uint8_t = c_int;

extern type __uint_least16_t = c_int;

extern type __uint_least32_t = c_int;

extern type _flock_t = c_int;

extern type _fpos_t = c_int;

extern type _iconv_t = c_int;

extern type _mbstate_t = c_int;

extern type _off64_t = c_int;

extern type _off_t = c_int;

extern type _sig_func_ptr = c_int;

extern type _ssize_t = c_int;

extern type _types_fd_set = c_int;

extern type bool = _Bool;

extern type caddr_t = c_int;

extern type clock_t = c_int;

extern type clockid_t = c_int;

extern type cookie_close_function_t = c_int;

extern type cookie_io_functions_t = c_int;

extern type cookie_read_function_t = c_int;

extern type cookie_seek_function_t = c_int;

extern type cookie_write_function_t = c_int;

extern type daddr_t = c_int;

extern type dev_t = c_int;

extern type div_t = c_int;

extern type fd_mask = c_int;

extern type fpos_t = c_int;

extern type gid_t = c_int;

extern type ino_t = c_int;

extern type int16_t = c_int;

extern type int32_t = c_int;

extern type int64_t = c_int;

extern type int8_t = c_int;

extern type int_fast16_t = c_int;

extern type int_fast32_t = c_int;

extern type int_fast64_t = c_int;

extern type int_fast8_t = c_int;

extern type int_least16_t = c_int;

extern type int_least32_t = c_int;

extern type int_least64_t = c_int;

extern type int_least8_t = c_int;

extern type intmax_t = c_int;

extern type intptr_t = c_int;

extern type jmp_buf = c_int;

extern type key_t = c_int;

extern type ldiv_t = c_int;

extern type lldiv_t = c_int;

extern type mbstate_t = c_int;

extern type mode_t = c_int;

extern type nlink_t = c_int;

extern type off_t = c_int;

extern type pid_t = c_int;

extern type pthread_attr_t = c_int;

extern type pthread_barrier_t = c_int;

extern type pthread_barrierattr_t = c_int;

extern type pthread_cond_t = c_int;

extern type pthread_condattr_t = c_int;

extern type pthread_key_t = c_int;

extern type pthread_mutex_t = c_int;

extern type pthread_mutexattr_t = c_int;

extern type pthread_once_t = c_int;

extern type pthread_rwlock_t = c_int;

extern type pthread_rwlockattr_t = c_int;

extern type pthread_spinlock_t = c_int;

extern type pthread_t = c_int;

extern type ptrdiff_t = c_int;

extern type rlim_t = c_int;

extern type sa_family_t = c_int;

extern type sem_t = c_int;

extern type sig_atomic_t = c_int;

extern type siginfo_t = c_int;

extern type sigjmp_buf = c_int;

extern type sigset_t = c_int;

extern type size_t = c_int;

extern type ssize_t = c_int;

extern type stack_t = c_int;

extern type suseconds_t = c_int;

extern type time_t = c_int;

extern type timer_t = c_int;

extern type u_char = c_int;

extern type u_int = c_int;

extern type u_long = c_int;

extern type u_short = c_int;

extern type uid_t = c_int;

extern type uint = c_int;

extern type uint16_t = c_int;

extern type uint32_t = c_int;

extern type uint64_t = c_int;

extern type uint8_t = c_int;

extern type uint_fast16_t = c_int;

extern type uint_fast32_t = c_int;

extern type uint_fast64_t = c_int;

extern type uint_fast8_t = c_int;

extern type uint_least16_t = c_int;

extern type uint_least32_t = c_int;

extern type uint_least64_t = c_int;

extern type uint_least8_t = c_int;

extern type uintmax_t = c_int;

extern type uintptr_t = c_int;

extern type useconds_t = c_int;

extern type ushort = c_int;

extern type va_list = c_int;

extern type wchar_t = c_int;

extern type wint_t = c_int;

// Opaque struct?
extern record xcb_connection_t {};

extern type xcb_visualid_t = uint(32);

extern type xcb_window_t = uint(32);

extern type z_stream = c_int;

*/
}