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
public class p2 extends l4 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private q3 f22828e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private AdxImpBean f22829f;

    private List g(List list) {
        ArrayList arrayList = new ArrayList();
        q3 q3Var = this.f22828e;
        int iE = q3Var != null ? q3Var.e() : 0;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AdsDTO adsDTO = (AdsDTO) it.next();
            if (v2.c(adsDTO, iE)) {
                e4.b().d("DefaultAdNode", "ExoPlayer unavailable, remove video ad: " + adsDTO.getAdCreativeId());
            } else {
                arrayList.add(adsDTO);
            }
        }
        return arrayList;
    }

    private void h(TaErrorCode taErrorCode) {
        try {
            q3 q3Var = this.f22828e;
            if (q3Var != null) {
                ConcurrentHashMap concurrentHashMapP = SSPTrackingHelper.f21953a.p(q3Var.n());
                com.cloud.hisavana.sdk.common.util.g0.e(concurrentHashMapP, "s_default_status", 2);
                if (taErrorCode != null) {
                    com.cloud.hisavana.sdk.common.util.g0.e(concurrentHashMapP, "s_default_failed_reason", taErrorCode.getErrorCode());
                }
            }
        } catch (Throwable unused) {
        }
    }

    private void i(TaErrorCode taErrorCode, String str) {
        try {
            this.f22626b = 3;
            if (a7.c.p()) {
                j("offline ad fetch failed, error=" + taErrorCode);
            }
            h(taErrorCode);
            if (this.f22625a != null) {
                Bundle bundle = new Bundle();
                com.cloud.hisavana.sdk.common.util.g0.g(bundle, "default_ad_status", str);
                this.f22625a.a(taErrorCode, bundle);
            }
        } catch (Throwable unused) {
        }
    }

    private void j(String str) {
        if (a7.c.p() && !TextUtils.isEmpty(str)) {
            try {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                if (this.f22828e != null) {
                    sb2.append(", codeSeatId=");
                    sb2.append(this.f22828e.i());
                }
                e4.b().d("DefaultAdNode", sb2.toString());
            } catch (Exception unused) {
            }
        }
    }

    private void k(List list, String str) {
        this.f22626b = 3;
        if (a7.c.p() && list != null) {
            try {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("default ad fetch succeed: ");
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
                j(sb2.toString());
            } catch (Exception unused) {
            }
        }
        m();
        if (this.f22625a != null) {
            Bundle bundle = new Bundle();
            com.cloud.hisavana.sdk.common.util.g0.g(bundle, "default_ad_status", str);
            if (!d4.f22372a.b()) {
                list = g(list);
            }
            if (list == null || list.isEmpty()) {
                this.f22625a.a(TaErrorCode.ERROR_AD_DEFAULT_DATA_IS_NULL, bundle);
            } else {
                this.f22625a.b(list, bundle);
            }
        }
    }

    private AdxImpBean l(q3 q3Var) {
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

    private void m() {
        try {
            q3 q3Var = this.f22828e;
            if (q3Var != null) {
                com.cloud.hisavana.sdk.common.util.g0.e(SSPTrackingHelper.f21953a.p(q3Var.n()), "s_default_status", 1);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n(List list, String str) {
        if (list == null || list.isEmpty()) {
            i(TaErrorCode.ERROR_AD_DEFAULT_DATA_IS_NULL, str);
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AdsDTO adsDTO = (AdsDTO) it.next();
            adsDTO.setFirstPrice(Double.valueOf(com.cloud.hisavana.sdk.common.util.o0.b(adsDTO.getFirstPrice())));
            adsDTO.setImpBeanRequest(this.f22829f);
        }
        k(list, str);
    }

    @Override // com.cloud.hisavana.sdk.c4
    public void a(q3 q3Var) {
        ConcurrentHashMap concurrentHashMapP;
        if (a7.c.p()) {
            com.cloud.sdk.commonutil.util.q.b(com.cloud.sdk.commonutil.util.e.a().getString(com.cloud.sdk.commonutil.R$string.ssp_log_msg13), 2);
            j("start load default ad.");
        }
        this.f22626b = 2;
        this.f22828e = q3Var;
        this.f22829f = l(q3Var);
        q3 q3Var2 = this.f22828e;
        if (q3Var2 != null) {
            String strN = q3Var2.n();
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21953a;
            sSPTrackingHelper.z(strN, "1");
            concurrentHashMapP = sSPTrackingHelper.p(strN);
        } else {
            concurrentHashMapP = null;
        }
        ConcurrentHashMap concurrentHashMap = concurrentHashMapP;
        String strI = q3Var.i();
        int iE = q3Var.e();
        boolean zU = q3Var.u();
        q3 q3Var3 = this.f22828e;
        if (q3Var3 != null) {
            Z.f21541a.j(iE, strI, this.f22628d, zU, q3Var3.o(), concurrentHashMap, new t0() { // from class: com.cloud.hisavana.sdk.o2
                @Override // com.cloud.hisavana.sdk.t0
                public final void a(List list, String str) {
                    this.f22807a.n(list, str);
                }
            });
        }
    }
}
