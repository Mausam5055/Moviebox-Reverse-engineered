package be;

import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.hisavana.common.base.BaseInterstitial;
import com.hisavana.common.bean.AdCache;
import com.hisavana.common.bean.TInnerAdRequestBody;
import com.hisavana.common.interfacz.ICacheAd;
import com.hisavana.common.manager.AdCacheManager;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.bean.CloudControlConfig;

/* JADX INFO: loaded from: classes4.dex */
public class k extends c {
    public k(CloudControlConfig.CodeSeat codeSeat, i iVar, t tVar) {
        super(codeSeat, iVar, tVar);
    }

    @Override // be.c
    public AdCache G() {
        return AdCacheManager.getCache(3);
    }

    @Override // be.c
    public boolean d0() {
        return true;
    }

    @Override // be.c
    /* JADX INFO: renamed from: q0, reason: merged with bridge method [inline-methods] */
    public void p(BaseInterstitial baseInterstitial) {
        if (baseInterstitial == null || G().hasAd(this.f16362j, baseInterstitial)) {
            return;
        }
        baseInterstitial.destroyAd();
    }

    @Override // be.c
    /* JADX INFO: renamed from: r0, reason: merged with bridge method [inline-methods] */
    public BaseInterstitial e(boolean z10) {
        ICacheAd cache = G().getCache(this.f16362j, false, V(), z10);
        this.f16361i = cache;
        if (cache == null) {
            AdLogUtil.Log().w("InterstialCacheHandler", "no ad");
            return null;
        }
        G().removeCache(this.f16362j, (BaseInterstitial) this.f16361i);
        if (((BaseInterstitial) this.f16361i).isExpired()) {
            AdLogUtil.Log().w("InterstialCacheHandler", "ad is expired");
            return null;
        }
        TInnerAdRequestBody tInnerAdRequestBodyD = d(null, 2);
        ((BaseInterstitial) this.f16361i).addRequestBody(tInnerAdRequestBodyD);
        ((BaseInterstitial) this.f16361i).setShowId(DeviceUtil.o());
        m(tInnerAdRequestBodyD, this.f16354b);
        return (BaseInterstitial) this.f16361i;
    }
}
