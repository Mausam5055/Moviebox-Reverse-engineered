package com.bytedance.adsdk.sP.vS;

import android.graphics.Path;
import android.graphics.PointF;
import com.bytedance.adsdk.sP.TKC.sP.sef;

/* JADX INFO: loaded from: classes2.dex */
public class HiB {
    private static final PointF Sj = new PointF();

    public static float Sj(float f11, float f12, float f13) {
        return f11 + (f13 * (f12 - f11));
    }

    static int Sj(float f11, float f12) {
        return Sj((int) f11, (int) f12);
    }

    private static int Sj(int i11, int i12) {
        return i11 - (i12 * sP(i11, i12));
    }

    public static int Sj(int i11, int i12, float f11) {
        return (int) (i11 + (f11 * (i12 - i11)));
    }

    public static int Sj(int i11, int i12, int i13) {
        return Math.max(i12, Math.min(i13, i11));
    }

    public static PointF Sj(PointF pointF, PointF pointF2) {
        return new PointF(pointF.x + pointF2.x, pointF.y + pointF2.y);
    }

    public static void Sj(sef sefVar, Path path) {
        path.reset();
        PointF pointFSj = sefVar.Sj();
        path.moveTo(pointFSj.x, pointFSj.y);
        Sj.set(pointFSj.x, pointFSj.y);
        for (int i11 = 0; i11 < sefVar.TKC().size(); i11++) {
            com.bytedance.adsdk.sP.TKC.Sj sj2 = sefVar.TKC().get(i11);
            PointF pointFSj2 = sj2.Sj();
            PointF pointFSP = sj2.sP();
            PointF pointFTKC = sj2.TKC();
            PointF pointF = Sj;
            if (pointFSj2.equals(pointF) && pointFSP.equals(pointFTKC)) {
                path.lineTo(pointFTKC.x, pointFTKC.y);
            } else {
                path.cubicTo(pointFSj2.x, pointFSj2.y, pointFSP.x, pointFSP.y, pointFTKC.x, pointFTKC.y);
            }
            pointF.set(pointFTKC.x, pointFTKC.y);
        }
        if (sefVar.sP()) {
            path.close();
        }
    }

    public static boolean TKC(float f11, float f12, float f13) {
        return f11 >= f12 && f11 <= f13;
    }

    public static float sP(float f11, float f12, float f13) {
        return Math.max(f12, Math.min(f13, f11));
    }

    private static int sP(int i11, int i12) {
        int i13 = i11 / i12;
        return (((i11 ^ i12) >= 0) || i11 % i12 == 0) ? i13 : i13 - 1;
    }
}
