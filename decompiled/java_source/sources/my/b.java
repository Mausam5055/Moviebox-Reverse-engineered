package my;

import androidx.collection.s;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class b implements n6.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f70025h = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f70026a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f70027b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f70028c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f70029d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f70030e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f70031f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f70032g;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public b(String downloadPath, String downloadShowPath, String pathName, int i11, long j11, int i12) {
        Intrinsics.h(downloadPath, "downloadPath");
        Intrinsics.h(downloadShowPath, "downloadShowPath");
        Intrinsics.h(pathName, "pathName");
        this.f70026a = downloadPath;
        this.f70027b = downloadShowPath;
        this.f70028c = pathName;
        this.f70029d = i11;
        this.f70030e = j11;
        this.f70031f = i12;
    }

    public final long a() {
        return this.f70030e;
    }

    public final String b() {
        return this.f70026a;
    }

    public final String c() {
        return this.f70027b;
    }

    public final String d() {
        return this.f70028c;
    }

    public final int e() {
        return this.f70029d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Intrinsics.c(this.f70026a, bVar.f70026a) && Intrinsics.c(this.f70027b, bVar.f70027b) && Intrinsics.c(this.f70028c, bVar.f70028c) && this.f70029d == bVar.f70029d && this.f70030e == bVar.f70030e && this.f70031f == bVar.f70031f;
    }

    public final boolean f() {
        return this.f70032g;
    }

    public final void g(boolean z10) {
        this.f70032g = z10;
    }

    @Override // n6.a
    public int getItemType() {
        return this.f70031f;
    }

    public int hashCode() {
        return (((((((((this.f70026a.hashCode() * 31) + this.f70027b.hashCode()) * 31) + this.f70028c.hashCode()) * 31) + this.f70029d) * 31) + s.a(this.f70030e)) * 31) + this.f70031f;
    }

    public String toString() {
        return "DownloadSDCardPathInfo(downloadPath=" + this.f70026a + ", downloadShowPath=" + this.f70027b + ", pathName=" + this.f70028c + ", pathType=" + this.f70029d + ", availableSize=" + this.f70030e + ", itemType=" + this.f70031f + ")";
    }
}
