package androidx.navigation;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f13909a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f13910b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f13911c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f13912d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f13913e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f13914f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f13915g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f13916h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f13917i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f13918j;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f13919a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f13920b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f13922d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f13923e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f13924f;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f13921c = -1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f13925g = -1;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f13926h = -1;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f13927i = -1;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private int f13928j = -1;

        public static /* synthetic */ a i(a aVar, int i11, boolean z10, boolean z11, int i12, Object obj) {
            if ((i12 & 4) != 0) {
                z11 = false;
            }
            return aVar.g(i11, z10, z11);
        }

        public final l a() {
            String str = this.f13922d;
            return str != null ? new l(this.f13919a, this.f13920b, str, this.f13923e, this.f13924f, this.f13925g, this.f13926h, this.f13927i, this.f13928j) : new l(this.f13919a, this.f13920b, this.f13921c, this.f13923e, this.f13924f, this.f13925g, this.f13926h, this.f13927i, this.f13928j);
        }

        public final a b(int i11) {
            this.f13925g = i11;
            return this;
        }

        public final a c(int i11) {
            this.f13926h = i11;
            return this;
        }

        public final a d(boolean z10) {
            this.f13919a = z10;
            return this;
        }

        public final a e(int i11) {
            this.f13927i = i11;
            return this;
        }

        public final a f(int i11) {
            this.f13928j = i11;
            return this;
        }

        public final a g(int i11, boolean z10, boolean z11) {
            this.f13921c = i11;
            this.f13922d = null;
            this.f13923e = z10;
            this.f13924f = z11;
            return this;
        }

        public final a h(String str, boolean z10, boolean z11) {
            this.f13922d = str;
            this.f13921c = -1;
            this.f13923e = z10;
            this.f13924f = z11;
            return this;
        }

        public final a j(boolean z10) {
            this.f13920b = z10;
            return this;
        }
    }

    public l(boolean z10, boolean z11, int i11, boolean z12, boolean z13, int i12, int i13, int i14, int i15) {
        this.f13909a = z10;
        this.f13910b = z11;
        this.f13911c = i11;
        this.f13912d = z12;
        this.f13913e = z13;
        this.f13914f = i12;
        this.f13915g = i13;
        this.f13916h = i14;
        this.f13917i = i15;
    }

    public l(boolean z10, boolean z11, String str, boolean z12, boolean z13, int i11, int i12, int i13, int i14) {
        this(z10, z11, NavDestination.f13829j.a(str).hashCode(), z12, z13, i11, i12, i13, i14);
        this.f13918j = str;
    }

    public final int a() {
        return this.f13914f;
    }

    public final int b() {
        return this.f13915g;
    }

    public final int c() {
        return this.f13916h;
    }

    public final int d() {
        return this.f13917i;
    }

    public final int e() {
        return this.f13911c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !Intrinsics.c(l.class, obj.getClass())) {
            return false;
        }
        l lVar = (l) obj;
        return this.f13909a == lVar.f13909a && this.f13910b == lVar.f13910b && this.f13911c == lVar.f13911c && Intrinsics.c(this.f13918j, lVar.f13918j) && this.f13912d == lVar.f13912d && this.f13913e == lVar.f13913e && this.f13914f == lVar.f13914f && this.f13915g == lVar.f13915g && this.f13916h == lVar.f13916h && this.f13917i == lVar.f13917i;
    }

    public final boolean f() {
        return this.f13912d;
    }

    public final boolean g() {
        return this.f13909a;
    }

    public final boolean h() {
        return this.f13913e;
    }

    public int hashCode() {
        int i11 = (((((g() ? 1 : 0) * 31) + (i() ? 1 : 0)) * 31) + this.f13911c) * 31;
        String str = this.f13918j;
        return ((((((((((((i11 + (str == null ? 0 : str.hashCode())) * 31) + (f() ? 1 : 0)) * 31) + (h() ? 1 : 0)) * 31) + this.f13914f) * 31) + this.f13915g) * 31) + this.f13916h) * 31) + this.f13917i;
    }

    public final boolean i() {
        return this.f13910b;
    }
}
