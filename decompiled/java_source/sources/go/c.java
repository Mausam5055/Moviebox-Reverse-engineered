package go;

import com.transsion.player.p007enum.PlayMimeType;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final PlayMimeType f63916a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f63917b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f63918c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f63919d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f63920e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f63921f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f63922g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f63923h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f63924i;

    public c(PlayMimeType format, String id2, String url, String resolutions, String size, String duration, String signCookie, String str) {
        Intrinsics.h(format, "format");
        Intrinsics.h(id2, "id");
        Intrinsics.h(url, "url");
        Intrinsics.h(resolutions, "resolutions");
        Intrinsics.h(size, "size");
        Intrinsics.h(duration, "duration");
        Intrinsics.h(signCookie, "signCookie");
        this.f63916a = format;
        this.f63917b = id2;
        this.f63918c = url;
        this.f63919d = resolutions;
        this.f63920e = size;
        this.f63921f = duration;
        this.f63922g = signCookie;
        this.f63923h = str;
    }

    public /* synthetic */ c(PlayMimeType playMimeType, String str, String str2, String str3, String str4, String str5, String str6, String str7, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(playMimeType, str, str2, str3, str4, str5, str6, (i11 & 128) != 0 ? null : str7);
    }

    public final String a() {
        return this.f63921f;
    }

    public final PlayMimeType b() {
        return this.f63916a;
    }

    public final String c() {
        return this.f63917b;
    }

    public final String d() {
        return this.f63924i;
    }

    public final String e() {
        return this.f63919d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f63916a == cVar.f63916a && Intrinsics.c(this.f63917b, cVar.f63917b) && Intrinsics.c(this.f63918c, cVar.f63918c) && Intrinsics.c(this.f63919d, cVar.f63919d) && Intrinsics.c(this.f63920e, cVar.f63920e) && Intrinsics.c(this.f63921f, cVar.f63921f) && Intrinsics.c(this.f63922g, cVar.f63922g) && Intrinsics.c(this.f63923h, cVar.f63923h);
    }

    public final String f() {
        return this.f63922g;
    }

    public final String g() {
        return this.f63920e;
    }

    public final String h() {
        return this.f63918c;
    }

    public int hashCode() {
        int iHashCode = ((((((((((((this.f63916a.hashCode() * 31) + this.f63917b.hashCode()) * 31) + this.f63918c.hashCode()) * 31) + this.f63919d.hashCode()) * 31) + this.f63920e.hashCode()) * 31) + this.f63921f.hashCode()) * 31) + this.f63922g.hashCode()) * 31;
        String str = this.f63923h;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final boolean i() {
        return StringsKt.c0(this.f63918c, ".mp3", false, 2, null);
    }

    public final boolean j() {
        return StringsKt.W(this.f63918c, "http", false, 2, null);
    }

    public final boolean k() {
        PlayMimeType playMimeType = this.f63916a;
        return playMimeType == PlayMimeType.DASH || playMimeType == PlayMimeType.HLS;
    }

    public final void l(String str) {
        this.f63924i = str;
    }

    public String toString() {
        return "LongVdPlayerStreamBean(format=" + this.f63916a + ", id=" + this.f63917b + ", url=" + this.f63918c + ", resolutions=" + this.f63919d + ", size=" + this.f63920e + ", duration=" + this.f63921f + ", signCookie=" + this.f63922g + ", originalResolutions=" + this.f63923h + ")";
    }
}
