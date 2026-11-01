package com.cloud.tmc.ad;

import android.text.TextUtils;
import com.hisavana.common.bean.TAdErrorCode;

/* JADX INFO: loaded from: classes3.dex */
public class TaErrorCode {
    private static final int ADMEDIA_NO_FILL_CODE = 1004;
    private static final int ADM_SCALE_IS_WRONG = 1016;
    private static final int AD_BE_FILTER_CODE = 1001;
    private static final int AD_CONFIG_SILENCE_CODE = 1014;
    private static final int AD_DATA_PARSE_RESPONSE_ERROR_CODE = 1015;
    private static final int CONFIG_IS_NOT_EXIT = 1017;
    private static final int CONFIG_SHOW_COUNT_LIMIT = 1018;
    public static final int INVALID_CRVT_CODE = 9010;
    private static final int INVALID_URL_CODE = 1006;
    public static final int NOT_ALLOW_DEEPLINK_CODE = 1012;
    private static final int NOT_SELF_AD_CODE = 1011;
    private static final int NO_AD_CODE = 1002;
    public static final int PARSE_BITMAP_ERROR = 9013;
    private static final int PLATFORM_NOT_EXIT = 1009;
    private static final int REGISTER_VIEW_ERROR_CODE = 1005;
    private static final int RESPONSE_ADT_DIFFRENT_CODE = 9012;
    private static final int RESPONSE_PMID_DIFFRENT_CODE = 9011;
    private static final int SENSITIVE_ERROR_CODE = 1003;
    private static final int SPLASH_AD_EXPIRED = 1007;
    private static final int SPLASH_AD_NOT_AVALID = 1013;
    private static final int SPLASH_AD_NO_CACHED = 1008;
    public static final int SUCCESS_CODE = 200;
    public static final int UNKNOWN_ERROR_CODE = 10000;
    public static final int UNKNOWN_ERROR_CODE_1 = 10001;
    public static final int UNKNOWN_ERROR_CODE_2 = 10002;
    private final int errorCode;
    private final String errorMessage;
    private static final int NETWORK_ERROR_CODE = 9000;
    public static final TaErrorCode NETWORK_ERROR = new TaErrorCode(NETWORK_ERROR_CODE, "Network Error");
    public static final TaErrorCode RESPONSE_PMID_DIFFRENT_ERROR = new TaErrorCode(9011, "request's pmid is diffrent with response's");
    public static final TaErrorCode RESPONSE_ADT_DIFFRENT_ERROR = new TaErrorCode(9011, "request's adt is diffrent with response's");
    private static final int AD_IS_EMPTY_CODE = 9003;
    public static final TaErrorCode RESPONSE_AD_IS_EMPTY = new TaErrorCode(AD_IS_EMPTY_CODE, "Response Ad is empty");
    private static final int HTTP_RESPONSE_ERROR_CODE = 9006;
    public static final TaErrorCode HTTP_RESPONSE_ERROR = new TaErrorCode(HTTP_RESPONSE_ERROR_CODE, "http response is empty");
    public static final TaErrorCode INVALID_CRVT_TYPE = new TaErrorCode(9010, "Invalid Crvt type.");
    public static final TaErrorCode SELF_AD_BE_FILTER = new TaErrorCode(1001, "ad be filter");
    public static final TaErrorCode NOT_SELF_AD = new TaErrorCode(1011, "not self ad error");
    public static final TaErrorCode NO_AD = new TaErrorCode(1002, "no ad show, set visible gone");
    public static final TaErrorCode SENSITIVE_ERROR = new TaErrorCode(1003, "Sensitive AD");
    public static final TaErrorCode ADMEDIA_NO_FILL = new TaErrorCode(1004, "Admedia can not provide ad to this device, please contact the ad manager.");
    public static final TaErrorCode REGISTER_VIEW_ERROR = new TaErrorCode(1005, "register view error");
    public static final TaErrorCode INVALID_URL = new TaErrorCode(1006, "Invalid url.");
    public static final TaErrorCode AD_EXPIRE = new TaErrorCode(1007, "ad expired");
    public static final TaErrorCode AD_NO_CACHED = new TaErrorCode(1008, "no ad");
    public static final TaErrorCode AD_NOT_AVALID = new TaErrorCode(1013, "ad not avalid");
    public static final TaErrorCode AD_CONFIG_SILENCE = new TaErrorCode(1014, "ad is at silence");
    public static final TaErrorCode PLATFORM_IS_NOT_EXIT = new TaErrorCode(1009, "ad platform is not exit.");
    public static final TaErrorCode UNKNOWN_ERROR = new TaErrorCode(10000, "Unkown error.");
    public static final TaErrorCode NOT_ALLOW_DEEPLINK = new TaErrorCode(1012, "Not_allow_deeplink");
    public static final TaErrorCode ADM_SCALE_NOT_FIT = new TaErrorCode(1016, "adm scales is not fit");
    public static final TaErrorCode AD_DATA_PARSE_RESPONSE_ERROR = new TaErrorCode(1015, "ad data parse response error");
    public static final TaErrorCode CONFIG_IS_NOT_EXIT_ERROR = new TaErrorCode(1017, "code seat is not exit");
    public static final TaErrorCode CONFIG_SHOW_COUNT_LIMIT_ERROR = new TaErrorCode(1018, "code seat show count limit");
    public static final int TIMEOUT_ERROR_CODE = 9007;
    public static final TaErrorCode LOAD_AD_TIMEOUT_ERROR = new TaErrorCode(TIMEOUT_ERROR_CODE, "load ad time out");

    public TaErrorCode(int i11, String str) {
        str = TextUtils.isEmpty(str) ? TAdErrorCode.EMPTY_MSG : str;
        this.errorCode = i11;
        this.errorMessage = str;
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public String getErrorMessage() {
        return this.errorMessage;
    }
}
