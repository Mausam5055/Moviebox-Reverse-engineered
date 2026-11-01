package be;

import android.text.TextUtils;
import com.cloud.hisavana.sdk.common.util.l0;
import com.hisavana.common.bean.AdditionalInfo;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.constant.ComConstants;
import com.hisavana.common.interfacz.OnSkipListener;
import com.hisavana.common.interfacz.TAdListener;
import com.hisavana.common.interfacz.TAdditionalListener;
import com.hisavana.common.interfacz.TInnerAdListener;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.bean.CloudControlConfig;
import com.hisavana.mediation.config.CloudControlConfigSync;
import com.hisavana.mediation.config.ConfigContentHelper;

/* JADX INFO: loaded from: classes4.dex */
public class t extends TInnerAdListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ce.b f16451a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public TAdListener f16452b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public OnSkipListener f16453c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public TAdditionalListener f16454d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f16455e;

    public t(ce.b bVar) {
        this.f16451a = bVar;
    }

    public TAdditionalListener a() {
        return this.f16454d;
    }

    public void b(int i11) {
        AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> source --> " + i11);
        TAdditionalListener tAdditionalListener = this.f16454d;
        if (tAdditionalListener != null) {
            tAdditionalListener.onClosed(i11);
        }
    }

    public void c(AdditionalInfo additionalInfo) {
        AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> " + additionalInfo);
        TAdditionalListener tAdditionalListener = this.f16454d;
        if (tAdditionalListener != null) {
            tAdditionalListener.onLoadSuccess(additionalInfo);
        }
    }

    public void d(TAdErrorCode tAdErrorCode, AdditionalInfo additionalInfo) {
        AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> " + tAdErrorCode + "\n>>>>> " + additionalInfo);
        TAdditionalListener tAdditionalListener = this.f16454d;
        if (tAdditionalListener != null) {
            tAdditionalListener.onLoadFailure(tAdErrorCode, additionalInfo);
        }
    }

    public void e(TAdNativeInfo tAdNativeInfo) {
        AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> NativeInfo -->" + tAdNativeInfo);
        TAdditionalListener tAdditionalListener = this.f16454d;
        if (tAdditionalListener != null) {
            tAdditionalListener.onClosed(tAdNativeInfo);
        }
    }

    public void f(TAdNativeInfo tAdNativeInfo, AdditionalInfo additionalInfo) {
        AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> NativeInfo -->" + tAdNativeInfo + "\n>>>>> " + additionalInfo);
        TAdditionalListener tAdditionalListener = this.f16454d;
        if (tAdditionalListener != null) {
            tAdditionalListener.onClick(tAdNativeInfo, additionalInfo);
        }
    }

    public void g(OnSkipListener onSkipListener) {
        this.f16453c = onSkipListener;
    }

    public void h(TAdListener tAdListener) {
        this.f16452b = tAdListener;
    }

    public void i(TAdditionalListener tAdditionalListener) {
        this.f16454d = tAdditionalListener;
    }

    public final void j(String str) {
        CloudControlConfig.CodeSeat codeSeatB;
        ce.b bVar = this.f16451a;
        if (bVar == null || TextUtils.isEmpty(bVar.f17112a) || (codeSeatB = h.b(this.f16451a.f17112a, str, true)) == null) {
            return;
        }
        ConfigContentHelper.g().j(codeSeatB);
    }

    public TAdListener k() {
        return this.f16452b;
    }

    public void l(int i11) {
        this.f16455e = i11;
    }

    public void m(AdditionalInfo additionalInfo) {
        AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> " + additionalInfo);
        TAdditionalListener tAdditionalListener = this.f16454d;
        if (tAdditionalListener != null) {
            tAdditionalListener.onShowed(additionalInfo);
        }
    }

    public void n(TAdErrorCode tAdErrorCode, AdditionalInfo additionalInfo) {
        AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> " + tAdErrorCode + "\n>>>>> " + additionalInfo);
        TAdditionalListener tAdditionalListener = this.f16454d;
        if (tAdditionalListener != null) {
            tAdditionalListener.onShowError(tAdErrorCode, additionalInfo);
        }
    }

    public void o(TAdNativeInfo tAdNativeInfo, AdditionalInfo additionalInfo) {
        AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> NativeInfo -->" + tAdNativeInfo + "\n>>>>> " + additionalInfo);
        TAdditionalListener tAdditionalListener = this.f16454d;
        if (tAdditionalListener != null) {
            tAdditionalListener.onShow(tAdNativeInfo, additionalInfo);
        }
    }

    @Override // com.hisavana.common.interfacz.TInnerAdListener
    public void onAdActivate(AdditionalInfo additionalInfo) {
        AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> onAdActivate -->\n>>>>> " + additionalInfo);
        TAdditionalListener tAdditionalListener = this.f16454d;
        if (tAdditionalListener != null) {
            tAdditionalListener.onAdActivate(additionalInfo);
        }
    }

    @Override // com.hisavana.common.interfacz.TInnerAdListener
    public void onClicked(int i11) {
        AdLogUtil.Log().d("TAdListenerAdapter", "onClicked");
    }

    @Override // com.hisavana.common.interfacz.TInnerAdListener
    public void onClosed(int i11) {
        AdLogUtil.Log().d(ComConstants.AD_FLOW, "TAdListenerAdapter --> on close");
        if (this.f16452b != null) {
            com.cloud.sdk.commonutil.util.c.Log().d(ComConstants.AD_FLOW, "TAdListenerAdapter --> >>> onClosed()");
            this.f16452b.onClosed(i11);
        }
        ce.b bVar = this.f16451a;
        if (bVar != null) {
            bVar.setIsShowing(false);
        }
        b(i11);
    }

    @Override // com.hisavana.common.interfacz.TInnerAdListener
    public void onClosed(TAdNativeInfo tAdNativeInfo) {
        AdLogUtil.Log().d(ComConstants.AD_FLOW, "TAdListenerAdapter --> on close");
        if (this.f16452b != null) {
            com.cloud.sdk.commonutil.util.c.Log().d(ComConstants.AD_FLOW, "TAdListenerAdapter --> >>> onClosed()");
            this.f16452b.onClosed(tAdNativeInfo);
        }
        ce.b bVar = this.f16451a;
        if (bVar != null) {
            bVar.setIsShowing(false);
        }
        e(tAdNativeInfo);
    }

    @Override // com.hisavana.common.interfacz.TInnerAdListener
    public void onError(TAdErrorCode tAdErrorCode) {
        if (this.f16451a == null) {
            return;
        }
        int errorCode = tAdErrorCode != null ? tAdErrorCode.getErrorCode() : -1;
        String errorMessage = tAdErrorCode != null ? tAdErrorCode.getErrorMessage() : "";
        AdLogUtil.Log().d(ComConstants.AD_FLOW, "TAdListenerAdapter --> on alliance error: " + errorMessage);
        this.f16451a.stopTimer();
        this.f16451a.setLoading(false);
        this.f16451a.setLoaded(false);
        this.f16451a.trackingAdLoaded(errorCode, errorMessage, this.f16455e);
        TAdListener tAdListener = this.f16452b;
        if (tAdListener != null) {
            tAdListener.onError(tAdErrorCode);
        }
        this.f16451a.c(tAdErrorCode);
        if (errorCode == 20001) {
            CloudControlConfigSync.b(3);
        }
    }

    @Override // com.hisavana.common.interfacz.TInnerAdListener
    public void onLoad() {
        ce.b bVar = this.f16451a;
        if (bVar != null) {
            bVar.setLoaded(true);
        }
        TAdListener tAdListener = this.f16452b;
        if (tAdListener != null) {
            tAdListener.onLoad();
        }
        ce.b bVar2 = this.f16451a;
        if (bVar2 != null) {
            bVar2.l();
            this.f16451a.q();
        }
    }

    @Override // com.hisavana.common.interfacz.TInnerAdListener
    public void onNativeFeedClicked(int i11, TAdNativeInfo tAdNativeInfo, AdditionalInfo additionalInfo) {
        AdLogUtil.Log().d(ComConstants.AD_FLOW, "TAdListenerAdapter --> on click");
        if (this.f16452b != null) {
            com.cloud.sdk.commonutil.util.c.Log().d(ComConstants.AD_FLOW, "TAdListenerAdapter --> >>> onClicked()");
            if (tAdNativeInfo == null) {
                this.f16452b.onClicked(i11);
            } else {
                this.f16452b.onNativeFeedClicked(i11, tAdNativeInfo);
            }
        }
        f(tAdNativeInfo, additionalInfo);
    }

    @Override // com.hisavana.common.interfacz.TInnerAdListener
    public void onNativeFeedShow(int i11, TAdNativeInfo tAdNativeInfo, AdditionalInfo additionalInfo) {
        AdLogUtil.Log().d(ComConstants.AD_FLOW, "TAdListenerAdapter --> on show");
        t();
        if (this.f16452b != null) {
            com.cloud.sdk.commonutil.util.c.Log().d(ComConstants.AD_FLOW, "TAdListenerAdapter --> >>> onShow()");
            if (tAdNativeInfo == null) {
                this.f16452b.onShow(i11);
            } else {
                this.f16452b.onNativeFeedShow(i11, tAdNativeInfo);
            }
        }
        ce.b bVar = this.f16451a;
        if (bVar != null) {
            bVar.setIsShowing(true);
        }
        o(tAdNativeInfo, additionalInfo);
    }

    @Override // com.hisavana.common.interfacz.TInnerAdListener
    public void onRewarded() {
        AdLogUtil.Log().d(ComConstants.AD_FLOW, "TAdListenerAdapter --> on rewarded");
        if (this.f16452b != null) {
            com.cloud.sdk.commonutil.util.c.Log().d(ComConstants.AD_FLOW, "TAdListenerAdapter --> >>> onRewarded()");
            this.f16452b.onRewarded();
        }
        r();
    }

    @Override // com.hisavana.common.interfacz.TInnerAdListener
    public void onShow(int i11) {
        AdLogUtil.Log().d("TAdListenerAdapter", "onShow");
    }

    @Override // com.hisavana.common.interfacz.TInnerAdListener
    public void onShowError(TAdErrorCode tAdErrorCode) {
        AdLogUtil adLogUtilLog = AdLogUtil.Log();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("TAdListenerAdapter --> on onAdShowError，errorCode");
        sb2.append(tAdErrorCode);
        adLogUtilLog.d(ComConstants.AD_FLOW, sb2.toString() != null ? tAdErrorCode.getErrorMessage() : "");
        if (this.f16452b != null) {
            com.cloud.sdk.commonutil.util.c.Log().d(ComConstants.AD_FLOW, "TAdListenerAdapter --> >>> onAdShowError()");
            this.f16452b.onShowError(tAdErrorCode);
        }
        ce.b bVar = this.f16451a;
        if (bVar != null) {
            bVar.setIsShowing(false);
            this.f16451a.d(tAdErrorCode);
        }
    }

    @Override // com.hisavana.common.interfacz.TInnerAdListener
    public void onShowed(AdditionalInfo additionalInfo) {
        j(additionalInfo.getCodeSeatId());
        m(additionalInfo);
    }

    @Override // com.hisavana.common.interfacz.TInnerAdListener
    public void onSkipClick() {
        OnSkipListener onSkipListener = this.f16453c;
        if (onSkipListener != null) {
            onSkipListener.onClick();
        }
        ce.b bVar = this.f16451a;
        if (bVar != null) {
            bVar.setIsShowing(false);
        }
    }

    @Override // com.hisavana.common.interfacz.TInnerAdListener
    public void onTimeReach() {
        OnSkipListener onSkipListener = this.f16453c;
        if (onSkipListener != null) {
            onSkipListener.onTimeReach();
        }
        ce.b bVar = this.f16451a;
        if (bVar != null) {
            bVar.setIsShowing(false);
        }
    }

    public void p() {
        AdLogUtil.Log().d(ComConstants.AD_FLOW, "*----> TAdListenerAdapter --> on alliance ad load");
        if (this.f16451a == null) {
            return;
        }
        AdLogUtil.Log().d(ComConstants.AD_FLOW, "*----> TAdListenerAdapter --> >>> onLoad()");
        this.f16451a.stopTimer();
        this.f16451a.setLoading(false);
        ce.b bVar = this.f16451a;
        int i11 = this.f16455e;
        bVar.mFillSource = i11;
        bVar.trackingAdLoaded(0, "", i11);
        onLoad();
        CloudControlConfigSync.b(3);
    }

    public void q(AdditionalInfo additionalInfo) {
        AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> " + additionalInfo);
        TAdditionalListener tAdditionalListener = this.f16454d;
        if (tAdditionalListener != null) {
            tAdditionalListener.onTrigger(additionalInfo);
        }
    }

    public void r() {
        AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> rewarded");
        TAdditionalListener tAdditionalListener = this.f16454d;
        if (tAdditionalListener != null) {
            tAdditionalListener.onRewarded();
        }
    }

    public void s(AdditionalInfo additionalInfo) {
        AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> " + additionalInfo);
        TAdditionalListener tAdditionalListener = this.f16454d;
        if (tAdditionalListener != null) {
            tAdditionalListener.onTriggerShow(additionalInfo);
        }
    }

    public final void t() {
        ce.b bVar = this.f16451a;
        if (bVar == null || TextUtils.isEmpty(bVar.f17112a)) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        CloudControlConfig.CodeSeat codeSeatA = h.a(this.f16451a.f17112a);
        if (codeSeatA == null) {
            return;
        }
        codeSeatA.setLastShowTime(jCurrentTimeMillis);
        long jC = l0.c(jCurrentTimeMillis);
        long jB = l0.b(jCurrentTimeMillis);
        if (codeSeatA.getCurrentHourZeroClock() == jB) {
            codeSeatA.setCurrentHourShowTimes(codeSeatA.getCurrentHourShowTimes() + 1);
        } else {
            codeSeatA.setCurrentHourShowTimes(1);
            codeSeatA.setCurrentHourZeroClock(jB);
        }
        if (codeSeatA.getTodayZeroClock() == jC) {
            codeSeatA.setTodayShowTimes(codeSeatA.getTodayShowTimes() + 1);
        } else {
            codeSeatA.setTodayShowTimes(1);
            codeSeatA.setTodayZeroClock(jC);
        }
        ConfigContentHelper.g().j(codeSeatA);
    }
}
