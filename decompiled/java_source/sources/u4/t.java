package u4;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.collection.y0;
import androidx.core.view.animation.PathInterpolatorCompat;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
abstract class t {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static y0 f76671b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Interpolator f76670a = new LinearInterpolator();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static JsonReader.a f76672c = JsonReader.a.a("t", "s", "e", "o", "i", "h", "to", "ti");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static JsonReader.a f76673d = JsonReader.a.a("x", "y");

    private static WeakReference a(int i11) {
        WeakReference weakReference;
        synchronized (t.class) {
            weakReference = (WeakReference) g().f(i11);
        }
        return weakReference;
    }

    private static Interpolator b(PointF pointF, PointF pointF2) {
        Interpolator interpolatorCreate;
        pointF.x = v4.k.b(pointF.x, -1.0f, 1.0f);
        pointF.y = v4.k.b(pointF.y, -100.0f, 100.0f);
        pointF2.x = v4.k.b(pointF2.x, -1.0f, 1.0f);
        float fB = v4.k.b(pointF2.y, -100.0f, 100.0f);
        pointF2.y = fB;
        int i11 = v4.l.i(pointF.x, pointF.y, pointF2.x, fB);
        WeakReference weakReferenceA = com.airbnb.lottie.d.e() ? null : a(i11);
        Interpolator interpolator = weakReferenceA != null ? (Interpolator) weakReferenceA.get() : null;
        if (weakReferenceA == null || interpolator == null) {
            try {
                interpolatorCreate = PathInterpolatorCompat.create(pointF.x, pointF.y, pointF2.x, pointF2.y);
            } catch (IllegalArgumentException e11) {
                interpolatorCreate = "The Path cannot loop back on itself.".equals(e11.getMessage()) ? PathInterpolatorCompat.create(Math.min(pointF.x, 1.0f), pointF.y, Math.max(pointF2.x, 0.0f), pointF2.y) : new LinearInterpolator();
            }
            interpolator = interpolatorCreate;
            if (!com.airbnb.lottie.d.e()) {
                try {
                    h(i11, new WeakReference(interpolator));
                } catch (ArrayIndexOutOfBoundsException unused) {
                }
            }
        }
        return interpolator;
    }

    static w4.a c(JsonReader jsonReader, com.airbnb.lottie.h hVar, float f11, n0 n0Var, boolean z10, boolean z11) {
        if (z10 && z11) {
            return e(hVar, jsonReader, f11, n0Var);
        }
        return z10 ? d(hVar, jsonReader, f11, n0Var) : f(jsonReader, f11, n0Var);
    }

    private static w4.a d(com.airbnb.lottie.h hVar, JsonReader jsonReader, float f11, n0 n0Var) {
        Interpolator interpolatorB;
        Object obj;
        jsonReader.h();
        PointF pointFE = null;
        Object objA = null;
        Object objA2 = null;
        PointF pointFE2 = null;
        PointF pointFE3 = null;
        float fO = 0.0f;
        boolean z10 = false;
        PointF pointFE4 = null;
        while (jsonReader.m()) {
            switch (jsonReader.v(f76672c)) {
                case 0:
                    fO = (float) jsonReader.o();
                    break;
                case 1:
                    objA2 = n0Var.a(jsonReader, f11);
                    break;
                case 2:
                    objA = n0Var.a(jsonReader, f11);
                    break;
                case 3:
                    pointFE = s.e(jsonReader, 1.0f);
                    break;
                case 4:
                    pointFE4 = s.e(jsonReader, 1.0f);
                    break;
                case 5:
                    z10 = jsonReader.p() == 1;
                    break;
                case 6:
                    pointFE2 = s.e(jsonReader, f11);
                    break;
                case 7:
                    pointFE3 = s.e(jsonReader, f11);
                    break;
                default:
                    jsonReader.x();
                    break;
            }
        }
        jsonReader.l();
        if (z10) {
            interpolatorB = f76670a;
            obj = objA2;
        } else {
            interpolatorB = (pointFE == null || pointFE4 == null) ? f76670a : b(pointFE, pointFE4);
            obj = objA;
        }
        w4.a aVar = new w4.a(hVar, objA2, obj, interpolatorB, fO, null);
        aVar.f77577o = pointFE2;
        aVar.f77578p = pointFE3;
        return aVar;
    }

    /* JADX WARN: Code duplicated, block: B:93:0x01ea  */
    private static w4.a e(com.airbnb.lottie.h hVar, JsonReader jsonReader, float f11, n0 n0Var) {
        Interpolator interpolatorB;
        Interpolator interpolatorB2;
        Interpolator interpolatorB3;
        Object obj;
        w4.a aVar;
        PointF pointF;
        float f12;
        PointF pointF2;
        jsonReader.h();
        PointF pointFE = null;
        boolean z10 = false;
        PointF pointFE2 = null;
        PointF pointFE3 = null;
        PointF pointF3 = null;
        Object objA = null;
        PointF pointF4 = null;
        PointF pointF5 = null;
        PointF pointF6 = null;
        float fO = 0.0f;
        PointF pointFE4 = null;
        Object objA2 = null;
        while (jsonReader.m()) {
            switch (jsonReader.v(f76672c)) {
                case 0:
                    pointF = pointFE;
                    fO = (float) jsonReader.o();
                    pointFE = pointF;
                    break;
                case 1:
                    pointF = pointFE;
                    objA = n0Var.a(jsonReader, f11);
                    pointFE = pointF;
                    break;
                case 2:
                    pointF = pointFE;
                    objA2 = n0Var.a(jsonReader, f11);
                    pointFE = pointF;
                    break;
                case 3:
                    pointF = pointFE;
                    f12 = fO;
                    PointF pointF7 = pointFE4;
                    if (jsonReader.t() == JsonReader.Token.BEGIN_OBJECT) {
                        jsonReader.h();
                        float fO2 = 0.0f;
                        float fO3 = 0.0f;
                        float fO4 = 0.0f;
                        float fO5 = 0.0f;
                        while (jsonReader.m()) {
                            int iV = jsonReader.v(f76673d);
                            if (iV == 0) {
                                JsonReader.Token tokenT = jsonReader.t();
                                JsonReader.Token token = JsonReader.Token.NUMBER;
                                if (tokenT == token) {
                                    fO4 = (float) jsonReader.o();
                                    fO2 = fO4;
                                } else {
                                    jsonReader.d();
                                    fO2 = (float) jsonReader.o();
                                    fO4 = jsonReader.t() == token ? (float) jsonReader.o() : fO2;
                                    jsonReader.k();
                                }
                            } else if (iV != 1) {
                                jsonReader.x();
                            } else {
                                JsonReader.Token tokenT2 = jsonReader.t();
                                JsonReader.Token token2 = JsonReader.Token.NUMBER;
                                if (tokenT2 == token2) {
                                    fO5 = (float) jsonReader.o();
                                    fO3 = fO5;
                                } else {
                                    jsonReader.d();
                                    fO3 = (float) jsonReader.o();
                                    fO5 = jsonReader.t() == token2 ? (float) jsonReader.o() : fO3;
                                    jsonReader.k();
                                }
                            }
                        }
                        PointF pointF8 = new PointF(fO2, fO3);
                        PointF pointF9 = new PointF(fO4, fO5);
                        jsonReader.l();
                        pointF4 = pointF9;
                        pointF3 = pointF8;
                        pointFE4 = pointF7;
                        fO = f12;
                    } else {
                        pointFE2 = s.e(jsonReader, f11);
                        fO = f12;
                        pointFE4 = pointF7;
                    }
                    pointFE = pointF;
                    break;
                case 4:
                    if (jsonReader.t() == JsonReader.Token.BEGIN_OBJECT) {
                        jsonReader.h();
                        float fO6 = 0.0f;
                        float f13 = 0.0f;
                        float fO7 = 0.0f;
                        float fO8 = 0.0f;
                        while (jsonReader.m()) {
                            pointFE4 = pointFE4;
                            int iV2 = jsonReader.v(f76673d);
                            if (iV2 != 0) {
                                pointF2 = pointFE;
                                if (iV2 != 1) {
                                    jsonReader.x();
                                } else {
                                    JsonReader.Token tokenT3 = jsonReader.t();
                                    JsonReader.Token token3 = JsonReader.Token.NUMBER;
                                    if (tokenT3 == token3) {
                                        fO8 = (float) jsonReader.o();
                                        fO = fO;
                                        f13 = fO8;
                                    } else {
                                        float f14 = fO;
                                        jsonReader.d();
                                        float fO9 = (float) jsonReader.o();
                                        float fO10 = jsonReader.t() == token3 ? (float) jsonReader.o() : fO9;
                                        jsonReader.k();
                                        fO = f14;
                                        pointFE = pointF2;
                                        fO8 = fO10;
                                        f13 = fO9;
                                    }
                                }
                            } else {
                                pointF2 = pointFE;
                                float f15 = fO;
                                JsonReader.Token tokenT4 = jsonReader.t();
                                JsonReader.Token token4 = JsonReader.Token.NUMBER;
                                if (tokenT4 == token4) {
                                    fO7 = (float) jsonReader.o();
                                    fO = f15;
                                    fO6 = fO7;
                                } else {
                                    jsonReader.d();
                                    fO6 = (float) jsonReader.o();
                                    fO7 = jsonReader.t() == token4 ? (float) jsonReader.o() : fO6;
                                    jsonReader.k();
                                    fO = f15;
                                }
                            }
                            pointFE = pointF2;
                        }
                        pointF = pointFE;
                        f12 = fO;
                        PointF pointF10 = new PointF(fO6, f13);
                        PointF pointF11 = new PointF(fO7, fO8);
                        jsonReader.l();
                        pointF6 = pointF11;
                        pointF5 = pointF10;
                        fO = f12;
                    } else {
                        pointF = pointFE;
                        pointFE3 = s.e(jsonReader, f11);
                    }
                    pointFE = pointF;
                    break;
                case 5:
                    z10 = jsonReader.p() == 1;
                    break;
                case 6:
                    pointFE4 = s.e(jsonReader, f11);
                    break;
                case 7:
                    pointFE = s.e(jsonReader, f11);
                    break;
                default:
                    jsonReader.x();
                    break;
            }
        }
        PointF pointF12 = pointFE;
        float f16 = fO;
        PointF pointF13 = pointFE4;
        jsonReader.l();
        if (z10) {
            interpolatorB = f76670a;
            obj = objA;
        } else {
            if (pointFE2 == null || pointFE3 == null) {
                if (pointF3 == null || pointF4 == null || pointF5 == null || pointF6 == null) {
                    interpolatorB = f76670a;
                } else {
                    interpolatorB2 = b(pointF3, pointF5);
                    interpolatorB3 = b(pointF4, pointF6);
                    obj = objA2;
                    interpolatorB = null;
                }
                if (interpolatorB2 != null || interpolatorB3 == null) {
                    aVar = new w4.a(hVar, objA, obj, interpolatorB, f16, null);
                } else {
                    aVar = new w4.a(hVar, objA, obj, interpolatorB2, interpolatorB3, f16, null);
                }
                aVar.f77577o = pointF13;
                aVar.f77578p = pointF12;
                return aVar;
            }
            interpolatorB = b(pointFE2, pointFE3);
            obj = objA2;
        }
        interpolatorB2 = null;
        interpolatorB3 = null;
        if (interpolatorB2 != null) {
            aVar = new w4.a(hVar, objA, obj, interpolatorB, f16, null);
        } else {
            aVar = new w4.a(hVar, objA, obj, interpolatorB, f16, null);
        }
        aVar.f77577o = pointF13;
        aVar.f77578p = pointF12;
        return aVar;
    }

    private static w4.a f(JsonReader jsonReader, float f11, n0 n0Var) {
        return new w4.a(n0Var.a(jsonReader, f11));
    }

    private static y0 g() {
        if (f76671b == null) {
            f76671b = new y0();
        }
        return f76671b;
    }

    private static void h(int i11, WeakReference weakReference) {
        synchronized (t.class) {
            f76671b.l(i11, weakReference);
        }
    }
}
