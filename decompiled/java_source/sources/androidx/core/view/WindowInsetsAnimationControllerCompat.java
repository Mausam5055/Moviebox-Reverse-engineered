package androidx.core.view;

import android.view.WindowInsetsAnimationController;

/* JADX INFO: loaded from: classes.dex */
public final class WindowInsetsAnimationControllerCompat {
    private final b mImpl;

    private static class a extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WindowInsetsAnimationController f8338a;

        a(WindowInsetsAnimationController windowInsetsAnimationController) {
            this.f8338a = windowInsetsAnimationController;
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.b
        void a(boolean z10) {
            this.f8338a.finish(z10);
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.b
        public float b() {
            return this.f8338a.getCurrentAlpha();
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.b
        public float c() {
            return this.f8338a.getCurrentFraction();
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.b
        public z0.c d() {
            return z0.c.f(this.f8338a.getCurrentInsets());
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.b
        public z0.c e() {
            return z0.c.f(this.f8338a.getHiddenStateInsets());
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.b
        public z0.c f() {
            return z0.c.f(this.f8338a.getShownStateInsets());
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.b
        public int g() {
            return this.f8338a.getTypes();
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.b
        boolean h() {
            return this.f8338a.isCancelled();
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.b
        boolean i() {
            return this.f8338a.isFinished();
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.b
        public void j(z0.c cVar, float f11, float f12) {
            this.f8338a.setInsetsAndAlpha(cVar == null ? null : cVar.g(), f11, f12);
        }
    }

    private static class b {
        b() {
        }

        abstract void a(boolean z10);

        public abstract float b();

        public abstract float c();

        public abstract z0.c d();

        public abstract z0.c e();

        public abstract z0.c f();

        public abstract int g();

        abstract boolean h();

        abstract boolean i();

        public abstract void j(z0.c cVar, float f11, float f12);
    }

    WindowInsetsAnimationControllerCompat(WindowInsetsAnimationController windowInsetsAnimationController) {
        this.mImpl = new a(windowInsetsAnimationController);
    }

    public void finish(boolean z10) {
        this.mImpl.a(z10);
    }

    public float getCurrentAlpha() {
        return this.mImpl.b();
    }

    public float getCurrentFraction() {
        return this.mImpl.c();
    }

    public z0.c getCurrentInsets() {
        return this.mImpl.d();
    }

    public z0.c getHiddenStateInsets() {
        return this.mImpl.e();
    }

    public z0.c getShownStateInsets() {
        return this.mImpl.f();
    }

    public int getTypes() {
        return this.mImpl.g();
    }

    public boolean isCancelled() {
        return this.mImpl.h();
    }

    public boolean isFinished() {
        return this.mImpl.i();
    }

    public boolean isReady() {
        return (isFinished() || isCancelled()) ? false : true;
    }

    public void setInsetsAndAlpha(z0.c cVar, float f11, float f12) {
        this.mImpl.j(cVar, f11, f12);
    }
}
