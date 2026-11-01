package com.cloud.hisavana.sdk;

import android.content.Context;
import android.content.Intent;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.hisavana.sdk.common.activity.HisavanaInterstitialRewardedActivity;
import com.cloud.hisavana.sdk.common.activity.HisavanaRewardedActivity;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import java.lang.ref.WeakReference;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class e2 implements q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private x3 f22426a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f22427b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AdsDTO f22428c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f22429d;

    public e2(x3 tranRewarded) {
        Intrinsics.h(tranRewarded, "tranRewarded");
        this.f22426a = tranRewarded;
        this.f22427b = "Rewarded";
        this.f22429d = b2.f21685a.b(this);
    }

    private final String d() {
        String strD = com.cloud.sdk.commonutil.util.e.d();
        if (strD == null) {
            return null;
        }
        return strD + "_rewarded";
    }

    private final void e() {
        try {
            HisavanaRewardedActivity.INSTANCE.a(new WeakReference(this.f22426a));
            AdsDTO adsDTO = this.f22428c;
            if (adsDTO != null) {
                adsDTO.setCloseDelayTime(this.f22426a.n(adsDTO));
            }
            AdsDTO adsDTO2 = this.f22428c;
            Intent intent = new Intent(com.cloud.sdk.commonutil.util.e.a(), (Class<?>) ((adsDTO2 == null || adsDTO2.getAdType() != 7) ? HisavanaRewardedActivity.class : HisavanaInterstitialRewardedActivity.class));
            intent.setFlags(268500992);
            intent.putExtra("adBean", this.f22428c);
            intent.putExtra(RequestParameters.PREFIX, d());
            intent.putExtra("observerId", this.f22429d);
            intent.putExtra("triggerTs", System.currentTimeMillis());
            com.cloud.sdk.commonutil.util.e.a().startActivity(intent);
        } catch (Exception e11) {
            e4.b().e(this.f22427b, "show failed --> " + e11.getMessage());
        }
    }

    @Override // com.cloud.hisavana.sdk.q
    public void a(long j11, String event, Object obj) {
        AdsDTO adsDTO;
        Intrinsics.h(event, "event");
        if (e4.c()) {
            e4.b().d(this.f22427b, "onEvent --> id = " + j11 + ", event = " + event + ", params = " + obj);
        }
        if (Intrinsics.c(event, d() + "_show")) {
            this.f22426a.I();
            return;
        }
        if (Intrinsics.c(event, d() + "_rewarded")) {
            if (obj != null && (adsDTO = this.f22428c) != null) {
                adsDTO.setTriggerShowSpend(((Long) obj).longValue());
            }
            this.f22426a.J();
            return;
        }
        if (Intrinsics.c(event, d() + "_error")) {
            this.f22426a.F(obj == null ? new TaErrorCode(-1, "ad show error") : (TaErrorCode) obj);
            return;
        }
        if (!Intrinsics.c(event, d() + "_click")) {
            if (Intrinsics.c(event, d() + "_close")) {
                this.f22426a.H();
                return;
            }
            return;
        }
        DownUpPointBean downUpPointBean = new DownUpPointBean();
        if (obj != null) {
            Pair pair = (Pair) obj;
            Object first = pair.getFirst();
            Intrinsics.f(first, "null cannot be cast to non-null type com.cloud.hisavana.sdk.data.bean.response.AdsDTO");
            this.f22428c = (AdsDTO) first;
            if (pair.getSecond() != null) {
                Object second = pair.getSecond();
                Intrinsics.f(second, "null cannot be cast to non-null type com.cloud.hisavana.sdk.common.tracking.DownUpPointBean");
                downUpPointBean = (DownUpPointBean) second;
            }
        }
        AdsDTO adsDTO2 = this.f22428c;
        boolean zIsAllowTrackingADClick = adsDTO2 != null ? adsDTO2.isAllowTrackingADClick() : true;
        Context contextA = com.cloud.sdk.commonutil.util.e.a();
        AdsDTO adsDTO3 = this.f22428c;
        q3 q3VarP = this.f22426a.p();
        N0.c(contextA, adsDTO3, downUpPointBean, q3VarP != null && q3VarP.v(), !zIsAllowTrackingADClick);
        if (zIsAllowTrackingADClick) {
            AthenaTracker.W(this.f22428c);
        } else {
            AdsDTO adsDTO4 = this.f22428c;
            if (adsDTO4 != null) {
                adsDTO4.setAdClickTracking(true);
            }
            e4.b().d("ssp", "tracking is not allowed，change isAdClickTracking = true");
        }
        this.f22426a.G();
    }

    public final void b() {
        b2.f21685a.c(this.f22429d);
    }

    public final void c(AdsDTO adsDTO) {
        Unit unit;
        this.f22428c = adsDTO;
        if (adsDTO != null) {
            e();
            unit = Unit.f67061a;
        } else {
            unit = null;
        }
        if (unit == null) {
            this.f22426a.F(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
            e4.b().w(this.f22427b, "show() --> adBean == null");
        }
    }
}
