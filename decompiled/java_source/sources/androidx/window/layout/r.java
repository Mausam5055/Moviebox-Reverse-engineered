package androidx.window.layout;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public interface r extends l {

    public static final class a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final C0130a f15351b = new C0130a(null);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final a f15352c = new a("NONE");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final a f15353d = new a("FULL");

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f15354a;

        /* JADX INFO: renamed from: androidx.window.layout.r$a$a, reason: collision with other inner class name */
        public static final class C0130a {
            private C0130a() {
            }

            public /* synthetic */ C0130a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        private a(String str) {
            this.f15354a = str;
        }

        public String toString() {
            return this.f15354a;
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final a f15355b = new a(null);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final b f15356c = new b("VERTICAL");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final b f15357d = new b("HORIZONTAL");

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f15358a;

        public static final class a {
            private a() {
            }

            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        private b(String str) {
            this.f15358a = str;
        }

        public String toString() {
            return this.f15358a;
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final a f15359b = new a(null);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final c f15360c = new c("FLAT");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final c f15361d = new c("HALF_OPENED");

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f15362a;

        public static final class a {
            private a() {
            }

            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        private c(String str) {
            this.f15362a = str;
        }

        public String toString() {
            return this.f15362a;
        }
    }

    b getOrientation();

    boolean isSeparating();
}
