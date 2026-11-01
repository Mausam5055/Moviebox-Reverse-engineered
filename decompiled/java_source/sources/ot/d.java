package ot;

import com.transsion.player.orplayer.g;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.shorttv_pugc.ShorttvModel;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ORPlayerView f72105a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g f72106b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f72107c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f72108d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f72109e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f72110f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f72111g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final List f72112h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final ShorttvModel.UGCVideo f72113i;

    public d(ORPlayerView playerView, g orPlayer, String ugcVideoId, int i11, String pageName, String str, String str2, List playList, ShorttvModel.UGCVideo uGCVideo) {
        Intrinsics.h(playerView, "playerView");
        Intrinsics.h(orPlayer, "orPlayer");
        Intrinsics.h(ugcVideoId, "ugcVideoId");
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(playList, "playList");
        this.f72105a = playerView;
        this.f72106b = orPlayer;
        this.f72107c = ugcVideoId;
        this.f72108d = i11;
        this.f72109e = pageName;
        this.f72110f = str;
        this.f72111g = str2;
        this.f72112h = playList;
        this.f72113i = uGCVideo;
    }

    public final int a() {
        return this.f72108d;
    }

    public final String b() {
        return this.f72110f;
    }

    public final g c() {
        return this.f72106b;
    }

    public final String d() {
        return this.f72111g;
    }

    public final String e() {
        return this.f72109e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return Intrinsics.c(this.f72105a, dVar.f72105a) && Intrinsics.c(this.f72106b, dVar.f72106b) && Intrinsics.c(this.f72107c, dVar.f72107c) && this.f72108d == dVar.f72108d && Intrinsics.c(this.f72109e, dVar.f72109e) && Intrinsics.c(this.f72110f, dVar.f72110f) && Intrinsics.c(this.f72111g, dVar.f72111g) && Intrinsics.c(this.f72112h, dVar.f72112h) && Intrinsics.c(this.f72113i, dVar.f72113i);
    }

    public final List f() {
        return this.f72112h;
    }

    public final ORPlayerView g() {
        return this.f72105a;
    }

    public final ShorttvModel.UGCVideo h() {
        return this.f72113i;
    }

    public int hashCode() {
        int iHashCode = ((((((((this.f72105a.hashCode() * 31) + this.f72106b.hashCode()) * 31) + this.f72107c.hashCode()) * 31) + this.f72108d) * 31) + this.f72109e.hashCode()) * 31;
        String str = this.f72110f;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f72111g;
        int iHashCode3 = (((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.f72112h.hashCode()) * 31;
        ShorttvModel.UGCVideo uGCVideo = this.f72113i;
        return iHashCode3 + (uGCVideo != null ? uGCVideo.hashCode() : 0);
    }

    public String toString() {
        return "ShortTvFloatBean(playerView=" + this.f72105a + ", orPlayer=" + this.f72106b + ", ugcVideoId=" + this.f72107c + ", ep=" + this.f72108d + ", pageName=" + this.f72109e + ", ops=" + this.f72110f + ", pageFrom=" + this.f72111g + ", playList=" + this.f72112h + ", ugcVideo=" + this.f72113i + ")";
    }
}
