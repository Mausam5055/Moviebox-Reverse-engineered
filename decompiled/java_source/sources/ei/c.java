package ei;

import com.transsion.ad.bidding.gemini.AbsBiddingBuyOutGemini;
import com.transsion.ad.bidding.video.BiddingBuyOutBuyOutVideoActivity;
import com.transsion.ad.bidding.video.BiddingBuyOutVideoAutoFullScreenActivity;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class c extends AbsBiddingBuyOutGemini {
    @Override // com.transsion.ad.bidding.gemini.AbsBiddingBuyOutGemini
    public Class c() {
        return Intrinsics.c(e(), "auto_fullscreen") ? BiddingBuyOutVideoAutoFullScreenActivity.class : BiddingBuyOutBuyOutVideoActivity.class;
    }

    @Override // com.transsion.ad.bidding.gemini.AbsBiddingBuyOutGemini
    public String f() {
        return "video";
    }

    @Override // oi.b
    public String getLogTag() {
        return "ad_v";
    }
}
