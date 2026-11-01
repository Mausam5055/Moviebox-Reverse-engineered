package be;

import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.hisavana.common.base.BaseSplash;
import com.hisavana.common.bean.AdCache;
import com.hisavana.common.bean.TInnerAdRequestBody;
import com.hisavana.common.interfacz.ICacheAd;
import com.hisavana.common.manager.AdCacheManager;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.bean.CloudControlConfig;

/* JADX INFO: loaded from: classes4.dex */
public class s extends c {
    public static AdCache B = new AdCache();

    public s(CloudControlConfig.CodeSeat codeSeat, i iVar, t tVar) {
        super(codeSeat, iVar, tVar);
    }

    @Override // be.c
    public AdCache G() {
        return AdCacheManager.getCache(4);
    }

    @Override // be.c
    public boolean d0() {
        return true;
    }

    @Override // be.c
    /* JADX INFO: renamed from: q0, reason: merged with bridge method [inline-methods] */
    public void p(BaseSplash baseSplash) {
        if (baseSplash == null || G().hasAd(this.f16362j, baseSplash)) {
            return;
        }
        baseSplash.destroyAd();
    }

    @Override // be.c
    /* JADX INFO: renamed from: r0, reason: merged with bridge method [inline-methods] */
    public BaseSplash e(boolean z10) {
        ICacheAd cache = G().getCache(this.f16362j, false, V(), z10);
        this.f16361i = cache;
        if (cache == null) {
            AdLogUtil.Log().w("SplashCacheHandler", "no ad");
            return null;
        }
        G().removeCache(this.f16362j, (BaseSplash) this.f16361i);
        if (((BaseSplash) this.f16361i).isExpired()) {
            AdLogUtil.Log().w("SplashCacheHandler", "ad is expired");
            return null;
        }
        TInnerAdRequestBody tInnerAdRequestBodyD = d(null, 2);
        ((BaseSplash) this.f16361i).addRequestBody(tInnerAdRequestBodyD);
        ((BaseSplash) this.f16361i).setShowId(DeviceUtil.o());
        m(tInnerAdRequestBodyD, this.f16354b);
        return (BaseSplash) this.f16361i;
    }

    @Override // be.c
    /* JADX INFO: renamed from: s0, reason: merged with bridge method [inline-methods] */
    public void z(BaseSplash baseSplash) {
        if (baseSplash != null) {
            baseSplash.pauseAd();
        }
    }

    @Override // be.c
    /* JADX INFO: renamed from: t0, reason: merged with bridge method [inline-methods] */
    public void F(BaseSplash baseSplash) {
        if (baseSplash != null) {
            baseSplash.resumeAd();
        }
    }
}
