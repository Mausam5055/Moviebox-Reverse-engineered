package v0;

import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.n;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public abstract class f extends n {

    static class a extends f {
        a() {
        }

        @Override // v0.f
        public boolean i(View view, float f11, long j11, androidx.constraintlayout.core.motion.utils.d dVar) {
            view.setAlpha(f(f11, j11, view, dVar));
            return this.f6837h;
        }
    }

    public static class b extends f {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        String f76983l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        SparseArray f76984m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        SparseArray f76985n = new SparseArray();

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        float[] f76986o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        float[] f76987p;

        public b(String str, SparseArray sparseArray) {
            this.f76983l = str.split(",")[1];
            this.f76984m = sparseArray;
        }

        @Override // androidx.constraintlayout.core.motion.utils.n
        public void b(int i11, float f11, float f12, int i12, float f13) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute,...)");
        }

        @Override // androidx.constraintlayout.core.motion.utils.n
        public void e(int i11) {
            int size = this.f76984m.size();
            int iH = ((ConstraintAttribute) this.f76984m.valueAt(0)).h();
            double[] dArr = new double[size];
            int i12 = iH + 2;
            this.f76986o = new float[i12];
            this.f76987p = new float[iH];
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, i12);
            for (int i13 = 0; i13 < size; i13++) {
                int iKeyAt = this.f76984m.keyAt(i13);
                ConstraintAttribute constraintAttribute = (ConstraintAttribute) this.f76984m.valueAt(i13);
                float[] fArr = (float[]) this.f76985n.valueAt(i13);
                dArr[i13] = ((double) iKeyAt) * 0.01d;
                constraintAttribute.f(this.f76986o);
                int i14 = 0;
                while (true) {
                    float[] fArr2 = this.f76986o;
                    if (i14 < fArr2.length) {
                        dArr2[i13][i14] = fArr2[i14];
                        i14++;
                    }
                }
                double[] dArr3 = dArr2[i13];
                dArr3[iH] = fArr[0];
                dArr3[iH + 1] = fArr[1];
            }
            this.f6830a = androidx.constraintlayout.core.motion.utils.b.a(i11, dArr, dArr2);
        }

        @Override // v0.f
        public boolean i(View view, float f11, long j11, androidx.constraintlayout.core.motion.utils.d dVar) {
            this.f6830a.e(f11, this.f76986o);
            float[] fArr = this.f76986o;
            float f12 = fArr[fArr.length - 2];
            float f13 = fArr[fArr.length - 1];
            long j12 = j11 - this.f6838i;
            if (Float.isNaN(this.f6839j)) {
                float fA = dVar.a(view, this.f76983l, 0);
                this.f6839j = fA;
                if (Float.isNaN(fA)) {
                    this.f6839j = 0.0f;
                }
            }
            float f14 = (float) ((((double) this.f6839j) + ((j12 * 1.0E-9d) * ((double) f12))) % 1.0d);
            this.f6839j = f14;
            this.f6838i = j11;
            float fA2 = a(f14);
            this.f6837h = false;
            int i11 = 0;
            while (true) {
                float[] fArr2 = this.f76987p;
                if (i11 >= fArr2.length) {
                    break;
                }
                boolean z10 = this.f6837h;
                float f15 = this.f76986o[i11];
                this.f6837h = z10 | (((double) f15) != 0.0d);
                fArr2[i11] = (f15 * fA2) + f13;
                i11++;
            }
            v0.a.b((ConstraintAttribute) this.f76984m.valueAt(0), view, this.f76987p);
            if (f12 != 0.0f) {
                this.f6837h = true;
            }
            return this.f6837h;
        }

        public void j(int i11, ConstraintAttribute constraintAttribute, float f11, int i12, float f12) {
            this.f76984m.append(i11, constraintAttribute);
            this.f76985n.append(i11, new float[]{f11, f12});
            this.f6831b = Math.max(this.f6831b, i12);
        }
    }

    static class c extends f {
        c() {
        }

        @Override // v0.f
        public boolean i(View view, float f11, long j11, androidx.constraintlayout.core.motion.utils.d dVar) {
            view.setElevation(f(f11, j11, view, dVar));
            return this.f6837h;
        }
    }

    public static class d extends f {
        @Override // v0.f
        public boolean i(View view, float f11, long j11, androidx.constraintlayout.core.motion.utils.d dVar) {
            return this.f6837h;
        }

        public boolean j(View view, androidx.constraintlayout.core.motion.utils.d dVar, float f11, long j11, double d11, double d12) {
            view.setRotation(f(f11, j11, view, dVar) + ((float) Math.toDegrees(Math.atan2(d12, d11))));
            return this.f6837h;
        }
    }

    static class e extends f {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        boolean f76988l = false;

        e() {
        }

        @Override // v0.f
        public boolean i(View view, float f11, long j11, androidx.constraintlayout.core.motion.utils.d dVar) {
            Method method;
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(f(f11, j11, view, dVar));
            } else {
                if (this.f76988l) {
                    return false;
                }
                try {
                    method = view.getClass().getMethod("setProgress", Float.TYPE);
                } catch (NoSuchMethodException unused) {
                    this.f76988l = true;
                    method = null;
                }
                Method method2 = method;
                if (method2 != null) {
                    try {
                        method2.invoke(view, Float.valueOf(f(f11, j11, view, dVar)));
                    } catch (IllegalAccessException e11) {
                        Log.e("ViewTimeCycle", "unable to setProgress", e11);
                    } catch (InvocationTargetException e12) {
                        Log.e("ViewTimeCycle", "unable to setProgress", e12);
                    }
                }
            }
            return this.f6837h;
        }
    }

    /* JADX INFO: renamed from: v0.f$f, reason: collision with other inner class name */
    static class C0942f extends f {
        C0942f() {
        }

        @Override // v0.f
        public boolean i(View view, float f11, long j11, androidx.constraintlayout.core.motion.utils.d dVar) {
            view.setRotation(f(f11, j11, view, dVar));
            return this.f6837h;
        }
    }

    static class g extends f {
        g() {
        }

        @Override // v0.f
        public boolean i(View view, float f11, long j11, androidx.constraintlayout.core.motion.utils.d dVar) {
            view.setRotationX(f(f11, j11, view, dVar));
            return this.f6837h;
        }
    }

    static class h extends f {
        h() {
        }

        @Override // v0.f
        public boolean i(View view, float f11, long j11, androidx.constraintlayout.core.motion.utils.d dVar) {
            view.setRotationY(f(f11, j11, view, dVar));
            return this.f6837h;
        }
    }

    static class i extends f {
        i() {
        }

        @Override // v0.f
        public boolean i(View view, float f11, long j11, androidx.constraintlayout.core.motion.utils.d dVar) {
            view.setScaleX(f(f11, j11, view, dVar));
            return this.f6837h;
        }
    }

    static class j extends f {
        j() {
        }

        @Override // v0.f
        public boolean i(View view, float f11, long j11, androidx.constraintlayout.core.motion.utils.d dVar) {
            view.setScaleY(f(f11, j11, view, dVar));
            return this.f6837h;
        }
    }

    static class k extends f {
        k() {
        }

        @Override // v0.f
        public boolean i(View view, float f11, long j11, androidx.constraintlayout.core.motion.utils.d dVar) {
            view.setTranslationX(f(f11, j11, view, dVar));
            return this.f6837h;
        }
    }

    static class l extends f {
        l() {
        }

        @Override // v0.f
        public boolean i(View view, float f11, long j11, androidx.constraintlayout.core.motion.utils.d dVar) {
            view.setTranslationY(f(f11, j11, view, dVar));
            return this.f6837h;
        }
    }

    static class m extends f {
        m() {
        }

        @Override // v0.f
        public boolean i(View view, float f11, long j11, androidx.constraintlayout.core.motion.utils.d dVar) {
            view.setTranslationZ(f(f11, j11, view, dVar));
            return this.f6837h;
        }
    }

    public static f g(String str, SparseArray sparseArray) {
        return new b(str, sparseArray);
    }

    public static f h(String str, long j11) {
        f gVar;
        str.hashCode();
        switch (str) {
            case "rotationX":
                gVar = new g();
                break;
            case "rotationY":
                gVar = new h();
                break;
            case "translationX":
                gVar = new k();
                break;
            case "translationY":
                gVar = new l();
                break;
            case "translationZ":
                gVar = new m();
                break;
            case "progress":
                gVar = new e();
                break;
            case "scaleX":
                gVar = new i();
                break;
            case "scaleY":
                gVar = new j();
                break;
            case "rotation":
                gVar = new C0942f();
                break;
            case "elevation":
                gVar = new c();
                break;
            case "transitionPathRotate":
                gVar = new d();
                break;
            case "alpha":
                gVar = new a();
                break;
            default:
                return null;
        }
        gVar.c(j11);
        return gVar;
    }

    public float f(float f11, long j11, View view, androidx.constraintlayout.core.motion.utils.d dVar) {
        this.f6830a.e(f11, this.f6836g);
        float[] fArr = this.f6836g;
        float f12 = fArr[1];
        if (f12 == 0.0f) {
            this.f6837h = false;
            return fArr[2];
        }
        if (Float.isNaN(this.f6839j)) {
            float fA = dVar.a(view, this.f6835f, 0);
            this.f6839j = fA;
            if (Float.isNaN(fA)) {
                this.f6839j = 0.0f;
            }
        }
        float f13 = (float) ((((double) this.f6839j) + (((j11 - this.f6838i) * 1.0E-9d) * ((double) f12))) % 1.0d);
        this.f6839j = f13;
        dVar.b(view, this.f6835f, 0, f13);
        this.f6838i = j11;
        float f14 = this.f6836g[0];
        float fA2 = (a(this.f6839j) * f14) + this.f6836g[2];
        this.f6837h = (f14 == 0.0f && f12 == 0.0f) ? false : true;
        return fA2;
    }

    public abstract boolean i(View view, float f11, long j11, androidx.constraintlayout.core.motion.utils.d dVar);
}
