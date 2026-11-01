package androidx.compose.ui.text.style;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f6433c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final o f6434d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final o f6435e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f6436a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f6437b;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final o a() {
            return o.f6434d;
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f6438a = new a(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final int f6439b = d(1);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final int f6440c = d(2);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final int f6441d = d(3);

        public static final class a {
            private a() {
            }

            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final int a() {
                return b.f6440c;
            }

            public final int b() {
                return b.f6439b;
            }

            public final int c() {
                return b.f6441d;
            }
        }

        private static int d(int i11) {
            return i11;
        }

        public static final boolean e(int i11, int i12) {
            return i11 == i12;
        }

        public static int f(int i11) {
            return i11;
        }
    }

    static {
        DefaultConstructorMarker defaultConstructorMarker = null;
        f6433c = new a(defaultConstructorMarker);
        b.a aVar = b.f6438a;
        f6434d = new o(aVar.a(), false, defaultConstructorMarker);
        f6435e = new o(aVar.b(), true, defaultConstructorMarker);
    }

    private o(int i11, boolean z10) {
        this.f6436a = i11;
        this.f6437b = z10;
    }

    public /* synthetic */ o(int i11, boolean z10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i11, z10);
    }

    public final int b() {
        return this.f6436a;
    }

    public final boolean c() {
        return this.f6437b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        return b.e(this.f6436a, oVar.f6436a) && this.f6437b == oVar.f6437b;
    }

    public int hashCode() {
        return (b.f(this.f6436a) * 31) + androidx.compose.foundation.e.a(this.f6437b);
    }

    public String toString() {
        if (Intrinsics.c(this, f6434d)) {
            return "TextMotion.Static";
        }
        return Intrinsics.c(this, f6435e) ? "TextMotion.Animated" : "Invalid";
    }
}
