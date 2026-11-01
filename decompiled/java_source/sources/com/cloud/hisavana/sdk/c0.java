package com.cloud.hisavana.sdk;

import android.text.TextUtils;
import android.util.Log;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.PslinkInfo;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.listener.CommonResponseListener;
import com.cloud.hisavana.sdk.common.util.g;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.data.bean.response.AbTestDTO;
import com.cloud.hisavana.sdk.data.bean.response.AdResponseBody;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.ConfigCodeSeatDTO;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public class c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicBoolean f21708a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List f21709b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ConfigCodeSeatDTO f21710c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f21711d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    androidx.collection.b f21712e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final k0.c f21713f;

    class a implements k0.c {
        a() {
        }

        private void c() {
            HSScopeHelper.f23167a.g(new Runnable() { // from class: com.cloud.hisavana.sdk.a0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f21561a.d();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d() {
            String[] list;
            String str = com.cloud.hisavana.sdk.common.util.m.b(com.cloud.sdk.commonutil.util.e.a()) + File.separator + "offline_zip";
            File file = new File(str);
            try {
                if (file.exists() && file.isDirectory() && (list = file.list()) != null) {
                    for (String str2 : list) {
                        boolean zB = com.cloud.hisavana.sdk.d.f22322a.B(str2);
                        File file2 = new File(str + File.separator + str2);
                        if (!zB && file2.exists()) {
                            if (file2.isDirectory()) {
                                com.cloud.hisavana.sdk.common.util.m.a(file2);
                            } else {
                                file2.delete();
                            }
                            if (a7.c.p()) {
                                e4.b().d("OfflineAdManager", "clearZipFile，delete file:" + str2);
                            }
                        }
                    }
                }
            } catch (Exception e11) {
                e4.b().e("OfflineAdManager", "clear zip file error: " + e11.getMessage());
            }
            e4.b().d("OfflineAdManager", "clearZipFile，ad download logic is done.");
            c0.this.f21708a.set(false);
        }

        @Override // com.cloud.hisavana.sdk.k0.c
        public void a(AdxImpBean adxImpBean, List list, TaErrorCode taErrorCode) {
            if (list == null || list.isEmpty()) {
                AthenaTracker.h0(null, taErrorCode, adxImpBean, 0, c0.this.f21712e);
            } else {
                AthenaTracker.h0(list, taErrorCode, adxImpBean, list.size(), c0.this.f21712e);
            }
            a(null);
        }

        @Override // com.cloud.hisavana.sdk.k0.c
        public void a(List list) {
            if (list != null) {
                ArrayList arrayList = new ArrayList(list);
                if (!arrayList.isEmpty()) {
                    for (int i11 = 0; i11 < arrayList.size(); i11++) {
                        try {
                            AdsDTO adsDTO = (AdsDTO) arrayList.get(i11);
                            if (g.e(adsDTO, true)) {
                                com.cloud.hisavana.sdk.d.f22322a.z(adsDTO);
                                break;
                            }
                        } catch (Exception e11) {
                            e4.b().e("OfflineAdManager", "deleteOldOfflineAd error " + Log.getStackTraceString(e11));
                        }
                    }
                }
            }
            if (c0.this.f21709b != null) {
                c0.this.f21709b.remove(c0.this.f21710c);
                if (!c0.this.f21709b.isEmpty()) {
                    c0.this.j();
                    return;
                }
                c0.this.f21709b = null;
                c0.this.f21710c = null;
                c();
            }
        }
    }

    class b extends CommonResponseListener<AdResponseBody> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ConfigCodeSeatDTO f21715b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ AdxImpBean f21716c;

        b(ConfigCodeSeatDTO configCodeSeatDTO, AdxImpBean adxImpBean) {
            this.f21715b = configCodeSeatDTO;
            this.f21716c = adxImpBean;
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener
        public void a(TaErrorCode taErrorCode) {
            c0.this.u(this.f21715b, true);
            if (taErrorCode != null) {
                e4.b().d("OfflineAdManager", "load ad error adError=" + taErrorCode.getErrorMessage());
            }
            c0.this.f21713f.a(this.f21716c, null, taErrorCode);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.cloud.hisavana.sdk.common.http.listener.CommonResponseListener
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public void g(int i11, AdResponseBody adResponseBody) {
            com.cloud.hisavana.sdk.common.http.e.a(adResponseBody);
            c0.this.u(this.f21715b, false);
            if (adResponseBody == null || adResponseBody.getCode().intValue() != 0) {
                c0.this.n(adResponseBody, this.f21716c);
            } else {
                c0.this.p(adResponseBody, this.f21715b, this.f21716c);
            }
        }
    }

    public interface c {
        void a(List list, String str);
    }

    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final c0 f21718a = new c0(null);
    }

    private c0() {
        this.f21708a = new AtomicBoolean(false);
        this.f21712e = new androidx.collection.b();
        this.f21713f = new a();
    }

    /* synthetic */ c0(a aVar) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public void J(List list, ConfigCodeSeatDTO configCodeSeatDTO) {
        if (list == null || list.isEmpty() || configCodeSeatDTO == null) {
            this.f21713f.a(null);
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AdsDTO adsDTO = (AdsDTO) it.next();
            if (!g.e(adsDTO, true)) {
                arrayList.add(adsDTO);
            }
        }
        if (arrayList.isEmpty()) {
            this.f21713f.a(list);
            return;
        }
        e4.b().d("OfflineAdManager", "current code seat is " + configCodeSeatDTO.getCodeSeatId());
        k0.b().j(arrayList, this.f21713f);
    }

    private boolean C(AdResponseBody adResponseBody, ConfigCodeSeatDTO configCodeSeatDTO, AdxImpBean adxImpBean, List list) {
        if (!TextUtils.equals(adResponseBody.getData().getCodeSeatId(), configCodeSeatDTO.getCodeSeatId())) {
            e4.b().d("OfflineAdManager", "response pmid is different with request's");
            this.f21713f.a(adxImpBean, list, TaErrorCode.ERROR_AD_OFFLINE_PLACEMENT_ID_MISMATCH);
            return true;
        }
        if (configCodeSeatDTO.getCodeSeatType().equals(adResponseBody.getData().getCodeSeatType())) {
            return false;
        }
        e4.b().d("OfflineAdManager", "response adt is different with request's");
        this.f21713f.a(adxImpBean, list, TaErrorCode.ERROR_AD_OFFLINE_TYPE_MISMATCH);
        return true;
    }

    private boolean D(ConfigCodeSeatDTO configCodeSeatDTO) {
        if (configCodeSeatDTO == null) {
            return true;
        }
        if (Boolean.TRUE.equals(configCodeSeatDTO.isPriorityH5Ad()) && com.cloud.hisavana.sdk.common.util.p0.f(configCodeSeatDTO.getH5AdUrl())) {
            d0.f22327a.e(configCodeSeatDTO.getH5AdUrl());
        }
        v(configCodeSeatDTO.getCodeSeatId());
        if (configCodeSeatDTO.isOfflineAdEnable()) {
            return false;
        }
        w(configCodeSeatDTO.getCodeSeatId(), 3);
        return true;
    }

    private boolean E(List list, List list2, AdsDTO adsDTO) {
        if (adsDTO == null || !adsDTO.isOfflineAd()) {
            e4.b().d("OfflineAdManager", "ad is null or ad is not offline,remove from list");
            return true;
        }
        int iA = com.cloud.hisavana.sdk.common.util.d0.a(adsDTO.getPullNewestLive().intValue(), adsDTO.getPsPackageName(), adsDTO.getPackageName());
        if (iA == 1 || iA == 2) {
            list.add(adsDTO.getAdCreativeId());
            list2.add(Integer.valueOf(iA == 1 ? 1 : 2));
            return true;
        }
        if (adsDTO.getCodeSeatType().intValue() != 1 || adsDTO.isVastTypeAd() || (adsDTO.getNativeObject() != null && adsDTO.getNativeObject().getMainImages() != null && !adsDTO.getNativeObject().getMainImages().isEmpty() && !TextUtils.isEmpty(adsDTO.getNativeObject().getMainImages().get(0).getUrl()))) {
            return false;
        }
        e4.b().d("OfflineAdManager", "Native ad's image is empty,remove from list");
        return true;
    }

    public static c0 F() {
        return d.f21718a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void H(ConfigCodeSeatDTO configCodeSeatDTO) {
        t(configCodeSeatDTO, com.cloud.hisavana.sdk.d.f22322a.i(configCodeSeatDTO.getCodeSeatId(), true, null, true));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I(ConfigCodeSeatDTO configCodeSeatDTO, List list) {
        if (!configCodeSeatDTO.getLastOfflineAdEnable().booleanValue()) {
            J(list, configCodeSeatDTO);
            w(configCodeSeatDTO.getCodeSeatId(), 4);
            return;
        }
        if (this.f21711d == 3) {
            J(list, configCodeSeatDTO);
            return;
        }
        if (!list.isEmpty()) {
            J(list, configCodeSeatDTO);
            w(configCodeSeatDTO.getCodeSeatId(), 5);
            return;
        }
        long jIntValue = (configCodeSeatDTO.isAdRequestFail() ? configCodeSeatDTO.getOfflineAdRequestTimeInterval() : configCodeSeatDTO.getOfflineAdRequestTimeIntervalNoAd()).intValue();
        if (jIntValue <= 0) {
            jIntValue = 60;
        }
        if (System.currentTimeMillis() - configCodeSeatDTO.getLastRequestAdTime() <= jIntValue * 1000) {
            J(list, configCodeSeatDTO);
            w(configCodeSeatDTO.getCodeSeatId(), 6);
        } else {
            w(configCodeSeatDTO.getCodeSeatId(), 1);
            s(this.f21710c, this.f21711d);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void L(final ConfigCodeSeatDTO configCodeSeatDTO) {
        final List listI = com.cloud.hisavana.sdk.d.f22322a.i(configCodeSeatDTO.getCodeSeatId(), true, null, true);
        HSScopeHelper.f23167a.i(new Runnable() { // from class: com.cloud.hisavana.sdk.x
            @Override // java.lang.Runnable
            public final void run() {
                this.f23062a.J(listI, configCodeSeatDTO);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        List list = this.f21709b;
        if (list == null || list.isEmpty()) {
            this.f21713f.a(null);
            return;
        }
        Iterator it = this.f21709b.iterator();
        while (it.hasNext()) {
            final ConfigCodeSeatDTO configCodeSeatDTO = (ConfigCodeSeatDTO) it.next();
            if (!D(configCodeSeatDTO)) {
                this.f21710c = configCodeSeatDTO;
                HSScopeHelper.f23167a.i(new Runnable() { // from class: com.cloud.hisavana.sdk.t
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f22940a.H(configCodeSeatDTO);
                    }
                });
                break;
            }
            it.remove();
        }
        List list2 = this.f21709b;
        if (list2 == null || !list2.isEmpty()) {
            return;
        }
        this.f21713f.a(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(AdResponseBody adResponseBody, AdxImpBean adxImpBean) {
        TaErrorCode taErrorCode;
        if (adResponseBody != null) {
            e4.b().d("OfflineAdManager", "offline loadAd error, response is :" + adResponseBody.getCode() + ", " + adResponseBody.getMessage());
            taErrorCode = new TaErrorCode(adResponseBody.getCode().intValue(), adResponseBody.getMessage());
        } else {
            e4.b().d("OfflineAdManager", "offline loadAd error, response is null");
            taErrorCode = new TaErrorCode(-1, "response is null");
        }
        this.f21713f.a(adxImpBean, null, taErrorCode);
    }

    private void o(AdResponseBody adResponseBody, AdxImpBean adxImpBean, List list, List list2, List list3, int i11) {
        Iterator it = list.iterator();
        List<String> scales = adResponseBody.getData().getScales();
        List<AbTestDTO> abTest = adResponseBody.getData().getAbTest();
        String extInfo = adResponseBody.getData().getExtInfo();
        String adSeatType = adResponseBody.getData().getAdSeatType();
        Boolean testResponse = adResponseBody.getData().getTestResponse();
        testResponse.booleanValue();
        while (it.hasNext()) {
            AdsDTO adsDTO = (AdsDTO) it.next();
            if (E(list2, list3, adsDTO)) {
                it.remove();
            } else {
                if (!TextUtils.isEmpty(adsDTO.getOfflineH5Url())) {
                    adsDTO.setFilePath(com.cloud.hisavana.sdk.common.util.a0.c(adsDTO.getOfflineH5Url()));
                }
                adsDTO.setFill_ts(Long.valueOf(System.currentTimeMillis()));
                adsDTO.setAbTest(abTest);
                adsDTO.setExtInfo(extInfo);
                adsDTO.setImpBeanRequest(adxImpBean);
                adsDTO.setTestResponse(testResponse);
                adsDTO.setAdSeatType(adSeatType);
                adsDTO.setAdRequestVer(i11);
                String strE = com.cloud.hisavana.sdk.common.util.b.f22148a.e(adsDTO, 0);
                adsDTO.setUuid(strE);
                adsDTO.setScales(scales);
                r(adsDTO, strE);
                if (v2.a(adsDTO) == -1) {
                    it.remove();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(AdResponseBody adResponseBody, final ConfigCodeSeatDTO configCodeSeatDTO, AdxImpBean adxImpBean) {
        if (adResponseBody.getData() == null || adResponseBody.getData().getAds() == null || adResponseBody.getData().getAds().isEmpty() || Boolean.FALSE.equals(adResponseBody.getData().getOfflineAd())) {
            e4.b().d("OfflineAdManager", "ads list is empty");
            this.f21713f.a(adxImpBean, null, TaErrorCode.ERROR_AD_OFFLINE_AD_IS_NULL);
            return;
        }
        List<AdsDTO> ads = adResponseBody.getData().getAds();
        if (C(adResponseBody, configCodeSeatDTO, adxImpBean, ads)) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int adRequestVer = configCodeSeatDTO.getAdRequestVer() + 1;
        configCodeSeatDTO.setAdRequestVer(adRequestVer);
        P.g().j(configCodeSeatDTO);
        o(adResponseBody, adxImpBean, ads, arrayList, arrayList2, adRequestVer);
        if (!arrayList.isEmpty() && adxImpBean != null) {
            AthenaTracker.x(adxImpBean.requestId, adxImpBean.triggerId, adxImpBean.pmid, arrayList, arrayList2, true, 2);
        }
        if (ads.isEmpty()) {
            this.f21713f.a(adxImpBean, null, TaErrorCode.ERROR_ADS_OFFLINE_ARE_FILTERED);
            return;
        }
        AthenaTracker.h0(ads, null, adxImpBean, ads.size(), this.f21712e);
        e4.b().d("OfflineAdManager", "download ad before" + ads.size());
        configCodeSeatDTO.setLocalOfflineAdCacheCount(ads.size());
        F().A(ads);
        HSScopeHelper.f23167a.i(new Runnable() { // from class: com.cloud.hisavana.sdk.w
            @Override // java.lang.Runnable
            public final void run() {
                this.f23034a.L(configCodeSeatDTO);
            }
        });
    }

    private void r(AdsDTO adsDTO, String str) {
        try {
            if (TextUtils.isEmpty(adsDTO.getAppInfo())) {
                return;
            }
            PslinkInfo pslinkInfo = (PslinkInfo) GsonUtil.a(adsDTO.getAppInfo(), PslinkInfo.class);
            if (pslinkInfo != null) {
                pslinkInfo.setGaid(DeviceUtil.e());
                pslinkInfo.setShowId(str);
                pslinkInfo.setAppPackageName(com.transsion.core.utils.a.a());
                pslinkInfo.setOfflineAd(adsDTO.isOfflineAd());
                pslinkInfo.setShowTrackingSecretKey(adsDTO.getShowTrackingSecretKey());
            }
            adsDTO.setPslinkInfo(pslinkInfo);
        } catch (Exception e11) {
            e4.b().e("OfflineAdManager", "load ad extAppInfo error =" + e11.getMessage());
        }
    }

    private void s(ConfigCodeSeatDTO configCodeSeatDTO, int i11) {
        if (configCodeSeatDTO == null) {
            this.f21713f.a(null);
            return;
        }
        e4.b().d("OfflineAdManager", "requestAds config id " + configCodeSeatDTO.getCodeSeatId());
        final AdxImpBean adxImpBean = new AdxImpBean();
        adxImpBean.adt = configCodeSeatDTO.getCodeSeatType().intValue();
        adxImpBean.pmid = configCodeSeatDTO.getCodeSeatId();
        adxImpBean.mAdCount = configCodeSeatDTO.getOfflineAdCacheCount().intValue();
        adxImpBean.requestId = DeviceUtil.o();
        adxImpBean.offlineAd = true;
        adxImpBean.triggerId = com.cloud.hisavana.sdk.common.util.m0.b();
        adxImpBean.offlineAdEnable = configCodeSeatDTO.isOfflineAdEnable();
        adxImpBean.cacheAdCount = configCodeSeatDTO.getLocalOfflineAdCacheCount();
        if (i11 == 1) {
            adxImpBean.requestType = 5;
        } else if (i11 == 2) {
            adxImpBean.requestType = 6;
        } else if (i11 == 3) {
            adxImpBean.requestType = 7;
        }
        new com.cloud.hisavana.sdk.common.http.a().m(new b(configCodeSeatDTO, adxImpBean)).o(new com.cloud.hisavana.sdk.common.http.a.b() { // from class: com.cloud.hisavana.sdk.v
            @Override // com.cloud.hisavana.sdk.common.http.a.b
            public final String a() {
                return l1.c(adxImpBean);
            }
        }).k(a7.c.p()).q(k1.o().q()).n(adxImpBean.pmid).l(true).j(adxImpBean).b();
    }

    private void t(final ConfigCodeSeatDTO configCodeSeatDTO, final List list) {
        HSScopeHelper.f23167a.i(new Runnable() { // from class: com.cloud.hisavana.sdk.u
            @Override // java.lang.Runnable
            public final void run() {
                this.f22988a.I(configCodeSeatDTO, list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u(ConfigCodeSeatDTO configCodeSeatDTO, boolean z10) {
        if (configCodeSeatDTO == null) {
            return;
        }
        configCodeSeatDTO.setLastRequestAdTime(System.currentTimeMillis());
        configCodeSeatDTO.setAdRequestFail(z10);
        P.g().j(configCodeSeatDTO);
    }

    private void v(String str) {
        int i11 = this.f21711d;
        if (i11 == 3) {
            return;
        }
        AthenaTracker.j0(str, i11);
    }

    private void w(String str, int i11) {
        int i12 = this.f21711d;
        if (i12 == 3) {
            return;
        }
        AthenaTracker.Y(str, i12, i11);
    }

    public void A(List list) {
        com.cloud.hisavana.sdk.d.f22322a.y(list);
    }

    public void q(AdsDTO adsDTO) {
        com.cloud.hisavana.sdk.d.f22322a.H(adsDTO);
    }

    public void x(String str, int i11, boolean z10, List list, ConcurrentHashMap concurrentHashMap, c cVar) {
        com.cloud.hisavana.sdk.d.f22322a.o(str, i11, z10, list, concurrentHashMap, cVar);
    }

    public void y(String str, boolean z10) {
        com.cloud.hisavana.sdk.d.f22322a.r(str, z10);
    }

    public void z(Collection collection, int i11) {
        if (e4.c()) {
            e4.b().d("OfflineAdManager", "startDownloadAd triggerType " + i11 + ", isDownloading " + this.f21708a.get() + ", config list size: " + collection.size());
        }
        if (collection == null || collection.isEmpty() || this.f21708a.get()) {
            return;
        }
        this.f21709b = new ArrayList(collection);
        this.f21708a.set(true);
        this.f21711d = i11;
        j();
    }
}
