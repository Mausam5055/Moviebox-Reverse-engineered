package com.hisavana.adxlibrary.excuter;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.RelativeLayout;
import com.cloud.hisavana.sdk.api.adx.TSplashView;
import com.cloud.hisavana.sdk.api.listener.d;
import com.cloud.hisavana.sdk.api.listener.g;
import com.cloud.hisavana.sdk.common.bean.AdActiveInfo;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.hisavana.common.base.WrapTadView;
import com.hisavana.common.bean.AdditionalInfo;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.interfacz.OnSkipListener;
import com.hisavana.common.interfacz.TAdditionalListener;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.bridge.holder.JsAdHolderHandlerKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import z6.f;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0004\n\u0002\b\u0006*\u0002RV\u0018\u0000 Z2\u00020\u0001:\u00012B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u0013\u0010\u0014J7\u0010\u001a\u001a\u00020\u00002\b\u0010\u0015\u001a\u0004\u0018\u00010\u00042\b\u0010\u0016\u001a\u0004\u0018\u00010\u00042\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017¢\u0006\u0004\b\u001a\u0010\u001bJ\u0015\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001e\u0010\u001fJ\u0015\u0010\"\u001a\u00020\u00002\u0006\u0010!\u001a\u00020 ¢\u0006\u0004\b\"\u0010#J\u0015\u0010%\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\u001c¢\u0006\u0004\b%\u0010\u001fJ\r\u0010&\u001a\u00020\u000b¢\u0006\u0004\b&\u0010'J!\u0010,\u001a\u00020\u000b2\b\u0010)\u001a\u0004\u0018\u00010(2\b\u0010+\u001a\u0004\u0018\u00010*¢\u0006\u0004\b,\u0010-J\r\u0010/\u001a\u00020.¢\u0006\u0004\b/\u00100J\r\u00101\u001a\u00020\u000b¢\u0006\u0004\b1\u0010'J\u000f\u00102\u001a\u00020\u000bH\u0002¢\u0006\u0004\b2\u0010'J\u000f\u00103\u001a\u00020\u000bH\u0002¢\u0006\u0004\b3\u0010'R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00104R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u00105R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00105R\u0018\u0010:\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0018\u0010>\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R\u0016\u0010A\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u0016\u0010D\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR\u0018\u0010G\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010FR\u0018\u0010J\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010IR\u0018\u0010M\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010LR\u0014\u0010Q\u001a\u00020N8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bO\u0010PR\u0014\u0010U\u001a\u00020R8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bS\u0010TR\u0014\u0010Y\u001a\u00020V8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bW\u0010X¨\u0006["}, d2 = {"Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;", "", "Landroid/content/Context;", "context", "", "appId", "adUnit", "<init>", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V", "", "logoLayoutHeightRatio", "", "setLogoLayoutHeightRatio", "(Ljava/lang/Float;)V", "Lcom/hisavana/common/interfacz/TAdditionalListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setAdditionalListener", "(Lcom/hisavana/common/interfacz/TAdditionalListener;)Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;", "Lcom/hisavana/common/interfacz/OnSkipListener;", "setSkipListener", "(Lcom/hisavana/common/interfacz/OnSkipListener;)Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;", JsAdHolderHandlerKt.GAME_NAME, JsAdHolderHandlerKt.GAME_SCENE, "", "Ljava/lang/Object;", "extInfo", "setAdLoadScenes", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;", "", "isContainVulgarContent", "setContainVulgarContent", "(Z)Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;", "", "mode", "setSplashMode", "(I)Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;", "debug", "setDebug", "loadAd", "()V", "Lcom/hisavana/common/base/WrapTadView;", "adContainer", "Landroid/view/View;", "logoLayout", "showAd", "(Lcom/hisavana/common/base/WrapTadView;Landroid/view/View;)V", "", "getEcpmPrice", "()D", PushConstants.PROVIDER_FIELD_DESTROY, "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroid/content/Context;", "Ljava/lang/String;", "c", "Lz6/f;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lz6/f;", "tSplash", "Lcom/cloud/hisavana/sdk/api/adx/TSplashView;", "e", "Lcom/cloud/hisavana/sdk/api/adx/TSplashView;", "tSplashView", "f", "I", "splashMode", "g", "Z", "isDebug", "h", "Lcom/hisavana/common/interfacz/TAdditionalListener;", "additionalListener", "i", "Lcom/hisavana/common/interfacz/OnSkipListener;", "adSkipListener", "j", "Ljava/lang/Float;", "mLogoLayoutHeightRatio", "Lcom/hisavana/common/bean/AdditionalInfo;", CampaignEx.JSON_KEY_AD_K, "Lcom/hisavana/common/bean/AdditionalInfo;", "additionalInfo", "com/hisavana/adxlibrary/excuter/AdxWrapperSplash$b", "l", "Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;", "adListener", "com/hisavana/adxlibrary/excuter/AdxWrapperSplash$c", "m", "Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$c;", "skipListener", "Companion", "ssp_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AdxWrapperSplash {
    public static final String TAG = "AdxWrapperSplash";

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    public final Context context;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    public final String appId;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    public final String adUnit;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    public f tSplash;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    public TSplashView tSplashView;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    public int splashMode;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    public boolean isDebug;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    public TAdditionalListener additionalListener;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    public OnSkipListener adSkipListener;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    public Float mLogoLayoutHeightRatio;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    public final AdditionalInfo additionalInfo;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    public final b adListener;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    public final c skipListener;

    public static final class b extends d {
        public b() {
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdActivate(AdActiveInfo adActiveInfo) {
            super.onAdActivate(adActiveInfo);
            AdLogUtil.Log().i(AdxWrapperSplash.TAG, "AdxWrapperSplash --> onAdActivate");
            AdxWrapperSplash.this.additionalInfo.setEcpm(adActiveInfo != null ? adActiveInfo.getEcpm() : null);
            AdxWrapperSplash.this.additionalInfo.setPackageName(adActiveInfo != null ? adActiveInfo.getPackageName() : null);
            AdxWrapperSplash.this.additionalInfo.setImageUrl(adActiveInfo != null ? adActiveInfo.getImageUrl() : null);
            TAdditionalListener tAdditionalListener = AdxWrapperSplash.this.additionalListener;
            if (tAdditionalListener != null) {
                tAdditionalListener.onAdActivate(AdxWrapperSplash.this.additionalInfo);
            }
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdClicked() {
            super.onAdClicked();
            AdLogUtil.Log().i(AdxWrapperSplash.TAG, "AdxWrapperSplash --> onAdClicked");
            TAdditionalListener tAdditionalListener = AdxWrapperSplash.this.additionalListener;
            if (tAdditionalListener != null) {
                tAdditionalListener.onClick(null, AdxWrapperSplash.this.additionalInfo);
            }
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdClosed() {
            super.onAdClosed();
            AdLogUtil.Log().i(AdxWrapperSplash.TAG, "AdxWrapperSplash --> onAdClosed");
            TAdditionalListener tAdditionalListener = AdxWrapperSplash.this.additionalListener;
            if (tAdditionalListener != null) {
                tAdditionalListener.onClosed(0);
            }
        }

        /* JADX WARN: Code duplicated, block: B:13:0x0032  */
        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdLoaded() {
            Double dValueOf;
            TSplashView tSplashView;
            super.onAdLoaded();
            int i11 = AdxWrapperSplash.this.splashMode;
            if (i11 == 1) {
                f fVar = AdxWrapperSplash.this.tSplash;
                if (fVar != null) {
                    dValueOf = Double.valueOf(fVar.f());
                } else {
                    dValueOf = null;
                }
            } else if (i11 == 2 && (tSplashView = AdxWrapperSplash.this.tSplashView) != null) {
                dValueOf = Double.valueOf(tSplashView.getBidPrice());
            } else {
                dValueOf = null;
            }
            AdxWrapperSplash.this.additionalInfo.setEcpm(dValueOf);
            AdLogUtil.Log().i(AdxWrapperSplash.TAG, "AdxWrapperSplash --> onAdLoaded, ecpm: " + dValueOf);
            TAdditionalListener tAdditionalListener = AdxWrapperSplash.this.additionalListener;
            if (tAdditionalListener != null) {
                tAdditionalListener.onLoadSuccess(AdxWrapperSplash.this.additionalInfo);
            }
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdShow() {
            super.onAdShow();
            AdLogUtil.Log().i(AdxWrapperSplash.TAG, "AdxWrapperSplash --> onAdShow");
            TAdditionalListener tAdditionalListener = AdxWrapperSplash.this.additionalListener;
            if (tAdditionalListener != null) {
                tAdditionalListener.onShow(null, AdxWrapperSplash.this.additionalInfo);
            }
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onAdShowError(TaErrorCode taErrorCode) {
            super.onAdShowError(taErrorCode);
            TAdditionalListener tAdditionalListener = AdxWrapperSplash.this.additionalListener;
            if (tAdditionalListener != null) {
                tAdditionalListener.onShowError(new TAdErrorCode(taErrorCode != null ? taErrorCode.getErrorCode() : -1, taErrorCode != null ? taErrorCode.getErrorMessage() : null), AdxWrapperSplash.this.additionalInfo);
            }
        }

        @Override // com.cloud.hisavana.sdk.api.listener.d
        public void onError(TaErrorCode taErrorCode) {
            super.onError(taErrorCode);
            TAdditionalListener tAdditionalListener = AdxWrapperSplash.this.additionalListener;
            if (tAdditionalListener != null) {
                tAdditionalListener.onLoadFailure(new TAdErrorCode(taErrorCode != null ? taErrorCode.getErrorCode() : -1, taErrorCode != null ? taErrorCode.getErrorMessage() : null), AdxWrapperSplash.this.additionalInfo);
            }
        }
    }

    public static final class c implements g {
        public c() {
        }

        @Override // com.cloud.hisavana.sdk.api.listener.g
        public void a() {
            AdLogUtil.Log().i(AdxWrapperSplash.TAG, "AdxWrapperSplash --> onTimeEnd");
            OnSkipListener onSkipListener = AdxWrapperSplash.this.adSkipListener;
            if (onSkipListener != null) {
                onSkipListener.onTimeReach();
            }
        }

        @Override // com.cloud.hisavana.sdk.api.listener.g
        public void onClick() {
            AdLogUtil.Log().i(AdxWrapperSplash.TAG, "AdxWrapperSplash --> onClick");
            OnSkipListener onSkipListener = AdxWrapperSplash.this.adSkipListener;
            if (onSkipListener != null) {
                onSkipListener.onClick();
            }
        }
    }

    public AdxWrapperSplash(Context context, String str, String str2) {
        Intrinsics.h(context, "context");
        this.context = context;
        this.appId = str;
        this.adUnit = str2;
        this.splashMode = 1;
        AdditionalInfo additionalInfo = new AdditionalInfo();
        additionalInfo.setPlacementId(str2);
        additionalInfo.setCodeSeatId(str2);
        additionalInfo.setSource(0);
        this.additionalInfo = additionalInfo;
        this.adListener = new b();
        this.skipListener = new c();
    }

    public final void a() {
        f fVar = new f(this.context, this.adUnit);
        this.tSplash = fVar;
        fVar.p(this.adListener);
        f fVar2 = this.tSplash;
        if (fVar2 != null) {
            fVar2.x(this.skipListener);
        }
        f fVar3 = this.tSplash;
        if (fVar3 != null) {
            fVar3.o(0);
        }
    }

    public final void b() {
        TSplashView tSplashView = new TSplashView(this.context, this.adUnit);
        this.tSplashView = tSplashView;
        tSplashView.setListener(this.adListener);
        TSplashView tSplashView2 = this.tSplashView;
        if (tSplashView2 != null) {
            tSplashView2.setSkipListener(this.skipListener);
        }
        TSplashView tSplashView3 = this.tSplashView;
        if (tSplashView3 != null) {
            tSplashView3.setDefaultFillTimeoutDuration(0);
        }
    }

    public final void destroy() {
        f fVar = this.tSplash;
        if (fVar != null) {
            fVar.c();
        }
        TSplashView tSplashView = this.tSplashView;
        if (tSplashView != null) {
            tSplashView.destroy();
        }
    }

    public final double getEcpmPrice() {
        if (this.splashMode == 1) {
            f fVar = this.tSplash;
            if (fVar != null) {
                return fVar.f();
            }
        } else {
            TSplashView tSplashView = this.tSplashView;
            if (tSplashView != null) {
                return tSplashView.getBidPrice();
            }
        }
        return 0.0d;
    }

    public final void loadAd() {
        f fVarU;
        TSplashView tSplashView;
        TSplashView liteInit;
        AdLogUtil.Log().i(TAG, "AdxWrapperSplash --> loadAd, splashMode: " + this.splashMode);
        int i11 = this.splashMode;
        if (i11 != 1) {
            if (i11 != 2 || (tSplashView = this.tSplashView) == null || (liteInit = tSplashView.setLiteInit(this.appId, this.isDebug)) == null) {
                return;
            }
            liteInit.loadAd();
            return;
        }
        f fVar = this.tSplash;
        if (fVar == null || (fVarU = fVar.u(this.appId, this.isDebug)) == null) {
            return;
        }
        fVarU.t();
    }

    public final AdxWrapperSplash setAdLoadScenes(String gameName, String gameScene, Map<String, ? extends Object> extInfo) {
        f fVar = this.tSplash;
        if (fVar != null) {
            fVar.l(gameName, gameScene, extInfo);
        }
        TSplashView tSplashView = this.tSplashView;
        if (tSplashView != null) {
            tSplashView.setAdLoadScenes(gameName, gameScene, extInfo);
        }
        return this;
    }

    public final AdxWrapperSplash setAdditionalListener(TAdditionalListener listener) {
        this.additionalListener = listener;
        return this;
    }

    public final AdxWrapperSplash setContainVulgarContent(boolean isContainVulgarContent) {
        f fVar = this.tSplash;
        if (fVar != null) {
            fVar.m(isContainVulgarContent);
        }
        TSplashView tSplashView = this.tSplashView;
        if (tSplashView != null) {
            tSplashView.setContainVulgarContent(isContainVulgarContent);
        }
        return this;
    }

    public final AdxWrapperSplash setDebug(boolean debug) {
        this.isDebug = debug;
        return this;
    }

    public final void setLogoLayoutHeightRatio(Float logoLayoutHeightRatio) {
        this.mLogoLayoutHeightRatio = logoLayoutHeightRatio;
    }

    public final AdxWrapperSplash setSkipListener(OnSkipListener listener) {
        this.adSkipListener = listener;
        return this;
    }

    public final AdxWrapperSplash setSplashMode(int mode) {
        this.splashMode = mode;
        if (mode == 1) {
            a();
        } else if (mode == 2) {
            b();
        }
        return this;
    }

    public final void showAd(WrapTadView adContainer, View logoLayout) {
        TSplashView tSplashView;
        int i11 = this.splashMode;
        if (i11 == 1) {
            f fVar = this.tSplash;
            if (fVar != null) {
                fVar.w(this.mLogoLayoutHeightRatio);
            }
            f fVar2 = this.tSplash;
            if (fVar2 != null) {
                fVar2.v(logoLayout);
            }
            f fVar3 = this.tSplash;
            if (fVar3 != null) {
                fVar3.y();
                return;
            }
            return;
        }
        if (i11 == 2 && (tSplashView = this.tSplashView) != null) {
            ViewParent parent = tSplashView.getParent();
            ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup != null) {
                viewGroup.removeView(tSplashView);
            }
            if (adContainer != null) {
                adContainer.removeAllViews();
            }
            Float f11 = this.mLogoLayoutHeightRatio;
            float fFloatValue = f11 != null ? f11.floatValue() : 0.2f;
            AdLogUtil.Log().i(TAG, "mediation sdk adxWrapperSplash view addLogoLayout heightRatio = " + fFloatValue);
            int i12 = logoLayout != null ? (int) (Resources.getSystem().getDisplayMetrics().heightPixels * fFloatValue) : 0;
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.setMargins(0, 0, 0, i12);
            if (adContainer != null) {
                adContainer.addView(tSplashView, layoutParams);
            }
            if (adContainer != null) {
                adContainer.setVisibility(0);
            }
            if (logoLayout != null) {
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, i12);
                layoutParams2.addRule(12);
                if (adContainer != null) {
                    adContainer.addView(logoLayout, layoutParams2);
                }
            }
            tSplashView.show();
        }
    }
}
