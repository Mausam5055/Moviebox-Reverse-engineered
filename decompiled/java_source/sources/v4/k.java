package v4;

import android.graphics.Path;
import android.graphics.PointF;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final PointF f77045a = new PointF();

    public static PointF a(PointF pointF, PointF pointF2) {
        return new PointF(pointF.x + pointF2.x, pointF.y + pointF2.y);
    }

    public static float b(float f11, float f12, float f13) {
        return Math.max(f12, Math.min(f13, f11));
    }

    public static int c(int i11, int i12, int i13) {
        return Math.max(i12, Math.min(i13, i11));
    }

    public static boolean d(float f11, float f12, float f13) {
        return f11 >= f12 && f11 <= f13;
    }

    private static int e(int i11, int i12) {
        int i13 = i11 / i12;
        return (((i11 ^ i12) >= 0) || i11 % i12 == 0) ? i13 : i13 - 1;
    }

    static int f(float f11, float f12) {
        return g((int) f11, (int) f12);
    }

    private static int g(int i11, int i12) {
        return i11 - (i12 * e(i11, i12));
    }

    public static void h(r4.i iVar, Path path) {
        path.reset();
        PointF pointFB = iVar.b();
        path.moveTo(pointFB.x, pointFB.y);
        f77045a.set(pointFB.x, pointFB.y);
        for (int i11 = 0; i11 < iVar.a().size(); i11++) {
            p4.a aVar = (p4.a) iVar.a().get(i11);
            PointF pointFA = aVar.a();
            PointF pointFB2 = aVar.b();
            PointF pointFC = aVar.c();
            PointF pointF = f77045a;
            if (pointFA.equals(pointF) && pointFB2.equals(pointFC)) {
                path.lineTo(pointFC.x, pointFC.y);
            } else {
                path.cubicTo(pointFA.x, pointFA.y, pointFB2.x, pointFB2.y, pointFC.x, pointFC.y);
            }
            pointF.set(pointFC.x, pointFC.y);
        }
        if (iVar.d()) {
            path.close();
        }
    }

    public static float i(float f11, float f12, float f13) {
        return f11 + (f13 * (f12 - f11));
    }

    public static int j(int i11, int i12, float f11) {
        return (int) (i11 + (f11 * (i12 - i11)));
    }

    public static void k(p4.d dVar, int i11, List list, p4.d dVar2, m4.k kVar) {
        if (dVar.c(kVar.getName(), i11)) {
            list.add(dVar2.a(kVar.getName()).i(kVar));
        }
    }
}
