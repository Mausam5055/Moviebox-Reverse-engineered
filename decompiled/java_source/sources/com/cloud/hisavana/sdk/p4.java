package com.cloud.hisavana.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import com.cloud.hisavana.sdk.common.activity.TAdInterstitialActivity;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.push.PushConstants;

/* JADX INFO: loaded from: classes3.dex */
public class p4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f22842a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final s3 f22844c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AdsDTO f22845d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f22843b = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f22846e = false;

    private static class a extends BroadcastReceiver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final p4 f22847a;

        a(p4 p4Var) {
            this.f22847a = p4Var;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action;
            e4.b().d("InterGemini", "fc_problem_onReceive,intent: " + intent);
            if (intent == null || (action = intent.getAction()) == null || this.f22847a == null) {
                return;
            }
            if (action.equals(this.f22847a.g() + "_click")) {
                e4.b().d("InterGemini", "receive interstitial click");
                AdsDTO adsDTO = (AdsDTO) intent.getParcelableExtra("mAdBean");
                if (adsDTO != null) {
                    this.f22847a.f22845d = adsDTO;
                    this.f22847a.f22844c.G(adsDTO);
                }
                if (adsDTO != null && adsDTO.isAllowTrackingADClick()) {
                    AthenaTracker.W(adsDTO);
                } else if (adsDTO != null) {
                    adsDTO.setAdClickTracking(true);
                    e4.b().d("InterGemini", "tracking is not allowed，change isAdClickTracking = true");
                }
                this.f22847a.f22844c.I();
                return;
            }
            if (action.equals(this.f22847a.g() + "_close")) {
                e4.b().d("InterGemini", "receive interstitial ad_close");
                AdsDTO adsDTO2 = (AdsDTO) intent.getParcelableExtra("mAdBean");
                if (adsDTO2 != null) {
                    this.f22847a.f22845d = adsDTO2;
                    this.f22847a.f22844c.G(adsDTO2);
                }
                this.f22847a.f22844c.J();
                this.f22847a.k();
                this.f22847a.f22842a = null;
                return;
            }
            if (action.equals(this.f22847a.g() + "_error")) {
                e4.b().d("InterGemini", "receive interstitial error");
                this.f22847a.f22844c.F(new TaErrorCode(intent.getIntExtra("error_code", -1), intent.getStringExtra(OfflineConstantsKt.TRACK_KEY_PRE_ERROR_MSG)));
                this.f22847a.k();
                this.f22847a.f22842a = null;
                return;
            }
            if (action.equals(this.f22847a.g() + "_show")) {
                e4.b().d("InterGemini", "receive interstitial show");
                this.f22847a.f22844c.K();
                return;
            }
            if (action.equals(this.f22847a.g() + "_pre_imp")) {
                e4.b().d("InterGemini", "receive interstitial pre impression");
                return;
            }
            if (action.equals(this.f22847a.g() + "_destroy")) {
                e4.b().d("InterGemini", "receive interstitial ad_destroy");
                p4 p4Var = this.f22847a;
                if (p4Var != null) {
                    p4Var.k();
                    this.f22847a.f22842a = null;
                }
            }
        }
    }

    public p4(s3 s3Var) {
        this.f22844c = s3Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String g() {
        if (this.f22845d == null) {
            return null;
        }
        return com.cloud.sdk.commonutil.util.e.d() + "_adx_" + this.f22845d.getId();
    }

    private void h() {
        if (this.f22843b) {
            e4.b().w("InterGemini", "registerInterstitialAdReceiver: already registered, skip");
            return;
        }
        try {
            IntentFilter intentFilter = new IntentFilter();
            String strG = g();
            intentFilter.addAction(strG + "_click");
            intentFilter.addAction(strG + "_close");
            intentFilter.addAction(strG + "_show");
            intentFilter.addAction(strG + "_pre_imp");
            intentFilter.addAction(strG + "_error");
            intentFilter.addAction(strG + "_destroy");
            if (Build.VERSION.SDK_INT >= 33) {
                com.cloud.sdk.commonutil.util.e.a().registerReceiver(this.f22842a, intentFilter, 2);
            } else {
                com.cloud.sdk.commonutil.util.e.a().registerReceiver(this.f22842a, intentFilter);
            }
            this.f22843b = true;
            e4.b().d("InterGemini", "registerInterstitialAdReceiver");
        } catch (Exception e11) {
            e4.b().w("InterGemini", "registerInterstitialAdReceiver error: " + e11.getMessage());
        }
    }

    private void j() {
        e4.b().d("InterGemini", "interstitial showNormalAd");
        if (this.f22842a == null) {
            this.f22842a = new a(this);
        }
        h();
        AdsDTO adsDTO = this.f22845d;
        if (adsDTO != null) {
            adsDTO.setCloseDelayTime(this.f22844c.n(adsDTO));
            this.f22845d.setRetentionEndCardRatio(this.f22844c.x());
        }
        TAdInterstitialActivity.M(this.f22844c);
        Intent intent = new Intent(com.cloud.sdk.commonutil.util.e.a(), (Class<?>) TAdInterstitialActivity.class);
        intent.setFlags(268500992);
        intent.putExtra("mAdBean", this.f22845d);
        intent.putExtra("BroadCastPrefix", g());
        com.cloud.sdk.commonutil.util.e.a().startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        if (this.f22842a != null) {
            try {
                try {
                    com.cloud.sdk.commonutil.util.e.a().unregisterReceiver(this.f22842a);
                } catch (IllegalArgumentException e11) {
                    e4.b().w("InterGemini", "unregisterReceiver: " + e11.getMessage());
                }
            } finally {
                this.f22842a = null;
                this.f22843b = false;
            }
        }
    }

    public void d() {
        k();
        e4.b().d("InterGemini", PushConstants.PROVIDER_FIELD_DESTROY);
    }

    public void e(AdsDTO adsDTO) {
        this.f22845d = adsDTO;
        if (adsDTO != null) {
            j();
            return;
        }
        s3 s3Var = this.f22844c;
        if (s3Var != null) {
            s3Var.F(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
        }
        e4.b().d("InterGemini", "show() --> mAdBean == null");
    }
}
