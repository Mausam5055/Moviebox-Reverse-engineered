package com.cloud.tmc.ad;

import android.os.Build;
import android.text.TextUtils;
import com.cloud.tmc.ad.athena.PostConstant;
import com.cloud.tmc.ad.bean.AdExtraBean;
import com.cloud.tmc.ad.bean.DownUpPointBean;
import com.cloud.tmc.ad.bean.response.AdsDTO;
import com.cloud.tmc.ad.utils.GPSTracker;
import com.cloud.tmc.ad.utils.MitNetUtil;
import com.cloud.tmc.integration.utils.AESUtils;
import com.cloud.tmc.integration.utils.AdxPreferencesHelper;
import com.cloud.tmc.integration.utils.DeviceUtil;
import com.cloud.tmc.kernel.utils.TraceLog;
import com.mbridge.msdk.MBridgeConstans;
import com.transsion.core.deviceinfo.DeviceInfo;
import com.transsion.core.utils.a;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JB\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\f2\u0010\u0010\r\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\f2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00042\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u001e\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00040\f2\u0010\u0010\r\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\fJB\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00040\f2\u0010\u0010\r\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\f2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00042\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014J6\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00040\f2\u0010\u0010\r\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\f2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0014J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0004H\u0007J.\u0010\u001b\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u001c\u001a\u00020\u00042\b\u0010\u001d\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!H\u0002J&\u0010\"\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010#\u001a\u00020\u0019J,\u0010$\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcom/cloud/tmc/ad/TrackingManager;", "", "()V", "ANDROID_ID_LOWER_MD5", "", "AUCTION_PRICE", "CLICK_ID", "CLICK_IP", "CLICK_TS", "TIMEOUT_IN_MILLIONS", "", "createAdmClickServerUrls", "", "urls", "adsDTO", "Lcom/cloud/tmc/ad/bean/response/AdsDTO;", "adExtraBean", "Lcom/cloud/tmc/ad/bean/AdExtraBean;", MBridgeConstans.DYNAMIC_VIEW_WX_CLICKID, "pointBean", "Lcom/cloud/tmc/ad/bean/DownUpPointBean;", "createAdmExposureServerUrls", "createPicClickServerUrls", "createPicExposureServerUrls", "isEagllwinLink", "", "landingUrl", "replace", "url", "clickId", "secondPrice", "", "settlement", "Ljava/math/BigDecimal;", "reportServerJoinField", "isClickReport", "reportServerReplaceField", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class TrackingManager {
    private static final String ANDROID_ID_LOWER_MD5 = "__ANDROID_ID_LOWER_MD5__";
    public static final String AUCTION_PRICE = "${AUCTION_PRICE}";
    private static final String CLICK_ID = "__CLICK_ID__";
    private static final String CLICK_IP = "__CLICK_IP__";
    private static final String CLICK_TS = "__CLICK_TS__";
    public static final TrackingManager INSTANCE = new TrackingManager();
    private static final int TIMEOUT_IN_MILLIONS = 15000;

    private TrackingManager() {
    }

    @JvmStatic
    public static final boolean isEagllwinLink(String landingUrl) {
        Intrinsics.h(landingUrl, "landingUrl");
        if (TextUtils.isEmpty(landingUrl)) {
            return false;
        }
        Constants.HOST.Companion companion = Constants.HOST.INSTANCE;
        return StringsKt.c0(landingUrl, companion.getADN_TEST_SERVER_IMPRESSSION(), false, 2, null) || StringsKt.c0(landingUrl, companion.getADN_RELEASE_SERVER_IMPRESSSION(), false, 2, null) || StringsKt.c0(landingUrl, companion.getADN_PRE_SERVER_IMPRESSSION(), false, 2, null) || StringsKt.c0(landingUrl, companion.getADN_FAT_SERVER_IMPRESSSION(), false, 2, null);
    }

    private final String replace(String url, String clickId, double secondPrice, BigDecimal settlement) {
        if (url == null || clickId == null) {
            return url;
        }
        String strQ = url;
        while (strQ != null && StringsKt.c0(strQ, CLICK_ID, false, 2, null)) {
            strQ = StringsKt.Q(strQ, CLICK_ID, clickId, false, 4, null);
        }
        String strValueOf = String.valueOf(System.currentTimeMillis() + AdxPreferencesHelper.INSTANCE.getInstance().g(Constants.SERVICES_TIME_DIFFERENCE_VALUE));
        Intrinsics.g(strValueOf, "valueOf(\n            Sys…FFERENCE_VALUE)\n        )");
        String strQ2 = strQ;
        while (strQ2 != null && StringsKt.c0(strQ2, CLICK_TS, false, 2, null)) {
            strQ2 = StringsKt.Q(strQ2, CLICK_TS, strValueOf, false, 4, null);
        }
        String ip2 = DeviceUtil.INSTANCE.getIp();
        String strQ3 = strQ2;
        while (strQ3 != null && StringsKt.c0(strQ3, CLICK_IP, false, 2, null)) {
            strQ3 = StringsKt.Q(strQ3, CLICK_IP, ip2, false, 4, null);
        }
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(secondPrice);
        if (settlement != null && settlement.compareTo(BigDecimal.ZERO) > 0) {
            bigDecimalValueOf = bigDecimalValueOf.divide(settlement, 0, 2).add(new BigDecimal(1));
        }
        String string = bigDecimalValueOf.divide(BigDecimal.valueOf(100L), 2, 2).toString();
        Intrinsics.g(string, "secondPriceDollar.toString()");
        String strQ4 = strQ3;
        while (strQ4 != null && StringsKt.c0(strQ4, AUCTION_PRICE, false, 2, null)) {
            strQ4 = StringsKt.Q(strQ4, AUCTION_PRICE, string, false, 4, null);
        }
        return strQ4;
    }

    private final String reportServerReplaceField(String url, String clickId, double secondPrice, BigDecimal settlement) {
        return TextUtils.isEmpty(url) ? url : replace(url, clickId, secondPrice, settlement);
    }

    public final List<String> createAdmClickServerUrls(List<String> urls, AdsDTO adsDTO, AdExtraBean adExtraBean, String clickid, DownUpPointBean pointBean) {
        String strReportServerReplaceField;
        Intrinsics.h(adsDTO, "adsDTO");
        Intrinsics.h(adExtraBean, "adExtraBean");
        ArrayList arrayList = new ArrayList();
        if (urls == null || urls.isEmpty() || TextUtils.isEmpty(clickid)) {
            TraceLog.d("ssp_track", "createPicClickServerUrls --> urls==null || urls.size()=<1 || clickid==null --> return ");
            return arrayList;
        }
        if (pointBean != null) {
            arrayList.add(reportServerJoinField(pointBean, adsDTO, adExtraBean, true));
        } else if (clickid != null) {
            for (String str : urls) {
                if (str != null && (strReportServerReplaceField = INSTANCE.reportServerReplaceField(str, clickid, 0.0d, null)) != null) {
                    arrayList.add(strReportServerReplaceField);
                }
            }
        }
        return arrayList;
    }

    public final List<String> createAdmExposureServerUrls(List<String> urls) {
        ArrayList arrayList = new ArrayList();
        if (urls == null || urls.isEmpty()) {
            TraceLog.d("ssp_track", "createAdmExposureServerUrls --> urls==null || urls.size()=<1 --> return ");
            return arrayList;
        }
        for (String str : urls) {
            if (str != null) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    public final List<String> createPicClickServerUrls(List<String> urls, AdsDTO adsDTO, AdExtraBean adExtraBean, String clickid, DownUpPointBean pointBean) {
        String strReportServerReplaceField;
        Intrinsics.h(adsDTO, "adsDTO");
        Intrinsics.h(adExtraBean, "adExtraBean");
        ArrayList arrayList = new ArrayList();
        if (pointBean != null) {
            arrayList.add(reportServerJoinField(pointBean, adsDTO, adExtraBean, true));
        } else if (clickid != null && urls != null) {
            for (String str : urls) {
                if (str != null && (strReportServerReplaceField = INSTANCE.reportServerReplaceField(str, clickid, 0.0d, null)) != null) {
                    arrayList.add(strReportServerReplaceField);
                }
            }
        }
        return arrayList;
    }

    public final List<String> createPicExposureServerUrls(List<String> urls, AdsDTO adsDTO, AdExtraBean adExtraBean, DownUpPointBean pointBean) {
        Intrinsics.h(adsDTO, "adsDTO");
        Intrinsics.h(adExtraBean, "adExtraBean");
        Intrinsics.h(pointBean, "pointBean");
        ArrayList arrayList = new ArrayList();
        if (urls == null || urls.isEmpty()) {
            TraceLog.d("ssp_track", "createPicExposureServerUrls--> urls==null || urls.size()=<1 --> return ");
            return arrayList;
        }
        for (String str : urls) {
            if (str != null) {
                if (isEagllwinLink(str)) {
                    adsDTO.setImpressionUrl(str);
                    String strReportServerJoinField = INSTANCE.reportServerJoinField(pointBean, adsDTO, adExtraBean, false);
                    if (strReportServerJoinField != null && !TextUtils.isEmpty(strReportServerJoinField)) {
                        arrayList.add(strReportServerJoinField);
                    }
                } else {
                    TrackingManager trackingManager = INSTANCE;
                    String clickid = adsDTO.getClickid();
                    Intrinsics.g(clickid, "adsDTO.clickid");
                    Double auctionSecondPrice = adsDTO.getAuctionSecondPrice();
                    Intrinsics.g(auctionSecondPrice, "adsDTO.auctionSecondPrice");
                    String strReportServerReplaceField = trackingManager.reportServerReplaceField(str, clickid, auctionSecondPrice.doubleValue(), adsDTO.getSettlementRatio());
                    if (strReportServerReplaceField != null && !TextUtils.isEmpty(strReportServerReplaceField)) {
                        arrayList.add(strReportServerReplaceField);
                    }
                }
            }
        }
        return arrayList;
    }

    public final String reportServerJoinField(DownUpPointBean pointBean, AdsDTO adsDTO, AdExtraBean adExtraBean, boolean isClickReport) {
        Intrinsics.h(pointBean, "pointBean");
        Intrinsics.h(adsDTO, "adsDTO");
        Intrinsics.h(adExtraBean, "adExtraBean");
        TraceLog.d("ssp_track", "TrackingManager --> processUrl --> 处理前 url = " + adsDTO.getClickUrl());
        StringBuilder sb2 = new StringBuilder();
        if (isClickReport) {
            sb2.append("xd=" + pointBean.getDownX());
            sb2.append("&yd=" + pointBean.getDownY());
            sb2.append("&xu=" + pointBean.getUpX());
            sb2.append("&yu=" + pointBean.getUpY());
        }
        sb2.append("&ai=" + adsDTO.getApp_id());
        sb2.append("&pn=" + a.a());
        sb2.append("&ve=" + a.c());
        sb2.append("&sv=" + adExtraBean.getSdkVersion());
        sb2.append("&ot=1");
        sb2.append("&ov=" + DeviceUtil.getSystemVersion());
        sb2.append("&nc=" + MitNetUtil.INSTANCE.getNetworkType(qk.a.a()).ordinal());
        if (PostConstant.getMcc() != null && PostConstant.getMnc() != null) {
            sb2.append("&op=" + PostConstant.getMcc() + PostConstant.getMnc());
        }
        sb2.append("&ga=" + DeviceUtil.getGAId());
        sb2.append("&dt=" + (DeviceInfo.h() ? 2 : 1));
        sb2.append("&br=" + Build.BRAND);
        sb2.append("&mo=" + Build.MODEL);
        sb2.append("&ma=" + Build.MANUFACTURER);
        sb2.append("&la=" + GPSTracker.getLatitude());
        sb2.append("&lo=" + GPSTracker.getLongitude());
        sb2.append("&iw=" + pointBean.getImageW());
        sb2.append("&ih=" + pointBean.getImageH());
        sb2.append("&ci=" + adsDTO.getClickid());
        sb2.append("&tr=" + adExtraBean.getTestMode());
        sb2.append("&ia=" + adsDTO.getInstallApk());
        if (isClickReport) {
            sb2.append("&pt=" + adsDTO.getAdPsType());
        }
        if (!adsDTO.isOfflineAd()) {
            sb2.append("&ta=" + DeviceUtil.INSTANCE.getGaidStatus());
            sb2.append("&oi=");
        }
        TraceLog.d("ssp_track", "athena --> sb=" + ((Object) sb2));
        String clickUrl = isClickReport ? adsDTO.getClickUrl() : adsDTO.getImpressionUrl();
        String string = sb2.toString();
        Intrinsics.g(string, "sb.toString()");
        String strEncrypt = AESUtils.encrypt(string);
        String newPrice_Click = adsDTO.getNewPrice_Click();
        Intrinsics.g(newPrice_Click, "adsDTO.newPrice_Click");
        String url = clickUrl + "&p1=" + strEncrypt + "&r1=" + AESUtils.encrypt(newPrice_Click);
        TraceLog.d("ssp_track", "TrackingManager --> processUrl --> process after url = " + url);
        Intrinsics.g(url, "url");
        return url;
    }
}
