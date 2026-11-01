package js;

import com.transsion.shorttv.bean.ShortTVItem;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class e extends k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f66263a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f66264b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ShortTVItem f66265c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f66266d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(String subjectId, int i11, ShortTVItem shortTVItem, int i12) {
        super(null);
        Intrinsics.h(subjectId, "subjectId");
        this.f66263a = subjectId;
        this.f66264b = i11;
        this.f66265c = shortTVItem;
        this.f66266d = i12;
    }

    public /* synthetic */ e(String str, int i11, ShortTVItem shortTVItem, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i11, (i13 & 4) != 0 ? null : shortTVItem, (i13 & 8) != 0 ? 0 : i12);
    }

    public final String a() {
        return "shorttv_ad_" + this.f66263a + "_" + this.f66264b;
    }

    public final int b() {
        return this.f66266d;
    }

    public final int c() {
        return this.f66264b;
    }

    public final ShortTVItem d() {
        return this.f66265c;
    }

    public final String e() {
        return this.f66263a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!Intrinsics.c(e.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        Intrinsics.f(obj, "null cannot be cast to non-null type com.transsion.shorttv.bean.ShortTvEpisodeSelectItem");
        e eVar = (e) obj;
        return Intrinsics.c(this.f66263a, eVar.f66263a) && this.f66264b == eVar.f66264b;
    }

    public final String f() {
        return this.f66263a + "_" + this.f66264b + "short";
    }

    public final void g(int i11) {
        this.f66266d = i11;
    }

    public final void h(ShortTVItem shortTVItem) {
        this.f66265c = shortTVItem;
    }

    public int hashCode() {
        return (this.f66263a.hashCode() * 31) + this.f66264b;
    }

    public String toString() {
        return "ShortTvEpisodeSelectItem(subjectId=" + this.f66263a + ", ep=" + this.f66264b + ", item=" + this.f66265c + ", downloadStatus=" + this.f66266d + ")";
    }
}
