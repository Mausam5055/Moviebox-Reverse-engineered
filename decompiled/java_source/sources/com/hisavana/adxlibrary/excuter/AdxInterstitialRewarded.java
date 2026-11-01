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
import z6.c;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0014¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0014¢\u0006\u0004\b\u000b\u0010\nJ\u0019\u0010\u000e\u001a\u00020\b2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0013\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0014\u0010\u0012J\u000f\u0010\u0015\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0015\u0010\nJ\u000f\u0010\u0016\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0016\u0010\u0012J\u000f\u0010\u0017\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0017\u0010\u0012J\u000f\u0010\u0018\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0018\u0010\u0012R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0018\u0010\"\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!¨\u0006#"}, d2 = {"Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;", "Lcom/hisavana/common/base/BaseVideo;", "Landroid/content/Context;", "context", "Lcom/hisavana/common/bean/Network;", "network", "<init>", "(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V", "", "initVideo", "()V", "onVideoStartLoad", "Landroid/app/Activity;", "activity", "onVideoShow", "(Landroid/app/Activity;)V", "", "isLoaded", "()Z", "isExpired", "canShow", "destroyAd", "isAdxAd", "isEwAd", "isInternalAd", "a", "Lcom/hisavana/common/bean/Network;", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "tag", "Lz6/c;", "c", "Lz6/c;", b.PLACEMENT_TYPE_REWARDED, "ssp_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AdxInterstitialRewarded extends BaseVideo {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    public final Network network;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    public final String tag;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    public c rewarded;

    public static final class a extends d {
        public a() {
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdActivate(AdActiveInfo adActiveInfo) {
            AdxInterstitialRewarded.this.adActivate(adActiveInfo);
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdClicked() {
            AdLogUtil.Log().i(AdxInterstitialRewarded.this.tag, "onAdClicked");
            AdxInterstitialRewarded.this.adClicked(null);
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdClosed() {
            AdLogUtil.Log().i(AdxInterstitialRewarded.this.tag, "onAdClosed");
            AdxInterstitialRewarded.this.adClosed();
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdLoaded() {
            AdLogUtil.Log().i(AdxInterstitialRewarded.this.tag, "onAdLoaded");
            c cVar = AdxInterstitialRewarded.this.rewarded;
            double dF = cVar != null ? cVar.f() : 0.0d;
            if (dF > 0.0d) {
                AdxInterstitialRewarded.this.setEcpmPrice(dF);
            }
            AdxInterstitialRewarded.this.adLoaded();
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdShow() {
            AdLogUtil.Log().i(AdxInterstitialRewarded.this.tag, "onAdShow");
            AdxInterstitialRewarded.this.adImpression(null);
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onError(TaErrorCode taErrorCode) {
            AdLogUtil.Log().i(AdxInterstitialRewarded.this.tag, "onError : " + taErrorCode);
            if (taErrorCode != null) {
                AdxInterstitialRewarded.this.adFailedToLoad(new TAdErrorCode(taErrorCode.getErrorCode(), taErrorCode.getErrorMessage()));
            } else {
                AdxInterstitialRewarded.this.adFailedToLoad(TAdErrorCode.ERROR_AD_REQUEST_FAILED);
            }
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onRewarded() {
            AdLogUtil.Log().i(AdxInterstitialRewarded.this.tag, "onRewarded");
            AdxInterstitialRewarded.this.onReward();
        }
    }

    public AdxInterstitialRewarded(Context context, Network network) {
        super(context, network);
        this.network = network;
        this.tag = "AdxInterstitialRewarded";
    }

    @Override // com.hisavana.common.base.BaseVideo, com.hisavana.common.interfacz.IadVideo
    public boolean canShow() {
        boolean zCanShow = false;
        try {
            c cVar = this.rewarded;
            if (cVar == null) {
                zCanShow = super.canShow();
            } else if (cVar.d() == 0) {
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
        c cVar = this.rewarded;
        if (cVar != null) {
            cVar.c();
        }
        this.rewarded = null;
        AdLogUtil.Log().d(this.tag, PushConstants.PROVIDER_FIELD_DESTROY + getLogString());
    }

    @Override // com.hisavana.common.base.BaseVideo
    public void initVideo() {
        try {
            Network network = this.network;
            if (network != null) {
                String codeSeatId = network.getCodeSeatId();
                Intrinsics.g(codeSeatId, "getCodeSeatId(...)");
                c cVar = new c(codeSeatId);
                this.rewarded = cVar;
                cVar.r(b7.a.a().a());
                c cVar2 = this.rewarded;
                if (cVar2 != null) {
                    cVar2.t(new a());
                }
            }
        } catch (Exception e11) {
            AdLogUtil.Log().e(this.tag, "initVideo failed: " + e11.getMessage());
            adFailedToLoad(TAdErrorCode.ERROR_AD_SOURCE_INIT_FAILED);
        }
    }

    @Override // com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public boolean isAdxAd() {
        c cVar = this.rewarded;
        return cVar != null && cVar.e() == 2;
    }

    @Override // com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public boolean isEwAd() {
        c cVar = this.rewarded;
        return cVar != null && cVar.e() == 1;
    }

    @Override // com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public boolean isExpired() {
        if (super.isExpired()) {
            return true;
        }
        try {
            c cVar = this.rewarded;
            int iD = cVar != null ? cVar.d() : 1115;
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
        c cVar = this.rewarded;
        return cVar != null && cVar.i();
    }

    @Override // com.hisavana.common.base.BaseVideo, com.hisavana.common.interfacz.IadVideo
    public boolean isLoaded() {
        c cVar = this.rewarded;
        if (cVar != null) {
            return cVar.j();
        }
        return false;
    }

    @Override // com.hisavana.common.base.BaseVideo
    public void onVideoShow(Activity activity) {
        b7.a aVarH;
        Unit unit;
        c cVar = this.rewarded;
        if (cVar != null && (aVarH = cVar.h()) != null) {
            double d11 = this.secondPrice;
            if (d11 != 0.0d) {
                aVarH.h(d11);
                c cVar2 = this.rewarded;
                if (cVar2 != null) {
                    cVar2.r(aVarH);
                }
            }
            c cVar3 = this.rewarded;
            if (cVar3 != null) {
                cVar3.u();
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
        try {
            c cVar = this.rewarded;
            if (cVar == null || cVar.j() || (aVarH = cVar.h()) == null) {
                return;
            }
            aVarH.k(this.requestType);
            aVarH.l("hisa-" + this.mTriggerId);
            aVarH.j("hisa-" + this.mRequestId);
            aVarH.i(getSupportHisavanaFlag() >= 2);
            cVar.r(aVarH);
            cVar.m(this.isContainVulgarContent);
            cVar.l(this.mGameName, this.mGameScene, this.mExtInfo);
            cVar.s();
        } catch (Exception e11) {
            AdLogUtil.Log().e(this.tag, "onVideoStartLoad failed: " + e11.getMessage());
            adFailedToLoad(TAdErrorCode.ERROR_AD_REQUEST_FAILED);
        }
    }
}
