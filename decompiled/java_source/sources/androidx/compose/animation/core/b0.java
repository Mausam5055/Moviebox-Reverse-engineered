package androidx.compose.animation.core;

/* JADX INFO: loaded from: classes.dex */
public abstract class b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final z f2407a = new u(0.4f, 0.0f, 0.2f, 1.0f);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final z f2408b = new u(0.0f, 0.0f, 0.2f, 1.0f);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final z f2409c = new u(0.4f, 0.0f, 1.0f, 1.0f);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final z f2410d = new z() { // from class: androidx.compose.animation.core.a0
        @Override // androidx.compose.animation.core.z
        public final float a(float f11) {
            return b0.b(f11);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static final float b(float f11) {
        return f11;
    }

    public static final z c() {
        return f2407a;
    }

    public static final z d() {
        return f2410d;
    }
}
