package v0;

import android.util.Log;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.KeyCycleOscillator;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c extends KeyCycleOscillator {

    static class a extends c {
        a() {
        }

        @Override // v0.c
        public void j(View view, float f11) {
            view.setAlpha(a(f11));
        }
    }

    static class b extends c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        float[] f76971h = new float[1];

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        protected ConstraintAttribute f76972i;

        b() {
        }

        @Override // androidx.constraintlayout.core.motion.utils.KeyCycleOscillator
        protected void c(Object obj) {
            this.f76972i = (ConstraintAttribute) obj;
        }

        @Override // v0.c
        public void j(View view, float f11) {
            this.f76971h[0] = a(f11);
            v0.a.b(this.f76972i, view, this.f76971h);
        }
    }

    /* JADX INFO: renamed from: v0.c$c, reason: collision with other inner class name */
    static class C0940c extends c {
        C0940c() {
        }

        @Override // v0.c
        public void j(View view, float f11) {
            view.setElevation(a(f11));
        }
    }

    public static class d extends c {
        @Override // v0.c
        public void j(View view, float f11) {
        }

        public void k(View view, float f11, double d11, double d12) {
            view.setRotation(a(f11) + ((float) Math.toDegrees(Math.atan2(d12, d11))));
        }
    }

    static class e extends c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        boolean f76973h = false;

        e() {
        }

        @Override // v0.c
        public void j(View view, float f11) {
            Method method;
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(a(f11));
                return;
            }
            if (this.f76973h) {
                return;
            }
            try {
                method = view.getClass().getMethod("setProgress", Float.TYPE);
            } catch (NoSuchMethodException unused) {
                this.f76973h = true;
                method = null;
            }
            if (method != null) {
                try {
                    method.invoke(view, Float.valueOf(a(f11)));
                } catch (IllegalAccessException e11) {
                    Log.e("ViewOscillator", "unable to setProgress", e11);
                } catch (InvocationTargetException e12) {
                    Log.e("ViewOscillator", "unable to setProgress", e12);
                }
            }
        }
    }

    static class f extends c {
        f() {
        }

        @Override // v0.c
        public void j(View view, float f11) {
            view.setRotation(a(f11));
        }
    }

    static class g extends c {
        g() {
        }

        @Override // v0.c
        public void j(View view, float f11) {
            view.setRotationX(a(f11));
        }
    }

    static class h extends c {
        h() {
        }

        @Override // v0.c
        public void j(View view, float f11) {
            view.setRotationY(a(f11));
        }
    }

    static class i extends c {
        i() {
        }

        @Override // v0.c
        public void j(View view, float f11) {
            view.setScaleX(a(f11));
        }
    }

    static class j extends c {
        j() {
        }

        @Override // v0.c
        public void j(View view, float f11) {
            view.setScaleY(a(f11));
        }
    }

    static class k extends c {
        k() {
        }

        @Override // v0.c
        public void j(View view, float f11) {
            view.setTranslationX(a(f11));
        }
    }

    static class l extends c {
        l() {
        }

        @Override // v0.c
        public void j(View view, float f11) {
            view.setTranslationY(a(f11));
        }
    }

    static class m extends c {
        m() {
        }

        @Override // v0.c
        public void j(View view, float f11) {
            view.setTranslationZ(a(f11));
        }
    }

    public static c i(String str) {
        if (str.startsWith("CUSTOM")) {
            return new b();
        }
        switch (str) {
            case "rotationX":
                return new g();
            case "rotationY":
                return new h();
            case "translationX":
                return new k();
            case "translationY":
                return new l();
            case "translationZ":
                return new m();
            case "progress":
                return new e();
            case "scaleX":
                return new i();
            case "scaleY":
                return new j();
            case "waveVariesBy":
                return new a();
            case "rotation":
                return new f();
            case "elevation":
                return new C0940c();
            case "transitionPathRotate":
                return new d();
            case "alpha":
                return new a();
            case "waveOffset":
                return new a();
            default:
                return null;
        }
    }

    public abstract void j(View view, float f11);
}
