package v0;

import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d extends androidx.constraintlayout.core.motion.utils.i {

    static class a extends d {
        a() {
        }

        @Override // v0.d
        public void h(View view, float f11) {
            view.setAlpha(a(f11));
        }
    }

    public static class b extends d {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        String f76974f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        SparseArray f76975g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        float[] f76976h;

        public b(String str, SparseArray sparseArray) {
            this.f76974f = str.split(",")[1];
            this.f76975g = sparseArray;
        }

        @Override // androidx.constraintlayout.core.motion.utils.i
        public void c(int i11, float f11) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute)");
        }

        @Override // androidx.constraintlayout.core.motion.utils.i
        public void e(int i11) {
            int size = this.f76975g.size();
            int iH = ((ConstraintAttribute) this.f76975g.valueAt(0)).h();
            double[] dArr = new double[size];
            this.f76976h = new float[iH];
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, iH);
            for (int i12 = 0; i12 < size; i12++) {
                int iKeyAt = this.f76975g.keyAt(i12);
                ConstraintAttribute constraintAttribute = (ConstraintAttribute) this.f76975g.valueAt(i12);
                dArr[i12] = ((double) iKeyAt) * 0.01d;
                constraintAttribute.f(this.f76976h);
                int i13 = 0;
                while (true) {
                    float[] fArr = this.f76976h;
                    if (i13 < fArr.length) {
                        dArr2[i12][i13] = fArr[i13];
                        i13++;
                    }
                }
            }
            this.f6797a = androidx.constraintlayout.core.motion.utils.b.a(i11, dArr, dArr2);
        }

        @Override // v0.d
        public void h(View view, float f11) {
            this.f6797a.e(f11, this.f76976h);
            v0.a.b((ConstraintAttribute) this.f76975g.valueAt(0), view, this.f76976h);
        }

        public void i(int i11, ConstraintAttribute constraintAttribute) {
            this.f76975g.append(i11, constraintAttribute);
        }
    }

    static class c extends d {
        c() {
        }

        @Override // v0.d
        public void h(View view, float f11) {
            view.setElevation(a(f11));
        }
    }

    /* JADX INFO: renamed from: v0.d$d, reason: collision with other inner class name */
    public static class C0941d extends d {
        @Override // v0.d
        public void h(View view, float f11) {
        }

        public void i(View view, float f11, double d11, double d12) {
            view.setRotation(a(f11) + ((float) Math.toDegrees(Math.atan2(d12, d11))));
        }
    }

    static class e extends d {
        e() {
        }

        @Override // v0.d
        public void h(View view, float f11) {
            view.setPivotX(a(f11));
        }
    }

    static class f extends d {
        f() {
        }

        @Override // v0.d
        public void h(View view, float f11) {
            view.setPivotY(a(f11));
        }
    }

    static class g extends d {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f76977f = false;

        g() {
        }

        @Override // v0.d
        public void h(View view, float f11) {
            Method method;
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(a(f11));
                return;
            }
            if (this.f76977f) {
                return;
            }
            try {
                method = view.getClass().getMethod("setProgress", Float.TYPE);
            } catch (NoSuchMethodException unused) {
                this.f76977f = true;
                method = null;
            }
            if (method != null) {
                try {
                    method.invoke(view, Float.valueOf(a(f11)));
                } catch (IllegalAccessException e11) {
                    Log.e("ViewSpline", "unable to setProgress", e11);
                } catch (InvocationTargetException e12) {
                    Log.e("ViewSpline", "unable to setProgress", e12);
                }
            }
        }
    }

    static class h extends d {
        h() {
        }

        @Override // v0.d
        public void h(View view, float f11) {
            view.setRotation(a(f11));
        }
    }

    static class i extends d {
        i() {
        }

        @Override // v0.d
        public void h(View view, float f11) {
            view.setRotationX(a(f11));
        }
    }

    static class j extends d {
        j() {
        }

        @Override // v0.d
        public void h(View view, float f11) {
            view.setRotationY(a(f11));
        }
    }

    static class k extends d {
        k() {
        }

        @Override // v0.d
        public void h(View view, float f11) {
            view.setScaleX(a(f11));
        }
    }

    static class l extends d {
        l() {
        }

        @Override // v0.d
        public void h(View view, float f11) {
            view.setScaleY(a(f11));
        }
    }

    static class m extends d {
        m() {
        }

        @Override // v0.d
        public void h(View view, float f11) {
            view.setTranslationX(a(f11));
        }
    }

    static class n extends d {
        n() {
        }

        @Override // v0.d
        public void h(View view, float f11) {
            view.setTranslationY(a(f11));
        }
    }

    static class o extends d {
        o() {
        }

        @Override // v0.d
        public void h(View view, float f11) {
            view.setTranslationZ(a(f11));
        }
    }

    public static d f(String str, SparseArray sparseArray) {
        return new b(str, sparseArray);
    }

    public static d g(String str) {
        str.hashCode();
        switch (str) {
            case "rotationX":
                return new i();
            case "rotationY":
                return new j();
            case "translationX":
                return new m();
            case "translationY":
                return new n();
            case "translationZ":
                return new o();
            case "progress":
                return new g();
            case "scaleX":
                return new k();
            case "scaleY":
                return new l();
            case "waveVariesBy":
                return new a();
            case "transformPivotX":
                return new e();
            case "transformPivotY":
                return new f();
            case "rotation":
                return new h();
            case "elevation":
                return new c();
            case "transitionPathRotate":
                return new C0941d();
            case "alpha":
                return new a();
            case "waveOffset":
                return new a();
            default:
                return null;
        }
    }

    public abstract void h(View view, float f11);
}
