package px;

import android.view.ViewGroup;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.player.orplayer.g;
import com.transsion.player.p007enum.PlayMimeType;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.videofloat.bean.FloatPlayType;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ORPlayerView f72542a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g f72543b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ViewGroup f72544c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final FloatPlayType f72545d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f72546e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f72547f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f72548g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f72549h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f72550i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f72551j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f72552k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private PlayMimeType f72553l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private UGCVideo f72554m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private DownloadBean f72555n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f72556o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Integer f72557p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private String f72558q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private String f72559r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f72560s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f72561t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f72562u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f72563v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final boolean f72564w;

    public a(ORPlayerView playerView, g orPlayer, ViewGroup viewGroup, FloatPlayType playType, String subjectId, int i11, int i12, String str, String pageName) {
        Intrinsics.h(playerView, "playerView");
        Intrinsics.h(orPlayer, "orPlayer");
        Intrinsics.h(playType, "playType");
        Intrinsics.h(subjectId, "subjectId");
        Intrinsics.h(pageName, "pageName");
        this.f72542a = playerView;
        this.f72543b = orPlayer;
        this.f72544c = viewGroup;
        this.f72545d = playType;
        this.f72546e = subjectId;
        this.f72547f = i11;
        this.f72548g = i12;
        this.f72549h = str;
        this.f72550i = pageName;
        this.f72564w = playType == FloatPlayType.LOCAL || playType == FloatPlayType.STREAM;
    }

    private final boolean d() {
        PlayMimeType playMimeType = this.f72553l;
        return playMimeType == PlayMimeType.DASH || playMimeType == PlayMimeType.HLS;
    }

    public final void A(String str) {
        this.f72558q = str;
    }

    public final void B(String str) {
        this.f72560s = str;
    }

    public final void C(String str) {
        this.f72562u = str;
    }

    public final void D(boolean z10) {
        this.f72563v = z10;
    }

    public final void E(String str) {
        this.f72559r = str;
    }

    public final void F(long j11) {
        this.f72551j = j11;
    }

    public final void G(String str) {
        this.f72552k = str;
    }

    public final void H(int i11) {
        this.f72547f = i11;
    }

    public final void I(PlayMimeType playMimeType) {
        this.f72553l = playMimeType;
    }

    public final void J(Integer num) {
        this.f72557p = num;
    }

    public final void K(String str) {
        this.f72556o = str;
    }

    public final void L(UGCVideo uGCVideo) {
        this.f72554m = uGCVideo;
    }

    public final boolean a() {
        return this.f72561t;
    }

    public final DownloadBean b() {
        return this.f72555n;
    }

    public final int c() {
        return this.f72548g;
    }

    public final String e() {
        return this.f72558q;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Intrinsics.c(this.f72542a, aVar.f72542a) && Intrinsics.c(this.f72543b, aVar.f72543b) && Intrinsics.c(this.f72544c, aVar.f72544c) && this.f72545d == aVar.f72545d && Intrinsics.c(this.f72546e, aVar.f72546e) && this.f72547f == aVar.f72547f && this.f72548g == aVar.f72548g && Intrinsics.c(this.f72549h, aVar.f72549h) && Intrinsics.c(this.f72550i, aVar.f72550i);
    }

    public final g f() {
        return this.f72543b;
    }

    public final String g() {
        return this.f72560s;
    }

    public final String h() {
        return this.f72550i;
    }

    public int hashCode() {
        int iHashCode = ((this.f72542a.hashCode() * 31) + this.f72543b.hashCode()) * 31;
        ViewGroup viewGroup = this.f72544c;
        int iHashCode2 = (((((((((iHashCode + (viewGroup == null ? 0 : viewGroup.hashCode())) * 31) + this.f72545d.hashCode()) * 31) + this.f72546e.hashCode()) * 31) + this.f72547f) * 31) + this.f72548g) * 31;
        String str = this.f72549h;
        return ((iHashCode2 + (str != null ? str.hashCode() : 0)) * 31) + this.f72550i.hashCode();
    }

    public final FloatPlayType i() {
        return this.f72545d;
    }

    public final String j() {
        return this.f72562u;
    }

    public final String k() {
        if (this.f72554m != null) {
            String strName = this.f72545d.name();
            UGCVideo uGCVideo = this.f72554m;
            Intrinsics.e(uGCVideo);
            String ugcVideoId = uGCVideo.getUgcVideoId();
            if (ugcVideoId == null) {
                ugcVideoId = "ugcVideo";
            }
            return strName + ugcVideoId;
        }
        if (this.f72555n != null) {
            String strName2 = this.f72545d.name();
            DownloadBean downloadBean = this.f72555n;
            Intrinsics.e(downloadBean);
            String ugcVideoId2 = downloadBean.getUgcVideoId();
            if (ugcVideoId2 == null) {
                ugcVideoId2 = "ugcLocalVideo";
            }
            return strName2 + ugcVideoId2;
        }
        FloatPlayType floatPlayType = this.f72545d;
        if (floatPlayType == FloatPlayType.LOCAL) {
            return floatPlayType.name() + this.f72552k;
        }
        return floatPlayType.name() + this.f72546e;
    }

    public final ORPlayerView l() {
        return this.f72542a;
    }

    public final String m() {
        return this.f72559r;
    }

    public final long n() {
        return this.f72551j;
    }

    public final String o() {
        return this.f72549h;
    }

    public final String p() {
        return this.f72552k;
    }

    public final int q() {
        return this.f72547f;
    }

    public final String r() {
        return this.f72546e;
    }

    public final Integer s() {
        return this.f72557p;
    }

    public final String t() {
        UGCVideo uGCVideo = this.f72554m;
        if (uGCVideo != null) {
            Intrinsics.e(uGCVideo);
            return uGCVideo.getUgcVideoId() + "_" + this.f72556o;
        }
        DownloadBean downloadBean = this.f72555n;
        if (downloadBean != null) {
            Intrinsics.e(downloadBean);
            return downloadBean.getSubtitleResId();
        }
        return this.f72546e + "_" + this.f72547f + "_" + this.f72548g + "_en_" + (d() ? 2 : 1);
    }

    public String toString() {
        return "VideoFloatBean(playerView=" + this.f72542a + ", orPlayer=" + this.f72543b + ", subtitleViewGroup=" + this.f72544c + ", playType=" + this.f72545d + ", subjectId=" + this.f72546e + ", se=" + this.f72547f + ", ep=" + this.f72548g + ", resolution=" + this.f72549h + ", pageName=" + this.f72550i + ")";
    }

    public final ViewGroup u() {
        return this.f72544c;
    }

    public final UGCVideo v() {
        return this.f72554m;
    }

    public final boolean w() {
        return this.f72563v;
    }

    public final boolean x() {
        return this.f72564w;
    }

    public final void y(DownloadBean downloadBean) {
        this.f72555n = downloadBean;
    }

    public final void z(int i11) {
        this.f72548g = i11;
    }
}
