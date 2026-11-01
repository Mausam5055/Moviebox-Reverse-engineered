package com.cloud.hisavana.sdk;

import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.hisavana.net.HttpRequest;
import com.cloud.hisavana.net.RequestParams;
import com.cloud.hisavana.net.impl.StringCallback;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.DiskTrackingBean;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.manager.g;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.MitNetUtil;
import com.cloud.tmc.ad.Constants;
import com.cloud.tmc.ad.TrackingManager;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class c1 {

    class a extends g.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ DiskTrackingBean f21719a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ g.b f21720b;

        a(DiskTrackingBean diskTrackingBean, g.b bVar) {
            this.f21719a = diskTrackingBean;
            this.f21720b = bVar;
        }

        @Override // com.cloud.hisavana.sdk.manager.g.c
        public void a(String str) {
            g.f22718d.a().j(this.f21719a);
            g.b bVar = this.f21720b;
            if (bVar != null) {
                bVar.a();
            }
        }

        @Override // com.cloud.hisavana.sdk.manager.g.c
        public void b(String str, int i11) {
            if (i11 < 480) {
                a(str);
                return;
            }
            g.f22718d.a().d(this.f21719a);
            g.b bVar = this.f21720b;
            if (bVar != null) {
                bVar.a();
            }
        }
    }

    class b extends StringCallback {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ g.c f21721c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f21722d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ AdsDTO f21723e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ DiskTrackingBean f21724f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(boolean z10, g.c cVar, String str, AdsDTO adsDTO, DiskTrackingBean diskTrackingBean) {
            super(z10);
            this.f21721c = cVar;
            this.f21722d = str;
            this.f21723e = adsDTO;
            this.f21724f = diskTrackingBean;
        }

        @Override // com.cloud.hisavana.net.impl.StringCallback
        public void x(int i11, String str, Throwable th2) {
            g.c cVar = this.f21721c;
            if (cVar != null) {
                if (i11 != 200) {
                    cVar.b(this.f21722d, i11);
                } else {
                    cVar.a(this.f21722d);
                }
            }
            AthenaTracker.i0(this.f21723e, this.f21724f, this.f21722d, i11, str, th2);
            e4.b().d("ssp_track", "sendRequestToServer --> onFailure --> statusCode = " + i11 + ",url " + this.f21722d + ",throwable " + th2);
        }

        @Override // com.cloud.hisavana.net.impl.StringCallback
        public void y(int i11, String str) {
            g.c cVar = this.f21721c;
            if (cVar != null) {
                cVar.a(this.f21722d);
            }
            AthenaTracker.i0(this.f21723e, this.f21724f, this.f21722d, i11, str, null);
            e4.b().d("ssp_track", "sendRequestToServer - onSuccess - statusCode = " + i11 + " url " + this.f21722d);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f21725a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AdsDTO f21726b;

        c(String str, AdsDTO adsDTO) {
            this.f21725a = str;
            this.f21726b = adsDTO;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str = this.f21725a;
            AdsDTO adsDTO = this.f21726b;
            c1.m(str, adsDTO, null, new d(adsDTO));
        }
    }

    public static class d extends g.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private AdsDTO f21727a;

        public d(AdsDTO adsDTO) {
            this.f21727a = adsDTO;
        }

        @Override // com.cloud.hisavana.sdk.manager.g.c
        public void a(String str) {
        }

        @Override // com.cloud.hisavana.sdk.manager.g.c
        public void b(String str, int i11) {
            AdsDTO adsDTO = this.f21727a;
            if (adsDTO == null) {
                return;
            }
            if (adsDTO.getDspType().intValue() != 2) {
                if (TextUtils.isEmpty(str) || i11 < 480) {
                    return;
                }
                DiskTrackingBean diskTrackingBean = new DiskTrackingBean(str);
                diskTrackingBean.setData(this.f21727a);
                g.f22718d.a().h(diskTrackingBean);
                return;
            }
            if (TextUtils.isEmpty(str) || !this.f21727a.isDownloadAd() || i11 < 480 || !this.f21727a.getAdxAscribeRetryEnable()) {
                return;
            }
            DiskTrackingBean diskTrackingBean2 = new DiskTrackingBean(str);
            diskTrackingBean2.setData(this.f21727a);
            g.f22718d.a().h(diskTrackingBean2);
        }
    }

    public static String d(DownUpPointBean downUpPointBean, AdsDTO adsDTO, boolean z10, Boolean bool) {
        e4 e4VarB = e4.b();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("TrackingManager --> processUrl --> 处理前 url = ");
        sb2.append(adsDTO == null ? "" : adsDTO.getClickUrl());
        e4VarB.d("ssp_track", sb2.toString());
        if (adsDTO == null) {
            return null;
        }
        String clickUrl = z10 ? adsDTO.getClickUrl() : adsDTO.getImpressionUrl();
        if (TextUtils.isEmpty(clickUrl) || !clickUrl.contains(UrlUtils.QUESTION_MARK)) {
            return clickUrl;
        }
        StringBuilder sb3 = new StringBuilder();
        if (z10 && downUpPointBean != null) {
            sb3.append("xd=" + downUpPointBean.getDownX());
            sb3.append("&yd=" + downUpPointBean.getDownY());
            sb3.append("&xu=" + downUpPointBean.getUpX());
            sb3.append("&yu=" + downUpPointBean.getUpY());
        }
        sb3.append("&ai=" + a7.c.f365b);
        sb3.append("&pn=" + com.cloud.sdk.commonutil.util.e.d());
        sb3.append("&ve=" + com.cloud.sdk.commonutil.util.e.f());
        sb3.append("&sv=3.6.0.2");
        sb3.append("&ot=1");
        sb3.append("&ov=" + DeviceUtil.m());
        sb3.append("&nc=" + MitNetUtil.a(com.cloud.sdk.commonutil.util.e.a()).ordinal());
        if (i7.c.d() != null && i7.c.e() != null) {
            sb3.append("&op=" + i7.c.d() + i7.c.e());
        }
        sb3.append("&ga=" + DeviceUtil.e());
        StringBuilder sb4 = new StringBuilder();
        sb4.append("&dt=");
        boolean z11 = true;
        sb4.append(DeviceUtil.q() ? 2 : 1);
        sb3.append(sb4.toString());
        sb3.append("&br=" + Build.BRAND);
        sb3.append("&mo=" + Build.MODEL);
        sb3.append("&ma=" + Build.MANUFACTURER);
        sb3.append("&la=" + com.cloud.sdk.commonutil.util.d.d());
        sb3.append("&lo=" + com.cloud.sdk.commonutil.util.d.f());
        if (downUpPointBean != null) {
            sb3.append("&iw=" + downUpPointBean.getImageW());
            sb3.append("&ih=" + downUpPointBean.getImageH());
        }
        sb3.append("&ci=" + adsDTO.getClickid());
        StringBuilder sb5 = new StringBuilder();
        sb5.append("&tr=");
        if (!a7.c.q() && !adsDTO.getTestResponse().booleanValue()) {
            z11 = false;
        }
        sb5.append(z11);
        sb3.append(sb5.toString());
        sb3.append("&ia=" + Integer.valueOf(adsDTO.getInstallApk()));
        if (z10) {
            sb3.append("&pt=" + adsDTO.getAdPsType());
        }
        AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest();
        if (impBeanRequest != null) {
            StringBuilder sb6 = new StringBuilder();
            sb6.append("&gan=");
            sb6.append(TextUtils.isEmpty(impBeanRequest.gameName) ? "" : impBeanRequest.gameName);
            sb3.append(sb6.toString());
            StringBuilder sb7 = new StringBuilder();
            sb7.append("&gas=");
            sb7.append(TextUtils.isEmpty(impBeanRequest.gameScene) ? "" : impBeanRequest.gameScene);
            sb3.append(sb7.toString());
        }
        if (!adsDTO.isOfflineAd()) {
            sb3.append("&ta=" + DeviceUtil.f());
            sb3.append("&oi=" + DeviceUtil.j());
        }
        if (bool != null) {
            StringBuilder sb8 = new StringBuilder();
            sb8.append("&ps=");
            sb8.append(bool.booleanValue() ? "1" : "0");
            sb3.append(sb8.toString());
        }
        e4.b().d("ssp_track", "athena --> sb=" + ((Object) sb3));
        String str = clickUrl + "&p1=" + com.cloud.sdk.commonutil.util.a.a(sb3.toString()) + "&r1=" + com.cloud.sdk.commonutil.util.a.a(adsDTO.getNewPrice_Click());
        if (i7.a.h0()) {
            String strM = i7.a.m();
            if (!TextUtils.isEmpty(strM)) {
                str = str + "&a=" + strM;
            }
        }
        e4.b().d("ssp_track", "TrackingManager --> processUrl --> process after url = " + str);
        return str;
    }

    public static String e(AdsDTO adsDTO) {
        int i11;
        String str = "";
        if (adsDTO == null) {
            return "";
        }
        if (adsDTO.getImpBeanRequest() == null || adsDTO.getImpBeanRequest().triggerId == null) {
            i11 = 0;
        } else {
            str = adsDTO.getImpBeanRequest().triggerId;
            i11 = adsDTO.getImpBeanRequest().mTriggerNetState;
        }
        return "&isOfflineAd=" + (adsDTO.isOfflineAd() ? 1 : 0) + "&clickTs=" + System.currentTimeMillis() + "&triggerId=" + str + "&adTriggerStatus=" + i11;
    }

    private static String f(String str, AdsDTO adsDTO, boolean z10) {
        String strH;
        if (TextUtils.isEmpty(str) || adsDTO == null) {
            return null;
        }
        String clickid = adsDTO.getClickid();
        if (str.contains("__CLICK_ID__") && clickid != null) {
            str = str.replace("__CLICK_ID__", clickid);
        }
        String uuid = adsDTO.getUuid();
        if (str.contains("__SHOW_ID__") && uuid != null) {
            str = str.replace("__SHOW_ID__", uuid);
        }
        if (str.contains("__CLICK_TS__")) {
            str = str.replace("__CLICK_TS__", String.valueOf(System.currentTimeMillis() - j7.a.e().h(Constants.SERVICES_TIME_DIFFERENCE_VALUE)));
        }
        if (str.contains("__AD_TRIGGER_STATUS__")) {
            str = str.replace("__AD_TRIGGER_STATUS__", String.valueOf(adsDTO.getImpBeanRequest() == null ? 0 : adsDTO.getImpBeanRequest().mTriggerNetState));
        }
        int source = adsDTO.getSource();
        String strE = DeviceUtil.e();
        if (source == 4 && str.contains("__GAID__") && !TextUtils.isEmpty(strE)) {
            str = str.replace("__GAID__", strE);
        }
        if (str.contains("__CLICK_IP__") && (strH = DeviceUtil.h()) != null) {
            str = str.replace("__CLICK_IP__", strH);
        }
        double dDoubleValue = z10 ? adsDTO.getAuctionSecondPrice().doubleValue() : 0.0d;
        String settlementRatio = z10 ? adsDTO.getSettlementRatio() : null;
        if (str.contains(TrackingManager.AUCTION_PRICE)) {
            BigDecimal bigDecimalValueOf = BigDecimal.valueOf(dDoubleValue);
            if (settlementRatio != null) {
                try {
                    BigDecimal bigDecimal = new BigDecimal(settlementRatio);
                    if (bigDecimal.compareTo(BigDecimal.ZERO) > 0) {
                        bigDecimalValueOf = bigDecimalValueOf.divide(bigDecimal, 0, 2).add(new BigDecimal(1));
                    }
                } catch (Exception e11) {
                    e4.b().e("ssp", "settlement ratio parse error: " + Log.getStackTraceString(e11));
                }
            }
            str = str.replace(TrackingManager.AUCTION_PRICE, String.valueOf(bigDecimalValueOf.divide(BigDecimal.valueOf(100L), 2, 2)));
        }
        String codeSeatId = adsDTO.getCodeSeatId();
        if (str.contains("__CODE_SEAT_ID__") && !TextUtils.isEmpty(codeSeatId)) {
            str = str.replace("__CODE_SEAT_ID__", codeSeatId);
        }
        if (str.contains("__CLICK_HALF_SCREEN_TYPE__")) {
            return str.replace("__CLICK_HALF_SCREEN_TYPE__", adsDTO.isHalfScreenAd() ? "1" : "0");
        }
        return str;
    }

    public static void g(DiskTrackingBean diskTrackingBean, g.b bVar) {
        e4 e4VarB = e4.b();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("resendUrl: ");
        sb2.append(diskTrackingBean != null ? diskTrackingBean.getTrackingUrl() : "null");
        e4VarB.d("TrackingManager", sb2.toString());
        if (diskTrackingBean != null && !TextUtils.isEmpty(diskTrackingBean.getTrackingUrl())) {
            m(diskTrackingBean.getTrackingUrl(), null, diskTrackingBean, new a(diskTrackingBean, bVar));
        } else if (bVar != null) {
            bVar.a();
        }
    }

    public static void h(final DownUpPointBean downUpPointBean, final AdsDTO adsDTO, final Boolean bool) {
        HSScopeHelper.f23167a.i(new Runnable() { // from class: com.cloud.hisavana.sdk.a3
            @Override // java.lang.Runnable
            public final void run() {
                c1.j(adsDTO, downUpPointBean, bool);
            }
        });
    }

    public static void i(AdsDTO adsDTO, DownUpPointBean downUpPointBean, g.c cVar) {
        if (adsDTO == null || TextUtils.isEmpty(adsDTO.getImpressionUrl()) || downUpPointBean == null) {
            e4.b().d("ssp_track", "reportServerShow --> null == url || null == pointBean");
            return;
        }
        e4.b().d("ssp_track", "TrackingManager --> processUrl --> pointBean = " + downUpPointBean);
        m(d(downUpPointBean, adsDTO, false, null), adsDTO, null, cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void j(AdsDTO adsDTO, DownUpPointBean downUpPointBean, Boolean bool) {
        if (adsDTO == null || TextUtils.isEmpty(adsDTO.getClickUrl()) || downUpPointBean == null) {
            e4.b().d("ssp_track", "reportServerClick --> null == url || null == pointBean");
            return;
        }
        e4.b().d("ssp_track", "TrackingManager --> processUrl --> pointBean = " + downUpPointBean);
        String clickUrl = adsDTO.getClickUrl();
        if (adsDTO.getDspType().intValue() != 1) {
            m(clickUrl, adsDTO, null, new d(adsDTO));
            return;
        }
        if (adsDTO.getSource() == 4) {
            return;
        }
        String strD = d(downUpPointBean, adsDTO, true, bool);
        if (!TextUtils.isEmpty(strD) && strD.contains(UrlUtils.QUESTION_MARK)) {
            strD = strD + e(adsDTO);
        }
        AthenaTracker.G(strD, adsDTO, bool);
        m(strD, adsDTO, null, new d(adsDTO));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void k(AdsDTO adsDTO, List list, DownUpPointBean downUpPointBean) {
        if (adsDTO == null) {
            return;
        }
        d dVar = new d(adsDTO);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (!TextUtils.isEmpty(str)) {
                if (p(str)) {
                    adsDTO.setImpressionUrl(str);
                    i(adsDTO, downUpPointBean, dVar);
                } else {
                    m(f(str, adsDTO, true), adsDTO, null, dVar);
                }
            }
        }
    }

    public static void l(String str, AdsDTO adsDTO) {
        HSScopeHelper.f23167a.i(new c(str, adsDTO));
    }

    public static void m(String str, AdsDTO adsDTO, DiskTrackingBean diskTrackingBean, g.c cVar) {
        e4.b().d("ssp_track", "sendRequestToServer - url = " + str);
        if (str == null) {
            return;
        }
        RequestParams requestParams = new RequestParams();
        requestParams.i("User-Agent", com.cloud.sdk.commonutil.util.r.c());
        requestParams.i("Accept-Timezone", "UTC");
        HttpRequest.f21328a.h(str, requestParams, new b(true, cVar, str, adsDTO, diskTrackingBean));
    }

    public static void n(final List list, final AdsDTO adsDTO) {
        HSScopeHelper.f23167a.i(new Runnable() { // from class: com.cloud.hisavana.sdk.y2
            @Override // java.lang.Runnable
            public final void run() {
                c1.r(list, adsDTO);
            }
        });
    }

    public static void o(final List list, final AdsDTO adsDTO, final DownUpPointBean downUpPointBean) {
        if (list == null || list.isEmpty() || adsDTO == null) {
            e4.b().d("ssp_track", "clickTrackingUrls || showTrackingUrls --> urls==null || urls is empty --> return ");
        } else {
            HSScopeHelper.f23167a.i(new Runnable() { // from class: com.cloud.hisavana.sdk.z2
                @Override // java.lang.Runnable
                public final void run() {
                    c1.k(adsDTO, list, downUpPointBean);
                }
            });
        }
    }

    public static boolean p(String str) {
        return !TextUtils.isEmpty(str) && (str.contains("api.test.eagllwin.com") || str.contains("api.eagllwin.com") || str.contains("api.pre.eagllwin.com") || str.contains("api.fat1.eagllwin.com"));
    }

    public static ArrayList q(List list, AdsDTO adsDTO) {
        if (list == null || list.isEmpty() || adsDTO == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList(0);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String strF = f((String) it.next(), adsDTO, true);
            if (!TextUtils.isEmpty(strF)) {
                arrayList.add(strF);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void r(List list, AdsDTO adsDTO) {
        if (list == null || list.isEmpty() || adsDTO == null) {
            e4.b().d("ssp_track", "clickTrackingUrls || showTrackingUrls --> urls==null || urls is empty --> return ");
            return;
        }
        d dVar = new d(adsDTO);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (!TextUtils.isEmpty(str)) {
                m(f(str, adsDTO, false), adsDTO, null, dVar);
            }
        }
    }
}
