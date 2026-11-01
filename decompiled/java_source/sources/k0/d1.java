package k0;

import android.graphics.Bitmap;
import android.graphics.BlendMode;
import android.graphics.Canvas;
import android.graphics.DrawFilter;
import android.graphics.Matrix;
import android.graphics.NinePatch;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Picture;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.RenderNode;
import android.graphics.fonts.Font;
import android.graphics.text.MeasuredText;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class d1 extends Canvas {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Canvas f66506a;

    public final void a(Canvas canvas) {
        this.f66506a = canvas;
    }

    @Override // android.graphics.Canvas
    public boolean clipOutPath(Path path) {
        m mVar = m.f66546a;
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        return mVar.a(canvas, path);
    }

    @Override // android.graphics.Canvas
    public boolean clipOutRect(float f11, float f12, float f13, float f14) {
        m mVar = m.f66546a;
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        return mVar.b(canvas, f11, f12, f13, f14);
    }

    @Override // android.graphics.Canvas
    public boolean clipOutRect(int i11, int i12, int i13, int i14) {
        m mVar = m.f66546a;
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        return mVar.c(canvas, i11, i12, i13, i14);
    }

    @Override // android.graphics.Canvas
    public boolean clipOutRect(Rect rect) {
        m mVar = m.f66546a;
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        return mVar.d(canvas, rect);
    }

    @Override // android.graphics.Canvas
    public boolean clipOutRect(RectF rectF) {
        m mVar = m.f66546a;
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        return mVar.e(canvas, rectF);
    }

    @Override // android.graphics.Canvas
    public boolean clipPath(Path path) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        return canvas.clipPath(path);
    }

    @Override // android.graphics.Canvas
    public boolean clipPath(Path path, Region.Op op2) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        return canvas.clipPath(path, op2);
    }

    @Override // android.graphics.Canvas
    public boolean clipRect(float f11, float f12, float f13, float f14) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        return canvas.clipRect(f11, f12, f13, f14);
    }

    @Override // android.graphics.Canvas
    public boolean clipRect(float f11, float f12, float f13, float f14, Region.Op op2) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        return canvas.clipRect(f11, f12, f13, f14, op2);
    }

    @Override // android.graphics.Canvas
    public boolean clipRect(int i11, int i12, int i13, int i14) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        return canvas.clipRect(i11, i12, i13, i14);
    }

    @Override // android.graphics.Canvas
    public boolean clipRect(Rect rect) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        return canvas.clipRect(rect);
    }

    @Override // android.graphics.Canvas
    public boolean clipRect(Rect rect, Region.Op op2) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        return canvas.clipRect(rect, op2);
    }

    @Override // android.graphics.Canvas
    public boolean clipRect(RectF rectF) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        return canvas.clipRect(rectF);
    }

    @Override // android.graphics.Canvas
    public boolean clipRect(RectF rectF, Region.Op op2) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        return canvas.clipRect(rectF, op2);
    }

    @Override // android.graphics.Canvas
    public void concat(Matrix matrix) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.concat(matrix);
    }

    @Override // android.graphics.Canvas
    public void disableZ() {
        s sVar = s.f66549a;
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        sVar.a(canvas);
    }

    @Override // android.graphics.Canvas
    public void drawARGB(int i11, int i12, int i13, int i14) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawARGB(i11, i12, i13, i14);
    }

    @Override // android.graphics.Canvas
    public void drawArc(float f11, float f12, float f13, float f14, float f15, float f16, boolean z10, Paint paint) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawArc(f11, f12, f13, f14, f15, f16, z10, paint);
    }

    @Override // android.graphics.Canvas
    public void drawArc(RectF rectF, float f11, float f12, boolean z10, Paint paint) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawArc(rectF, f11, f12, z10, paint);
    }

    @Override // android.graphics.Canvas
    public void drawBitmap(Bitmap bitmap, float f11, float f12, Paint paint) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawBitmap(bitmap, f11, f12, paint);
    }

    @Override // android.graphics.Canvas
    public void drawBitmap(Bitmap bitmap, Matrix matrix, Paint paint) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawBitmap(bitmap, matrix, paint);
    }

    @Override // android.graphics.Canvas
    public void drawBitmap(Bitmap bitmap, Rect rect, Rect rect2, Paint paint) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawBitmap(bitmap, rect, rect2, paint);
    }

    @Override // android.graphics.Canvas
    public void drawBitmap(Bitmap bitmap, Rect rect, RectF rectF, Paint paint) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawBitmap(bitmap, rect, rectF, paint);
    }

    @Override // android.graphics.Canvas
    public void drawBitmap(int[] iArr, int i11, int i12, float f11, float f12, int i13, int i14, boolean z10, Paint paint) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawBitmap(iArr, i11, i12, f11, f12, i13, i14, z10, paint);
    }

    @Override // android.graphics.Canvas
    public void drawBitmap(int[] iArr, int i11, int i12, int i13, int i14, int i15, int i16, boolean z10, Paint paint) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawBitmap(iArr, i11, i12, i13, i14, i15, i16, z10, paint);
    }

    @Override // android.graphics.Canvas
    public void drawBitmapMesh(Bitmap bitmap, int i11, int i12, float[] fArr, int i13, int[] iArr, int i14, Paint paint) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawBitmapMesh(bitmap, i11, i12, fArr, i13, iArr, i14, paint);
    }

    @Override // android.graphics.Canvas
    public void drawCircle(float f11, float f12, float f13, Paint paint) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawCircle(f11, f12, f13, paint);
    }

    @Override // android.graphics.Canvas
    public void drawColor(int i11) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawColor(i11);
    }

    @Override // android.graphics.Canvas
    public void drawColor(int i11, BlendMode blendMode) {
        s sVar = s.f66549a;
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        sVar.b(canvas, i11, blendMode);
    }

    @Override // android.graphics.Canvas
    public void drawColor(int i11, PorterDuff.Mode mode) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawColor(i11, mode);
    }

    @Override // android.graphics.Canvas
    public void drawColor(long j11) {
        s sVar = s.f66549a;
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        sVar.c(canvas, j11);
    }

    @Override // android.graphics.Canvas
    public void drawColor(long j11, BlendMode blendMode) {
        s sVar = s.f66549a;
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        sVar.d(canvas, j11, blendMode);
    }

    @Override // android.graphics.Canvas
    public void drawDoubleRoundRect(RectF rectF, float f11, float f12, RectF rectF2, float f13, float f14, Paint paint) {
        s sVar = s.f66549a;
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        sVar.e(canvas, rectF, f11, f12, rectF2, f13, f14, paint);
    }

    @Override // android.graphics.Canvas
    public void drawDoubleRoundRect(RectF rectF, float[] fArr, RectF rectF2, float[] fArr2, Paint paint) {
        s sVar = s.f66549a;
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        sVar.f(canvas, rectF, fArr, rectF2, fArr2, paint);
    }

    @Override // android.graphics.Canvas
    public void drawGlyphs(int[] iArr, int i11, float[] fArr, int i12, int i13, Font font, Paint paint) {
        a0 a0Var = a0.f66469a;
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        a0Var.a(canvas, iArr, i11, fArr, i12, i13, font, paint);
    }

    @Override // android.graphics.Canvas
    public void drawLine(float f11, float f12, float f13, float f14, Paint paint) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawLine(f11, f12, f13, f14, paint);
    }

    @Override // android.graphics.Canvas
    public void drawLines(float[] fArr, int i11, int i12, Paint paint) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawLines(fArr, i11, i12, paint);
    }

    @Override // android.graphics.Canvas
    public void drawLines(float[] fArr, Paint paint) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawLines(fArr, paint);
    }

    @Override // android.graphics.Canvas
    public void drawOval(float f11, float f12, float f13, float f14, Paint paint) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawOval(f11, f12, f13, f14, paint);
    }

    @Override // android.graphics.Canvas
    public void drawOval(RectF rectF, Paint paint) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawOval(rectF, paint);
    }

    @Override // android.graphics.Canvas
    public void drawPaint(Paint paint) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawPaint(paint);
    }

    @Override // android.graphics.Canvas
    public void drawPatch(NinePatch ninePatch, Rect rect, Paint paint) {
        a0 a0Var = a0.f66469a;
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        a0Var.b(canvas, ninePatch, rect, paint);
    }

    @Override // android.graphics.Canvas
    public void drawPatch(NinePatch ninePatch, RectF rectF, Paint paint) {
        a0 a0Var = a0.f66469a;
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        a0Var.c(canvas, ninePatch, rectF, paint);
    }

    @Override // android.graphics.Canvas
    public void drawPath(Path path, Paint paint) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawPath(path, paint);
    }

    @Override // android.graphics.Canvas
    public void drawPicture(Picture picture) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawPicture(picture);
    }

    @Override // android.graphics.Canvas
    public void drawPicture(Picture picture, Rect rect) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawPicture(picture, rect);
    }

    @Override // android.graphics.Canvas
    public void drawPicture(Picture picture, RectF rectF) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawPicture(picture, rectF);
    }

    @Override // android.graphics.Canvas
    public void drawPoint(float f11, float f12, Paint paint) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawPoint(f11, f12, paint);
    }

    @Override // android.graphics.Canvas
    public void drawPoints(float[] fArr, int i11, int i12, Paint paint) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawPoints(fArr, i11, i12, paint);
    }

    @Override // android.graphics.Canvas
    public void drawPoints(float[] fArr, Paint paint) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawPoints(fArr, paint);
    }

    @Override // android.graphics.Canvas
    public void drawPosText(String str, float[] fArr, Paint paint) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawPosText(str, fArr, paint);
    }

    @Override // android.graphics.Canvas
    public void drawPosText(char[] cArr, int i11, int i12, float[] fArr, Paint paint) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawPosText(cArr, i11, i12, fArr, paint);
    }

    @Override // android.graphics.Canvas
    public void drawRGB(int i11, int i12, int i13) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawRGB(i11, i12, i13);
    }

    @Override // android.graphics.Canvas
    public void drawRect(float f11, float f12, float f13, float f14, Paint paint) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawRect(f11, f12, f13, f14, paint);
    }

    @Override // android.graphics.Canvas
    public void drawRect(Rect rect, Paint paint) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawRect(rect, paint);
    }

    @Override // android.graphics.Canvas
    public void drawRect(RectF rectF, Paint paint) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawRect(rectF, paint);
    }

    @Override // android.graphics.Canvas
    public void drawRenderNode(RenderNode renderNode) {
        s sVar = s.f66549a;
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        sVar.g(canvas, renderNode);
    }

    @Override // android.graphics.Canvas
    public void drawRoundRect(float f11, float f12, float f13, float f14, float f15, float f16, Paint paint) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawRoundRect(f11, f12, f13, f14, f15, f16, paint);
    }

    @Override // android.graphics.Canvas
    public void drawRoundRect(RectF rectF, float f11, float f12, Paint paint) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawRoundRect(rectF, f11, f12, paint);
    }

    @Override // android.graphics.Canvas
    public void drawText(CharSequence charSequence, int i11, int i12, float f11, float f12, Paint paint) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawText(charSequence, i11, i12, f11, f12, paint);
    }

    @Override // android.graphics.Canvas
    public void drawText(String str, float f11, float f12, Paint paint) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawText(str, f11, f12, paint);
    }

    @Override // android.graphics.Canvas
    public void drawText(String str, int i11, int i12, float f11, float f12, Paint paint) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawText(str, i11, i12, f11, f12, paint);
    }

    @Override // android.graphics.Canvas
    public void drawText(char[] cArr, int i11, int i12, float f11, float f12, Paint paint) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawText(cArr, i11, i12, f11, f12, paint);
    }

    @Override // android.graphics.Canvas
    public void drawTextOnPath(String str, Path path, float f11, float f12, Paint paint) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawTextOnPath(str, path, f11, f12, paint);
    }

    @Override // android.graphics.Canvas
    public void drawTextOnPath(char[] cArr, int i11, int i12, Path path, float f11, float f12, Paint paint) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawTextOnPath(cArr, i11, i12, path, f11, f12, paint);
    }

    @Override // android.graphics.Canvas
    public void drawTextRun(MeasuredText measuredText, int i11, int i12, int i13, int i14, float f11, float f12, boolean z10, Paint paint) {
        s sVar = s.f66549a;
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        sVar.h(canvas, measuredText, i11, i12, i13, i14, f11, f12, z10, paint);
    }

    @Override // android.graphics.Canvas
    public void drawTextRun(CharSequence charSequence, int i11, int i12, int i13, int i14, float f11, float f12, boolean z10, Paint paint) {
        g gVar = g.f66537a;
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        gVar.a(canvas, charSequence, i11, i12, i13, i14, f11, f12, z10, paint);
    }

    @Override // android.graphics.Canvas
    public void drawTextRun(char[] cArr, int i11, int i12, int i13, int i14, float f11, float f12, boolean z10, Paint paint) {
        g gVar = g.f66537a;
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        gVar.b(canvas, cArr, i11, i12, i13, i14, f11, f12, z10, paint);
    }

    @Override // android.graphics.Canvas
    public void drawVertices(Canvas.VertexMode vertexMode, int i11, float[] fArr, int i12, float[] fArr2, int i13, int[] iArr, int i14, short[] sArr, int i15, int i16, Paint paint) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.drawVertices(vertexMode, i11, fArr, i12, fArr2, i13, iArr, i14, sArr, i15, i16, paint);
    }

    @Override // android.graphics.Canvas
    public void enableZ() {
        s sVar = s.f66549a;
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        sVar.i(canvas);
    }

    @Override // android.graphics.Canvas
    public boolean getClipBounds(Rect rect) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        boolean clipBounds = canvas.getClipBounds(rect);
        if (clipBounds) {
            rect.set(0, 0, rect.width(), Integer.MAX_VALUE);
        }
        return clipBounds;
    }

    @Override // android.graphics.Canvas
    public int getDensity() {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        return canvas.getDensity();
    }

    @Override // android.graphics.Canvas
    public DrawFilter getDrawFilter() {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        return canvas.getDrawFilter();
    }

    @Override // android.graphics.Canvas
    public int getHeight() {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        return canvas.getHeight();
    }

    @Override // android.graphics.Canvas
    public void getMatrix(Matrix matrix) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.getMatrix(matrix);
    }

    @Override // android.graphics.Canvas
    public int getMaximumBitmapHeight() {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        return canvas.getMaximumBitmapHeight();
    }

    @Override // android.graphics.Canvas
    public int getMaximumBitmapWidth() {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        return canvas.getMaximumBitmapWidth();
    }

    @Override // android.graphics.Canvas
    public int getSaveCount() {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        return canvas.getSaveCount();
    }

    @Override // android.graphics.Canvas
    public int getWidth() {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        return canvas.getWidth();
    }

    @Override // android.graphics.Canvas
    public boolean isOpaque() {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        return canvas.isOpaque();
    }

    @Override // android.graphics.Canvas
    public boolean quickReject(float f11, float f12, float f13, float f14) {
        w wVar = w.f66550a;
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        return wVar.a(canvas, f11, f12, f13, f14);
    }

    @Override // android.graphics.Canvas
    public boolean quickReject(float f11, float f12, float f13, float f14, Canvas.EdgeType edgeType) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        return canvas.quickReject(f11, f12, f13, f14, edgeType);
    }

    @Override // android.graphics.Canvas
    public boolean quickReject(Path path) {
        w wVar = w.f66550a;
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        return wVar.b(canvas, path);
    }

    @Override // android.graphics.Canvas
    public boolean quickReject(Path path, Canvas.EdgeType edgeType) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        return canvas.quickReject(path, edgeType);
    }

    @Override // android.graphics.Canvas
    public boolean quickReject(RectF rectF) {
        w wVar = w.f66550a;
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        return wVar.c(canvas, rectF);
    }

    @Override // android.graphics.Canvas
    public boolean quickReject(RectF rectF, Canvas.EdgeType edgeType) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        return canvas.quickReject(rectF, edgeType);
    }

    @Override // android.graphics.Canvas
    public void restore() {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.restore();
    }

    @Override // android.graphics.Canvas
    public void restoreToCount(int i11) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.restoreToCount(i11);
    }

    @Override // android.graphics.Canvas
    public void rotate(float f11) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.rotate(f11);
    }

    @Override // android.graphics.Canvas
    public int save() {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        return canvas.save();
    }

    @Override // android.graphics.Canvas
    public int saveLayer(float f11, float f12, float f13, float f14, Paint paint) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        return canvas.saveLayer(f11, f12, f13, f14, paint);
    }

    @Override // android.graphics.Canvas
    public int saveLayer(float f11, float f12, float f13, float f14, Paint paint, int i11) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        return canvas.saveLayer(f11, f12, f13, f14, paint, i11);
    }

    @Override // android.graphics.Canvas
    public int saveLayer(RectF rectF, Paint paint) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        return canvas.saveLayer(rectF, paint);
    }

    @Override // android.graphics.Canvas
    public int saveLayer(RectF rectF, Paint paint, int i11) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        return canvas.saveLayer(rectF, paint, i11);
    }

    @Override // android.graphics.Canvas
    public int saveLayerAlpha(float f11, float f12, float f13, float f14, int i11) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        return canvas.saveLayerAlpha(f11, f12, f13, f14, i11);
    }

    @Override // android.graphics.Canvas
    public int saveLayerAlpha(float f11, float f12, float f13, float f14, int i11, int i12) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        return canvas.saveLayerAlpha(f11, f12, f13, f14, i11, i12);
    }

    @Override // android.graphics.Canvas
    public int saveLayerAlpha(RectF rectF, int i11) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        return canvas.saveLayerAlpha(rectF, i11);
    }

    @Override // android.graphics.Canvas
    public int saveLayerAlpha(RectF rectF, int i11, int i12) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        return canvas.saveLayerAlpha(rectF, i11, i12);
    }

    @Override // android.graphics.Canvas
    public void scale(float f11, float f12) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.scale(f11, f12);
    }

    @Override // android.graphics.Canvas
    public void setBitmap(Bitmap bitmap) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.setBitmap(bitmap);
    }

    @Override // android.graphics.Canvas
    public void setDensity(int i11) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.setDensity(i11);
    }

    @Override // android.graphics.Canvas
    public void setDrawFilter(DrawFilter drawFilter) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.setDrawFilter(drawFilter);
    }

    @Override // android.graphics.Canvas
    public void setMatrix(Matrix matrix) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.setMatrix(matrix);
    }

    @Override // android.graphics.Canvas
    public void skew(float f11, float f12) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.skew(f11, f12);
    }

    @Override // android.graphics.Canvas
    public void translate(float f11, float f12) {
        Canvas canvas = this.f66506a;
        if (canvas == null) {
            Intrinsics.z("nativeCanvas");
            canvas = null;
        }
        canvas.translate(f11, f12);
    }
}
