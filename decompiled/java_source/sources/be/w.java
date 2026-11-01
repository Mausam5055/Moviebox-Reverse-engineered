package be;

import android.os.Bundle;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.hisavana.common.base.BaseVideo;
import com.hisavana.common.bean.AdCache;
import com.hisavana.common.bean.TInnerAdRequestBody;
import com.hisavana.common.interfacz.ICacheAd;
import com.hisavana.common.manager.AdCacheManager;
import com.hisavana.common.tracking.TrackingKey;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.bean.CloudControlConfig;

/* JADX INFO: loaded from: classes4.dex */
public class w extends c {
    public w(CloudControlConfig.CodeSeat codeSeat, i iVar, t tVar) {
        super(codeSeat, iVar, tVar);
    }

    @Override // be.c
    public AdCache G() {
        return AdCacheManager.getCache(5);
    }

    @Override // be.c
    public boolean d0() {
        return true;
    }

    @Override // be.c
    /* JADX INFO: renamed from: q0, reason: merged with bridge method [inline-methods] */
    public void p(BaseVideo baseVideo) {
        if (baseVideo == null || G().hasAd(this.f16362j, baseVideo)) {
            return;
        }
        baseVideo.destroyAd();
    }

    @Override // be.c
    /* JADX INFO: renamed from: r0, reason: merged with bridge method [inline-methods] */
    public BaseVideo e(boolean z10) {
        Bundle bundle;
        ICacheAd cache = G().getCache(this.f16362j, false, V(), z10);
        this.f16361i = cache;
        if (cache == null) {
            AdLogUtil.Log().w("VideoCacheHandler", "no ad");
            return null;
        }
        G().removeCache(this.f16362j, (BaseVideo) this.f16361i);
        if (((BaseVideo) this.f16361i).isExpired()) {
            AdLogUtil.Log().w("VideoCacheHandler", "ad is expired");
            return null;
        }
        TInnerAdRequestBody tInnerAdRequestBodyD = d(null, 2);
        ((BaseVideo) this.f16361i).addRequestBody(tInnerAdRequestBodyD);
        Bundle bundle2 = ((BaseVideo) this.f16361i).mBundle;
        if (bundle2 != null && (bundle = this.A) != null) {
            bundle2.putString(TrackingKey.TRIGGER_ID, bundle.getString(TrackingKey.TRIGGER_ID));
            ((BaseVideo) this.f16361i).mBundle.putLong(TrackingKey.TRIGGER_TS, this.A.getLong(TrackingKey.TRIGGER_TS));
        }
        ((BaseVideo) this.f16361i).setShowId(DeviceUtil.o());
        m(tInnerAdRequestBodyD, this.f16354b);
        return (BaseVideo) this.f16361i;
    }
}
