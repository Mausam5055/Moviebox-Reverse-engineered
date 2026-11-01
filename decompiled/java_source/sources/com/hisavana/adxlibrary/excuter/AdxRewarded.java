package com.hisavana.adxlibrary.excuter;

import android.app.Activity;
import android.content.Context;
import com.cloud.hisavana.sdk.api.listener.d;
import com.cloud.hisavana.sdk.common.bean.AdActiveInfo;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.hisavana.common.base.BaseVideo;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.b;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import z6.e;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0014¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0014¢\u0006\u0004\b\u000b\u0010\nJ\u0019\u0010\u000e\u001a\u00020\b2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0013\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0014\u0010\u0012J\u000f\u0010\u0015\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0015\u0010\nJ\u000f\u0010\u0016\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0016\u0010\u0012J\u000f\u0010\u0017\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0017\u0010\u0012J\u000f\u0010\u0018\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0018\u0010\u0012R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0018\u0010\"\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!¨\u0006#"}, d2 = {"Lcom/hisavana/adxlibrary/excuter/AdxRewarded;", "Lcom/hisavana/common/base/BaseVideo;", "Landroid/content/Context;", "context", "Lcom/hisavana/common/bean/Network;", "network", "<init>", "(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V", "", "initVideo", "()V", "onVideoStartLoad", "Landroid/app/Activity;", "activity", "onVideoShow", "(Landroid/app/Activity;)V", "", "isLoaded", "()Z", "isExpired", "canShow", "destroyAd", "isAdxAd", "isEwAd", "isInternalAd", "a", "Lcom/hisavana/common/bean/Network;", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "tag", "Lz6/e;", "c", "Lz6/e;", b.PLACEMENT_TYPE_REWARDED, "ssp_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AdxRewarded extends BaseVideo {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    public final Network network;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    public final String tag;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    public e rewarded;

    public static final class a extends d {
        public a() {
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdActivate(AdActiveInfo adActiveInfo) {
            AdxRewarded.this.adActivate(adActiveInfo);
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdClicked() {
            AdLogUtil.Log().i(AdxRewarded.this.tag, "onAdClicked");
            AdxRewarded.this.adClicked(null);
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdClosed() {
            AdLogUtil.Log().i(AdxRewarded.this.tag, "onAdClosed");
            AdxRewarded.this.adClosed();
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdLoaded() {
            AdLogUtil.Log().i(AdxRewarded.this.tag, "onAdLoaded");
            e eVar = AdxRewarded.this.rewarded;
            double dF = eVar != null ? eVar.f() : 0.0d;
            if (dF > 0.0d) {
                AdxRewarded.this.setEcpmPrice(dF);
            }
            AdxRewarded.this.adLoaded();
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdShow() {
            AdLogUtil.Log().i(AdxRewarded.this.tag, "onAdShow");
            AdxRewarded.this.adImpression(null);
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onError(TaErrorCode taErrorCode) {
            AdLogUtil.Log().i(AdxRewarded.this.tag, "onError : " + taErrorCode);
            if (taErrorCode != null) {
                AdxRewarded.this.adFailedToLoad(new TAdErrorCode(taErrorCode.getErrorCode(), taErrorCode.getErrorMessage()));
            }
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onRewarded() {
            AdLogUtil.Log().i(AdxRewarded.this.tag, "onRewarded");
            AdxRewarded.this.onReward();
        }
    }

    public AdxRewarded(Context context, Network network) {
        super(context, network);
        this.network = network;
        this.tag = "AdxRewarded";
    }

    @Override // com.hisavana.common.base.BaseVideo, com.hisavana.common.interfacz.IadVideo
    public boolean canShow() {
        boolean zCanShow = false;
        try {
            e eVar = this.rewarded;
            if (eVar == null) {
                zCanShow = super.canShow();
            } else if (eVar.d() == 0) {
                zCanShow = true;
            }
        } catch (Exception e11) {
            AdLogUtil.Log().e(this.tag, "canShow failed: " + e11.getMessage());
        }
        return zCanShow;
    }

    @Override // com.hisavana.common.base.BaseVideo, com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public void destroyAd() {
        super.destroyAd();
        e eVar = this.rewarded;
        if (eVar != null) {
            eVar.c();
        }
        this.rewarded = null;
        AdLogUtil.Log().d(this.tag, PushConstants.PROVIDER_FIELD_DESTROY + getLogString());
    }

    @Override // com.hisavana.common.base.BaseVideo
    public void initVideo() {
        Network network = this.network;
        if (network != null) {
            String codeSeatId = network.getCodeSeatId();
            Intrinsics.g(codeSeatId, "getCodeSeatId(...)");
            e eVar = new e(codeSeatId);
            this.rewarded = eVar;
            eVar.r(b7.a.a().a());
            e eVar2 = this.rewarded;
            if (eVar2 != null) {
                eVar2.t(new a());
            }
        }
    }

    @Override // com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public boolean isAdxAd() {
        e eVar = this.rewarded;
        return eVar != null && eVar.e() == 2;
    }

    @Override // com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public boolean isEwAd() {
        e eVar = this.rewarded;
        return eVar != null && eVar.e() == 1;
    }

    @Override // com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public boolean isExpired() {
        if (super.isExpired()) {
            return true;
        }
        try {
            e eVar = this.rewarded;
            int iD = eVar != null ? eVar.d() : 1115;
            setExpireReason(iD);
            return iD != 0;
        } catch (Exception e11) {
            AdLogUtil.Log().e(this.tag, "isExpired failed: " + e11.getMessage());
            setExpireReason(1115);
            return true;
        }
    }

    @Override // com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public boolean isInternalAd() {
        e eVar = this.rewarded;
        return eVar != null && eVar.i();
    }

    @Override // com.hisavana.common.base.BaseVideo, com.hisavana.common.interfacz.IadVideo
    public boolean isLoaded() {
        e eVar = this.rewarded;
        if (eVar != null) {
            return eVar.j();
        }
        return false;
    }

    @Override // com.hisavana.common.base.BaseVideo
    public void onVideoShow(Activity activity) {
        b7.a aVarH;
        Unit unit;
        e eVar = this.rewarded;
        if (eVar != null && (aVarH = eVar.h()) != null) {
            double d11 = this.secondPrice;
            if (d11 != 0.0d) {
                aVarH.h(d11);
                e eVar2 = this.rewarded;
                if (eVar2 != null) {
                    eVar2.r(aVarH);
                }
            }
            e eVar3 = this.rewarded;
            if (eVar3 != null) {
                eVar3.u();
                unit = Unit.f67061a;
            } else {
                unit = null;
            }
            if (unit != null) {
                return;
            }
        }
        onAdShowError(TAdErrorCode.ERROR_SHOW_EXCEPTION);
        AdLogUtil.Log().w(this.tag, "rewarded ad or listener is null");
    }

    @Override // com.hisavana.common.base.BaseVideo
    public void onVideoStartLoad() {
        b7.a aVarH;
        e eVar = this.rewarded;
        if (eVar == null || eVar.j() || (aVarH = eVar.h()) == null) {
            return;
        }
        aVarH.k(this.requestType);
        aVarH.l("hisa-" + this.mTriggerId);
        aVarH.j("hisa-" + this.mRequestId);
        aVarH.i(getSupportHisavanaFlag() >= 2);
        eVar.r(aVarH);
        eVar.m(this.isContainVulgarContent);
        eVar.l(this.mGameName, this.mGameScene, this.mExtInfo);
        eVar.s();
    }
}
