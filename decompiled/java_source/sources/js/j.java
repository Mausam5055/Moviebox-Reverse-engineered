package js;

import com.transsion.player.ui.ORPlayerView;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ORPlayerView f66270a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.transsion.player.orplayer.g f66271b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f66272c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f66273d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f66274e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f66275f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f66276g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f66277h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final List f66278i;

    public j(ORPlayerView playerView, com.transsion.player.orplayer.g orPlayer, String subjectId, int i11, int i12, String pageName, String str, String str2, List playList) {
        Intrinsics.h(playerView, "playerView");
        Intrinsics.h(orPlayer, "orPlayer");
        Intrinsics.h(subjectId, "subjectId");
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(playList, "playList");
        this.f66270a = playerView;
        this.f66271b = orPlayer;
        this.f66272c = subjectId;
        this.f66273d = i11;
        this.f66274e = i12;
        this.f66275f = pageName;
        this.f66276g = str;
        this.f66277h = str2;
        this.f66278i = playList;
    }

    public final int a() {
        return this.f66274e;
    }

    public final String b() {
        return this.f66276g;
    }

    public final com.transsion.player.orplayer.g c() {
        return this.f66271b;
    }

    public final String d() {
        return this.f66277h;
    }

    public final String e() {
        return this.f66275f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        return Intrinsics.c(this.f66270a, jVar.f66270a) && Intrinsics.c(this.f66271b, jVar.f66271b) && Intrinsics.c(this.f66272c, jVar.f66272c) && this.f66273d == jVar.f66273d && this.f66274e == jVar.f66274e && Intrinsics.c(this.f66275f, jVar.f66275f) && Intrinsics.c(this.f66276g, jVar.f66276g) && Intrinsics.c(this.f66277h, jVar.f66277h) && Intrinsics.c(this.f66278i, jVar.f66278i);
    }

    public final List f() {
        return this.f66278i;
    }

    public final ORPlayerView g() {
        return this.f66270a;
    }

    public final int h() {
        return this.f66273d;
    }

    public int hashCode() {
        int iHashCode = ((((((((((this.f66270a.hashCode() * 31) + this.f66271b.hashCode()) * 31) + this.f66272c.hashCode()) * 31) + this.f66273d) * 31) + this.f66274e) * 31) + this.f66275f.hashCode()) * 31;
        String str = this.f66276g;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f66277h;
        return ((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31) + this.f66278i.hashCode();
    }

    public final String i() {
        return this.f66272c;
    }

    public String toString() {
        return "ShortTvFloatBean(playerView=" + this.f66270a + ", orPlayer=" + this.f66271b + ", subjectId=" + this.f66272c + ", se=" + this.f66273d + ", ep=" + this.f66274e + ", pageName=" + this.f66275f + ", ops=" + this.f66276g + ", pageFrom=" + this.f66277h + ", playList=" + this.f66278i + ")";
    }
}
