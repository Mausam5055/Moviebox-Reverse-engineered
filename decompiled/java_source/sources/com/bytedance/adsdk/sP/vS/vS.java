package com.bytedance.adsdk.sP.vS;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.graphics.RectF;
import android.provider.Settings;
import com.bytedance.adsdk.sP.Sj.Sj.dx;
import java.io.Closeable;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.nio.channels.ClosedChannelException;
import javax.net.ssl.SSLException;

/* JADX INFO: loaded from: classes2.dex */
public final class vS {
    private static final ThreadLocal<PathMeasure> Sj = new ThreadLocal<PathMeasure>() { // from class: com.bytedance.adsdk.sP.vS.vS.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
        public PathMeasure initialValue() {
            return new PathMeasure();
        }
    };
    private static final ThreadLocal<Path> sP = new ThreadLocal<Path>() { // from class: com.bytedance.adsdk.sP.vS.vS.2
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
        public Path initialValue() {
            return new Path();
        }
    };
    private static final ThreadLocal<Path> TKC = new ThreadLocal<Path>() { // from class: com.bytedance.adsdk.sP.vS.vS.3
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
        public Path initialValue() {
            return new Path();
        }
    };
    private static final ThreadLocal<float[]> EjP = new ThreadLocal<float[]>() { // from class: com.bytedance.adsdk.sP.vS.vS.4
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
        public float[] initialValue() {
            return new float[4];
        }
    };
    private static final float HiB = (float) (Math.sqrt(2.0d) / 2.0d);

    public static float Sj() {
        return Resources.getSystem().getDisplayMetrics().density;
    }

    public static float Sj(Context context) {
        return Settings.Global.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f);
    }

    public static float Sj(Matrix matrix) {
        float[] fArr = EjP.get();
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        float f11 = HiB;
        fArr[2] = f11;
        fArr[3] = f11;
        matrix.mapPoints(fArr);
        return (float) Math.hypot(fArr[2] - fArr[0], fArr[3] - fArr[1]);
    }

    public static int Sj(float f11, float f12, float f13, float f14) {
        int i11 = f11 != 0.0f ? (int) (f11 * 527.0f) : 17;
        if (f12 != 0.0f) {
            i11 = (int) (i11 * 31 * f12);
        }
        if (f13 != 0.0f) {
            i11 = (int) (i11 * 31 * f13);
        }
        return f14 != 0.0f ? (int) (i11 * 31 * f14) : i11;
    }

    public static Bitmap Sj(Bitmap bitmap, int i11, int i12) {
        if (bitmap.getWidth() == i11 && bitmap.getHeight() == i12) {
            return bitmap;
        }
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, i11, i12, true);
        bitmap.recycle();
        return bitmapCreateScaledBitmap;
    }

    public static Path Sj(PointF pointF, PointF pointF2, PointF pointF3, PointF pointF4) {
        Path path = new Path();
        path.moveTo(pointF.x, pointF.y);
        if (pointF3 == null || pointF4 == null || (pointF3.length() == 0.0f && pointF4.length() == 0.0f)) {
            path.lineTo(pointF2.x, pointF2.y);
        } else {
            float f11 = pointF3.x + pointF.x;
            float f12 = pointF.y + pointF3.y;
            float f13 = pointF2.x;
            float f14 = f13 + pointF4.x;
            float f15 = pointF2.y;
            path.cubicTo(f11, f12, f14, f15 + pointF4.y, f13, f15);
        }
        return path;
    }

    public static void Sj(Canvas canvas, RectF rectF, Paint paint) {
        Sj(canvas, rectF, paint, 31);
    }

    public static void Sj(Canvas canvas, RectF rectF, Paint paint, int i11) {
        com.bytedance.adsdk.sP.HiB.Sj("Utils#saveLayer");
        canvas.saveLayer(rectF, paint);
        com.bytedance.adsdk.sP.HiB.sP("Utils#saveLayer");
    }

    public static void Sj(Path path, float f11, float f12, float f13) {
        com.bytedance.adsdk.sP.HiB.Sj("applyTrimPathIfNeeded");
        PathMeasure pathMeasure = Sj.get();
        Path path2 = sP.get();
        Path path3 = TKC.get();
        pathMeasure.setPath(path, false);
        float length = pathMeasure.getLength();
        if (f11 == 1.0f && f12 == 0.0f) {
            com.bytedance.adsdk.sP.HiB.sP("applyTrimPathIfNeeded");
            return;
        }
        if (length < 1.0f || Math.abs((f12 - f11) - 1.0f) < 0.01d) {
            com.bytedance.adsdk.sP.HiB.sP("applyTrimPathIfNeeded");
            return;
        }
        float f14 = f11 * length;
        float f15 = f12 * length;
        float f16 = f13 * length;
        float fMin = Math.min(f14, f15) + f16;
        float fMax = Math.max(f14, f15) + f16;
        if (fMin >= length && fMax >= length) {
            fMin = HiB.Sj(fMin, length);
            fMax = HiB.Sj(fMax, length);
        }
        if (fMin < 0.0f) {
            fMin = HiB.Sj(fMin, length);
        }
        if (fMax < 0.0f) {
            fMax = HiB.Sj(fMax, length);
        }
        if (fMin == fMax) {
            path.reset();
            com.bytedance.adsdk.sP.HiB.sP("applyTrimPathIfNeeded");
            return;
        }
        if (fMin >= fMax) {
            fMin -= length;
        }
        path2.reset();
        pathMeasure.getSegment(fMin, fMax, path2, true);
        if (fMax > length) {
            path3.reset();
            pathMeasure.getSegment(0.0f, fMax % length, path3, true);
            path2.addPath(path3);
        } else if (fMin < 0.0f) {
            path3.reset();
            pathMeasure.getSegment(fMin + length, length, path3, true);
            path2.addPath(path3);
        }
        path.set(path2);
        com.bytedance.adsdk.sP.HiB.sP("applyTrimPathIfNeeded");
    }

    public static void Sj(Path path, dx dxVar) {
        if (dxVar == null || dxVar.vS()) {
            return;
        }
        Sj(path, ((com.bytedance.adsdk.sP.Sj.sP.EjP) dxVar.TKC()).uA() / 100.0f, ((com.bytedance.adsdk.sP.Sj.sP.EjP) dxVar.EjP()).uA() / 100.0f, ((com.bytedance.adsdk.sP.Sj.sP.EjP) dxVar.HiB()).uA() / 360.0f);
    }

    public static void Sj(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e11) {
                throw e11;
            } catch (Exception unused) {
            }
        }
    }

    public static boolean Sj(int i11, int i12, int i13, int i14, int i15, int i16) {
        if (i11 < i14) {
            return false;
        }
        if (i11 > i14) {
            return true;
        }
        if (i12 < i15) {
            return false;
        }
        return i12 > i15 || i13 >= i16;
    }

    public static boolean Sj(Throwable th2) {
        return (th2 instanceof SocketException) || (th2 instanceof ClosedChannelException) || (th2 instanceof InterruptedIOException) || (th2 instanceof ProtocolException) || (th2 instanceof SSLException) || (th2 instanceof UnknownHostException) || (th2 instanceof UnknownServiceException);
    }

    public static boolean sP(Matrix matrix) {
        float[] fArr = EjP.get();
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        fArr[2] = 37394.73f;
        fArr[3] = 39575.234f;
        matrix.mapPoints(fArr);
        return fArr[0] == fArr[2] || fArr[1] == fArr[3];
    }
}
