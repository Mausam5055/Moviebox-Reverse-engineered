package com.hisavana.common.bean;

import android.text.TextUtils;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;

/* JADX INFO: loaded from: classes.dex */
public class TAdErrorCode {
    public static final int CODE_AD_REQUEST_FAILED = 30003;
    public static final int CODE_AD_REQUEST_TIME_OUT = 30002;
    public static final int CODE_AD_SOURCE_INIT_FAILED = 30001;
    public static final int CODE_FILL_FAILED_WITH_NO_AD = 20001;
    public static final int CODE_MATERIEL_OBTAIN_FAILED = 30004;
    public static final int CODE_NOT_INITIALIZED = 60008;
    public static final int CODE_REQUEST_BIDDING_FAILED = 30006;
    public static final int CODE_REQUEST_OBJECT_IS_DESTROYED = 30005;
    public static final int CODE_SUCCESS = 0;
    public static final String EMPTY_MSG = "empty msg";
    public static final int MAX_MSG_LENGTH = 100;
    private final int errorCode;
    private final String errorMessage;
    public static final TAdErrorCode SUCCESS_MESSAGE = new TAdErrorCode(0, NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS);
    public static final int CODE_UNKNOWN = -10000;
    public static final TAdErrorCode ERROR_UNKNOWN = new TAdErrorCode(CODE_UNKNOWN, "unknown error");
    public static final TAdErrorCode ERROR_FILL_FAILED_WITH_NO_AD = new TAdErrorCode(20001, "No ads available, fill failed");
    public static final int CODE_FILL_FAILED_WiTH_EXPIRED = 20002;
    public static final TAdErrorCode ERROR_FILL_FAILED_WiTH_EXPIRED = new TAdErrorCode(CODE_FILL_FAILED_WiTH_EXPIRED, "no ad or ad is expired");
    public static final int CODE_FILL_FAILED_WITH_MEDIATION_TIME_OUT = 20003;
    public static final TAdErrorCode ERROR_FILL_FAILED_WITH_MEDIATION_TIME_OUT = new TAdErrorCode(CODE_FILL_FAILED_WITH_MEDIATION_TIME_OUT, "The request duration configured by the cloud control has timed out.");
    public static final int CODE_FILL_FAILED_WITH_NETWORK_EXCEPTION = 20004;
    public static final TAdErrorCode ERROR_FILL_FAILED_WITH_NETWORK_EXCEPTION = new TAdErrorCode(CODE_FILL_FAILED_WITH_NETWORK_EXCEPTION, "Network exception, filling failed");
    public static final int CODE_FILL_FAILED_WITH_BIDDING_READY = 20005;
    public static final TAdErrorCode ERROR_FILL_FAILED_WITH_BIDDING_READY = new TAdErrorCode(CODE_FILL_FAILED_WITH_BIDDING_READY, "Bidding time is ready,but no ad fill");
    public static final int CODE_FILL_FAILED_NO_NETWORK_AND_OFFLINE = 20006;
    public static final TAdErrorCode ERROR_FILL_FAILED_NO_NETWORK_AND_OFFLINE = new TAdErrorCode(CODE_FILL_FAILED_NO_NETWORK_AND_OFFLINE, "Network off, no offline ad filled");
    public static final int CODE_FILL_FAILED_LOW_PRICE = 20007;
    public static final TAdErrorCode ERROR_FILL_FAILED_LOW_PRICE = new TAdErrorCode(CODE_FILL_FAILED_LOW_PRICE, "Bidding price is less than min price");
    public static final int CODE_FILL_FAILED_SENSITIVE = 20008;
    public static final TAdErrorCode ERROR_FILL_FAILED_SENSITIVE = new TAdErrorCode(CODE_FILL_FAILED_SENSITIVE, "Filtered due to sensitivity");
    public static final TAdErrorCode ERROR_AD_SOURCE_INIT_FAILED = new TAdErrorCode(30001, "Ad source initialization failed");
    public static final TAdErrorCode ERROR_AD_REQUEST_TIME_OUT = new TAdErrorCode(30002, "Ad request timeout");
    public static final TAdErrorCode ERROR_AD_REQUEST_FAILED = new TAdErrorCode(30003, "Ad request failed");
    public static final TAdErrorCode ERROR_REQUEST_OBJECT_IS_DESTROYED = new TAdErrorCode(30005, "The requesting object is destroyed");
    public static final int CODE_TRIGGER_SHOW_ONLINE_NO_AD = 40001;
    public static final TAdErrorCode ERROR_TRIGGER_SHOW_ONLINE_NO_AD = new TAdErrorCode(CODE_TRIGGER_SHOW_ONLINE_NO_AD, "Media calls to show, but no ads are currently available");
    public static final int CODE_TRIGGER_SHOW_OFFLINE_NO_AD = 40002;
    public static final TAdErrorCode ERROR_RIGGER_SHOW_OFFLINE_NO_AD = new TAdErrorCode(CODE_TRIGGER_SHOW_OFFLINE_NO_AD, "Display in no network environment, but there are currently no offline ads available.");
    public static final int CODE_SHOW_EXCEPTION = 50001;
    public static final TAdErrorCode ERROR_SHOW_EXCEPTION = new TAdErrorCode(CODE_SHOW_EXCEPTION, "Ad display failed");
    public static final int CODE_JS_BANNER_MISSING_REQUIRED_ELEMENT = 50002;
    public static final TAdErrorCode SHOW_JS_BANNER_MISSING_REQUIRED_ELEMENT = new TAdErrorCode(CODE_JS_BANNER_MISSING_REQUIRED_ELEMENT, "js beidge, banner ad missing required element");
    public static final int CODE_INVALID_APP_ID = 60001;
    public static final TAdErrorCode ERROR_INVALID_APP_ID = new TAdErrorCode(CODE_INVALID_APP_ID, "Invalid app id");
    public static final int CODE_CURRENT_OBJECT_IS_DESTROYED = 60002;
    public static final TAdErrorCode ERROR_CURRENT_OBJECT_IS_DESTROYED = new TAdErrorCode(CODE_CURRENT_OBJECT_IS_DESTROYED, "Operation using an object that has been destroyed");
    public static final int CODE_SPLASH_PARMER_NULL = 60003;
    public static final TAdErrorCode ERROR_SPLASH_PARMER_NULL = new TAdErrorCode(CODE_SPLASH_PARMER_NULL, "When displaying splash ads, the parameters are abnormal");
    public static final int CODE_AD_HANDLER_IS_NULL = 60004;
    public static final TAdErrorCode ERROR_AD_HANDLER_IS_NULL = new TAdErrorCode(CODE_AD_HANDLER_IS_NULL, "SDK internal logic problem, cacheHandler cannot be obtained currently");
    public static final int CODE_NATIVE_PARMER_IS_NULL = 60005;
    public static final TAdErrorCode ERROR_NATIVE_PARMER_IS_NULL = new TAdErrorCode(CODE_NATIVE_PARMER_IS_NULL, "When displaying native or icon ads, the parameters are abnormal");
    public static final int CODE_AD_IS_SHOWING = 60006;
    public static final TAdErrorCode ERROR_CODE_AD_IS_SHOWING = new TAdErrorCode(CODE_AD_IS_SHOWING, "ad is showing, please wait for the ad to close");
    public static final int CODE_SHOW_VULGAR = 60007;
    public static final TAdErrorCode ERROR_CODE_SHOW_VULGAR = new TAdErrorCode(CODE_SHOW_VULGAR, "The current page contains sensitive content and advertising brands are restricted");
    public static final int CODE_REQUEST_CLOUD_TIME_OUT = 70001;
    public static final TAdErrorCode ERROR_REQUEST_CLOUD_TIME_OUT = new TAdErrorCode(CODE_REQUEST_CLOUD_TIME_OUT, "Configuration information request timed out");
    public static final int CODE_REQUEST_CLOUD_PARMER_EXCEPTION = 70002;
    public static final TAdErrorCode ERROR_REQUEST_CLOUD_PARMER_EXCEPTION = new TAdErrorCode(CODE_REQUEST_CLOUD_PARMER_EXCEPTION, "Cloud control information request parameter abnormality");
    public static final int CODE_APPLICATION_IS_NOT_EXIST = 70003;
    public static final TAdErrorCode ERROR_APPLICATION_IS_NOT_EXIST = new TAdErrorCode(CODE_APPLICATION_IS_NOT_EXIST, "Cloud control information request, app id verification failed");
    public static final int CODE_PACKAGE_NAME_IS_INCONSISTENT = 70004;
    public static final TAdErrorCode ERROR_PACKAGE_NAME_IS_INCONSISTENT = new TAdErrorCode(CODE_PACKAGE_NAME_IS_INCONSISTENT, "Cloud control information request, app id and package name do not match");
    public static final int CODE_OPERATING_SYSTEM_INCONSISTENCY = 70005;
    public static final TAdErrorCode ERROR_OPERATING_SYSTEM_INCONSISTENCY = new TAdErrorCode(CODE_OPERATING_SYSTEM_INCONSISTENCY, "Cloud control information request, system inconsistency");
    public static final int CODE_APPLICATION_IS_CLOSED = 70006;
    public static final TAdErrorCode ERROR_APPLICATION_IS_CLOSED = new TAdErrorCode(CODE_APPLICATION_IS_CLOSED, "Cloud control information request, the application has been closed");
    public static final int CODE_AD_UNIT_CONFIG_EMPTY = 70007;
    public static final TAdErrorCode ERROR_AD_UNIT_CONFIG_EMPTY = new TAdErrorCode(CODE_AD_UNIT_CONFIG_EMPTY, "No matching code seat information");
    public static final int CODE_AD_SHOW_TIMES_OUT_OF_DAY = 70008;
    public static final TAdErrorCode ERROR_AD_SHOW_TIMES_OUT_OF_DAY = new TAdErrorCode(CODE_AD_SHOW_TIMES_OUT_OF_DAY, "The number of impressions in a single day for cloud control configuration has reached");
    public static final int CODE_AD_SHOW_TIMES_OUT_OF_HOUR = 70009;
    public static final TAdErrorCode ERROR_AD_SHOW_TIMES_OUT_OF_HOUR = new TAdErrorCode(CODE_AD_SHOW_TIMES_OUT_OF_HOUR, "The number of impressions in a single hour for cloud control configuration has reached");
    public static final int CODE_AD_SHOW_NOT_IN_INTERVAL = 70010;
    public static final TAdErrorCode ERROR_AD_SHOW_NOT_IN_INTERVAL = new TAdErrorCode(CODE_AD_SHOW_NOT_IN_INTERVAL, "The display interval of cloud control configuration has not been reached yet");
    public static final int CODE_AD_SOURCE_LIST_IS_EMPTY = 70011;
    public static final TAdErrorCode ERROR_AD_SOURCE_LIST_IS_EMPTY = new TAdErrorCode(CODE_AD_SOURCE_LIST_IS_EMPTY, "There is no advertising source configured under the advertising slot");
    public static final int CODE_AD_TYPE_LOAD_INCONSISTENCY = 70012;
    public static final TAdErrorCode ERROR_AD_TYPE_LOAD_INCONSISTENCY = new TAdErrorCode(CODE_AD_TYPE_LOAD_INCONSISTENCY, "The API used by the media does not match the current ad slot");
    public static final int CODE_CLOUD_AD_SEAT_IS_CLOSED = 70013;
    public static final TAdErrorCode ERROR_CLOUD_AD_SEAT_IS_CLOSED = new TAdErrorCode(CODE_CLOUD_AD_SEAT_IS_CLOSED, "The advertising function has been turned off for this ad slot");
    public static final int PREPARE_REQUEST_FAILED = 70014;
    public static final TAdErrorCode ERROR_PREPARE_REQUEST_FAILED = new TAdErrorCode(PREPARE_REQUEST_FAILED, "prepare request failed");

    public TAdErrorCode(int i11, String str) {
        str = TextUtils.isEmpty(str) ? EMPTY_MSG : str;
        this.errorCode = i11;
        this.errorMessage = str;
    }

    public static String simpleErrorMessage(String str) {
        if (TextUtils.isEmpty(str)) {
            return EMPTY_MSG;
        }
        if (str.length() <= 100) {
            return str;
        }
        try {
            return str.substring(0, 100);
        } catch (Exception unused) {
            return EMPTY_MSG;
        }
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public String getErrorMessage() {
        return this.errorMessage;
    }

    public String toString() {
        return "TAdErrorCode{errorCode=" + this.errorCode + ", errorMessage='" + this.errorMessage + "'}";
    }
}
