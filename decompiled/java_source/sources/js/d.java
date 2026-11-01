package js;

import com.transsion.shorttv.bean.ShortTVItem;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f66258a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f66259b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f66260c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f66261d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ShortTVItem f66262e;

    public d(String subjectId, int i11, boolean z10, boolean z11, ShortTVItem shortTVItem) {
        Intrinsics.h(subjectId, "subjectId");
        this.f66258a = subjectId;
        this.f66259b = i11;
        this.f66260c = z10;
        this.f66261d = z11;
        this.f66262e = shortTVItem;
    }

    public /* synthetic */ d(String str, int i11, boolean z10, boolean z11, ShortTVItem shortTVItem, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i11, (i12 & 4) != 0 ? false : z10, (i12 & 8) != 0 ? false : z11, (i12 & 16) != 0 ? null : shortTVItem);
    }

    public final ShortTVItem a() {
        return this.f66262e;
    }

    public final int b() {
        return this.f66259b;
    }

    public final boolean c() {
        return this.f66261d;
    }

    public final boolean d() {
        return this.f66260c;
    }

    public final void e(boolean z10) {
        this.f66261d = z10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return Intrinsics.c(this.f66258a, dVar.f66258a) && this.f66259b == dVar.f66259b && this.f66260c == dVar.f66260c && this.f66261d == dVar.f66261d && Intrinsics.c(this.f66262e, dVar.f66262e);
    }

    public final void f(ShortTVItem shortTVItem) {
        this.f66262e = shortTVItem;
    }

    public final void g(boolean z10) {
        this.f66260c = z10;
    }

    public int hashCode() {
        int iHashCode = ((((((this.f66258a.hashCode() * 31) + this.f66259b) * 31) + androidx.compose.foundation.e.a(this.f66260c)) * 31) + androidx.compose.foundation.e.a(this.f66261d)) * 31;
        ShortTVItem shortTVItem = this.f66262e;
        return iHashCode + (shortTVItem == null ? 0 : shortTVItem.hashCode());
    }

    public String toString() {
        return "ShortTvDownloadEpisodeSelectItem(subjectId=" + this.f66258a + ", position=" + this.f66259b + ", isSelect=" + this.f66260c + ", isDownload=" + this.f66261d + ", episodeItem=" + this.f66262e + ")";
    }
}
