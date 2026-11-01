package js;

import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class c extends k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private BiddingNativeManager f66257a;

    /* JADX WARN: Multi-variable type inference failed */
    public c() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public c(BiddingNativeManager biddingNativeManager) {
        super(null);
        this.f66257a = biddingNativeManager;
    }

    public /* synthetic */ c(BiddingNativeManager biddingNativeManager, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : biddingNativeManager);
    }

    public final BiddingNativeManager a() {
        return this.f66257a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c) && Intrinsics.c(this.f66257a, ((c) obj).f66257a);
    }

    public int hashCode() {
        BiddingNativeManager biddingNativeManager = this.f66257a;
        if (biddingNativeManager == null) {
            return 0;
        }
        return biddingNativeManager.hashCode();
    }

    public String toString() {
        return "ShortTvAdItem(nonAdDelegate=" + this.f66257a + ")";
    }
}
