package ei;

import com.transsion.ad.bidding.gemini.AbsBiddingBuyOutGemini;
import com.transsion.ad.bidding.interstitial.BiddingBuyOutBuyOutInterstitialHalfScreenActivity;
import com.transsion.ad.bidding.interstitial.BiddingBuyOutFullScreenInterstitialActivity;
import com.transsion.ad.bidding.interstitial.BiddingBuyOutInterstitialActionActivity;
import com.transsion.ad.bidding.interstitial.BiddingBuyOutInterstitialAutoFullScreenActivity;

/* JADX INFO: loaded from: classes6.dex */
public final class a extends AbsBiddingBuyOutGemini {
    @Override // com.transsion.ad.bidding.gemini.AbsBiddingBuyOutGemini
    public Class c() {
        String strE = e();
        int iHashCode = strE.hashCode();
        if (iHashCode != -1008505828) {
            if (iHashCode != -145498037) {
                if (iHashCode == 1099969393 && strE.equals("action_dialog")) {
                    return BiddingBuyOutInterstitialActionActivity.class;
                }
            } else if (strE.equals("auto_fullscreen")) {
                return BiddingBuyOutInterstitialAutoFullScreenActivity.class;
            }
        } else if (strE.equals("full_screen")) {
            return BiddingBuyOutFullScreenInterstitialActivity.class;
        }
        return BiddingBuyOutBuyOutInterstitialHalfScreenActivity.class;
    }

    @Override // com.transsion.ad.bidding.gemini.AbsBiddingBuyOutGemini
    public String f() {
        return com.vungle.ads.internal.b.PLACEMENT_TYPE_INTERSTITIAL;
    }

    @Override // oi.b
    public String getLogTag() {
        return "ad_int";
    }
}
