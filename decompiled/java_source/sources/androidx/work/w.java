package androidx.work;

/* JADX INFO: loaded from: classes2.dex */
public interface w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b.c f16058a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b.C0137b f16059b;

    public static abstract class b {

        public static final class a extends b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final Throwable f16060a;

            public a(Throwable th2) {
                this.f16060a = th2;
            }

            public String toString() {
                return "FAILURE (" + this.f16060a.getMessage() + ")";
            }
        }

        /* JADX INFO: renamed from: androidx.work.w$b$b, reason: collision with other inner class name */
        public static final class C0137b extends b {
            private C0137b() {
            }

            public String toString() {
                return "IN_PROGRESS";
            }
        }

        public static final class c extends b {
            private c() {
            }

            public String toString() {
                return "SUCCESS";
            }
        }

        b() {
        }
    }

    static {
        f16058a = new b.c();
        f16059b = new b.C0137b();
    }

    com.google.common.util.concurrent.r a();
}
