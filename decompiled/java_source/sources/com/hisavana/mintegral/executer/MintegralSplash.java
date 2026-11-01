package com.hisavana.mintegral.executer;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import com.cloud.sdk.commonutil.util.e;
import com.cloud.sdk.commonutil.util.h;
import com.hisavana.common.base.BaseSplash;
import com.hisavana.common.base.WrapTadView;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mintegral.check.ExistsCheck;
import com.mbridge.msdk.out.MBSplashHandler;
import com.mbridge.msdk.out.MBSplashLoadListener;
import com.mbridge.msdk.out.MBSplashShowListener;
import com.mbridge.msdk.out.MBridgeIds;
import com.transsion.push.PushConstants;

/* JADX INFO: loaded from: classes4.dex */
public class MintegralSplash extends BaseSplash {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private MBSplashHandler f33330d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private MBSplashLoadListener f33331e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private MBSplashShowListener f33332f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f33333g;

    /* JADX INFO: renamed from: com.hisavana.mintegral.executer.MintegralSplash$1, reason: invalid class name */
    class AnonymousClass1 implements MBSplashLoadListener {
        AnonymousClass1() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            MintegralSplash.this.adLoaded();
        }

        @Override // com.mbridge.msdk.out.MBSplashLoadListener
        public void isSupportZoomOut(MBridgeIds mBridgeIds, boolean z10) {
            AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "isSupportZoomOut");
        }

        @Override // com.mbridge.msdk.out.MBSplashLoadListener
        public void onLoadFailed(MBridgeIds mBridgeIds, String str, int i11) {
            MintegralSplash.this.adFailedToLoad(new TAdErrorCode(30003, "Mintegral Ads failed to load ad with error message: " + str));
            AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onError msg " + str);
        }

        @Override // com.mbridge.msdk.out.MBSplashLoadListener
        public void onLoadSuccessed(MBridgeIds mBridgeIds, int i11) {
            AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onLoadSuccessed");
            new Handler().postDelayed(new Runnable() { // from class: com.hisavana.mintegral.executer.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33340a.b();
                }
            }, 200L);
        }
    }

    public MintegralSplash(Context context, Network network) {
        super(context, network);
        this.f33331e = new AnonymousClass1();
        this.f33332f = new MBSplashShowListener() { // from class: com.hisavana.mintegral.executer.MintegralSplash.2
            @Override // com.mbridge.msdk.out.MBSplashShowListener
            public void onAdClicked(MBridgeIds mBridgeIds) {
                MintegralSplash.this.adClicked(null);
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onAdClicked");
            }

            @Override // com.mbridge.msdk.out.MBSplashShowListener
            public void onAdTick(MBridgeIds mBridgeIds, long j11) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onAdTick" + j11);
            }

            @Override // com.mbridge.msdk.out.MBSplashShowListener
            public void onDismiss(MBridgeIds mBridgeIds, int i11) {
                if (i11 == 1) {
                    MintegralSplash.this.onSkipClick();
                }
                if (i11 == 2) {
                    MintegralSplash.this.onTimeReach();
                }
                MintegralSplash.this.adClosed();
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onDismiss" + i11);
            }

            @Override // com.mbridge.msdk.out.MBSplashShowListener
            public void onShowFailed(MBridgeIds mBridgeIds, String str) {
                MintegralSplash.this.onAdShowError(new TAdErrorCode(TAdErrorCode.CODE_SHOW_EXCEPTION, "Mintegral Ads failed to load ad with error message: " + str));
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onShowFailed,error msg，" + str);
            }

            @Override // com.mbridge.msdk.out.MBSplashShowListener
            public void onShowSuccessed(MBridgeIds mBridgeIds) {
                MintegralSplash.this.adImpression(null);
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onShowSuccessed");
            }

            @Override // com.mbridge.msdk.out.MBSplashShowListener
            public void onZoomOutPlayFinish(MBridgeIds mBridgeIds) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onZoomOutPlayFinish");
            }

            @Override // com.mbridge.msdk.out.MBSplashShowListener
            public void onZoomOutPlayStart(MBridgeIds mBridgeIds) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onZoomOutPlayStart");
            }
        };
    }

    @Override // com.hisavana.common.base.BaseSplash
    public void addLogoLayout(View view) {
        int i11;
        if (view == null || this.f33330d == null) {
            return;
        }
        int iF = h.f();
        if (iF > 0) {
            Float f11 = this.mLogoLayoutHeightRatio;
            float fFloatValue = f11 != null ? f11.floatValue() : getLogoHeightDefaultRatio();
            AdLogUtil.Log().i(ExistsCheck.MINTEGRAL_TAG, "mediation sdk mintegral addLogoLayout heightRatio = " + fFloatValue);
            i11 = (int) (((float) iF) * fFloatValue);
        } else {
            i11 = 0;
        }
        if (i11 == 0) {
            return;
        }
        this.f33330d.setLogoView(view, h.g(), i11);
    }

    @Override // com.hisavana.common.base.BaseSplash, com.hisavana.common.base.BaseAd, com.hisavana.common.interfacz.ICacheAd
    public void destroyAd() {
        super.destroyAd();
        MBSplashHandler mBSplashHandler = this.f33330d;
        if (mBSplashHandler != null) {
            mBSplashHandler.onDestroy();
        }
        AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, PushConstants.PROVIDER_FIELD_DESTROY + getLogString());
    }

    @Override // com.hisavana.common.base.BaseSplash
    protected View getSplash() {
        AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onSplashLoad");
        if (e.a() != null) {
            return new View(e.a().getApplicationContext());
        }
        return null;
    }

    @Override // com.hisavana.common.base.BaseSplash
    public void onSplashShow() {
    }

    @Override // com.hisavana.common.base.BaseSplash
    protected void onSplashStartLoad() {
        Network network = this.mNetwork;
        if (network != null && !TextUtils.isEmpty(network.getCodeSeatId()) && this.f33331e != null && this.f33332f != null) {
            if (!TextUtils.isEmpty(this.mNetwork.getBidInfo() != null ? this.mNetwork.getBidInfo().getPayload() : null)) {
                MBSplashHandler mBSplashHandler = new MBSplashHandler("", this.mNetwork.getCodeSeatId());
                this.f33330d = mBSplashHandler;
                mBSplashHandler.setSplashLoadListener(this.f33331e);
                this.f33330d.setSplashShowListener(this.f33332f);
                this.f33330d.setOrientation(getOrientation());
                this.f33330d.preLoadByToken(this.mNetwork.getBidInfo().getPayload());
                this.f33333g = this.mNetwork.getBidInfo().getPayload();
                return;
            }
        }
        adFailedToLoad(new TAdErrorCode(30003, "Mintegral Ads failed to load ad error with param empty"));
    }

    @Override // com.hisavana.common.base.BaseSplash
    public void pauseAd() {
        MBSplashHandler mBSplashHandler = this.f33330d;
        if (mBSplashHandler != null) {
            mBSplashHandler.onPause();
        }
    }

    @Override // com.hisavana.common.base.BaseSplash
    public void resumeAd() {
        MBSplashHandler mBSplashHandler = this.f33330d;
        if (mBSplashHandler != null) {
            mBSplashHandler.onResume();
        }
    }

    @Override // com.hisavana.common.base.BaseSplash, com.hisavana.common.interfacz.IadView
    public void show(WrapTadView wrapTadView, String str, String str2) {
        logTrigerShow(str, str2);
        if (this.f33330d == null || wrapTadView == null || TextUtils.isEmpty(this.f33333g) || !this.f33330d.isReady(this.f33333g)) {
            onAdShowError(new TAdErrorCode(TAdErrorCode.CODE_SHOW_EXCEPTION, "Mintegral Ads failed to load ad with error message: mbSplashHandler is null"));
            AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onAdShowError");
        } else {
            addLogoLayout(getLogoLayout());
            this.f33330d.show(wrapTadView, this.f33333g);
            AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, PushConstants.PUSH_SERVICE_TYPE_SHOW);
        }
    }
}
