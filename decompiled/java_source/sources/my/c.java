package my;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f70033a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f70034b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f70035c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f70036d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f70037e;

    public c(String subjectId, int i11, boolean z10, boolean z11, boolean z12) {
        Intrinsics.h(subjectId, "subjectId");
        this.f70033a = subjectId;
        this.f70034b = i11;
        this.f70035c = z10;
        this.f70036d = z11;
        this.f70037e = z12;
    }

    public /* synthetic */ c(String str, int i11, boolean z10, boolean z11, boolean z12, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i11, (i12 & 4) != 0 ? false : z10, (i12 & 8) != 0 ? false : z11, (i12 & 16) != 0 ? false : z12);
    }

    public final int a() {
        return this.f70034b;
    }

    public final boolean b() {
        return this.f70037e;
    }

    public final boolean c() {
        return this.f70035c;
    }

    public final boolean d() {
        return this.f70036d;
    }

    public final void e(boolean z10) {
        this.f70037e = z10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return Intrinsics.c(this.f70033a, cVar.f70033a) && this.f70034b == cVar.f70034b && this.f70035c == cVar.f70035c && this.f70036d == cVar.f70036d && this.f70037e == cVar.f70037e;
    }

    public final void f(boolean z10) {
        this.f70035c = z10;
    }

    public final void g(boolean z10) {
        this.f70036d = z10;
    }

    public int hashCode() {
        return (((((((this.f70033a.hashCode() * 31) + this.f70034b) * 31) + androidx.compose.foundation.e.a(this.f70035c)) * 31) + androidx.compose.foundation.e.a(this.f70036d)) * 31) + androidx.compose.foundation.e.a(this.f70037e);
    }

    public String toString() {
        return "DownloadShortTVEpisodeSelectItem(subjectId=" + this.f70033a + ", position=" + this.f70034b + ", isFree=" + this.f70035c + ", isSelect=" + this.f70036d + ", isDownload=" + this.f70037e + ")";
    }
}
