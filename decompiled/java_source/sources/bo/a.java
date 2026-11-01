package bo;

import androidx.compose.foundation.e;
import com.transsion.player.config.PlayerType;
import com.transsion.player.p007enum.ScaleMode;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f16633a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final PlayerType f16634b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f16635c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f16636d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f16637e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ScaleMode f16638f;

    public a(d vodConfig, PlayerType playerType, boolean z10, boolean z11, float f11, ScaleMode scaleMode) {
        Intrinsics.h(vodConfig, "vodConfig");
        Intrinsics.h(playerType, "playerType");
        Intrinsics.h(scaleMode, "scaleMode");
        this.f16633a = vodConfig;
        this.f16634b = playerType;
        this.f16635c = z10;
        this.f16636d = z11;
        this.f16637e = f11;
        this.f16638f = scaleMode;
    }

    public /* synthetic */ a(d dVar, PlayerType playerType, boolean z10, boolean z11, float f11, ScaleMode scaleMode, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(dVar, (i11 & 2) != 0 ? PlayerType.EXO : playerType, (i11 & 4) != 0 ? true : z10, (i11 & 8) != 0 ? true : z11, f11, scaleMode);
    }

    public final ScaleMode a() {
        return this.f16638f;
    }

    public final float b() {
        return this.f16637e;
    }

    public final boolean c() {
        return this.f16636d;
    }

    public final d d() {
        return this.f16633a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Intrinsics.c(this.f16633a, aVar.f16633a) && this.f16634b == aVar.f16634b && this.f16635c == aVar.f16635c && this.f16636d == aVar.f16636d && Float.compare(this.f16637e, aVar.f16637e) == 0 && this.f16638f == aVar.f16638f;
    }

    public int hashCode() {
        return (((((((((this.f16633a.hashCode() * 31) + this.f16634b.hashCode()) * 31) + e.a(this.f16635c)) * 31) + e.a(this.f16636d)) * 31) + Float.floatToIntBits(this.f16637e)) * 31) + this.f16638f.hashCode();
    }

    public String toString() {
        return "LongVodConfig(vodConfig=" + this.f16633a + ", playerType=" + this.f16634b + ", openMediaNotification=" + this.f16635c + ", useSurface=" + this.f16636d + ", speed=" + this.f16637e + ", scaleMode=" + this.f16638f + ")";
    }
}
