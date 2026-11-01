package com.cloud.hisavana.sdk;

import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public class g0 extends l4 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private q3 f22451e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private AdxImpBean f22452f;

    class a implements c0.c {
        a() {
        }

        @Override // com.cloud.hisavana.sdk.c0.c
        public void a(List list, String str) {
            if (list == null || list.isEmpty()) {
                g0.this.k(TaErrorCode.ERROR_AD_OFFLINE_DATA_IS_NULL, str);
                return;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((AdsDTO) it.next()).setImpBeanRequest(g0.this.f22452f);
            }
            g0.this.m(list, str);
        }
    }

    private List g(List list) {
        ArrayList arrayList = new ArrayList();
        q3 q3Var = this.f22451e;
        int iE = q3Var != null ? q3Var.e() : 0;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AdsDTO adsDTO = (AdsDTO) it.next();
            if (v2.c(adsDTO, iE)) {
                e4.b().d("OfflineAdNode", "ExoPlayer unavailable, remove video ad: " + adsDTO.getAdCreativeId());
            } else {
                arrayList.add(adsDTO);
            }
        }
        return arrayList;
    }

    private void j(TaErrorCode taErrorCode) {
        try {
            q3 q3Var = this.f22451e;
            if (q3Var != null) {
                ConcurrentHashMap concurrentHashMapP = SSPTrackingHelper.f21953a.p(q3Var.n());
                com.cloud.hisavana.sdk.common.util.g0.e(concurrentHashMapP, "s_offline_status", 2);
                if (taErrorCode != null) {
                    com.cloud.hisavana.sdk.common.util.g0.e(concurrentHashMapP, "s_offline_failed_reason", taErrorCode.getErrorCode());
                }
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(TaErrorCode taErrorCode, String str) {
        l("offline ad fetch failed, error=" + taErrorCode);
        this.f22626b = 3;
        j(taErrorCode);
        if (this.f22625a != null) {
            Bundle bundle = new Bundle();
            com.cloud.hisavana.sdk.common.util.g0.g(bundle, "offline_ad_status", str);
            this.f22625a.a(taErrorCode, bundle);
        }
    }

    private void l(String str) {
        if (!a7.c.p() || TextUtils.isEmpty(str)) {
            return;
        }
        if (this.f22451e == null) {
            e4.b().d("OfflineAdNode", str);
            return;
        }
        e4.b().d("OfflineAdNode", str + ", codeSeatId=" + this.f22451e.i());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(List list, String str) {
        this.f22626b = 3;
        if (a7.c.p() && list != null) {
            try {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("offline ad fetch succeed: ");
                sb2.append("\n");
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    AdsDTO adsDTO = (AdsDTO) it.next();
                    if (adsDTO != null) {
                        sb2.append("adCreativeId: ");
                        sb2.append(adsDTO.getAdCreativeId());
                        sb2.append("，is_offline_ad: ");
                        sb2.append(adsDTO.isOfflineAd());
                        sb2.append(", source:");
                        sb2.append(adsDTO.getSource());
                        sb2.append("\n");
                    }
                }
                l(sb2.toString());
            } catch (Exception unused) {
            }
        }
        o();
        if (this.f22625a != null) {
            Bundle bundle = new Bundle();
            com.cloud.hisavana.sdk.common.util.g0.g(bundle, "offline_ad_status", str);
            if (!d4.f22372a.b()) {
                list = g(list);
            }
            if (list == null || list.isEmpty()) {
                this.f22625a.a(TaErrorCode.ERROR_AD_OFFLINE_DATA_IS_NULL, bundle);
            } else {
                this.f22625a.b(list, bundle);
            }
        }
    }

    private AdxImpBean n(q3 q3Var) {
        AdxImpBean adxImpBean = new AdxImpBean();
        adxImpBean.adt = q3Var.e();
        adxImpBean.pmid = q3Var.i();
        adxImpBean.mAdCount = q3Var.a();
        adxImpBean.requestId = q3Var.j();
        adxImpBean.requestType = q3Var.k();
        adxImpBean.triggerId = q3Var.n();
        if (q3Var.l() != null) {
            adxImpBean.gameName = q3Var.l().b();
            adxImpBean.gameScene = q3Var.l().c();
            adxImpBean.extInfo = q3Var.l().a();
        }
        adxImpBean.supportEw = q3Var.y();
        adxImpBean.requestTs = Long.valueOf(System.currentTimeMillis());
        adxImpBean.isAutoPlayVideoAd = q3Var.q();
        adxImpBean.offlineAdEnable = q3Var.f().isOfflineAdEnable();
        adxImpBean.cacheAdCount = q3Var.a();
        adxImpBean.mTriggerNetState = q3Var.o();
        return adxImpBean;
    }

    private void o() {
        try {
            q3 q3Var = this.f22451e;
            if (q3Var != null) {
                com.cloud.hisavana.sdk.common.util.g0.e(SSPTrackingHelper.f21953a.p(q3Var.n()), "s_offline_status", 1);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.cloud.hisavana.sdk.c4
    public void a(q3 q3Var) {
        ConcurrentHashMap concurrentHashMapP;
        this.f22626b = 2;
        this.f22451e = q3Var;
        this.f22452f = n(q3Var);
        if (a7.c.p()) {
            com.cloud.sdk.commonutil.util.q.b(com.cloud.sdk.commonutil.util.e.a().getString(com.cloud.sdk.commonutil.R$string.ssp_log_msg10), 2);
            l("start load offline ad.");
        }
        q3 q3Var2 = this.f22451e;
        if (q3Var2 != null) {
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21953a;
            sSPTrackingHelper.z(q3Var2.n(), "3");
            concurrentHashMapP = sSPTrackingHelper.p(this.f22451e.n());
        } else {
            concurrentHashMapP = null;
        }
        ConcurrentHashMap concurrentHashMap = concurrentHashMapP;
        if (this.f22451e != null && a7.c.p()) {
            c0.F().y(this.f22451e.i(), this.f22451e.o() == 1);
        }
        c0.F().x(q3Var.i(), this.f22628d, q3Var.o() == 1, null, concurrentHashMap, new a());
    }
}
