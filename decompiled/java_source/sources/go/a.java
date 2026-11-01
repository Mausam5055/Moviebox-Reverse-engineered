package go;

import androidx.collection.s;
import androidx.compose.foundation.e;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.player.p007enum.PlayMimeType;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f63891a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final PlayMimeType f63892b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f63893c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f63894d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f63895e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f63896f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f63897g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f63898h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f63899i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final List f63900j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final String f63901k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final String f63902l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final String f63903m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final int f63904n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Integer f63905o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final boolean f63906p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final String f63907q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final String f63908r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private UGCVideo f63909s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private DownloadBean f63910t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private Subject f63911u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final List f63912v;

    public a(String subjectId, PlayMimeType videoFormat, long j11, int i11, int i12, String subjectName, String str, String pageFrom, String pageName, List playSteams, String cover, String thumbnail, String averageHueLight, int i13, Integer num, boolean z10, String str2, String str3) {
        Intrinsics.h(subjectId, "subjectId");
        Intrinsics.h(videoFormat, "videoFormat");
        Intrinsics.h(subjectName, "subjectName");
        Intrinsics.h(pageFrom, "pageFrom");
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(playSteams, "playSteams");
        Intrinsics.h(cover, "cover");
        Intrinsics.h(thumbnail, "thumbnail");
        Intrinsics.h(averageHueLight, "averageHueLight");
        this.f63891a = subjectId;
        this.f63892b = videoFormat;
        this.f63893c = j11;
        this.f63894d = i11;
        this.f63895e = i12;
        this.f63896f = subjectName;
        this.f63897g = str;
        this.f63898h = pageFrom;
        this.f63899i = pageName;
        this.f63900j = playSteams;
        this.f63901k = cover;
        this.f63902l = thumbnail;
        this.f63903m = averageHueLight;
        this.f63904n = i13;
        this.f63905o = num;
        this.f63906p = z10;
        this.f63907q = str2;
        this.f63908r = str3;
        this.f63912v = new ArrayList();
    }

    public /* synthetic */ a(String str, PlayMimeType playMimeType, long j11, int i11, int i12, String str2, String str3, String str4, String str5, List list, String str6, String str7, String str8, int i13, Integer num, boolean z10, String str9, String str10, int i14, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, playMimeType, (i14 & 4) != 0 ? 0L : j11, (i14 & 8) != 0 ? 0 : i11, (i14 & 16) != 0 ? 0 : i12, str2, (i14 & 64) != 0 ? null : str3, str4, str5, (i14 & 512) != 0 ? new ArrayList() : list, str6, str7, str8, i13, (i14 & 16384) != 0 ? 1 : num, (32768 & i14) != 0 ? false : z10, str9, (i14 & 131072) != 0 ? null : str10);
    }

    public final void A(Subject subject) {
        this.f63911u = subject;
    }

    public final void B(UGCVideo uGCVideo) {
        this.f63909s = uGCVideo;
    }

    public final List a() {
        return this.f63912v;
    }

    public final String b() {
        return this.f63903m;
    }

    public final String c() {
        return this.f63901k;
    }

    public final DownloadBean d() {
        return this.f63910t;
    }

    public final int e() {
        return this.f63894d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Intrinsics.c(this.f63891a, aVar.f63891a) && this.f63892b == aVar.f63892b && this.f63893c == aVar.f63893c && this.f63894d == aVar.f63894d && this.f63895e == aVar.f63895e && Intrinsics.c(this.f63896f, aVar.f63896f) && Intrinsics.c(this.f63897g, aVar.f63897g) && Intrinsics.c(this.f63898h, aVar.f63898h) && Intrinsics.c(this.f63899i, aVar.f63899i) && Intrinsics.c(this.f63900j, aVar.f63900j) && Intrinsics.c(this.f63901k, aVar.f63901k) && Intrinsics.c(this.f63902l, aVar.f63902l) && Intrinsics.c(this.f63903m, aVar.f63903m) && this.f63904n == aVar.f63904n && Intrinsics.c(this.f63905o, aVar.f63905o) && this.f63906p == aVar.f63906p && Intrinsics.c(this.f63907q, aVar.f63907q) && Intrinsics.c(this.f63908r, aVar.f63908r);
    }

    public final String f() {
        return this.f63897g;
    }

    public final boolean g() {
        return this.f63906p;
    }

    public final String h() {
        return this.f63898h;
    }

    public int hashCode() {
        int iHashCode = ((((((((((this.f63891a.hashCode() * 31) + this.f63892b.hashCode()) * 31) + s.a(this.f63893c)) * 31) + this.f63894d) * 31) + this.f63895e) * 31) + this.f63896f.hashCode()) * 31;
        String str = this.f63897g;
        int iHashCode2 = (((((((((((((((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.f63898h.hashCode()) * 31) + this.f63899i.hashCode()) * 31) + this.f63900j.hashCode()) * 31) + this.f63901k.hashCode()) * 31) + this.f63902l.hashCode()) * 31) + this.f63903m.hashCode()) * 31) + this.f63904n) * 31;
        Integer num = this.f63905o;
        int iHashCode3 = (((iHashCode2 + (num == null ? 0 : num.hashCode())) * 31) + e.a(this.f63906p)) * 31;
        String str2 = this.f63907q;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f63908r;
        return iHashCode4 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String i() {
        return this.f63899i;
    }

    public final List j() {
        return this.f63900j;
    }

    public final long k() {
        return this.f63893c;
    }

    public final int l() {
        return this.f63895e;
    }

    public final Subject m() {
        return this.f63911u;
    }

    public final int n() {
        return this.f63904n;
    }

    public final String o() {
        return this.f63891a;
    }

    public final String p() {
        return this.f63896f;
    }

    public final String q() {
        return this.f63908r;
    }

    public final Integer r() {
        return this.f63905o;
    }

    public final String s() {
        return this.f63902l;
    }

    public final String t() {
        return this.f63907q;
    }

    public String toString() {
        return "LongVdPlayerBean(subjectId=" + this.f63891a + ", videoFormat=" + this.f63892b + ", progress=" + this.f63893c + ", ep=" + this.f63894d + ", se=" + this.f63895e + ", subjectName=" + this.f63896f + ", episodeTitle=" + this.f63897g + ", pageFrom=" + this.f63898h + ", pageName=" + this.f63899i + ", playSteams=" + this.f63900j + ", cover=" + this.f63901k + ", thumbnail=" + this.f63902l + ", averageHueLight=" + this.f63903m + ", subjectDurationSeconds=" + this.f63904n + ", subjectType=" + this.f63905o + ", hasDelete=" + this.f63906p + ", titleName=" + this.f63907q + ", subjectOps=" + this.f63908r + ")";
    }

    public final UGCVideo u() {
        return this.f63909s;
    }

    public final PlayMimeType v() {
        return this.f63892b;
    }

    public final boolean w() {
        PlayMimeType playMimeType = this.f63892b;
        if (playMimeType != PlayMimeType.DEFAULT) {
            return playMimeType == PlayMimeType.HLS && this.f63900j.size() > 1;
        }
        return true;
    }

    public final void x(DownloadBean downloadBean) {
        this.f63910t = downloadBean;
    }

    public final void y(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f63899i = str;
    }

    public final void z(long j11) {
        this.f63893c = j11;
    }
}
