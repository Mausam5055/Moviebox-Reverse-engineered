package be;

import android.os.Bundle;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.hisavana.common.base.BaseBanner;
import com.hisavana.common.bean.AdCache;
import com.hisavana.common.bean.TInnerAdRequestBody;
import com.hisavana.common.interfacz.ICacheAd;
import com.hisavana.common.manager.AdCacheManager;
import com.hisavana.common.tracking.TrackingKey;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.bean.CloudControlConfig;

/* JADX INFO: loaded from: classes4.dex */
public class a extends c {
    public a(CloudControlConfig.CodeSeat codeSeat, i iVar, t tVar) {
        super(codeSeat, iVar, tVar);
    }

    @Override // be.c
    public AdCache G() {
        return AdCacheManager.getCache(2);
    }

    @Override // be.c
    public boolean d0() {
        return true;
    }

    @Override // be.c
    public boolean e0() {
        return false;
    }

    @Override // be.c
    /* JADX INFO: renamed from: q0, reason: merged with bridge method [inline-methods] */
    public void p(BaseBanner baseBanner) {
        if (baseBanner == null || G().hasAd(this.f16362j, baseBanner)) {
            return;
        }
        baseBanner.destroyAd();
    }

    @Override // be.c
    /* JADX INFO: renamed from: r0, reason: merged with bridge method [inline-methods] */
    public BaseBanner e(boolean z10) {
        Bundle bundle;
        ICacheAd cache = G().getCache(this.f16362j, false, V(), z10);
        this.f16361i = cache;
        if (cache == null) {
            AdLogUtil.Log().w("BannerCacheHandler", "no ad");
            return null;
        }
        G().removeCache(this.f16362j, (BaseBanner) this.f16361i);
        if (((BaseBanner) this.f16361i).isExpired()) {
            AdLogUtil.Log().w("BannerCacheHandler", "ad is expired");
            return null;
        }
        TInnerAdRequestBody tInnerAdRequestBodyD = d(null, 2);
        ((BaseBanner) this.f16361i).addRequestBody(tInnerAdRequestBodyD);
        Bundle bundle2 = ((BaseBanner) this.f16361i).mBundle;
        if (bundle2 != null && (bundle = this.A) != null) {
            bundle2.putString(TrackingKey.TRIGGER_ID, bundle.getString(TrackingKey.TRIGGER_ID));
            ((BaseBanner) this.f16361i).mBundle.putLong(TrackingKey.TRIGGER_TS, this.A.getLong(TrackingKey.TRIGGER_TS));
        }
        ((BaseBanner) this.f16361i).setShowId(DeviceUtil.o());
        m(tInnerAdRequestBodyD, this.f16354b);
        return (BaseBanner) this.f16361i;
    }

    @Override // be.c
    /* JADX INFO: renamed from: s0, reason: merged with bridge method [inline-methods] */
    public void z(BaseBanner baseBanner) {
        if (baseBanner != null) {
            baseBanner.pauseAd();
        }
    }

    @Override // be.c
    /* JADX INFO: renamed from: t0, reason: merged with bridge method [inline-methods] */
    public void F(BaseBanner baseBanner) {
        if (baseBanner != null) {
            baseBanner.resumeAd();
        }
    }
}
