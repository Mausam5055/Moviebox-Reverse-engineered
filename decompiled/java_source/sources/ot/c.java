package ot;

import androidx.compose.foundation.e;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f72100a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f72101b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f72102c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f72103d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f72104e;

    public c(String subjectId, int i11, boolean z10, boolean z11, boolean z12) {
        Intrinsics.h(subjectId, "subjectId");
        this.f72100a = subjectId;
        this.f72101b = i11;
        this.f72102c = z10;
        this.f72103d = z11;
        this.f72104e = z12;
    }

    public /* synthetic */ c(String str, int i11, boolean z10, boolean z11, boolean z12, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i11, (i12 & 4) != 0 ? false : z10, (i12 & 8) != 0 ? false : z11, (i12 & 16) != 0 ? false : z12);
    }

    public final int a() {
        return this.f72101b;
    }

    public final boolean b() {
        return this.f72104e;
    }

    public final boolean c() {
        return this.f72102c;
    }

    public final boolean d() {
        return this.f72103d;
    }

    public final void e(boolean z10) {
        this.f72102c = z10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return Intrinsics.c(this.f72100a, cVar.f72100a) && this.f72101b == cVar.f72101b && this.f72102c == cVar.f72102c && this.f72103d == cVar.f72103d && this.f72104e == cVar.f72104e;
    }

    public final void f(boolean z10) {
        this.f72103d = z10;
    }

    public int hashCode() {
        return (((((((this.f72100a.hashCode() * 31) + this.f72101b) * 31) + e.a(this.f72102c)) * 31) + e.a(this.f72103d)) * 31) + e.a(this.f72104e);
    }

    public String toString() {
        return "ShortTvDownloadEpisodeSelectItem(subjectId=" + this.f72100a + ", position=" + this.f72101b + ", isFree=" + this.f72102c + ", isSelect=" + this.f72103d + ", isDownload=" + this.f72104e + ")";
    }
}
