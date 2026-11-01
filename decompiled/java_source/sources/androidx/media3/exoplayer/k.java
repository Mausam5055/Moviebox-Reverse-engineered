package androidx.media3.exoplayer;

/* JADX INFO: loaded from: classes2.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f12050a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final androidx.media3.common.r f12051b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final androidx.media3.common.r f12052c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f12053d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f12054e;

    public k(String str, androidx.media3.common.r rVar, androidx.media3.common.r rVar2, int i11, int i12) {
        androidx.media3.common.util.a.a(i11 == 0 || i12 == 0);
        this.f12050a = androidx.media3.common.util.a.d(str);
        this.f12051b = (androidx.media3.common.r) androidx.media3.common.util.a.e(rVar);
        this.f12052c = (androidx.media3.common.r) androidx.media3.common.util.a.e(rVar2);
        this.f12053d = i11;
        this.f12054e = i12;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || k.class != obj.getClass()) {
            return false;
        }
        k kVar = (k) obj;
        return this.f12053d == kVar.f12053d && this.f12054e == kVar.f12054e && this.f12050a.equals(kVar.f12050a) && this.f12051b.equals(kVar.f12051b) && this.f12052c.equals(kVar.f12052c);
    }

    public int hashCode() {
        return ((((((((527 + this.f12053d) * 31) + this.f12054e) * 31) + this.f12050a.hashCode()) * 31) + this.f12051b.hashCode()) * 31) + this.f12052c.hashCode();
    }
}
