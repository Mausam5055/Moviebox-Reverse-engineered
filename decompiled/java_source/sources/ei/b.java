package ei;

import com.transsion.ad.bidding.gemini.AbsBiddingBuyOutGemini;
import com.transsion.ad.bidding.splash.BiddingBuyOutSplashActivity;

/* JADX INFO: loaded from: classes6.dex */
public final class b extends AbsBiddingBuyOutGemini {
    @Override // com.transsion.ad.bidding.gemini.AbsBiddingBuyOutGemini
    public Class c() {
        return BiddingBuyOutSplashActivity.class;
    }

    @Override // com.transsion.ad.bidding.gemini.AbsBiddingBuyOutGemini
    public String f() {
        return "splash";
    }

    @Override // oi.b
    public String getLogTag() {
        return "ad_s";
    }
}
