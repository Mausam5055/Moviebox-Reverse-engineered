package com.cloud.hisavana.sdk.common.athena;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.os.Bundle;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.cloud.hisavana.net.NetGroup;
import com.cloud.hisavana.sdk.P;
import com.cloud.hisavana.sdk.common.bean.DiskTrackingBean;
import com.cloud.hisavana.sdk.common.bean.ProgressData;
import com.cloud.hisavana.sdk.common.bean.SSPWebPageReqInfo;
import com.cloud.hisavana.sdk.common.bean.VastData;
import com.cloud.hisavana.sdk.common.bean.VastMedia;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.util.i0;
import com.cloud.hisavana.sdk.common.util.o0;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.data.bean.request.FormBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.ConfigCodeSeatDTO;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CustomConfigsKt;
import com.cloud.hisavana.sdk.e4;
import com.cloud.hisavana.sdk.ext.attr.AttrData;
import com.cloud.hisavana.sdk.q3;
import com.cloud.hisavana.sdk.v1;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.MitNetUtil;
import com.cloud.tmc.ad.athena.PostConstant;
import com.cloud.tmc.integration.athena.Constants;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.net.UrlKt;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.transsion.ga.AthenaAnalytics;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AthenaTracker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f21949a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f21950b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static SecureRandom f21951c = new SecureRandom();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f21952d = "";

    /* JADX INFO: renamed from: com.cloud.hisavana.sdk.common.athena.AthenaTracker$16, reason: invalid class name */
    /* JADX INFO: loaded from: classes3.dex */
    class AnonymousClass16 implements Runnable {
        final /* synthetic */ String val$gplink;
        final /* synthetic */ AdsDTO val$info;

        AnonymousClass16(AdsDTO adsDTO, String str) {
            this.val$info = adsDTO;
            this.val$gplink = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.g0(this.val$info, this.val$gplink);
        }
    }

    /* JADX INFO: renamed from: com.cloud.hisavana.sdk.common.athena.AthenaTracker$22, reason: invalid class name */
    /* JADX INFO: loaded from: classes3.dex */
    class AnonymousClass22 implements Runnable {
        final /* synthetic */ List val$adsDTOs;
        final /* synthetic */ String val$defaultAdStatusStr;
        final /* synthetic */ int val$errorCode;
        final /* synthetic */ q3 val$fetchInfo;
        final /* synthetic */ int val$localOfflineCount;
        final /* synthetic */ String val$offlineAdStatusStr;
        final /* synthetic */ long val$timeConsuming;

        AnonymousClass22(List list, q3 q3Var, String str, int i11, long j11, String str2, int i12) {
            this.val$adsDTOs = list;
            this.val$fetchInfo = q3Var;
            this.val$offlineAdStatusStr = str;
            this.val$errorCode = i11;
            this.val$timeConsuming = j11;
            this.val$defaultAdStatusStr = str2;
            this.val$localOfflineCount = i12;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.k(this.val$adsDTOs, this.val$fetchInfo.n(), this.val$fetchInfo.o(), this.val$offlineAdStatusStr, String.valueOf(this.val$errorCode), this.val$timeConsuming, this.val$fetchInfo.i(), this.val$fetchInfo.f().isOfflineAdEnable(), this.val$defaultAdStatusStr, this.val$localOfflineCount, new Bundle());
        }
    }

    /* JADX INFO: renamed from: com.cloud.hisavana.sdk.common.athena.AthenaTracker$8, reason: invalid class name */
    class AnonymousClass8 implements Runnable {
        final /* synthetic */ String val$requestId;

        AnonymousClass8(String str) {
            this.val$requestId = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.M(this.val$requestId);
        }
    }

    /* JADX INFO: renamed from: com.cloud.hisavana.sdk.common.athena.AthenaTracker$9, reason: invalid class name */
    /* JADX INFO: loaded from: classes3.dex */
    class AnonymousClass9 implements Runnable {
        final /* synthetic */ int val$errorCode;
        final /* synthetic */ String val$requestId;

        AnonymousClass9(String str, int i11) {
            this.val$requestId = str;
            this.val$errorCode = i11;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.N(this.val$requestId, this.val$errorCode);
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public enum ClickJumpType {
        PS_FULL_SCREEN(0),
        PS_HALF_SCREEN(1),
        GP(3),
        PULL_LIVE(4),
        OTHER(5);

        private final int rawValue;

        ClickJumpType(int i11) {
            this.rawValue = i11;
        }

        public int rawValue() {
            return this.rawValue;
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    protected static class a {
        public static void A(Bundle bundle) {
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleM.putAll(bundle);
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21953a;
            sSPTrackingHelper.Z("ssp_cliclk_link_tracking", bundleM);
            if (sSPTrackingHelper.l(ClientABTestDTOKt.AB_CUSTOM_TAB, "ssp_chrome_landing_page") || sSPTrackingHelper.k("ssp_chrome_landing_page")) {
                new yi.a("ssp_chrome_landing_page", 8765).c(bundleM, null).b();
            }
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public static void B(String str, AdsDTO adsDTO, Boolean bool) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putString("event_data_set", str);
            bundleM.putInt("turn_off_per_ads", DeviceUtil.f());
            AdxImpBean impBeanRequest = (adsDTO == null || adsDTO.getImpBeanRequest() == null) ? null : adsDTO.getImpBeanRequest();
            if (impBeanRequest != null) {
                bundleM.putString(TrackingKey.GAME_NAME, impBeanRequest.gameName);
                bundleM.putString(TrackingKey.GAME_SCENE, impBeanRequest.gameScene);
                bundleM.putString("ext_info", impBeanRequest.getExtInfoJson());
            }
            if (adsDTO != null) {
                try {
                    if (adsDTO.getTrackUserClickArea() != 0) {
                        bundleM.putInt("user_click_area", adsDTO.getTrackUserClickArea());
                    }
                    if ("I01".equals(adsDTO.getMaterialStyle())) {
                        bundleM.putInt("auto_retention_time", adsDTO.getAutoRetentionTime());
                    }
                    if (adsDTO.getDownloadArea() != 0) {
                        bundleM.putInt("download_area", adsDTO.getDownloadArea());
                    }
                } catch (Throwable unused) {
                }
            }
            i7.a.v0(bundleM);
            PackageInfo packageInfoC = i0.c(com.cloud.sdk.commonutil.util.e.a());
            int i11 = 1;
            bundleM.putInt("is_install_ps", packageInfoC == null ? 0 : 1);
            bundleM.putString("ps_version", packageInfoC == null ? "" : String.valueOf(packageInfoC.versionCode));
            if (adsDTO == null) {
                bundleM.putInt("is_ps_type", 0);
            } else {
                bundleM.putInt("is_ps_type", i0.a(adsDTO) ? 1 : 0);
                bundleM.putString("click_link", adsDTO.getClick_link());
                bundleM.putInt("is_jump_to_halfscreen", adsDTO.isJumpToHalfscreen() ? 1 : 0);
                bundleM.putInt("material_type", adsDTO.getMaterialType().intValue());
                bundleM.putInt(TrackingKey.SLOT_HEIGHT, adsDTO.getViewHeight());
                bundleM.putInt(TrackingKey.SLOT_WIDTH, adsDTO.getViewWidth());
                if (!a7.c.q() && !adsDTO.getTestResponse().booleanValue()) {
                    i11 = 0;
                }
                bundleM.putInt("is_test_request", i11);
                bundleM.putString("half_screen_type", adsDTO.getHalfScreenType());
                bundleM.putInt("is_halfscreen_ad", adsDTO.getPslinkInfoStatus() ? 1 : 0);
                bundleM.putInt("track_type", adsDTO.getTrackType().intValue());
                bundleM.putString("material_style", g(adsDTO));
                bundleM.putInt("close_delay_time", adsDTO.getCloseDelayTime());
                bundleM.putInt(CampaignEx.JSON_NATIVE_VIDEO_ENDCARD, adsDTO.getEndCardType());
            }
            if (bool != null) {
                bundleM.putInt("is_ps_reporting", bool.booleanValue() ? 1 : 0);
            }
            AthenaTracker.k(adsDTO, bundleM);
            SSPTrackingHelper.f21953a.Z("ssp_cliclk_link_tracking", bundleM);
            AthenaTracker.j(bundleM);
            new yi.a(PostConstant.EVENT_AD_SSP_CLICK, Constants.AD_APPID).c(bundleM, null).b();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void C(AttrData attrData) {
            if (attrData == null) {
                return;
            }
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putLong(TrackingKey.EVENT_TS, attrData.getEventTs());
            bundleM.putInt(NativeComponentConstants.KEY_COMPONENT_TYPE, attrData.getType());
            bundleM.putInt("error_code", attrData.getErrorCode());
            bundleM.putInt("ct", attrData.getCount());
            bundleM.putInt("fail_c", attrData.getFailCount());
            bundleM.putString("error_list", attrData.getErrorList());
            bundleM.putString("link_id", attrData.getLinkId());
            bundleM.putString(TrackingKey.AD_CREATE_IDS, attrData.getCreatives());
            new yi.a("click_sync", 8765).c(bundleM, null).b();
        }

        public static void D(int i11, String str) {
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putString("app_id", a7.c.f365b);
            bundleM.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleM.putInt(TrackingKey.TRIGGER_TYPE, i11);
            bundleM.putInt("s_track_event_type", 1);
            bundleM.putString(TrackingKey.CLD_REQUEST_ID, str);
            if (SSPTrackingHelper.f21953a.k("track_cloud_request")) {
                new yi.a("track_cloud_request", 8765).c(bundleM, null).b();
            }
        }

        public static void E(int i11, String str, int i12, int i13, String str2, String str3) {
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putInt(TrackingKey.TRIGGER_TYPE, i11);
            bundleM.putString(TrackingKey.CLD_REQUEST_ID, str);
            bundleM.putString("app_id", a7.c.f365b);
            bundleM.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleM.putInt("cld_return_time_interval", i12);
            bundleM.putInt("code", i13);
            bundleM.putString("message", str2);
            bundleM.putString("cld_version", str3);
            bundleM.putInt("s_track_event_type", 2);
            if (SSPTrackingHelper.f21953a.k("track_cloud_request")) {
                new yi.a("track_cloud_request", 8765).c(bundleM, null).b();
            }
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public static void F(AdsDTO adsDTO, String str, ClickJumpType clickJumpType) {
            if (adsDTO == null) {
                return;
            }
            try {
                Bundle bundle = new Bundle();
                bundle.putInt("called_url_type", adsDTO.getCalledUrlType());
                bundle.putString("app_name", adsDTO.getPslinkAppName());
                bundle.putInt("material_type", adsDTO.getMaterialType().intValue());
                bundle.putInt("show_times", adsDTO.getShowTime().intValue());
                bundle.putString("deep_link_url", str);
                bundle.putInt("is_halfscreen_ad", adsDTO.getPslinkInfoStatus() ? 1 : 0);
                bundle.putInt("is_jump_to_halfscreen", clickJumpType.rawValue());
                AthenaTracker.j(bundle);
                AthenaTracker.k(adsDTO, bundle);
                SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21953a;
                sSPTrackingHelper.Z("ssp_cliclk_link_tracking", bundle);
                if (sSPTrackingHelper.k("deeplink")) {
                    new yi.a("deeplink", 8765).c(f(adsDTO, bundle), null).b();
                }
            } catch (Throwable unused) {
            }
        }

        public static void G(AdsDTO adsDTO, boolean z10) {
            if (adsDTO == null) {
                return;
            }
            Bundle bundleM = AthenaTracker.m(null);
            AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest() != null ? adsDTO.getImpBeanRequest() : null;
            if (impBeanRequest == null) {
                return;
            }
            bundleM.putString(TrackingKey.TRIGGER_ID, impBeanRequest.triggerId);
            bundleM.putString(TrackingKey.CODE_SEAT_ID, impBeanRequest.pmid);
            bundleM.putString("ad_creative_id", adsDTO.getAdCreativeId());
            bundleM.putString(TrackingKey.REQUEST_ID, impBeanRequest.requestId);
            bundleM.putInt("code_seat_type", adsDTO.getCodeSeatType().intValue());
            bundleM.putLong("show_report_time_type", adsDTO.getShowReportTimeType().intValue());
            bundleM.putString("expired_date", adsDTO.getExpiredDate());
            bundleM.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
            bundleM.putString(TrackingKey.ECPM, String.valueOf(o0.a(adsDTO.getFirstPrice())));
            bundleM.putString("campaignname", adsDTO.getCampaignname());
            bundleM.putString(TrackingKey.GAME_NAME, impBeanRequest.gameName);
            bundleM.putString(TrackingKey.GAME_SCENE, impBeanRequest.gameScene);
            bundleM.putInt(TrackingKey.AD_TRIGGER_STATUS, impBeanRequest.mTriggerNetState);
            bundleM.putString("tracking_secret_key", adsDTO.getShowTrackingSecretKey());
            bundleM.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleM.putInt("is_inapp_ad", 1);
            bundleM.putString("material_style", g(adsDTO));
            bundleM.putInt("close_delay_time", adsDTO.getCloseDelayTime());
            bundleM.putInt(CampaignEx.JSON_NATIVE_VIDEO_ENDCARD, adsDTO.getEndCardType());
            SSPTrackingHelper.f21953a.Z("ssp_cliclk_link_tracking", bundleM);
            if (z10) {
                bundleM.putInt("s_confirm_dialog", 1);
            }
            try {
                bundleM.putString("half_screen_type", adsDTO.getHalfScreenType());
                if (adsDTO.getTrackUserClickArea() != 0) {
                    bundleM.putInt("user_click_area", adsDTO.getTrackUserClickArea());
                }
                if ("I01".equals(adsDTO.getMaterialStyle())) {
                    bundleM.putInt("auto_retention_time", adsDTO.getAutoRetentionTime());
                }
                if (adsDTO.getDownloadArea() != 0) {
                    bundleM.putInt("download_area", adsDTO.getDownloadArea());
                }
            } catch (Throwable unused) {
            }
            new yi.a("ssp_click_inapp", Constants.AD_APPID).c(bundleM, null).b();
        }

        public static void H(List list, String str, String str2, long j11, Bundle bundle) {
            AdxImpBean impBeanRequest;
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putAll(bundle);
            AdsDTO adsDTO = (AdsDTO) list.get(0);
            if (adsDTO == null || adsDTO.getImpBeanRequest() == null || (impBeanRequest = adsDTO.getImpBeanRequest()) == null) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                AdsDTO adsDTO2 = (AdsDTO) it.next();
                if (adsDTO2 != null) {
                    arrayList.add(adsDTO2.getAdCreativeId());
                }
            }
            bundleM.putString(TrackingKey.TRIGGER_ID, str);
            bundleM.putString(TrackingKey.CODE_SEAT_ID, str2);
            bundleM.putString(TrackingKey.AD_CREATE_IDS, TextUtils.join(",", arrayList));
            bundleM.putString(TrackingKey.REQUEST_ID, impBeanRequest.requestId);
            bundleM.putInt("code_seat_type", adsDTO.getCodeSeatType().intValue());
            bundleM.putString("expired_date", adsDTO.getExpiredDate());
            bundleM.putLong("time_consuming", j11);
            bundleM.putString(TrackingKey.ECPM, String.valueOf(o0.a(adsDTO.getFirstPrice())));
            bundleM.putString("campaignname", adsDTO.getCampaignname());
            bundleM.putString(TrackingKey.GAME_NAME, impBeanRequest.gameName);
            bundleM.putString(TrackingKey.GAME_SCENE, impBeanRequest.gameScene);
            bundleM.putInt(TrackingKey.AD_TRIGGER_STATUS, impBeanRequest.mTriggerNetState);
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21953a;
            sSPTrackingHelper.a0("ssp_material_download", bundleM);
            sSPTrackingHelper.b0("ssp_show_failed", bundleM);
            new yi.a("ssp_filling_result_default", 8765).c(bundleM, null).b();
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public static void I(AdsDTO adsDTO) {
            try {
                Bundle bundleM = AthenaTracker.m(null);
                if (adsDTO != null) {
                    bundleM.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
                    bundleM.putString("app_id", a7.c.f365b);
                    bundleM.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
                    bundleM.putString(TrackingKey.TRIGGER_ID, adsDTO.getTriggerId());
                    bundleM.putString("ad_creative_id", adsDTO.getAdCreativeId());
                    AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest();
                    if (impBeanRequest != null) {
                        bundleM.putString(TrackingKey.CODE_SEAT_ID, impBeanRequest.pmid);
                        bundleM.putString(TrackingKey.REQUEST_ID, impBeanRequest.requestId);
                        bundleM.putInt("offline_ad_enable", impBeanRequest.offlineAdEnable ? 1 : 0);
                    }
                    bundleM.putInt("is_halfscreen_ad", adsDTO.getPslinkInfoStatus() ? 1 : 0);
                }
                AthenaTracker.k(adsDTO, bundleM);
                if (bundleM != null) {
                    SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21953a;
                    sSPTrackingHelper.a0("ssp_material_download", bundleM);
                    sSPTrackingHelper.b0("ssp_show_failed", bundleM);
                    AthenaTracker.j(bundleM);
                    if (sSPTrackingHelper.k("ssp_default_trigger_show")) {
                        new yi.a("ssp_default_trigger_show", 8765).c(bundleM, null).b();
                    }
                }
            } catch (Throwable unused) {
            }
        }

        public static void J(String str) {
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putString(TrackingKey.REQUEST_ID, str);
            bundleM.putString("app_id", a7.c.f365b);
            new yi.a("ssp_ad_request_default", 8765).c(bundleM, null).b();
        }

        public static void K(String str, int i11) {
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putString(TrackingKey.REQUEST_ID, str);
            bundleM.putString("app_id", a7.c.f365b);
            bundleM.putString("error_code", String.valueOf(i11));
            new yi.a("ssp_ad_return_default", 8765).c(bundleM, null).b();
        }

        public static void L(AdsDTO adsDTO) {
            if (adsDTO == null) {
                return;
            }
            Bundle bundleM = AthenaTracker.m(null);
            AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest() != null ? adsDTO.getImpBeanRequest() : null;
            if (impBeanRequest == null) {
                return;
            }
            bundleM.putString(TrackingKey.TRIGGER_ID, impBeanRequest.triggerId);
            bundleM.putString(TrackingKey.CODE_SEAT_ID, impBeanRequest.pmid);
            bundleM.putString("ad_creative_id", adsDTO.getAdCreativeId());
            bundleM.putString(TrackingKey.REQUEST_ID, impBeanRequest.requestId);
            bundleM.putInt("code_seat_type", adsDTO.getCodeSeatType().intValue());
            bundleM.putLong("show_report_time_type", adsDTO.getShowReportTimeType().intValue());
            bundleM.putString("expired_date", adsDTO.getExpiredDate());
            bundleM.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
            bundleM.putString(TrackingKey.ECPM, String.valueOf(o0.a(adsDTO.getFirstPrice())));
            bundleM.putString("campaignname", adsDTO.getCampaignname());
            bundleM.putString(TrackingKey.GAME_NAME, impBeanRequest.gameName);
            bundleM.putString(TrackingKey.GAME_SCENE, impBeanRequest.gameScene);
            bundleM.putInt(TrackingKey.AD_TRIGGER_STATUS, impBeanRequest.mTriggerNetState);
            bundleM.putString("tracking_secret_key", adsDTO.getShowTrackingSecretKey());
            bundleM.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleM.putInt("is_inapp_ad", 1);
            bundleM.putString("material_style", g(adsDTO));
            bundleM.putInt("close_delay_time", adsDTO.getCloseDelayTime());
            bundleM.putInt(CampaignEx.JSON_NATIVE_VIDEO_ENDCARD, adsDTO.getEndCardType());
            try {
                if (adsDTO.getDownloadArea() != 0) {
                    bundleM.putInt("download_area", adsDTO.getDownloadArea());
                }
                bundleM.putString("half_screen_type", adsDTO.getHalfScreenType());
            } catch (Throwable unused) {
            }
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21953a;
            sSPTrackingHelper.a0("ssp_material_download", bundleM);
            sSPTrackingHelper.b0("ssp_show_failed", bundleM);
            new yi.a("ssp_show_inapp", Constants.AD_APPID).c(bundleM, null).b();
        }

        public static void M(String str) {
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putString(TrackingKey.REQUEST_ID, str);
            bundleM.putString("app_id", a7.c.f365b);
            new yi.a("ssp_ad_request_zip", 8765).c(bundleM, null).b();
        }

        public static void N(String str, int i11) {
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putString(TrackingKey.REQUEST_ID, str);
            bundleM.putString("app_id", a7.c.f365b);
            bundleM.putInt("error_code", i11);
            bundleM.putString("error_code", String.valueOf(i11));
            new yi.a("ssp_ad_return_zip", 8765).c(bundleM, null).b();
        }

        public static void O(AdsDTO adsDTO, FormBean formBean) {
            if (adsDTO == null || formBean == null) {
                return;
            }
            AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest() != null ? adsDTO.getImpBeanRequest() : null;
            if (impBeanRequest == null) {
                return;
            }
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putString(TrackingKey.REQUEST_ID, impBeanRequest.requestId);
            bundleM.putInt(TrackingKey.IS_OFFLINE_AD, 1);
            bundleM.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleM.putString(TrackingKey.CODE_SEAT_ID, impBeanRequest.pmid);
            bundleM.putInt("code_seat_type", adsDTO.getCodeSeatType().intValue());
            bundleM.putString("advertiser_id", adsDTO.getAdvertiserId());
            bundleM.putString("plan_id", adsDTO.getPlanId());
            bundleM.putString("ad_group_id", adsDTO.getAdGroupId());
            bundleM.putString("ad_creative_id", adsDTO.getAdCreativeId());
            bundleM.putString("form_info", GsonUtil.d(formBean));
            bundleM.putInt("material_type", adsDTO.getMaterialType().intValue());
            new yi.a(PostConstant.EVENT_FORM_INFO_SET, 8765).c(bundleM, null).b();
        }

        public static void P(AdsDTO adsDTO, String str, String str2, int i11) {
            AdxImpBean impBeanRequest;
            try {
                JSONObject jSONObject = new JSONObject(str2);
                Bundle bundleM = AthenaTracker.m(null);
                Iterator<String> itKeys = jSONObject.keys();
                if (itKeys != null) {
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        Object obj = jSONObject.get(next);
                        if (obj != null) {
                            e4.b().d("ssp", obj.toString());
                            String simpleName = obj.getClass().getSimpleName();
                            if (simpleName.equals("Integer")) {
                                bundleM.putInt(next, ((Integer) jSONObject.get(next)).intValue());
                            } else if (simpleName.equals("Double")) {
                                bundleM.putDouble(next, ((Double) jSONObject.get(next)).doubleValue());
                            } else if (simpleName.equals("Long")) {
                                bundleM.putLong(next, ((Long) jSONObject.get(next)).longValue());
                            } else if (simpleName.equals("String")) {
                                bundleM.putString(next, (String) jSONObject.get(next));
                            } else if (simpleName.equals("Boolean")) {
                                bundleM.putBoolean(next, ((Boolean) jSONObject.get(next)).booleanValue());
                            } else {
                                e4.b().d("ssp", "type not supported");
                            }
                        }
                    }
                }
                if (adsDTO != null) {
                    bundleM.putInt("code_seat_type", adsDTO.getCodeSeatType().intValue());
                    bundleM.putString("advertiser_id", adsDTO.getAdvertiserId());
                    bundleM.putString("plan_id", adsDTO.getPlanId());
                    bundleM.putString("ad_group_id", adsDTO.getAdGroupId());
                    bundleM.putString("ad_creative_id", adsDTO.getAdCreativeId());
                    bundleM.putInt(TrackingKey.IS_OFFLINE_AD, adsDTO.isOfflineAd() ? 1 : 0);
                    impBeanRequest = adsDTO.getImpBeanRequest();
                } else {
                    impBeanRequest = null;
                }
                if (impBeanRequest != null) {
                    bundleM.putString(TrackingKey.REQUEST_ID, impBeanRequest.requestId);
                    bundleM.putString(TrackingKey.CODE_SEAT_ID, impBeanRequest.pmid);
                }
                bundleM.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
                new yi.a(str, i11).c(bundleM, null).b();
            } catch (JSONException e11) {
                e4.b().e(Log.getStackTraceString(e11));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void Q(AttrData attrData) {
            if (attrData == null) {
                return;
            }
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putLong(TrackingKey.EVENT_TS, attrData.getEventTs());
            bundleM.putInt("error_code", attrData.getErrorCode());
            bundleM.putInt("ct", attrData.getCount());
            bundleM.putInt("fail_c", attrData.getFailCount());
            bundleM.putString("error_list", attrData.getErrorList());
            bundleM.putString("link_id", attrData.getLinkId());
            bundleM.putString(TrackingKey.AD_CREATE_IDS, attrData.getCreatives());
            new yi.a("imp_sync", 8765).c(bundleM, null).b();
        }

        public static void R() {
            new yi.a("sdk_initalize", 8765).c(AthenaTracker.m(null), null).b();
        }

        public static void S(AdsDTO adsDTO, int i11) {
            if (adsDTO == null) {
                return;
            }
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putString("app_id", a7.c.f365b);
            bundleM.putString(TrackingKey.CODE_SEAT_ID, adsDTO.getCodeSeatId());
            bundleM.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleM.putString(TrackingKey.REQUEST_ID, adsDTO.getRid());
            bundleM.putString(TrackingKey.TRIGGER_ID, adsDTO.getTriggerId());
            bundleM.putString("ad_creative_id", adsDTO.getAdCreativeId());
            bundleM.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
            bundleM.putInt("process", i11);
            new yi.a("show_process", 8765).c(bundleM, null).b();
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public static void T(q3 q3Var, int i11) {
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putInt("offline_ad_enable", q3Var.f().isOfflineAdEnable() ? 1 : 0);
            bundleM.putInt("ad_type", q3Var.e());
            bundleM.putString(TrackingKey.TRIGGER_ID, q3Var.n());
            bundleM.putString("app_id", a7.c.f365b);
            bundleM.putString(TrackingKey.CODE_SEAT_ID, q3Var.i());
            bundleM.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleM.putInt(TrackingKey.AD_COUNT, q3Var.a());
            bundleM.putInt(TrackingKey.AD_TRIGGER_STATUS, q3Var.o());
            bundleM.putInt(TrackingKey.IS_RETREATAD, 0);
            if (q3Var.l() != null) {
                bundleM.putString(TrackingKey.GAME_NAME, q3Var.l().b());
                bundleM.putString(TrackingKey.GAME_SCENE, q3Var.l().c());
                bundleM.putString("ext_info", q3Var.l().a() == null ? null : GsonUtil.d(q3Var.l().a()));
                try {
                    if (q3Var.p() != null) {
                        bundleM.putInt("s_recommend_req", 1);
                    }
                } catch (Throwable unused) {
                }
            }
            bundleM.putString("error_code", String.valueOf(i11));
            if (NetGroup.d() > 0) {
                bundleM.putInt("net_bucket_id", NetGroup.d());
            }
            try {
                if (NetGroup.c() > 0) {
                    bundleM.putLong("var_id", NetGroup.c());
                }
            } catch (Exception unused2) {
            }
            v1 v1Var = v1.f23023a;
            bundleM.putInt("is_support_dcdn", v1Var.b());
            bundleM.putLong("dcdn_var_id", v1Var.a());
            AthenaTracker.j(bundleM);
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21953a;
            sSPTrackingHelper.a0("ssp_material_download", bundleM);
            sSPTrackingHelper.b0("ssp_show_failed", bundleM);
            new yi.a(PostConstant.EVENT_MEDIA_CALL_REQUEST, 8765).c(bundleM, null).b();
        }

        public static void U(AdsDTO adsDTO, int i11) {
            Bundle bundleH = h(adsDTO);
            if (bundleH != null) {
                bundleH.putInt("pop_status", i11);
                bundleH.putInt("is_skip", i11 == 4 ? 1 : 0);
                new yi.a("miniapp_add_homescreen_guide", 8765).c(bundleH, null).b();
            }
        }

        public static void V(AdsDTO adsDTO, int i11) {
            Bundle bundleH = h(adsDTO);
            if (bundleH != null) {
                bundleH.putInt("os_pop_status", i11);
                new yi.a("miniapp_sys_add_homescreen", 8765).c(bundleH, null).b();
            }
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public static void W(AdsDTO adsDTO, boolean z10) {
            Bundle bundleM = AthenaTracker.m(null);
            AdxImpBean impBeanRequest = (adsDTO == null || adsDTO.getImpBeanRequest() == null) ? null : adsDTO.getImpBeanRequest();
            if (impBeanRequest != null) {
                bundleM.putString(TrackingKey.REQUEST_ID, impBeanRequest.requestId);
                bundleM.putString(TrackingKey.TRIGGER_ID, impBeanRequest.triggerId);
                bundleM.putString(TrackingKey.CODE_SEAT_ID, impBeanRequest.pmid);
                bundleM.putInt("offline_ad_enable", impBeanRequest.offlineAdEnable ? 1 : 0);
                bundleM.putInt(TrackingKey.AD_TRIGGER_STATUS, impBeanRequest.mTriggerNetState);
            }
            i7.a.v0(bundleM);
            PackageInfo packageInfoC = i0.c(com.cloud.sdk.commonutil.util.e.a());
            bundleM.putInt("is_install_ps", packageInfoC == null ? 0 : 1);
            bundleM.putString("ps_version", packageInfoC == null ? "" : String.valueOf(packageInfoC.versionCode));
            if (adsDTO == null) {
                bundleM.putInt("is_ps_type", 0);
            } else {
                bundleM.putInt("is_ps_type", i0.a(adsDTO) ? 1 : 0);
                bundleM.putString("click_link", adsDTO.getClick_link());
                bundleM.putString("ps_packagename", adsDTO.getPsPackageName());
                bundleM.putInt("is_jump_to_halfscreen", adsDTO.isJumpToHalfscreen() ? 1 : 0);
                bundleM.putInt("is_halfscreen_ad", adsDTO.getPslinkInfoStatus() ? 1 : 0);
                bundleM.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
                bundleM.putString("app_id", a7.c.f365b);
                bundleM.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
                bundleM.putString("ad_creative_id", adsDTO.getAdCreativeId());
                bundleM.putString("tracking_secret_key", adsDTO.getShowTrackingSecretKey());
                bundleM.putInt(TrackingKey.SLOT_HEIGHT, adsDTO.getViewHeight());
                bundleM.putInt(TrackingKey.SLOT_WIDTH, adsDTO.getViewWidth());
                bundleM.putInt("material_type", adsDTO.isInteractiveAd() ? 4 : adsDTO.getMaterialType().intValue());
                bundleM.putInt("is_test_request", (a7.c.q() || adsDTO.getTestResponse().booleanValue()) ? 1 : 0);
                bundleM.putString("half_screen_type", adsDTO.getHalfScreenType());
                bundleM.putInt("track_type", adsDTO.getTrackType().intValue());
                bundleM.putInt("show_times", adsDTO.getShowTime().intValue());
                bundleM.putInt(TrackingKey.IS_OFFLINE_AD, adsDTO.isOfflineAd() ? 1 : 0);
                bundleM.putInt(TrackingKey.PLATFORM, adsDTO.getDspType().intValue());
                bundleM.putString("advertiser_id", adsDTO.getAdvertiserId());
                bundleM.putString("material_style", g(adsDTO));
                bundleM.putInt("close_delay_time", adsDTO.getCloseDelayTime());
                bundleM.putInt(CampaignEx.JSON_NATIVE_VIDEO_ENDCARD, adsDTO.getEndCardType());
            }
            if (adsDTO != null) {
                try {
                    if (adsDTO.getTrackUserClickArea() != 0) {
                        bundleM.putInt("user_click_area", adsDTO.getTrackUserClickArea());
                    }
                    if ("I01".equals(adsDTO.getMaterialStyle())) {
                        bundleM.putInt("auto_retention_time", adsDTO.getAutoRetentionTime());
                    }
                    if (adsDTO.getDownloadArea() != 0) {
                        bundleM.putInt("download_area", adsDTO.getDownloadArea());
                    }
                } catch (Throwable unused) {
                }
            }
            AthenaTracker.k(adsDTO, bundleM);
            if (z10) {
                bundleM.putInt("s_confirm_dialog", 1);
            }
            SSPTrackingHelper.f21953a.Z("ssp_cliclk_link_tracking", bundleM);
            AthenaTracker.j(bundleM);
            new yi.a("ssp_new_click", 8765).c(bundleM, null).b();
        }

        public static void X(String str, int i11, int i12) {
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putString(TrackingKey.CODE_SEAT_ID, str);
            bundleM.putInt(TrackingKey.REQUEST_TYPE, i11);
            bundleM.putString("error_code", String.valueOf(i12));
            bundleM.putInt("s_track_event_type", 2);
            if (SSPTrackingHelper.f21953a.k("track_offline_request")) {
                new yi.a("track_offline_request", 8765).c(bundleM, null).b();
            }
        }

        public static void Y(Bundle bundle) {
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleM.putAll(bundle);
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21953a;
            sSPTrackingHelper.Z("ssp_cliclk_link_tracking", bundleM);
            if (sSPTrackingHelper.l(ClientABTestDTOKt.AB_CUSTOM_TAB, "ssp_landing_page_tracking") || sSPTrackingHelper.k("ssp_landing_page_tracking")) {
                new yi.a("ssp_landing_page_tracking", 8765).c(bundleM, null).b();
            }
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public static void Z(AdsDTO adsDTO, boolean z10) {
            Bundle bundleM = AthenaTracker.m(null);
            AdxImpBean impBeanRequest = (adsDTO == null || adsDTO.getImpBeanRequest() == null) ? null : adsDTO.getImpBeanRequest();
            if (impBeanRequest != null) {
                bundleM.putString(TrackingKey.REQUEST_ID, impBeanRequest.requestId);
                bundleM.putString(TrackingKey.TRIGGER_ID, impBeanRequest.triggerId);
                bundleM.putString(TrackingKey.CODE_SEAT_ID, impBeanRequest.pmid);
                bundleM.putInt("offline_ad_enable", impBeanRequest.offlineAdEnable ? 1 : 0);
                bundleM.putInt(TrackingKey.AD_TRIGGER_STATUS, impBeanRequest.mTriggerNetState);
            }
            i7.a.v0(bundleM);
            PackageInfo packageInfoC = i0.c(com.cloud.sdk.commonutil.util.e.a());
            bundleM.putInt("is_install_ps", packageInfoC == null ? 0 : 1);
            bundleM.putString("ps_version", packageInfoC == null ? "" : String.valueOf(packageInfoC.versionCode));
            if (adsDTO == null) {
                bundleM.putInt("is_ps_type", 0);
            } else {
                bundleM.putInt("is_ps_type", i0.a(adsDTO) ? 1 : 0);
                bundleM.putString("click_link", adsDTO.getClick_link());
                bundleM.putString("ps_packagename", adsDTO.getPsPackageName());
                bundleM.putInt("is_jump_to_halfscreen", adsDTO.isJumpToHalfscreen() ? 1 : 0);
                bundleM.putInt("is_halfscreen_ad", adsDTO.getPslinkInfoStatus() ? 1 : 0);
                bundleM.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
                bundleM.putString("app_id", a7.c.f365b);
                bundleM.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
                bundleM.putString("ad_creative_id", adsDTO.getAdCreativeId());
                bundleM.putString("tracking_secret_key", adsDTO.getShowTrackingSecretKey());
                bundleM.putInt(TrackingKey.SLOT_HEIGHT, adsDTO.getViewHeight());
                bundleM.putInt(TrackingKey.SLOT_WIDTH, adsDTO.getViewWidth());
                bundleM.putInt("material_type", adsDTO.isInteractiveAd() ? 4 : adsDTO.getMaterialType().intValue());
                bundleM.putInt("is_test_request", (a7.c.q() || adsDTO.getTestResponse().booleanValue()) ? 1 : 0);
                bundleM.putString("half_screen_type", adsDTO.getHalfScreenType());
                bundleM.putInt("track_type", adsDTO.getTrackType().intValue());
                bundleM.putInt("show_times", adsDTO.getShowTime().intValue());
                bundleM.putInt(TrackingKey.IS_OFFLINE_AD, adsDTO.isOfflineAd() ? 1 : 0);
                bundleM.putInt(TrackingKey.PLATFORM, adsDTO.getDspType().intValue());
                bundleM.putString("advertiser_id", adsDTO.getAdvertiserId());
                bundleM.putString("material_style", g(adsDTO));
                bundleM.putInt("close_delay_time", adsDTO.getCloseDelayTime());
                bundleM.putInt(CampaignEx.JSON_NATIVE_VIDEO_ENDCARD, adsDTO.getEndCardType());
                if ("I01".equals(adsDTO.getMaterialStyle())) {
                    bundleM.putInt("auto_retention_time", adsDTO.getAutoRetentionTime());
                }
            }
            if (z10) {
                bundleM.putInt("is_auto_click", 1);
            } else {
                bundleM.putInt("is_auto_click", 0);
            }
            AthenaTracker.k(adsDTO, bundleM);
            SSPTrackingHelper.f21953a.Z("ssp_cliclk_link_tracking", bundleM);
            AthenaTracker.j(bundleM);
            new yi.a("ssp_secondwindow_click", 8765).c(bundleM, null).b();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ void a(AdsDTO adsDTO, DiskTrackingBean diskTrackingBean, String str, int i11, String str2, Throwable th2) {
            i0(adsDTO, diskTrackingBean, str, i11, str2, th2);
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public static void a0(AdsDTO adsDTO) {
            if (adsDTO == null) {
                return;
            }
            e4.b().d("ssp", "currentThread().getId()" + Thread.currentThread().getId());
            Bundle bundle = new Bundle();
            bundle.putInt("popularize_app_install_status", adsDTO.getInstallApk());
            bundle.putLong("show_duration", adsDTO.getActualShowTime().longValue());
            bundle.putString("show_area", adsDTO.getShowArea());
            bundle.putLong("show_report_time_type", adsDTO.getShowReportTimeType().intValue());
            bundle.putInt("is_adm_ad", TextUtils.isEmpty(adsDTO.getAdm()) ? 1 : 2);
            ArrayList arrayList = new ArrayList();
            arrayList.add(adsDTO.getAdCreativeId());
            bundle.putString(TrackingKey.AD_CREATE_IDS, TextUtils.join(",", arrayList));
            if (adsDTO.isOfflineAd()) {
                bundle.putLong("ad_expire_time", adsDTO.getOfflineAdExpireTime().longValue());
            }
            bundle.putInt("show_times", adsDTO.getShowNum().intValue());
            bundle.putInt(EventConstants.KEY_SOURCE, adsDTO.getSource());
            bundle.putInt("material_type", adsDTO.isInteractiveAd() ? 4 : 2);
            if (adsDTO.getImpBeanRequest() != null) {
                bundle.putString(TrackingKey.TRIGGER_ID, adsDTO.getImpBeanRequest().triggerId);
            }
            bundle.putInt("image_width", adsDTO.getAdImageWidth().intValue());
            bundle.putInt("image_height", adsDTO.getAdImageHeight().intValue());
            bundle.putString("package_name", adsDTO.getPackageName());
            bundle.putString(CampaignEx.JSON_KEY_CLICK_URL, adsDTO.getClickUrl());
            bundle.putInt(TrackingKey.IS_DEFAULT_AD, 0);
            bundle.putInt("is_default_ad_first_show", 0);
            PackageInfo packageInfoC = i0.c(com.cloud.sdk.commonutil.util.e.a());
            bundle.putInt("is_install_ps", packageInfoC == null ? 0 : 1);
            bundle.putString("ps_version", packageInfoC == null ? "" : String.valueOf(packageInfoC.versionCode));
            bundle.putInt("is_ps_type", i0.a(adsDTO) ? 1 : 0);
            bundle.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
            bundle.putInt("is_halfscreen_ad", adsDTO.getPslinkInfoStatus() ? 1 : 0);
            bundle.putInt("material_type", adsDTO.getMaterialType().intValue());
            bundle.putInt(TrackingKey.SLOT_HEIGHT, adsDTO.getViewHeight());
            bundle.putInt(TrackingKey.SLOT_WIDTH, adsDTO.getViewWidth());
            i7.a.v0(bundle);
            bundle.putString("half_screen_type", adsDTO.getHalfScreenType());
            bundle.putInt("track_type", adsDTO.getTrackType().intValue());
            AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest();
            if (impBeanRequest != null) {
                bundle.putString(TrackingKey.GAME_NAME, impBeanRequest.gameName);
                bundle.putString(TrackingKey.GAME_SCENE, impBeanRequest.gameScene);
                bundle.putString("ext_info", impBeanRequest.getExtInfoJson());
                bundle.putInt("offline_ad_enable", impBeanRequest.offlineAdEnable ? 1 : 0);
            }
            if (NetGroup.d() > 0) {
                bundle.putInt("net_bucket_id", NetGroup.d());
            }
            try {
                if (NetGroup.c() > 0) {
                    bundle.putLong("var_id", NetGroup.c());
                }
            } catch (Exception unused) {
            }
            AthenaTracker.j(bundle);
            AthenaTracker.k(adsDTO, bundle);
            bundle.putString("material_style", g(adsDTO));
            bundle.putInt("close_delay_time", adsDTO.getCloseDelayTime());
            bundle.putInt(CampaignEx.JSON_NATIVE_VIDEO_ENDCARD, adsDTO.getEndCardType());
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21953a;
            sSPTrackingHelper.b0("ssp_show_failed", bundle);
            sSPTrackingHelper.a0("ssp_material_download", bundle);
            new yi.a("ssp_secondwindow_show", 8765).c(f(adsDTO, bundle), null).b();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ void b(AdsDTO adsDTO, int i11, int i12) {
            u(adsDTO, i11, i12);
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public static void b0(AdsDTO adsDTO) {
            if (adsDTO == null) {
                return;
            }
            e4.b().d("ssp", "currentThread().getId()" + Thread.currentThread().getId());
            Bundle bundle = new Bundle();
            bundle.putDouble(BidResponsed.KEY_PRICE, adsDTO.getFirstPrice().doubleValue());
            bundle.putString("new_price", adsDTO.getNewPrice());
            bundle.putInt("popularize_app_install_status", adsDTO.getInstallApk());
            bundle.putLong("show_duration", adsDTO.getActualShowTime().longValue());
            bundle.putString("show_area", adsDTO.getShowArea());
            bundle.putLong("show_report_time_type", adsDTO.getShowReportTimeType().intValue());
            bundle.putInt("is_adm_ad", TextUtils.isEmpty(adsDTO.getAdm()) ? 1 : 2);
            ArrayList arrayList = new ArrayList();
            arrayList.add(adsDTO.getAdCreativeId());
            bundle.putString(TrackingKey.AD_CREATE_IDS, TextUtils.join(",", arrayList));
            if (adsDTO.isOfflineAd()) {
                bundle.putLong("ad_expire_time", adsDTO.getOfflineAdExpireTime().longValue());
            }
            bundle.putInt("show_times", adsDTO.getShowNum().intValue());
            bundle.putInt(EventConstants.KEY_SOURCE, adsDTO.getSource());
            bundle.putInt("material_type", adsDTO.isInteractiveAd() ? 4 : 2);
            if (adsDTO.getImpBeanRequest() != null) {
                bundle.putString(TrackingKey.TRIGGER_ID, adsDTO.getImpBeanRequest().triggerId);
            }
            bundle.putInt("image_width", adsDTO.getAdImageWidth().intValue());
            bundle.putInt("image_height", adsDTO.getAdImageHeight().intValue());
            bundle.putString("package_name", adsDTO.getPackageName());
            bundle.putString(CampaignEx.JSON_KEY_CLICK_URL, adsDTO.getClickUrl());
            bundle.putInt(TrackingKey.IS_DEFAULT_AD, 0);
            bundle.putInt("is_default_ad_first_show", 0);
            PackageInfo packageInfoC = i0.c(com.cloud.sdk.commonutil.util.e.a());
            bundle.putInt("is_install_ps", packageInfoC == null ? 0 : 1);
            bundle.putString("ps_version", packageInfoC == null ? "" : String.valueOf(packageInfoC.versionCode));
            bundle.putInt("is_ps_type", i0.a(adsDTO) ? 1 : 0);
            bundle.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
            bundle.putInt("is_halfscreen_ad", adsDTO.getPslinkInfoStatus() ? 1 : 0);
            bundle.putInt("material_type", adsDTO.getMaterialType().intValue());
            bundle.putInt(TrackingKey.SLOT_HEIGHT, adsDTO.getViewHeight());
            bundle.putInt(TrackingKey.SLOT_WIDTH, adsDTO.getViewWidth());
            i7.a.v0(bundle);
            bundle.putString("half_screen_type", adsDTO.getHalfScreenType());
            bundle.putInt("track_type", adsDTO.getTrackType().intValue());
            AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest();
            if (impBeanRequest != null) {
                bundle.putString(TrackingKey.GAME_NAME, impBeanRequest.gameName);
                bundle.putString(TrackingKey.GAME_SCENE, impBeanRequest.gameScene);
                bundle.putString("ext_info", impBeanRequest.getExtInfoJson());
                bundle.putInt("offline_ad_enable", impBeanRequest.offlineAdEnable ? 1 : 0);
            }
            if (NetGroup.d() > 0) {
                bundle.putInt("net_bucket_id", NetGroup.d());
            }
            try {
                if (NetGroup.c() > 0) {
                    bundle.putLong("var_id", NetGroup.c());
                }
            } catch (Exception unused) {
            }
            try {
                if (adsDTO.getDownloadArea() != 0) {
                    bundle.putInt("download_area", adsDTO.getDownloadArea());
                }
            } catch (Throwable unused2) {
            }
            AthenaTracker.j(bundle);
            AthenaTracker.k(adsDTO, bundle);
            bundle.putString("material_style", g(adsDTO));
            bundle.putInt("close_delay_time", adsDTO.getCloseDelayTime());
            bundle.putInt(CampaignEx.JSON_NATIVE_VIDEO_ENDCARD, adsDTO.getEndCardType());
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21953a;
            sSPTrackingHelper.b0("ssp_show_failed", bundle);
            sSPTrackingHelper.a0("ssp_material_download", bundle);
            new yi.a(PostConstant.EVENT, Constants.AD_APPID).c(f(adsDTO, bundle), null).b();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ void c(int i11, Integer num, Integer num2, AdsDTO adsDTO) {
            r(i11, num, num2, adsDTO);
        }

        public static void c0(String str, int i11, int i12, long j11) {
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putString("download_url", str);
            bundleM.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleM.putInt("download_way", i11);
            bundleM.putInt("m_status", i12);
            bundleM.putLong("file_size", j11);
            new yi.a("material_slice_download", 8765).c(bundleM, null).b();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ void d(AttrData attrData) {
            C(attrData);
        }

        public static void d0(AdsDTO adsDTO, int i11) {
            AdxImpBean impBeanRequest;
            if (adsDTO == null || (impBeanRequest = adsDTO.getImpBeanRequest()) == null) {
                return;
            }
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putString(TrackingKey.REQUEST_ID, impBeanRequest.requestId);
            bundleM.putString(TrackingKey.TRIGGER_ID, impBeanRequest.triggerId);
            bundleM.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
            bundleM.putString("ad_creative_id", adsDTO.getAdCreativeId());
            bundleM.putInt("expired_count", i11);
            new yi.a("material_expire", 8765).c(bundleM, null).b();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ void e(AttrData attrData) {
            Q(attrData);
        }

        public static void e0(AdsDTO adsDTO, Integer num) {
            if (adsDTO == null) {
                return;
            }
            AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest() != null ? adsDTO.getImpBeanRequest() : null;
            if (impBeanRequest == null) {
                return;
            }
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putString(TrackingKey.REQUEST_ID, impBeanRequest.requestId);
            bundleM.putInt(TrackingKey.REQUEST_TYPE, impBeanRequest.requestType);
            bundleM.putInt(TrackingKey.IS_OFFLINE_AD, adsDTO.isOfflineAd() ? 1 : 0);
            bundleM.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleM.putString("app_id", a7.c.f365b);
            bundleM.putString(TrackingKey.CODE_SEAT_ID, impBeanRequest.pmid);
            bundleM.putInt("code_seat_type", adsDTO.getCodeSeatType().intValue());
            bundleM.putInt("cache_time", adsDTO.getCacheTime().intValue());
            bundleM.putString("id", adsDTO.getId().toString());
            bundleM.putString("advertiser_id", adsDTO.getAdvertiserId());
            bundleM.putString("plan_id", adsDTO.getPlanId());
            bundleM.putString("ad_group_id", adsDTO.getAdGroupId());
            bundleM.putString("ad_creative_id", adsDTO.getAdCreativeId());
            bundleM.putLong("show_times", adsDTO.getShowNum().intValue());
            bundleM.putLong("show_duration", adsDTO.getActualShowTime().longValue());
            bundleM.putString("show_area", adsDTO.getShowArea());
            bundleM.putString(TrackingKey.GAME_NAME, impBeanRequest.gameName);
            bundleM.putString(TrackingKey.GAME_SCENE, impBeanRequest.gameScene);
            bundleM.putString("ext_info", impBeanRequest.getExtInfoJson());
            bundleM.putInt(TrackingKey.SLOT_HEIGHT, adsDTO.getViewHeight());
            bundleM.putInt(TrackingKey.SLOT_WIDTH, adsDTO.getViewWidth());
            bundleM.putInt("material_type", adsDTO.getMaterialType().intValue());
            if (num != null) {
                bundleM.putInt("close_type", num.intValue());
            }
            bundleM.putInt("close_delay_time", adsDTO.getCloseDelayTime());
            bundleM.putInt(CampaignEx.JSON_NATIVE_VIDEO_ENDCARD, adsDTO.getEndCardType());
            new yi.a(PostConstant.EVENT_AD_SSP_CLOSE_AD, 8765).c(bundleM, null).b();
        }

        private static Bundle f(AdsDTO adsDTO, Bundle bundle) {
            Bundle bundleM = AthenaTracker.m(bundle);
            if (adsDTO == null) {
                return bundleM;
            }
            bundleM.putString(TrackingKey.REQUEST_ID, adsDTO.getRid());
            bundleM.putString(TrackingKey.CODE_SEAT_ID, adsDTO.getCodeSeatId());
            bundleM.putInt("code_seat_type", adsDTO.getCodeSeatType().intValue());
            bundleM.putInt("cache_time", adsDTO.getCacheTime().intValue());
            bundleM.putInt("id", adsDTO.getId().intValue());
            bundleM.putString("advertiser_id", adsDTO.getAdvertiserId());
            bundleM.putString("plan_id", adsDTO.getPlanId());
            bundleM.putString("ad_group_id", adsDTO.getAdGroupId());
            bundleM.putString("ad_creative_id", adsDTO.getAdCreativeId());
            bundleM.putString("tracking_secret_key", adsDTO.getShowTrackingSecretKey());
            bundleM.putLong("login_time", System.currentTimeMillis());
            bundleM.putInt("actual_show_rate", adsDTO.getActualShowRate().intValue());
            bundleM.putLong(TrackingKey.SHOW_TS, System.currentTimeMillis());
            bundleM.putInt("is_effective_show", adsDTO.getIsEffectiveShow().intValue());
            bundleM.putString("app_id", a7.c.f365b);
            if (adsDTO.getStoreDeeplink() != null && adsDTO.getStoreDeeplink().size() > 0) {
                bundleM.putString("click_urls", adsDTO.getStoreDeeplink().toString());
            }
            bundleM.putInt("is_test_request", (a7.c.q() || adsDTO.getTestResponse().booleanValue()) ? 1 : 0);
            if (adsDTO.getAbTest() != null) {
                bundleM.putString(CustomConfigsKt.AB_TEST, GsonUtil.d(adsDTO.getAbTest()));
            }
            bundleM.putString("extInfo", adsDTO.getExtInfo());
            if (adsDTO.getImpBeanRequest() != null) {
                bundleM.putInt(TrackingKey.REQUEST_TYPE, adsDTO.getImpBeanRequest().requestType);
                bundleM.putInt(TrackingKey.AD_TRIGGER_STATUS, adsDTO.getImpBeanRequest().mTriggerNetState);
            }
            bundleM.putLong(TrackingKey.IS_OFFLINE_AD, adsDTO.isOfflineAd() ? 1L : 0L);
            bundleM.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            return bundleM;
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public static void f0(AdxImpBean adxImpBean) {
            if (adxImpBean == null) {
                return;
            }
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putInt(TrackingKey.REQUEST_TYPE, adxImpBean.requestType);
            bundleM.putLong(TrackingKey.REQUEST_TS, adxImpBean.getRequestTs().longValue());
            bundleM.putString(TrackingKey.REQUEST_ID, adxImpBean.requestId);
            bundleM.putLong(TrackingKey.EVENT_TS, adxImpBean.getRequestTs().longValue());
            bundleM.putInt(TrackingKey.IS_OFFLINE_AD, adxImpBean.offlineAd ? 1 : 0);
            bundleM.putInt("ad_type", adxImpBean.adt);
            bundleM.putString(TrackingKey.TRIGGER_ID, adxImpBean.triggerId);
            bundleM.putString("app_id", a7.c.f365b);
            bundleM.putString(TrackingKey.CODE_SEAT_ID, adxImpBean.pmid);
            bundleM.putInt(TrackingKey.AD_COUNT, adxImpBean.mAdCount);
            bundleM.putInt(TrackingKey.IS_RETREATAD, 0);
            bundleM.putInt(TrackingKey.REQUEST_NUM, adxImpBean.mAdCount);
            bundleM.putString(TrackingKey.GAME_NAME, adxImpBean.gameName);
            bundleM.putString(TrackingKey.GAME_SCENE, adxImpBean.gameScene);
            bundleM.putString("ext_info", adxImpBean.getExtInfoJson());
            bundleM.putString(TrackingKey.CLD_CONFIGURE_ID, j7.a.e().j("hisavanaCurrentCloudControlVersion"));
            i7.a.v0(bundleM);
            PackageInfo packageInfoC = i0.c(com.cloud.sdk.commonutil.util.e.a());
            bundleM.putInt("is_install_ps", packageInfoC == null ? 0 : 1);
            String str = "";
            if (packageInfoC != null) {
                str = packageInfoC.versionCode + "";
            }
            bundleM.putString("ps_version", str);
            bundleM.putInt("offline_ad_enable", adxImpBean.offlineAdEnable ? 1 : 0);
            ConfigCodeSeatDTO configCodeSeatDTOH = P.g().h(adxImpBean.pmid);
            bundleM.putInt("cache_offline_ad_count", configCodeSeatDTOH != null ? configCodeSeatDTOH.getLocalOfflineAdCacheCount() : 0);
            if (NetGroup.d() > 0) {
                bundleM.putInt("net_bucket_id", NetGroup.d());
            }
            try {
                if (NetGroup.c() > 0) {
                    bundleM.putLong("var_id", NetGroup.c());
                }
                if (adxImpBean.webPageReqInfo != null) {
                    bundleM.putInt("s_recommend_req", 1);
                }
            } catch (Throwable unused) {
            }
            v1 v1Var = v1.f23023a;
            bundleM.putInt("is_support_dcdn", v1Var.b());
            bundleM.putLong("dcdn_var_id", v1Var.a());
            AthenaTracker.j(bundleM);
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21953a;
            sSPTrackingHelper.a0("ssp_material_download", bundleM);
            sSPTrackingHelper.b0("ssp_show_failed", bundleM);
            boolean zL = sSPTrackingHelper.l(ClientABTestDTOKt.AB_NETWORK, PostConstant.EVENT_AD_SSP_REQUEST);
            boolean zL2 = sSPTrackingHelper.l(ClientABTestDTOKt.DCDN_NET, PostConstant.EVENT_AD_SSP_REQUEST);
            if (zL || zL2 || sSPTrackingHelper.k(PostConstant.EVENT_AD_SSP_REQUEST)) {
                new yi.a(PostConstant.EVENT_AD_SSP_REQUEST, 8765).c(bundleM, null).b();
            }
        }

        private static String g(AdsDTO adsDTO) {
            if (adsDTO == null) {
                return "";
            }
            String materialStyle = adsDTO.getMaterialStyle();
            if (TextUtils.isEmpty(materialStyle)) {
                return "";
            }
            int bannerStyle = adsDTO.getBannerStyle();
            if (bannerStyle == 0) {
                return materialStyle + "-0";
            }
            if (bannerStyle == 1) {
                return materialStyle + TmcConstants.COLD_OPEN_TYPE;
            }
            if (bannerStyle != 2) {
                return materialStyle;
            }
            return materialStyle + "-2";
        }

        public static void g0(AdsDTO adsDTO, String str) {
            Bundle bundleM = AthenaTracker.m(null);
            AdxImpBean impBeanRequest = (adsDTO == null || adsDTO.getImpBeanRequest() == null) ? null : adsDTO.getImpBeanRequest();
            if (impBeanRequest == null) {
                return;
            }
            bundleM.putString("gplink", str);
            bundleM.putString(TrackingKey.REQUEST_ID, impBeanRequest.requestId);
            adsDTO.setRequestPsTs(System.currentTimeMillis());
            bundleM.putLong(TrackingKey.REQUEST_TS, adsDTO.getRequestPsTs());
            bundleM.putString("app_id", a7.c.f365b);
            bundleM.putString(TrackingKey.CODE_SEAT_ID, impBeanRequest.pmid);
            bundleM.putString(TrackingKey.GAME_NAME, impBeanRequest.gameName);
            bundleM.putString(TrackingKey.GAME_SCENE, impBeanRequest.gameScene);
            bundleM.putString("ext_info", impBeanRequest.getExtInfoJson());
            new yi.a(PostConstant.EVENT_AD_SSP_REQUEST_PS, 8765).c(bundleM, null).b();
        }

        private static Bundle h(AdsDTO adsDTO) {
            if (adsDTO == null || adsDTO.getImpBeanRequest() == null) {
                return null;
            }
            AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest();
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putString("app_id", a7.c.f365b);
            bundleM.putString(TrackingKey.CODE_SEAT_ID, impBeanRequest.pmid);
            bundleM.putString("ad_creative_id", adsDTO.getAdCreativeId());
            bundleM.putString("deep_link_url", adsDTO.getDeepLinkUrl());
            bundleM.putString("plan_id", adsDTO.getPlanId());
            bundleM.putString(TrackingKey.REQUEST_ID, impBeanRequest.requestId);
            bundleM.putString("sspsdk_version", i7.c.l());
            bundleM.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
            bundleM.putString(TrackingKey.TRIGGER_ID, impBeanRequest.triggerId);
            return bundleM;
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public static void h0(List list, TaErrorCode taErrorCode, AdxImpBean adxImpBean, int i11, androidx.collection.b bVar) {
            AdsDTO adsDTO;
            Bundle bundleM = AthenaTracker.m(null);
            if (list == null || list.size() <= 0) {
                adsDTO = null;
            } else {
                adsDTO = (AdsDTO) list.get(0);
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    AdsDTO adsDTO2 = (AdsDTO) it.next();
                    if (adsDTO2 != null) {
                        arrayList.add(adsDTO2.getAdCreativeId());
                        arrayList2.add(Integer.valueOf(adsDTO2.getPslinkInfoStatus() ? 1 : 0));
                    }
                }
                bundleM.putString(TrackingKey.AD_CREATE_IDS, TextUtils.join(",", arrayList));
                bundleM.putString("is_halfscreen_ads", TextUtils.join(",", arrayList2));
                bundleM.putInt(TrackingKey.AD_COUNT, list.size());
            }
            if (bVar != null) {
                try {
                    if (!bVar.isEmpty()) {
                        bundleM.putString("ad_return_filter", GsonUtil.d(bVar));
                    }
                } catch (Throwable unused) {
                }
            }
            if (adsDTO != null && adsDTO.getImpBeanRequest() != null && adxImpBean == null) {
                adxImpBean = adsDTO.getImpBeanRequest();
            }
            if (adxImpBean != null) {
                bundleM.putInt(TrackingKey.REQUEST_TYPE, adxImpBean.requestType);
                bundleM.putLong(TrackingKey.REQUEST_TS, adxImpBean.getRequestTs().longValue());
                bundleM.putString(TrackingKey.REQUEST_ID, adxImpBean.requestId);
                bundleM.putString(TrackingKey.TRIGGER_ID, adxImpBean.triggerId);
                bundleM.putInt("ad_type", adxImpBean.adt);
                bundleM.putString(TrackingKey.CODE_SEAT_ID, adxImpBean.pmid);
                if (adxImpBean.getRequestTs().longValue() != 0) {
                    bundleM.putInt(TrackingKey.RETURN_TIME, (int) (System.currentTimeMillis() - adxImpBean.getRequestTs().longValue()));
                }
                bundleM.putInt(TrackingKey.IS_TIMEOUT, adxImpBean.isTimeOut);
                bundleM.putInt(TrackingKey.REQUEST_NUM, adxImpBean.mAdCount);
                bundleM.putInt(TrackingKey.IS_OFFLINE_AD, adxImpBean.offlineAd ? 1 : 0);
                bundleM.putLong(TrackingKey.EVENT_TS, adxImpBean.getRequestTs().longValue());
                bundleM.putString(TrackingKey.GAME_NAME, adxImpBean.gameName);
                bundleM.putString(TrackingKey.GAME_SCENE, adxImpBean.gameScene);
                bundleM.putString("ext_info", adxImpBean.getExtInfoJson());
                bundleM.putInt("offline_ad_enable", adxImpBean.offlineAdEnable ? 1 : 0);
                ConfigCodeSeatDTO configCodeSeatDTOH = P.g().h(adxImpBean.pmid);
                bundleM.putInt("cache_offline_ad_count", configCodeSeatDTOH == null ? 0 : configCodeSeatDTOH.getLocalOfflineAdCacheCount());
            }
            bundleM.putString("app_id", a7.c.f365b);
            bundleM.putLong(TrackingKey.RETURN_TS, System.currentTimeMillis());
            if (taErrorCode != null) {
                bundleM.putString("error_code", taErrorCode.getErrorCode() + "");
                bundleM.putString(TrackingKey.ERROR_MESSAGE, taErrorCode.getErrorMessage());
            }
            if (adsDTO != null) {
                bundleM.putDouble(TrackingKey.BIDDING_PRICE, adsDTO.getFirstPrice().doubleValue());
                bundleM.putString("advertiser_id", adsDTO.getAdvertiserId());
                bundleM.putString("plan_id", adsDTO.getPlanId());
                bundleM.putString("ad_group_id", adsDTO.getAdGroupId());
                bundleM.putString("ad_creative_id", adsDTO.getAdCreativeId());
                bundleM.putInt("is_adm_ad", TextUtils.isEmpty(adsDTO.getAdm()) ? 1 : 2);
                bundleM.putString("pslink", adsDTO.getPsLink());
                bundleM.putInt("material_type", adsDTO.isInteractiveAd() ? 4 : adsDTO.getMaterialType().intValue());
                bundleM.putInt("is_test_request", (a7.c.q() || adsDTO.getTestResponse().booleanValue()) ? 1 : 0);
                bundleM.putString("half_screen_type", adsDTO.getHalfScreenType());
                bundleM.putInt("track_type", adsDTO.getTrackType().intValue());
                bundleM.putString("material_style", adsDTO.getMaterialStyle());
            }
            bundleM.putInt("return_offline_ad_count", i11);
            if (NetGroup.d() > 0) {
                bundleM.putInt("net_bucket_id", NetGroup.d());
            }
            try {
                if (NetGroup.c() > 0) {
                    bundleM.putLong("var_id", NetGroup.c());
                }
            } catch (Exception unused2) {
            }
            v1 v1Var = v1.f23023a;
            bundleM.putInt("is_support_dcdn", v1Var.b());
            bundleM.putLong("dcdn_var_id", v1Var.a());
            i7.a.v0(bundleM);
            AthenaTracker.k(adsDTO, bundleM);
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21953a;
            sSPTrackingHelper.a0("ssp_material_download", bundleM);
            sSPTrackingHelper.b0("ssp_show_failed", bundleM);
            AthenaTracker.j(bundleM);
            boolean zL = sSPTrackingHelper.l(ClientABTestDTOKt.AB_NETWORK, PostConstant.EVENT_AD_SSP_RETURN);
            boolean zL2 = sSPTrackingHelper.l(ClientABTestDTOKt.DCDN_NET, PostConstant.EVENT_AD_SSP_RETURN);
            if (zL || zL2 || sSPTrackingHelper.k(PostConstant.EVENT_AD_SSP_RETURN)) {
                new yi.a(PostConstant.EVENT_AD_SSP_RETURN, 8765).c(bundleM, null).b();
            }
        }

        public static void i(AdsDTO adsDTO, long j11) {
            if (adsDTO == null || !adsDTO.isOfflineAd()) {
                return;
            }
            Bundle bundleM = AthenaTracker.m(null);
            AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest();
            if (impBeanRequest != null) {
                bundleM.putString(TrackingKey.REQUEST_ID, impBeanRequest.requestId);
                bundleM.putInt(TrackingKey.REQUEST_TYPE, impBeanRequest.requestType);
                bundleM.putString(TrackingKey.CODE_SEAT_ID, impBeanRequest.pmid);
            }
            bundleM.putString("web_url", adsDTO.getOfflineH5Url());
            bundleM.putLong("web_duration", j11);
            bundleM.putString("ad_creative_id", adsDTO.getAdCreativeId());
            bundleM.putString("advertiser_id", adsDTO.getAdvertiserId());
            bundleM.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleM.putInt(TrackingKey.IS_OFFLINE_AD, adsDTO.isOfflineAd() ? 1 : 0);
            bundleM.putInt("code_seat_type", adsDTO.getCodeSeatType().intValue());
            bundleM.putInt("material_type", adsDTO.getMaterialType().intValue());
            new yi.a(PostConstant.EVENT_AD_WEB_COMPLETE, 8765).c(bundleM, null).b();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void i0(AdsDTO adsDTO, DiskTrackingBean diskTrackingBean, String str, int i11, String str2, Throwable th2) {
            if (adsDTO == null && diskTrackingBean == null) {
                return;
            }
            Bundle bundleM = AthenaTracker.m(null);
            if (adsDTO != null) {
                AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest();
                if (impBeanRequest != null) {
                    bundleM.putString(TrackingKey.TRIGGER_ID, impBeanRequest.triggerId);
                    bundleM.putString(TrackingKey.REQUEST_ID, impBeanRequest.requestId);
                    bundleM.putString(TrackingKey.CODE_SEAT_ID, impBeanRequest.pmid);
                }
                bundleM.putString("ad_creative_id", adsDTO.getAdCreativeId());
                bundleM.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
                bundleM.putString("advertiser_id", adsDTO.getAdvertiserId());
                bundleM.putString("package_name", TextUtils.isEmpty(adsDTO.getPackageName()) ? adsDTO.getPsPackageName() : adsDTO.getPackageName());
                bundleM.putInt("retry_status", 0);
                bundleM.putInt("retry_num", 0);
            } else {
                bundleM.putString(TrackingKey.TRIGGER_ID, diskTrackingBean.getTriggerId());
                bundleM.putString(TrackingKey.REQUEST_ID, diskTrackingBean.getRequestId());
                bundleM.putString(TrackingKey.CODE_SEAT_ID, diskTrackingBean.getCodeSeatId());
                bundleM.putString("ad_creative_id", diskTrackingBean.getAdCreativeId());
                bundleM.putString(TrackingKey.SHOW_ID, diskTrackingBean.getShowId());
                bundleM.putString("advertiser_id", diskTrackingBean.getAdvertiserId());
                bundleM.putString("package_name", diskTrackingBean.getPackageName());
                bundleM.putInt("retry_status", 1);
                bundleM.putInt("retry_num", diskTrackingBean.getRetryTimes().intValue() + 1);
            }
            bundleM.putInt("error_code", i11);
            if (i11 >= 300) {
                bundleM.putString("exception_name", th2 == null ? "" : th2.getClass().getName());
                if (str2 != null) {
                    bundleM.putString("response_info", str2.length() > 200 ? str2.substring(0, 200) : str2);
                }
                bundleM.putString("track_url", str);
            }
            SSPTrackingHelper.f21953a.Z("ssp_cliclk_link_tracking", bundleM);
            new yi.a("adx_track_result", 8765).c(bundleM, null).b();
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public static void j(String str, AdsDTO adsDTO, Bundle bundle) {
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            if (str != null && !str.isEmpty()) {
                bundleM.putString("error_code", str);
            }
            if (bundle != null) {
                bundleM.putAll(bundle);
            }
            if (adsDTO != null) {
                bundleM.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
                bundleM.putString("app_id", a7.c.f365b);
                bundleM.putString(TrackingKey.TRIGGER_ID, adsDTO.getTriggerId());
                bundleM.putString("ad_creative_id", adsDTO.getAdCreativeId());
                bundleM.putInt(TrackingKey.PLATFORM, adsDTO.getDspType().intValue());
                AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest();
                if (impBeanRequest != null) {
                    bundleM.putString(TrackingKey.CODE_SEAT_ID, impBeanRequest.pmid);
                    bundleM.putString(TrackingKey.REQUEST_ID, impBeanRequest.requestId);
                    bundleM.putInt("offline_ad_enable", impBeanRequest.offlineAdEnable ? 1 : 0);
                }
                bundleM.putInt("is_halfscreen_ad", adsDTO.getPslinkInfoStatus() ? 1 : 0);
            }
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21953a;
            sSPTrackingHelper.Z("ssp_cliclk_link_tracking", bundleM);
            if (sSPTrackingHelper.l(ClientABTestDTOKt.AB_CUSTOM_TAB, "ssp_cliclk_link_tracking") || sSPTrackingHelper.k("ssp_cliclk_link_tracking")) {
                new yi.a("ssp_cliclk_link_tracking", 8765).c(bundleM, null).b();
            }
        }

        public static void j0(String str, int i11) {
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putString(TrackingKey.CODE_SEAT_ID, str);
            bundleM.putInt(TrackingKey.REQUEST_TYPE, i11);
            bundleM.putInt("s_track_event_type", 1);
            if (SSPTrackingHelper.f21953a.k("track_offline_request")) {
                new yi.a("track_offline_request", 8765).c(bundleM, null).b();
            }
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public static void k(List list, String str, int i11, String str2, String str3, long j11, String str4, boolean z10, String str5, int i12, Bundle bundle) {
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putAll(bundle);
            bundleM.putString(TrackingKey.TRIGGER_ID, str);
            bundleM.putInt(TrackingKey.AD_COUNT, list == null ? 0 : list.size());
            bundleM.putString("error_code", str3);
            bundleM.putLong("time_consuming", j11);
            bundleM.putInt("offline_ad_enable", z10 ? 1 : 0);
            bundleM.putString(TrackingKey.CODE_SEAT_ID, str4);
            bundleM.putInt("cache_offline_ad_count", i12);
            if (list == null || list.isEmpty()) {
                bundleM.putString("default_ad_status", str5);
                bundleM.putInt("filling_result", 2);
                bundleM.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
                bundleM.putInt(TrackingKey.AD_TRIGGER_STATUS, i11);
                bundleM.putString("offline_ad_status", str2);
                if (a7.c.p()) {
                    com.cloud.sdk.commonutil.util.q.b("fill_fail，ad_trigger_status，" + i11, 3);
                }
            } else {
                AdsDTO adsDTO = (AdsDTO) list.get(0);
                AdxImpBean impBeanRequest = (adsDTO == null || adsDTO.getImpBeanRequest() == null) ? null : adsDTO.getImpBeanRequest();
                if (impBeanRequest == null) {
                    return;
                }
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    AdsDTO adsDTO2 = (AdsDTO) it.next();
                    if (adsDTO2 != null) {
                        arrayList2.add(adsDTO2.getAdCreativeId());
                        arrayList.add(Integer.valueOf(adsDTO2.getSource()));
                        arrayList3.add(Integer.valueOf(adsDTO2.getPslinkInfoStatus() ? 1 : 0));
                    }
                }
                bundleM.putString(TrackingKey.AD_CREATE_IDS, TextUtils.join(",", arrayList2));
                bundleM.putString(TrackingKey.FILLING_SOURCE, TextUtils.join(",", arrayList));
                bundleM.putInt("filling_result", 1);
                bundleM.putInt(EventConstants.KEY_SOURCE, adsDTO.getSource());
                bundleM.putInt(TrackingKey.AD_TRIGGER_STATUS, i11);
                bundleM.putInt(TrackingKey.IS_OFFLINE_AD, adsDTO.isOfflineAd() ? 1 : 0);
                bundleM.putString(TrackingKey.REQUEST_ID, impBeanRequest.requestId);
                bundleM.putString(TrackingKey.CODE_SEAT_ID, impBeanRequest.pmid);
                bundleM.putInt("code_seat_type", adsDTO.getCodeSeatType().intValue());
                bundleM.putString("advertiser_id", adsDTO.getAdvertiserId());
                bundleM.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
                bundleM.putString("plan_id", adsDTO.getPlanId());
                bundleM.putString("ad_group_id", adsDTO.getAdGroupId());
                bundleM.putString("ad_creative_id", adsDTO.getAdCreativeId());
                bundleM.putString(TrackingKey.GAME_NAME, impBeanRequest.gameName);
                bundleM.putString(TrackingKey.GAME_SCENE, impBeanRequest.gameScene);
                bundleM.putString("ext_info", impBeanRequest.getExtInfoJson());
                bundleM.putInt("material_type", adsDTO.isInteractiveAd() ? 4 : adsDTO.getMaterialType().intValue());
                bundleM.putInt("is_test_request", (a7.c.q() || adsDTO.getTestResponse().booleanValue()) ? 1 : 0);
                bundleM.putString("is_halfscreen_ads", TextUtils.join(",", arrayList3));
                bundleM.putString("half_screen_type", adsDTO.getHalfScreenType());
                bundleM.putInt("track_type", adsDTO.getTrackType().intValue());
                AthenaTracker.k(adsDTO, bundleM);
            }
            if (NetGroup.d() > 0) {
                bundleM.putInt("net_bucket_id", NetGroup.d());
            }
            try {
                if (NetGroup.c() > 0) {
                    bundleM.putLong("var_id", NetGroup.c());
                }
            } catch (Exception unused) {
            }
            v1 v1Var = v1.f23023a;
            bundleM.putInt("is_support_dcdn", v1Var.b());
            bundleM.putLong("dcdn_var_id", v1Var.a());
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21953a;
            sSPTrackingHelper.a0("ssp_material_download", bundleM);
            sSPTrackingHelper.b0("ssp_show_failed", bundleM);
            AthenaTracker.j(bundleM);
            new yi.a(PostConstant.EVENT_AD_FILLING_RESULT, 8765).c(bundleM, null).b();
        }

        public static void k0(AdsDTO adsDTO, TaErrorCode taErrorCode, int i11, String str) {
            AdxImpBean impBeanRequest;
            int width;
            int height;
            if (adsDTO == null || (impBeanRequest = adsDTO.getImpBeanRequest()) == null) {
                return;
            }
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putString(TrackingKey.REQUEST_ID, impBeanRequest.requestId);
            bundleM.putInt(TrackingKey.IS_OFFLINE_AD, adsDTO.isOfflineAd() ? 1 : 0);
            bundleM.putString(TrackingKey.CODE_SEAT_ID, adsDTO.getCodeSeatId());
            bundleM.putInt("code_seat_type", adsDTO.getCodeSeatType().intValue());
            bundleM.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleM.putString("ad_creative_id", adsDTO.getAdCreativeId());
            bundleM.putString("vast_version", str);
            bundleM.putInt("vast_status", i11);
            if (taErrorCode != null) {
                bundleM.putString("error_code", String.valueOf(taErrorCode.getErrorCode()));
                bundleM.putString("error_code", taErrorCode.getErrorMessage());
            }
            bundleM.putInt("cache_time", adsDTO.getCacheTime().intValue());
            bundleM.putString("id", String.valueOf(adsDTO.getId()));
            bundleM.putString("advertiser_id", adsDTO.getAdvertiserId());
            bundleM.putString("plan_id", adsDTO.getPlanId());
            bundleM.putString("ad_group_id", adsDTO.getAdGroupId());
            bundleM.putString("ad_creative_id", adsDTO.getAdCreativeId());
            VastData videoInfo = adsDTO.getVideoInfo();
            bundleM.putString(TrackingKey.TRIGGER_ID, adsDTO.getTriggerId());
            if (videoInfo != null) {
                VastMedia mainAd = videoInfo.getMainAd();
                if (mainAd != null) {
                    width = mainAd.getWidth();
                    height = mainAd.getHeight();
                } else {
                    width = 0;
                    height = 0;
                }
                bundleM.putInt("image_width", width);
                bundleM.putInt("image_height", height);
            }
            new yi.a("ad_ssp_vast_analyze", 8765).c(bundleM, null).b();
        }

        public static void l(String str, String str2, String str3, List list, List list2, boolean z10, int i11) {
            if (list == null || list2 == null) {
                return;
            }
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putString("app_id", a7.c.f365b);
            bundleM.putString(TrackingKey.CODE_SEAT_ID, str3);
            bundleM.putString(TrackingKey.REQUEST_ID, str);
            bundleM.putString(TrackingKey.TRIGGER_ID, str2);
            bundleM.putString(TrackingKey.AD_CREATE_IDS, TextUtils.join(",", list));
            bundleM.putString("filter_reason", TextUtils.join(",", list2));
            bundleM.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleM.putInt(TrackingKey.IS_OFFLINE_AD, z10 ? 1 : 0);
            bundleM.putInt(EventConstants.KEY_SOURCE, i11);
            if (SSPTrackingHelper.f21953a.k("ad_filter")) {
                new yi.a("ad_filter", 8765).c(bundleM, null).b();
            }
        }

        public static void l0(AdsDTO adsDTO, TaErrorCode taErrorCode) {
            AdxImpBean impBeanRequest;
            int width;
            int height;
            if (adsDTO == null || (impBeanRequest = adsDTO.getImpBeanRequest()) == null) {
                return;
            }
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putString(TrackingKey.REQUEST_ID, impBeanRequest.requestId);
            bundleM.putInt(TrackingKey.REQUEST_TYPE, impBeanRequest.requestType);
            bundleM.putInt(TrackingKey.IS_OFFLINE_AD, adsDTO.isOfflineAd() ? 1 : 0);
            bundleM.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleM.putInt(EventConstants.KEY_SOURCE, adsDTO.getSource());
            bundleM.putString("app_id", a7.c.f365b);
            bundleM.putString(TrackingKey.CODE_SEAT_ID, adsDTO.getCodeSeatId());
            bundleM.putInt("code_seat_type", adsDTO.getCodeSeatType().intValue());
            bundleM.putString("error_code", String.valueOf(taErrorCode.getErrorCode()));
            bundleM.putString(TrackingKey.ERROR_MESSAGE, taErrorCode.getErrorMessage());
            bundleM.putInt("cache_time", adsDTO.getCacheTime().intValue());
            bundleM.putString("id", String.valueOf(adsDTO.getId()));
            bundleM.putString("advertiser_id", adsDTO.getAdvertiserId());
            bundleM.putString("plan_id", adsDTO.getPlanId());
            bundleM.putString("ad_group_id", adsDTO.getAdGroupId());
            bundleM.putString("ad_creative_id", adsDTO.getAdCreativeId());
            VastData videoInfo = adsDTO.getVideoInfo();
            if (videoInfo != null) {
                VastMedia mainAd = videoInfo.getMainAd();
                if (mainAd != null) {
                    width = mainAd.getWidth();
                    height = mainAd.getHeight();
                } else {
                    width = 0;
                    height = 0;
                }
                bundleM.putInt("image_width", width);
                bundleM.putInt("image_height", height);
            }
            bundleM.putInt("actual_show_rate", adsDTO.getActualShowRate().intValue());
            bundleM.putLong(TrackingKey.SHOW_TS, System.currentTimeMillis());
            bundleM.putInt("is_effective_show", adsDTO.getIsEffectiveShow().intValue());
            bundleM.putString(TrackingKey.TRIGGER_ID, adsDTO.getTriggerId());
            bundleM.putLong("show_duration", adsDTO.getActualShowTime().longValue());
            bundleM.putString("show_area", adsDTO.getShowArea());
            bundleM.putInt("show_times", adsDTO.getShowNum().intValue());
            new yi.a("ad_ssp_video_abnormal", 8765).c(bundleM, null).b();
        }

        public static void m(AdsDTO adsDTO, String str) {
            Bundle bundleM = AthenaTracker.m(null);
            if (adsDTO != null) {
                bundleM.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
                bundleM.putString("app_id", a7.c.f365b);
                bundleM.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
                bundleM.putString(TrackingKey.TRIGGER_ID, adsDTO.getTriggerId());
                bundleM.putString("ad_creative_id", adsDTO.getAdCreativeId());
                bundleM.putString("event_id", str);
                AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest();
                if (impBeanRequest != null) {
                    bundleM.putString(TrackingKey.CODE_SEAT_ID, impBeanRequest.pmid);
                    bundleM.putString(TrackingKey.REQUEST_ID, impBeanRequest.requestId);
                }
            }
            if (bundleM != null) {
                new yi.a("interaction_event", 8765).c(bundleM, null).b();
            }
        }

        public static void m0(AdsDTO adsDTO, ProgressData progressData) {
            AdxImpBean impBeanRequest;
            int width;
            int height;
            if (adsDTO == null || progressData == null || (impBeanRequest = adsDTO.getImpBeanRequest()) == null) {
                return;
            }
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putString(TrackingKey.REQUEST_ID, impBeanRequest.requestId);
            bundleM.putInt(TrackingKey.REQUEST_TYPE, impBeanRequest.requestType);
            bundleM.putInt(TrackingKey.IS_OFFLINE_AD, adsDTO.isOfflineAd() ? 1 : 0);
            bundleM.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleM.putInt(EventConstants.KEY_SOURCE, adsDTO.getSource());
            bundleM.putString("app_id", a7.c.f365b);
            bundleM.putString(TrackingKey.CODE_SEAT_ID, adsDTO.getCodeSeatId());
            bundleM.putInt("code_seat_type", adsDTO.getCodeSeatType().intValue());
            Integer videoPlayTimeType = progressData.getVideoPlayTimeType();
            bundleM.putInt("video_play_time_type", videoPlayTimeType == null ? -1 : videoPlayTimeType.intValue());
            Integer progress = progressData.getProgress();
            bundleM.putInt("video_progress", progress == null ? -1 : progress.intValue());
            Integer duration = progressData.getDuration();
            bundleM.putInt("video_duration", duration != null ? duration.intValue() : -1);
            bundleM.putInt("cache_time", adsDTO.getCacheTime().intValue());
            bundleM.putString("id", String.valueOf(adsDTO.getId()));
            bundleM.putString("advertiser_id", adsDTO.getAdvertiserId());
            bundleM.putString("plan_id", adsDTO.getPlanId());
            bundleM.putString("ad_group_id", adsDTO.getAdGroupId());
            bundleM.putString("ad_creative_id", adsDTO.getAdCreativeId());
            VastData videoInfo = adsDTO.getVideoInfo();
            if (videoInfo != null) {
                VastMedia mainAd = videoInfo.getMainAd();
                if (mainAd != null) {
                    width = mainAd.getWidth();
                    height = mainAd.getHeight();
                } else {
                    width = 0;
                    height = 0;
                }
                bundleM.putInt("image_width", width);
                bundleM.putInt("image_height", height);
            }
            bundleM.putInt("actual_show_rate", adsDTO.getActualShowRate().intValue());
            bundleM.putLong(TrackingKey.SHOW_TS, System.currentTimeMillis());
            bundleM.putInt("is_effective_show", adsDTO.getIsEffectiveShow().intValue());
            bundleM.putString(TrackingKey.TRIGGER_ID, adsDTO.getTriggerId());
            bundleM.putLong("show_duration", adsDTO.getActualShowTime().longValue());
            bundleM.putString("show_area", adsDTO.getShowArea());
            bundleM.putLong("ad_expire_time", adsDTO.getOfflineAdExpireTime().longValue());
            bundleM.putInt("show_times", adsDTO.getShowNum().intValue());
            new yi.a("ad_ssp_video_progress", 8765).c(f(adsDTO, bundleM), null).b();
        }

        public static void n(Bundle bundle) {
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleM.putAll(bundle);
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21953a;
            sSPTrackingHelper.Z("ssp_material_download", bundleM);
            if (sSPTrackingHelper.k("ssp_material_download")) {
                new yi.a("ssp_material_download", 8765).c(bundleM, null).b();
            }
        }

        public static void n0(String str, String str2, String str3, int i11, String str4, String str5, int i12, long j11) {
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putString("webId", str);
            bundleM.putString("url", str2);
            bundleM.putString("targetUrl", str3);
            if (i11 >= 0) {
                bundleM.putInt("redirectType", i11);
            }
            bundleM.putString(NotificationCompat.CATEGORY_STATUS, str4);
            bundleM.putString("errorType", str5);
            bundleM.putInt("errorCode", i12);
            if (j11 >= 0) {
                bundleM.putLong("waitTime", j11);
            }
            new yi.a("webLoadResult", 1814).c(bundleM, null).b();
        }

        public static void o(q3 q3Var, String str, String str2) {
            Bundle bundleM = AthenaTracker.m(null);
            if (!str.isEmpty()) {
                bundleM.putString("s_click_word", str);
            }
            if (!str2.isEmpty()) {
                bundleM.putString("s_click_landing_page", str2);
            }
            if (q3Var != null) {
                String strN = q3Var.n();
                String strJ = q3Var.j();
                String strI = q3Var.i();
                bundleM.putString(TrackingKey.TRIGGER_ID, strN);
                bundleM.putString(TrackingKey.REQUEST_ID, strJ);
                bundleM.putString(TrackingKey.CODE_SEAT_ID, strI);
                SSPWebPageReqInfo sSPWebPageReqInfoP = q3Var.p();
                if (sSPWebPageReqInfoP != null) {
                    bundleM.putString("s_recommend_url", sSPWebPageReqInfoP.getUrl());
                }
                bundleM.putString("app_id", a7.c.f365b);
            }
            new yi.a("ssp_new_click_recommend", 8765).c(bundleM, null).b();
        }

        public static void o0(String str, String str2, String str3, int i11, int i12, long j11) {
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putString("webId", str);
            bundleM.putString("url", str2);
            bundleM.putString("targetUrl", str3);
            if (i12 >= 0) {
                bundleM.putInt("redirectType", i12);
            }
            bundleM.putInt(NotificationCompat.CATEGORY_PROGRESS, i11);
            bundleM.putLong("spendTime", j11);
            new yi.a("webLoadTime", 1814).c(bundleM, null).b();
        }

        public static void p(q3 q3Var, List list, long j11, Boolean bool) {
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putString("s_recommend_infos", GsonUtil.d(list));
            if (q3Var != null) {
                String strN = q3Var.n();
                String strJ = q3Var.j();
                String strI = q3Var.i();
                bundleM.putString(TrackingKey.TRIGGER_ID, strN);
                bundleM.putString(TrackingKey.REQUEST_ID, strJ);
                bundleM.putString(TrackingKey.CODE_SEAT_ID, strI);
                SSPWebPageReqInfo sSPWebPageReqInfoP = q3Var.p();
                if (sSPWebPageReqInfoP != null) {
                    bundleM.putString("s_recommend_url", sSPWebPageReqInfoP.getUrl());
                }
            }
            bundleM.putLong("time_consuming", j11);
            bundleM.putBoolean("s_rec_temp_data", bool.booleanValue());
            bundleM.putString("app_id", a7.c.f365b);
            new yi.a("ad_filling_result_recommend", 8765).c(bundleM, null).b();
        }

        public static void p0(String str, String str2, String str3, String str4) {
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putString("webId", str);
            bundleM.putString("url", str2);
            bundleM.putString("targetUrl", str3);
            bundleM.putString("pageStatus", str4);
            new yi.a("webPageState", 1814).c(bundleM, null).b();
        }

        public static void q(q3 q3Var, List list) {
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putString("s_click_show_infos", GsonUtil.d(list));
            if (q3Var != null) {
                String strN = q3Var.n();
                String strJ = q3Var.j();
                String strI = q3Var.i();
                bundleM.putString(TrackingKey.TRIGGER_ID, strN);
                bundleM.putString(TrackingKey.REQUEST_ID, strJ);
                bundleM.putString(TrackingKey.CODE_SEAT_ID, strI);
                bundleM.putString("app_id", a7.c.f365b);
                SSPWebPageReqInfo sSPWebPageReqInfoP = q3Var.p();
                if (sSPWebPageReqInfoP != null) {
                    bundleM.putString("s_recommend_url", sSPWebPageReqInfoP.getUrl());
                }
            }
            new yi.a("ad_ssp_show_recommend", 8765).c(bundleM, null).b();
        }

        public static void q0(AdsDTO adsDTO) {
            if (adsDTO == null) {
                return;
            }
            AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest() != null ? adsDTO.getImpBeanRequest() : null;
            if (impBeanRequest == null) {
                return;
            }
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putString(TrackingKey.REQUEST_ID, impBeanRequest.requestId);
            bundleM.putInt(TrackingKey.REQUEST_TYPE, impBeanRequest.requestType);
            bundleM.putString("ad_creative_id", adsDTO.getAdCreativeId());
            bundleM.putString("advertiser_id", adsDTO.getAdvertiserId());
            bundleM.putString(TrackingKey.CODE_SEAT_ID, impBeanRequest.pmid);
            bundleM.putInt("code_seat_type", adsDTO.getCodeSeatType().intValue());
            bundleM.putString("web_url", adsDTO.getClickUrl());
            bundleM.putInt("material_type", adsDTO.getMaterialType().intValue());
            if (adsDTO.getClickUrlTs() != 0) {
                bundleM.putInt("web_duration", (int) (System.currentTimeMillis() - adsDTO.getClickUrlTs()));
            }
            new yi.a(PostConstant.EVENT_WEBVIEW_REDIRECT, 8765).c(bundleM, null).b();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void r(int i11, Integer num, Integer num2, AdsDTO adsDTO) {
            String str;
            if (adsDTO == null || adsDTO.getImpBeanRequest() == null) {
                return;
            }
            AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest();
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putString("app_id", a7.c.f365b);
            bundleM.putString(TrackingKey.CODE_SEAT_ID, adsDTO.getCodeSeatId());
            bundleM.putString("ad_creative_id", adsDTO.getAdCreativeId());
            bundleM.putString(TrackingKey.REQUEST_ID, impBeanRequest.requestId);
            bundleM.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
            bundleM.putString(TrackingKey.TRIGGER_ID, impBeanRequest.triggerId);
            if (num != null) {
                bundleM.putInt(TrackingKey.PLATFORM, num.intValue());
            }
            if (num2 != null) {
                bundleM.putString("error_code", String.valueOf(num2));
            }
            bundleM.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            if (i11 == 0) {
                str = "ssp_container_open";
            } else if (i11 != 1) {
                str = i11 != 2 ? null : "ssp_container_click";
            } else {
                str = "ssp_container_show";
            }
            if (str != null) {
                new yi.a(str, 8765).c(bundleM, null).b();
            }
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public static void s(String str, String str2, String str3, AdsDTO adsDTO, Bundle bundle) {
            Bundle bundleM = AthenaTracker.m(null);
            if (bundle != null) {
                bundleM.putAll(bundle);
            }
            bundleM.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            if (str != null && !str.isEmpty()) {
                bundleM.putString("error_code", str);
            }
            if (str2 != null && !str2.isEmpty()) {
                bundleM.putString(TrackingKey.TRIGGER_ID, str2);
            }
            if (str3 != null && !str3.isEmpty()) {
                bundleM.putString(TrackingKey.CODE_SEAT_ID, str3);
            }
            if (adsDTO != null) {
                bundleM.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
                bundleM.putString("app_id", a7.c.f365b);
                bundleM.putString("ad_creative_id", adsDTO.getAdCreativeId());
                AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest();
                if (impBeanRequest != null) {
                    bundleM.putString(TrackingKey.REQUEST_ID, impBeanRequest.requestId);
                    bundleM.putInt("offline_ad_enable", impBeanRequest.offlineAdEnable ? 1 : 0);
                }
                bundleM.putInt("is_halfscreen_ad", adsDTO.getPslinkInfoStatus() ? 1 : 0);
            }
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21953a;
            sSPTrackingHelper.b0("ssp_show_failed", bundleM);
            sSPTrackingHelper.a0(PostConstant.EVENT_AD_FILLING_RESULT, bundleM);
            if (sSPTrackingHelper.k("ssp_show_failed")) {
                new yi.a("ssp_show_failed", 8765).c(bundleM, null).b();
            }
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public static void t(AdsDTO adsDTO) {
            Bundle bundleM = AthenaTracker.m(null);
            if (adsDTO != null) {
                bundleM.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
                bundleM.putString("app_id", a7.c.f365b);
                bundleM.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
                bundleM.putString(TrackingKey.TRIGGER_ID, adsDTO.getTriggerId());
                bundleM.putString("ad_creative_id", adsDTO.getAdCreativeId());
                AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest();
                if (impBeanRequest != null) {
                    bundleM.putString(TrackingKey.CODE_SEAT_ID, impBeanRequest.pmid);
                    bundleM.putString(TrackingKey.REQUEST_ID, impBeanRequest.requestId);
                    bundleM.putInt("offline_ad_enable", impBeanRequest.offlineAdEnable ? 1 : 0);
                }
                bundleM.putInt("is_halfscreen_ad", adsDTO.getPslinkInfoStatus() ? 1 : 0);
            }
            AthenaTracker.k(adsDTO, bundleM);
            if (bundleM != null) {
                SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21953a;
                sSPTrackingHelper.a0("ssp_material_download", bundleM);
                sSPTrackingHelper.b0("ssp_show_failed", bundleM);
                AthenaTracker.j(bundleM);
                if (sSPTrackingHelper.k("ssp_trigger_show")) {
                    new yi.a("ssp_trigger_show", 8765).c(bundleM, null).b();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void u(AdsDTO adsDTO, int i11, int i12) {
            if (adsDTO == null || adsDTO.getImpBeanRequest() == null) {
                return;
            }
            Bundle bundleM = AthenaTracker.m(null);
            AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest();
            bundleM.putString(TrackingKey.TRIGGER_ID, impBeanRequest.triggerId);
            bundleM.putString(TrackingKey.REQUEST_ID, impBeanRequest.requestId);
            bundleM.putString(TrackingKey.CODE_SEAT_ID, impBeanRequest.pmid);
            bundleM.putString("ad_creative_id", adsDTO.getAdCreativeId());
            bundleM.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
            bundleM.putInt("adm_render_status", i11);
            bundleM.putInt("error_code", i12);
            new yi.a("adm_render_process", 8765).c(bundleM, null).b();
        }

        public static void v(String str, String str2, int i11) {
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putString(TrackingKey.CODE_SEAT_ID, str);
            bundleM.putString(TrackingKey.REQUEST_ID, str2);
            bundleM.putString("error_code", String.valueOf(i11));
            new yi.a("agent_page_js_warning", 8765).c(bundleM, null).b();
        }

        public static void w(AdsDTO adsDTO, boolean z10) {
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putInt("is_ps_reporting", z10 ? 1 : 0);
            bundleM.putString("ad_creative_id", adsDTO.getAdCreativeId());
            bundleM.putString(TrackingKey.TRIGGER_ID, adsDTO.getJsTriggerId());
            bundleM.putString(TrackingKey.REQUEST_ID, adsDTO.getJsRequestId());
            bundleM.putString(TrackingKey.CLD_APP_ID, adsDTO.getJsMediaId());
            bundleM.putString(TrackingKey.CLD_CODE_SEAT_ID, adsDTO.getJsCodeSeatId());
            bundleM.putString(TrackingKey.CODE_SEAT_ID, adsDTO.getJsCodeSeatId());
            bundleM.putString(UrlKt.KEY_MINI_GAID, DeviceUtil.e());
            bundleM.putInt("track_type", adsDTO.getTrackType().intValue());
            PackageInfo packageInfoC = i0.c(com.cloud.sdk.commonutil.util.e.a());
            bundleM.putString("ps_version", packageInfoC == null ? null : packageInfoC.versionName);
            new yi.a("h5_ad_click_ps_reporting", 8765).c(bundleM, null).b();
        }

        public static void x(AdsDTO adsDTO, String str, String str2, boolean z10) {
            Bundle bundleM = AthenaTracker.m(null);
            if (adsDTO != null) {
                bundleM.putString("js_trigger_id", adsDTO.getJsTriggerId());
                bundleM.putInt(TrackingKey.IS_OFFLINE_AD, adsDTO.isOfflineAd() ? 1 : 0);
                bundleM.putInt("pslink_type", adsDTO.getPslinkInfoStatus() ? 2 : 1);
                bundleM.putInt("track_type", adsDTO.getTrackType().intValue());
                bundleM.putString(TrackingKey.REQUEST_ID, adsDTO.getJsRequestId());
                bundleM.putString("advertiser_id", adsDTO.getAdvertiserId());
                bundleM.putString("ad_creative_id", adsDTO.getAdCreativeId());
                bundleM.putString(TrackingKey.CODE_SEAT_ID, adsDTO.getJsCodeSeatId());
                bundleM.putInt("is_jump_to_halfscreen", adsDTO.isJumpToHalfscreen() ? 1 : 0);
                bundleM.putInt(TrackingKey.PLATFORM, adsDTO.getDspType().intValue());
            }
            bundleM.putString(TrackingKey.SHOW_ID, str);
            bundleM.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleM.putString("sspsdk_version", i7.c.l());
            PackageInfo packageInfoC = i0.c(com.cloud.sdk.commonutil.util.e.a());
            bundleM.putInt("is_install_ps", packageInfoC == null ? 0 : 1);
            bundleM.putString("ps_version", packageInfoC == null ? null : packageInfoC.versionName);
            bundleM.putString("pslink", str2);
            try {
                bundleM.putString("halfscren_type", Uri.parse(str2).getQueryParameter("HalfScreenType"));
            } catch (Throwable th2) {
                e4.b().d("ssp", Log.getStackTraceString(th2));
            }
            bundleM.putInt("pslink_result", z10 ? 1 : 0);
            new yi.a("js_bridge_result", 8765).c(bundleM, null).b();
        }

        public static void y(String str, String str2, boolean z10) {
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putString("js_trigger_id", str);
            bundleM.putString(TrackingKey.SHOW_ID, str2);
            bundleM.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleM.putString("sspsdk_version", i7.c.l());
            PackageInfo packageInfoC = i0.c(com.cloud.sdk.commonutil.util.e.a());
            bundleM.putInt("is_install_ps", packageInfoC == null ? 0 : 1);
            bundleM.putString("ps_version", packageInfoC == null ? null : packageInfoC.versionName);
            bundleM.putInt(TrackingKey.IS_OFFLINE_AD, z10 ? 1 : 0);
            new yi.a("js_bridge_trigger", 8765).c(bundleM, null).b();
        }

        public static void z(Bundle bundle) {
            Bundle bundleM = AthenaTracker.m(null);
            bundleM.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleM.putAll(bundle);
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21953a;
            sSPTrackingHelper.Z("ssp_cliclk_link_tracking", bundleM);
            if (sSPTrackingHelper.l(ClientABTestDTOKt.AB_CUSTOM_TAB, "ssp_chrome_stay_landing_page") || sSPTrackingHelper.k("ssp_chrome_stay_landing_page")) {
                new yi.a("ssp_chrome_stay_landing_page", 8765).c(bundleM, null).b();
            }
        }
    }

    public static void A(final AdsDTO adsDTO) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.AthenaTracker.26
            @Override // java.lang.Runnable
            public void run() {
                AdsDTO adsDTO2 = adsDTO;
                if (adsDTO2 == null || adsDTO2.getSource() != 4) {
                    a.t(adsDTO);
                } else {
                    a.I(adsDTO);
                }
            }
        });
    }

    public static void B(final AdsDTO adsDTO, final int i11, final int i12) {
        if (adsDTO == null || adsDTO.getExt() == null || !i7.b.b(adsDTO.getExt().getLogEnable(), "halfScreenLogEnable")) {
            return;
        }
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.b
            @Override // java.lang.Runnable
            public final void run() {
                AthenaTracker.a.b(adsDTO, i11, i12);
            }
        });
    }

    public static void C(final String str, final String str2, final int i11) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.AthenaTracker.42
            @Override // java.lang.Runnable
            public void run() {
                a.v(str, str2, i11);
            }
        });
    }

    public static void D(final AdsDTO adsDTO, final boolean z10) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.AthenaTracker.36
            @Override // java.lang.Runnable
            public void run() {
                a.w(adsDTO, z10);
            }
        });
    }

    public static void E(final AdsDTO adsDTO, final String str, final String str2, final boolean z10) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.AthenaTracker.34
            @Override // java.lang.Runnable
            public void run() {
                a.x(adsDTO, str, str2, z10);
            }
        });
    }

    public static void F(final String str, final String str2, final boolean z10) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.AthenaTracker.33
            @Override // java.lang.Runnable
            public void run() {
                a.y(str, str2, z10);
            }
        });
    }

    public static void G(final String str, final AdsDTO adsDTO, final Boolean bool) {
        if (adsDTO == null || adsDTO.getSource() != 4) {
            if (adsDTO == null || !adsDTO.isFromJs()) {
                i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.AthenaTracker.19
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            a.B(str, adsDTO, bool);
                        } catch (Throwable th2) {
                            e4.b().e("AthenaTracker", "trackClick error", th2);
                        }
                    }
                });
            }
        }
    }

    public static void H(final AttrData attrData) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.f
            @Override // java.lang.Runnable
            public final void run() {
                AthenaTracker.a.d(attrData);
            }
        });
    }

    public static void I(final int i11, final String str) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.AthenaTracker.12
            @Override // java.lang.Runnable
            public void run() {
                a.D(i11, str);
            }
        });
    }

    public static void J(final int i11, final String str, final int i12, final int i13, final String str2, final String str3) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.AthenaTracker.13
            @Override // java.lang.Runnable
            public void run() {
                a.E(i11, str, i12, i13, str2, str3);
            }
        });
    }

    public static void K(final AdsDTO adsDTO, final String str, final ClickJumpType clickJumpType) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.AthenaTracker.10
            @Override // java.lang.Runnable
            public void run() {
                a.F(adsDTO, str, clickJumpType);
            }
        });
    }

    public static void L(final String str) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.AthenaTracker.6
            @Override // java.lang.Runnable
            public void run() {
                a.J(str);
            }
        });
    }

    public static void M(final String str, final int i11) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.AthenaTracker.7
            @Override // java.lang.Runnable
            public void run() {
                a.K(str, i11);
            }
        });
    }

    public static void N(final AdsDTO adsDTO) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.AthenaTracker.5
            @Override // java.lang.Runnable
            public void run() {
                a.L(adsDTO);
            }
        });
    }

    public static void O(final AdsDTO adsDTO, final FormBean formBean) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.AthenaTracker.18
            @Override // java.lang.Runnable
            public void run() {
                a.O(adsDTO, formBean);
            }
        });
    }

    public static void P(final AdsDTO adsDTO, final String str, final String str2, final int i11) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.AthenaTracker.25
            @Override // java.lang.Runnable
            public void run() {
                a.P(adsDTO, str, str2, i11);
            }
        });
    }

    public static void Q(final AttrData attrData) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.c
            @Override // java.lang.Runnable
            public final void run() {
                AthenaTracker.a.e(attrData);
            }
        });
    }

    public static void R() {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.AthenaTracker.1
            @Override // java.lang.Runnable
            public void run() {
                a.R();
            }
        });
    }

    public static void S(final AdsDTO adsDTO, final int i11) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.AthenaTracker.29
            @Override // java.lang.Runnable
            public void run() {
                a.S(adsDTO, i11);
            }
        });
    }

    public static void T(final q3 q3Var, final int i11) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.AthenaTracker.21
            @Override // java.lang.Runnable
            public void run() {
                a.T(q3Var, i11);
            }
        });
    }

    public static void U(final AdsDTO adsDTO, final int i11) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.a
            @Override // java.lang.Runnable
            public final void run() {
                AthenaTracker.a.U(adsDTO, i11);
            }
        });
    }

    public static void V(final AdsDTO adsDTO, final int i11) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.g
            @Override // java.lang.Runnable
            public final void run() {
                AthenaTracker.a.V(adsDTO, i11);
            }
        });
    }

    public static void W(AdsDTO adsDTO) {
        X(adsDTO, Boolean.FALSE);
    }

    public static void X(final AdsDTO adsDTO, final Boolean bool) {
        VastData videoInfo;
        ProgressData progressData;
        if (adsDTO == null || adsDTO.isFromJs()) {
            return;
        }
        if (adsDTO.isVastTypeAd() && (videoInfo = adsDTO.getVideoInfo()) != null && (progressData = videoInfo.getProgressData()) != null) {
            progressData.setVideoPlayTimeType(3);
            m0(adsDTO, progressData);
        }
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.AthenaTracker.20
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (adsDTO.getSource() == 4) {
                        a.G(adsDTO, bool.booleanValue());
                    } else {
                        a.W(adsDTO, bool.booleanValue());
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }

    public static void Y(final String str, final int i11, final int i12) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.AthenaTracker.41
            @Override // java.lang.Runnable
            public void run() {
                a.X(str, i11, i12);
            }
        });
    }

    public static void Z(final AdsDTO adsDTO, final boolean z10) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.AthenaTracker.4
            @Override // java.lang.Runnable
            public void run() {
                a.Z(adsDTO, z10);
            }
        });
    }

    public static void a0(final AdsDTO adsDTO) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.AthenaTracker.3
            @Override // java.lang.Runnable
            public void run() {
                a.a0(adsDTO);
            }
        });
    }

    public static void b0(final AdsDTO adsDTO) {
        if (adsDTO == null || !adsDTO.isFromJs()) {
            i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.AthenaTracker.2
                @Override // java.lang.Runnable
                public void run() {
                    a.b0(adsDTO);
                }
            });
        }
    }

    public static void c0(final String str, final int i11, final int i12, final long j11) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.AthenaTracker.11
            @Override // java.lang.Runnable
            public void run() {
                a.c0(str, i11, i12, j11);
            }
        });
    }

    public static void d0(final AdsDTO adsDTO, final int i11) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.AthenaTracker.28
            @Override // java.lang.Runnable
            public void run() {
                a.d0(adsDTO, i11);
            }
        });
    }

    public static void e0(AdsDTO adsDTO) {
        f0(adsDTO, null);
    }

    public static void f0(final AdsDTO adsDTO, final Integer num) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.AthenaTracker.23
            @Override // java.lang.Runnable
            public void run() {
                a.e0(adsDTO, num);
            }
        });
    }

    public static void g0(final AdxImpBean adxImpBean) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.AthenaTracker.14
            @Override // java.lang.Runnable
            public void run() {
                try {
                    a.f0(adxImpBean);
                } catch (Throwable th2) {
                    e4.b().e("AthenaTracker", "trackSspRequest error", th2);
                }
            }
        });
    }

    public static void h0(List list, final TaErrorCode taErrorCode, final AdxImpBean adxImpBean, final int i11, final androidx.collection.b bVar) {
        final ArrayList arrayList = new ArrayList();
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add((AdsDTO) it.next());
            }
        }
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.AthenaTracker.15
            @Override // java.lang.Runnable
            public void run() {
                try {
                    a.h0(arrayList, taErrorCode, adxImpBean, i11, bVar);
                } catch (Throwable th2) {
                    e4.b().e("AthenaTracker", "trackSspReturn error", th2);
                }
            }
        });
    }

    public static void i0(final AdsDTO adsDTO, final DiskTrackingBean diskTrackingBean, final String str, final int i11, final String str2, final Throwable th2) {
        if ((adsDTO == null || adsDTO.getExt() == null || !i7.b.b(adsDTO.getExt().getLogEnable(), "showTrackingUrlsLogEnable")) && (diskTrackingBean == null || !diskTrackingBean.getShowTrackingUrlsLogEnable())) {
            return;
        }
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.e
            @Override // java.lang.Runnable
            public final void run() {
                AthenaTracker.a.a(adsDTO, diskTrackingBean, str, i11, str2, th2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void j(Bundle bundle) {
        bundle.putInt("screen_angular", com.cloud.sdk.commonutil.util.h.e() - 1);
    }

    public static void j0(final String str, final int i11) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.AthenaTracker.40
            @Override // java.lang.Runnable
            public void run() {
                a.j0(str, i11);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void k(AdsDTO adsDTO, Bundle bundle) {
        if (adsDTO == null || bundle == null || adsDTO.getDisplayRule() != com.cloud.hisavana.sdk.common.constant.Constants.AdDisplayRule.RU) {
            return;
        }
        bundle.putString("compliance", "1");
    }

    public static void k0(final AdsDTO adsDTO, final TaErrorCode taErrorCode, final int i11, final String str) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.AthenaTracker.32
            @Override // java.lang.Runnable
            public void run() {
                a.k0(adsDTO, taErrorCode, i11, str);
            }
        });
    }

    public static String l(Context context) {
        if (!TextUtils.isEmpty(f21952d)) {
            return f21952d;
        }
        try {
            String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
            if (!TextUtils.isEmpty(string)) {
                String strTrim = string.trim();
                String strA = TextUtils.isEmpty(strTrim) ? "" : com.transsion.core.utils.c.a(strTrim);
                f21952d = strA;
                return strA;
            }
        } catch (Exception unused) {
        }
        return "";
    }

    public static void l0(final AdsDTO adsDTO, final TaErrorCode taErrorCode) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.AthenaTracker.31
            @Override // java.lang.Runnable
            public void run() {
                a.l0(adsDTO, taErrorCode);
            }
        });
    }

    public static Bundle m(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        PackageInfo packageInfoC = i0.c(com.cloud.sdk.commonutil.util.e.a());
        if (packageInfoC != null) {
            bundle.putString("ps_version", String.valueOf(packageInfoC.versionCode));
        }
        bundle.putInt("net", MitNetUtil.c(com.cloud.sdk.commonutil.util.e.a()) ? 1 : 0);
        bundle.putString("app_id", a7.c.f365b);
        return i7.b.a(bundle);
    }

    public static void m0(final AdsDTO adsDTO, final ProgressData progressData) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.AthenaTracker.39
            @Override // java.lang.Runnable
            public void run() {
                a.m0(adsDTO, progressData);
            }
        });
    }

    public static boolean n(Context context, int i11) {
        if (i11 == 100) {
            return true;
        }
        String strE = DeviceUtil.e();
        if (TextUtils.isEmpty(strE)) {
            f21950b = true;
        } else {
            f21950b = false;
        }
        if (TextUtils.isEmpty(strE)) {
            strE = l(context);
        }
        if (TextUtils.isEmpty(strE)) {
            return true;
        }
        int iAbs = Math.abs(strE.hashCode()) % 100;
        return iAbs >= 0 && iAbs <= i11;
    }

    public static void n0(final String str, final String str2, final String str3, final int i11, final String str4, final String str5, final int i12, final long j11) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.AthenaTracker.38
            @Override // java.lang.Runnable
            public void run() {
                a.n0(str, str2, str3, i11, str4, str5, i12, j11);
            }
        });
    }

    public static void o(boolean z10, Context context) {
        if (f21949a) {
            return;
        }
        try {
            AthenaAnalytics.a0(8765, "ssp" + i7.c.l());
        } catch (Throwable unused) {
        }
        AthenaAnalytics.Q(context, "SSP", Constants.AD_APPID, z10, false);
        AthenaAnalytics.Q(context, "SSP", 8765, z10, false);
        f21949a = true;
    }

    public static void o0(final String str, final String str2, final String str3, final int i11, final int i12, final long j11) {
        if (i12 == -1 || !TextUtils.isEmpty(str2)) {
            i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.AthenaTracker.37
                @Override // java.lang.Runnable
                public void run() {
                    a.o0(str, str2, str3, i11, i12, j11);
                }
            });
        }
    }

    public static void p0(final String str, final String str2, final String str3, final String str4) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.AthenaTracker.35
            @Override // java.lang.Runnable
            public void run() {
                a.p0(str, str2, str3, str4);
            }
        });
    }

    public static void q0(final AdsDTO adsDTO) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.AthenaTracker.17
            @Override // java.lang.Runnable
            public void run() {
                a.q0(adsDTO);
            }
        });
    }

    public static void w(final AdsDTO adsDTO, final long j11) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.AthenaTracker.24
            @Override // java.lang.Runnable
            public void run() {
                a.i(adsDTO, j11);
            }
        });
    }

    public static void x(final String str, final String str2, final String str3, final List list, final List list2, final boolean z10, final int i11) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.AthenaTracker.30
            @Override // java.lang.Runnable
            public void run() {
                a.l(str, str2, str3, list, list2, z10, i11);
            }
        });
    }

    public static void y(final AdsDTO adsDTO, final String str) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.AthenaTracker.27
            @Override // java.lang.Runnable
            public void run() {
                a.m(adsDTO, str);
            }
        });
    }

    public static void z(final int i11, final Integer num, final Integer num2, final AdsDTO adsDTO) {
        i7.b.c(new Runnable() { // from class: com.cloud.hisavana.sdk.common.athena.d
            @Override // java.lang.Runnable
            public final void run() {
                AthenaTracker.a.c(i11, num, num2, adsDTO);
            }
        });
    }
}
