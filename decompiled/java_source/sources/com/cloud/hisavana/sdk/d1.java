package com.cloud.hisavana.sdk;

import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.bean.SSPWebRecommendInfo;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.listener.CommonResponseListener;
import com.cloud.hisavana.sdk.common.util.g;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.data.bean.response.AdResponseBody;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.ConfigCodeSeatDTO;
import com.cloud.hisavana.sdk.data.bean.response.DataDTO;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public class d1 extends l4 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.cloud.hisavana.sdk.common.http.a f22336e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private q3 f22337f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private AdxImpBean f22338g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    androidx.collection.b f22339h = new androidx.collection.b();

    class a implements com.cloud.hisavana.sdk.common.http.a.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ q3 f22340a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AdxImpBean f22341b;

        a(q3 q3Var, AdxImpBean adxImpBean) {
            this.f22340a = q3Var;
            this.f22341b = adxImpBean;
        }

        @Override // com.cloud.hisavana.sdk.common.http.a.b
        public String a() {
            return d1.y(this.f22340a, this.f22341b);
        }
    }

    class b extends CommonResponseListener<AdResponseBody> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f22343b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f22344c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ ConfigCodeSeatDTO f22345d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ AdxImpBean f22346e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(boolean z10, String str, int i11, ConfigCodeSeatDTO configCodeSeatDTO, AdxImpBean adxImpBean) {
            super(z10);
            this.f22343b = str;
            this.f22344c = i11;
            this.f22345d = configCodeSeatDTO;
            this.f22346e = adxImpBean;
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener
        public void a(TaErrorCode taErrorCode) {
            d1.this.s(taErrorCode);
            if (taErrorCode != null) {
                e4.b().d(com.cloud.sdk.commonutil.util.c.LOAD_TAG, "load ad error: code=" + taErrorCode.getErrorCode() + ", msg=" + taErrorCode.getErrorMessage());
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.cloud.hisavana.sdk.common.http.listener.CommonResponseListener
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public void g(int i11, AdResponseBody adResponseBody) {
            AdxImpBean adxImpBean;
            ArrayList arrayList;
            ArrayList arrayList2;
            com.cloud.hisavana.sdk.common.http.e.a(adResponseBody);
            if (adResponseBody == null || adResponseBody.getCode().intValue() != 0) {
                if (adResponseBody == null) {
                    e4.b().d(com.cloud.sdk.commonutil.util.c.LOAD_TAG, "business error: response is null");
                    d1.this.s(new TaErrorCode(-1, "response is null"));
                    return;
                }
                e4.b().d(com.cloud.sdk.commonutil.util.c.LOAD_TAG, "business error: code=" + adResponseBody.getCode() + ", msg=" + adResponseBody.getMessage());
                d1.this.s(new TaErrorCode(adResponseBody.getCode().intValue(), adResponseBody.getMessage()));
                return;
            }
            AdsDTO adsDTO = null;
            if (a7.c.p()) {
                d1.this.v("on response: " + adResponseBody, null);
            }
            DataDTO data = adResponseBody.getData();
            if (data == null) {
                d1.this.s(TaErrorCode.ERROR_AD_ONLINE_RESPONSE_IS_NULL);
                return;
            }
            if (a7.c.l() && 1 == data.getCodeSeatType().intValue()) {
                try {
                    ArrayList arrayList3 = new ArrayList();
                    List<SSPWebRecommendInfo> recommendInfos = data.getRecommendInfos();
                    if (recommendInfos != null) {
                        for (int i12 = 0; i12 < recommendInfos.size(); i12++) {
                            SSPWebRecommendInfo sSPWebRecommendInfo = recommendInfos.get(i12);
                            if (!TextUtils.isEmpty(sSPWebRecommendInfo.getRecommend())) {
                                arrayList3.add(sSPWebRecommendInfo);
                            }
                        }
                        if (d1.this.f22625a != null && !arrayList3.isEmpty()) {
                            d1.this.f22625a.a(arrayList3);
                        }
                    }
                } catch (Throwable th2) {
                    e4.b().e("OnlineAdNode", "processWebRecommendInfo error", th2);
                }
            }
            List<AdsDTO> ads = data.getAds();
            if (ads == null || ads.isEmpty()) {
                d1.this.s(TaErrorCode.ERROR_AD_ONLINE_ADS_IS_NULL);
                return;
            }
            ArrayList arrayList4 = new ArrayList();
            if (!TextUtils.equals(data.getCodeSeatId(), this.f22343b)) {
                d1.this.v("response pmid is diffrent with request's, request is " + data.getCodeSeatId(), null);
                d1.this.s(TaErrorCode.ERROR_AD_ONLINE_PLACEMENT_ID_MISMATCH);
                return;
            }
            if (this.f22344c != data.getCodeSeatType().intValue()) {
                d1.this.v("response adt is diffrent with request's", null);
                d1.this.s(TaErrorCode.ERROR_AD_ONLINE_TYPE_MISMATCH);
                return;
            }
            ConfigCodeSeatDTO configCodeSeatDTO = this.f22345d;
            int adRequestVer = configCodeSeatDTO == null ? 0 : configCodeSeatDTO.getAdRequestVer() + 1;
            Iterator<AdsDTO> it = ads.iterator();
            ArrayList arrayList5 = new ArrayList();
            ArrayList arrayList6 = new ArrayList();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                AdsDTO next = it.next();
                if (next == null) {
                    d1.this.f22339h.add(1);
                    d1.this.v("filter: ad is null, remove from list", adsDTO);
                    it.remove();
                } else {
                    next.setFill_ts(Long.valueOf(System.currentTimeMillis()));
                    if (g.b(next)) {
                        d1.this.v("filter: CacheAdExpiredUtil.isCacheAdEnd", next);
                        d1.this.f22339h.add(2);
                        it.remove();
                    } else if (g.f(next)) {
                        int iA = com.cloud.hisavana.sdk.common.util.d0.a(next.getPullNewestLive().intValue(), next.getPsPackageName(), next.getPackageName());
                        if (iA == 1 || iA == 2) {
                            arrayList = arrayList5;
                            arrayList2 = arrayList6;
                            if (iA == 1) {
                                d1.this.f22339h.add(4);
                            } else if (iA == 2) {
                                d1.this.f22339h.add(5);
                            }
                            arrayList.add(next.getAdCreativeId());
                            arrayList2.add(Integer.valueOf(iA == 1 ? 1 : 2));
                            d1.this.v("filter:filterResult == Constants.FilterResult.NEW_BUT_EXIT || filterResult == Constants.FilterResult.PULL_BUT_NOT_EXIT", next);
                            it.remove();
                        } else {
                            next.setInteractiveAd();
                            arrayList = arrayList5;
                            arrayList2 = arrayList6;
                            d1.this.u(next, this.f22346e, data, adRequestVer, it);
                            if (v2.a(next) == -1) {
                                d1.this.v("filter: video data format failed", next);
                                it.remove();
                            } else {
                                if (next.isOfflineAd()) {
                                    arrayList4.add(next);
                                    if (!TextUtils.isEmpty(next.getOfflineH5Url())) {
                                        next.setFilePath(com.cloud.hisavana.sdk.common.util.a0.c(next.getOfflineH5Url()));
                                    }
                                }
                                k4.f22600a.k(next);
                                if (!d4.f22372a.b() && d1.this.j(next).booleanValue()) {
                                    d1.this.f22339h.add(6);
                                    it.remove();
                                }
                            }
                        }
                        arrayList5 = arrayList;
                        arrayList6 = arrayList2;
                        adsDTO = null;
                    } else {
                        d1.this.f22339h.add(3);
                        d1.this.v("filter:CacheAdExpiredUtil.isOfflineAdEfficient is false", next);
                        it.remove();
                        if (next.isOfflineAd()) {
                            arrayList4.add(next);
                            if (!TextUtils.isEmpty(next.getOfflineH5Url())) {
                                next.setFilePath(com.cloud.hisavana.sdk.common.util.a0.c(next.getOfflineH5Url()));
                            }
                        }
                    }
                }
            }
            ArrayList arrayList7 = arrayList5;
            ArrayList arrayList8 = arrayList6;
            ConfigCodeSeatDTO configCodeSeatDTO2 = this.f22345d;
            if (configCodeSeatDTO2 != null) {
                configCodeSeatDTO2.setLocalOfflineAdCacheCount(arrayList4.size());
                this.f22345d.setAdRequestVer(adRequestVer);
                P.g().j(this.f22345d);
            }
            if (!arrayList7.isEmpty() && (adxImpBean = this.f22346e) != null) {
                AthenaTracker.x(adxImpBean.requestId, adxImpBean.triggerId, this.f22343b, arrayList7, arrayList8, false, 1);
            }
            d1 d1Var = d1.this;
            d1Var.l(d1Var.f22339h);
            if (ads.isEmpty()) {
                d1.this.s(TaErrorCode.ERROR_ADS_ONLINE_ARE_FILTERED);
            } else {
                AthenaTracker.h0(ads, null, this.f22346e, arrayList4.size(), d1.this.f22339h);
                if (a7.c.p()) {
                    com.cloud.sdk.commonutil.util.q.b(String.format(com.cloud.sdk.commonutil.util.e.a().getString(com.cloud.sdk.commonutil.R$string.ssp_log_msg4), Integer.valueOf(ads.size())), 2);
                    d1.this.v("online request result after filtered, count=" + ads.size(), null);
                }
                if (ads.isEmpty()) {
                    d1.this.s(TaErrorCode.ERROR_ADS_ONLINE_ARE_FILTERED);
                } else {
                    d1.this.C(ads);
                }
            }
            c0.F().A(arrayList4);
        }
    }

    class c implements v4.f {
        c() {
        }

        @Override // com.cloud.hisavana.sdk.v4.f
        public void a(TaErrorCode taErrorCode, Bundle bundle) {
            d1.this.t(taErrorCode, bundle);
            d1.this.s(taErrorCode);
            SSPTrackingHelper.f21953a.U(2, d1.this.f22337f, taErrorCode, bundle);
        }

        @Override // com.cloud.hisavana.sdk.v4.f
        public void b(List list, Bundle bundle) {
            d1.this.t(null, bundle);
            d1.this.w(list);
            SSPTrackingHelper.f21953a.U(2, d1.this.f22337f, TaErrorCode.ERROR_SUCCESS, bundle);
        }
    }

    private void B(TaErrorCode taErrorCode) {
        G(taErrorCode);
        l4.a aVar = this.f22625a;
        if (aVar != null) {
            aVar.c(taErrorCode, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C(List list) {
        if (this.f22337f.s()) {
            w(list);
            return;
        }
        v("start to load materials", null);
        F();
        v4 v4Var = new v4();
        v4Var.c(new c());
        SSPTrackingHelper.f21953a.U(1, this.f22337f, TaErrorCode.ERROR_SUCCESS, new Bundle());
        v4Var.e(list, this.f22337f.e(), 1, this.f22628d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void D() {
        B(TaErrorCode.ERROR_ONLINE_NEW_REQUEST_TIMEOUT);
    }

    private void E(TaErrorCode taErrorCode) {
        this.f22626b = 3;
        B(taErrorCode);
    }

    private void F() {
        q3 q3Var = this.f22337f;
        if (q3Var != null) {
            com.cloud.hisavana.sdk.common.util.g0.e(SSPTrackingHelper.f21953a.p(q3Var.n()), "s_ma_d_s", 1);
        }
    }

    private void G(TaErrorCode taErrorCode) {
        try {
            q3 q3Var = this.f22337f;
            if (q3Var != null) {
                ConcurrentHashMap concurrentHashMapP = SSPTrackingHelper.f21953a.p(q3Var.n());
                com.cloud.hisavana.sdk.common.util.g0.e(concurrentHashMapP, "s_online_status", 2);
                if (taErrorCode != null) {
                    com.cloud.hisavana.sdk.common.util.g0.h(concurrentHashMapP, "s_online_failed_reason_v2", "" + taErrorCode.getErrorCode());
                }
            }
        } catch (Throwable unused) {
        }
    }

    private void H() {
        if (this.f22627c <= 0) {
            HSScopeHelper.f23167a.e(new Runnable() { // from class: com.cloud.hisavana.sdk.a1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f21562a.z();
                }
            });
        } else {
            HSScopeHelper.f23167a.f(new Runnable() { // from class: com.cloud.hisavana.sdk.b1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f21684a.D();
                }
            }, this.f22627c);
        }
    }

    private void I() {
        try {
            q3 q3Var = this.f22337f;
            if (q3Var != null) {
                ConcurrentHashMap concurrentHashMapP = SSPTrackingHelper.f21953a.p(q3Var.n());
                com.cloud.hisavana.sdk.common.util.g0.e(concurrentHashMapP, "s_online_status", 1);
                com.cloud.hisavana.sdk.common.util.g0.j(concurrentHashMapP, "s_online_failed_reason_v2");
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Boolean j(AdsDTO adsDTO) {
        try {
            q3 q3Var = this.f22337f;
            if (v2.c(adsDTO, q3Var != null ? q3Var.e() : 0)) {
                return Boolean.TRUE;
            }
            e4.b().d(com.cloud.sdk.commonutil.util.c.LOAD_TAG, "ExoPlayer unavailable, remove video ad: " + adsDTO.getAdCreativeId());
            return Boolean.FALSE;
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(androidx.collection.b bVar) {
        try {
            if (bVar.isEmpty()) {
                return;
            }
            String strD = GsonUtil.d(bVar);
            q3 q3Var = this.f22337f;
            if (q3Var != null) {
                com.cloud.hisavana.sdk.common.util.g0.h(SSPTrackingHelper.f21953a.p(q3Var.n()), "s_online_return_filter", strD);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s(TaErrorCode taErrorCode) {
        this.f22626b = 3;
        v("online ad fetch failed, error=" + taErrorCode, null);
        G(taErrorCode);
        l4.a aVar = this.f22625a;
        if (aVar != null) {
            aVar.a(taErrorCode, null);
        }
        AthenaTracker.h0(null, taErrorCode, this.f22338g, 0, this.f22339h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t(TaErrorCode taErrorCode, Bundle bundle) {
        int i11;
        q3 q3Var = this.f22337f;
        if (q3Var != null) {
            ConcurrentHashMap concurrentHashMapP = SSPTrackingHelper.f21953a.p(q3Var.n());
            if (taErrorCode != null) {
                com.cloud.hisavana.sdk.common.util.g0.e(concurrentHashMapP, "s_ma_d_fr", taErrorCode.getErrorCode());
                i11 = 3;
            } else {
                com.cloud.hisavana.sdk.common.util.g0.b(concurrentHashMapP, bundle);
                i11 = 2;
            }
            com.cloud.hisavana.sdk.common.util.g0.e(concurrentHashMapP, "s_ma_d_s", i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u(AdsDTO adsDTO, AdxImpBean adxImpBean, DataDTO dataDTO, int i11, Iterator it) {
        adsDTO.setTestResponse(dataDTO.getTestResponse());
        adsDTO.setAbTest(dataDTO.getAbTest());
        adsDTO.setExtInfo(dataDTO.getExtInfo());
        adsDTO.setImpBeanRequest(adxImpBean);
        adsDTO.setAdSeatType(dataDTO.getAdSeatType());
        adsDTO.setAuctionSecondPrice(adsDTO.getSecondPrice());
        adsDTO.setUuid(com.cloud.hisavana.sdk.common.util.b.f22148a.e(adsDTO, 0));
        adsDTO.setFullScreenFlag(dataDTO.getFullScreenFlag());
        adsDTO.setOptimizeTracking(dataDTO.getTrackingUrlBool().booleanValue());
        adsDTO.setAdRequestVer(i11);
        adsDTO.setPslinkInfo(N0.F(adsDTO));
        adsDTO.setScales(dataDTO.getScales());
        adsDTO.setSource(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v(String str, AdsDTO adsDTO) {
        if (!a7.c.p() || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            if (this.f22337f != null) {
                sb2.append(", codeSeatId=");
                sb2.append(this.f22337f.i());
            }
            if (adsDTO != null) {
                sb2.append(", adCreativeId=");
                sb2.append(adsDTO.getAdCreativeId());
            }
            e4.b().d("OnlineAdNode", sb2.toString());
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w(List list) {
        this.f22626b = 3;
        if (a7.c.p() && list != null) {
            try {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("online ad fetch succeed: ");
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
                v(sb2.toString(), null);
            } catch (Exception unused) {
            }
        }
        if (list == null || list.isEmpty()) {
            s(TaErrorCode.ERROR_AD_ONLINE_AD_CREATIVIES_IS_NULL);
            return;
        }
        I();
        l4.a aVar = this.f22625a;
        if (aVar != null) {
            aVar.b(list, null);
        }
    }

    private AdxImpBean x(q3 q3Var) {
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
        if (q3Var.p() != null) {
            adxImpBean.webPageReqInfo = q3Var.p();
        }
        return adxImpBean;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String y(q3 q3Var, AdxImpBean adxImpBean) {
        try {
            if (a7.c.l()) {
                return (q3Var == null || q3Var.e() != 1 || q3Var.p() == null) ? l1.c(adxImpBean) : l1.d(adxImpBean, q3Var.p());
            }
            return l1.c(adxImpBean);
        } catch (Throwable unused) {
            return l1.c(adxImpBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z() {
        q3 q3Var = this.f22337f;
        if (q3Var == null || q3Var.e() != 4) {
            B(TaErrorCode.ERROR_ONLINE_NEW_REQUEST_TIMEOUT);
        } else {
            E(TaErrorCode.ERROR_ONLINE_NEW_REQUEST_TIMEOUT);
        }
    }

    @Override // com.cloud.hisavana.sdk.c4
    public void a(q3 q3Var) {
        this.f22626b = 2;
        this.f22337f = q3Var;
        this.f22338g = x(q3Var);
        if (a7.c.p()) {
            com.cloud.sdk.commonutil.util.q.b(com.cloud.sdk.commonutil.util.e.a().getString(com.cloud.sdk.commonutil.R$string.ssp_log_msg3), 2);
            v("start load online ad.", null);
        }
        q3 q3Var2 = this.f22337f;
        if (q3Var2 != null) {
            SSPTrackingHelper.f21953a.z(q3Var2.n(), "2");
        }
        H();
        AdxImpBean adxImpBeanX = x(q3Var);
        ConfigCodeSeatDTO configCodeSeatDTOF = q3Var.f();
        int iE = q3Var.e();
        String strI = q3Var.i();
        v("fetch from server, impBean=" + adxImpBeanX, null);
        com.cloud.hisavana.sdk.common.http.a aVarJ = new com.cloud.hisavana.sdk.common.http.a().m(new b(true, strI, iE, configCodeSeatDTOF, adxImpBeanX)).o(new a(q3Var, adxImpBeanX)).k(a7.c.p()).q(k1.o().q()).n(strI).j(adxImpBeanX);
        this.f22336e = aVarJ;
        if (aVarJ != null) {
            aVarJ.b();
        }
    }
}
