package com.cloud.tmc.ad.athena;

import android.os.Build;
import android.text.TextUtils;
import com.cloud.tmc.ad.utils.UserAgentUtil;
import com.cloud.tmc.integration.utils.DeviceUtil;
import com.transsion.core.deviceinfo.DeviceInfo;
import com.transsion.core.utils.e;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public class PostConstant {
    public static final String EVENT = "ad_ssp_show";
    public static final String EVENT_AD_FILLING_RESULT = "ad_filling_result";
    public static final String EVENT_AD_PS_POPUP_CLICK = "popup_click";
    public static final String EVENT_AD_PS_POPUP_IMP = "popup_imp";
    public static final String EVENT_AD_SSP_CLICK = "ad_ssp_click";
    public static final String EVENT_AD_SSP_CLOSE_AD = "ad_ssp_close_ad";
    public static final String EVENT_AD_SSP_REQUEST = "ad_ssp_request";
    public static final String EVENT_AD_SSP_REQUEST_PS = "ad_ssp_request_ps_material";
    public static final String EVENT_AD_SSP_RETURN = "ad_ssp_return";
    public static final String EVENT_AD_SSP_RETURN_PS = "ad_ssp_return_ps_material";
    public static final String EVENT_AD_WEB_COMPLETE = "ad_web_complete";
    public static final String EVENT_CLD_REQUEST = "ad_cld_request";
    public static final String EVENT_CLD_RETURN = "ad_cld_return";
    public static final String EVENT_DEEPLINK = "deeplink";
    public static final String EVENT_FORM_INFO_SET = "form_infor_set";
    public static final String EVENT_IMG = "material_load";
    public static final String EVENT_MEDIA_CALL_REQUEST = "media_call_request";
    public static final String EVENT_WEBVIEW_REDIRECT = "ad_web_callback";
    private static String brand = null;
    private static String make = null;
    private static String mcc = null;
    private static String mnc = null;
    private static String model = null;
    private static String osVersion = null;
    private static int screenDensity = -1;
    private static int screenHeight = -1;
    private static int screenWidth = -1;
    private static String sdkVersion = null;
    private static int sdkVersionCode = 0;
    private static String sessionId = null;
    private static int type = -1;
    private static String userAgent;
    private static String versionName;
    private static AtomicInteger mccInteger = new AtomicInteger(0);
    private static AtomicInteger mncInteger = new AtomicInteger(0);

    public static String getBrand() {
        if (TextUtils.isEmpty(brand)) {
            brand = Build.BRAND;
        }
        return brand;
    }

    public static String getMake() {
        if (TextUtils.isEmpty(make)) {
            make = Build.MANUFACTURER;
        }
        return make;
    }

    public static String getMcc() {
        if (DeviceUtil.checkCanRetryInTimes(mcc, mccInteger, 1)) {
            String strF = DeviceInfo.f();
            if (!TextUtils.isEmpty(strF) && strF.length() >= 3) {
                mcc = strF.substring(0, 3);
            }
        }
        return mcc;
    }

    public static String getMnc() {
        if (DeviceUtil.checkCanRetryInTimes(mnc, mncInteger, 1)) {
            String strF = DeviceInfo.f();
            if (!TextUtils.isEmpty(strF) && strF.length() >= 3) {
                mnc = strF.substring(3);
            }
        }
        return mnc;
    }

    public static String getModel() {
        if (TextUtils.isEmpty(model)) {
            model = Build.MODEL;
        }
        return model;
    }

    public static String getOsVersion() {
        if (TextUtils.isEmpty(osVersion)) {
            osVersion = DeviceUtil.getSystemVersion();
        }
        return osVersion;
    }

    public static int getScreenDensity() {
        if (screenDensity == -1) {
            screenDensity = (int) e.b();
        }
        return screenDensity;
    }

    public static int getScreenHeight() {
        if (screenHeight == -1) {
            screenHeight = e.e();
        }
        return screenHeight;
    }

    public static int getScreenWidth() {
        if (screenWidth == -1) {
            screenWidth = e.f();
        }
        return screenWidth;
    }

    public static String getSdkVersion() {
        if (TextUtils.isEmpty(sdkVersion)) {
            sdkVersion = "1.0.61.06";
        }
        return sdkVersion;
    }

    public static int getSdkVersionCode() {
        if (sdkVersionCode == 0) {
            sdkVersionCode = 1061;
        }
        return sdkVersionCode;
    }

    public static String getSessionId() {
        if (TextUtils.isEmpty(sessionId)) {
            sessionId = DeviceUtil.getUUID();
        }
        return sessionId;
    }

    public static int getType() {
        if (type == -1) {
            type = DeviceInfo.h() ? 2 : 1;
        }
        return type;
    }

    public static String getUserAgent() {
        if (TextUtils.isEmpty(userAgent)) {
            userAgent = UserAgentUtil.getUserAgent();
        }
        return userAgent;
    }

    public static String getVersionName() {
        if (TextUtils.isEmpty(versionName)) {
            versionName = String.valueOf(com.transsion.core.utils.a.c());
        }
        return versionName;
    }
}
