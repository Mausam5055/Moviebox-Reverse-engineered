package com.hisavana.common.constant;

import com.hisavana.common.bean.TAdErrorCode;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public class ComConstants {
    public static final String AD_FLOW = "ad_flow";
    public static final int AD_TIMEOUT_MILLIS = 30000;
    public static final String AHA_CHANNEL = "aha";
    public static final String APPLOVIN_TAG = "applovin_log";
    public static final String APP_ACTIVE_TIME = "app_active_time";
    public static final String BIDDING_TIME_OUT = "bidding_time_out";
    public static final int CUSTOM_PARAMS_MAX_SIZE = 10;
    public static final String FIRST_START_FOR_ONE_DAY = "first_start_for_one_day";
    public static final String HOST_VERSION = "host_version";
    public static final String HS_APPID = "hs_appid";
    public static final String HS_VER = "hs_ver";
    public static final String IRON_SOURCE_TAG = "iron_source_log";
    public static final long IS_READY_INTERVAL_TIME = 1000;
    public static final String KEY_WORDS = "sensitive_keywords";
    public static final String PLATFORM_ADMOB = "admob";
    public static final String PLATFORM_FACEBOOK = "fan";
    public static final String PLATFORM_SSP = "ssp";
    public static final long REQ_CLOUD_CONFIG_INTERVAL_IF_NEED = 86400000;
    public static final String SDK_INIT = "sdk_init";
    public static final String SK_KEY_SPLASH_JUMP = "config_splash_jump";
    public static final String VIDEO_TAG = "video";
    public static final int defScheduleTime = 60000;
    public static final int sdkVersionCode = 360200;
    public static Boolean AUTOMATIC_TEST_STATUS = Boolean.FALSE;
    public static boolean LITE = false;
    public static int splashJumpSwitch = -1;
    public static volatile String fbBidToken = "";
    public static boolean isFbAppExist = false;
    public static int BID_PRICE_CACHE_TIME = 1800000;

    /* JADX INFO: loaded from: classes4.dex */
    @Retention(RetentionPolicy.CLASS)
    public @interface AdIconPos {
    }

    /* JADX INFO: loaded from: classes4.dex */
    public interface AdLoadStatus {
        public static final int FAILED = 3;
        public static final int LOADING = 1;
        public static final int LOADING_NO_CONTEXT = 4;
        public static final int NONE = 0;
        public static final int SUCCESS = 2;
    }

    /* JADX INFO: loaded from: classes4.dex */
    public interface AdSeatType {
        public static final String TYPE_FEEDS = "feeds";
        public static final String TYPE_LOCK_SCREEN = "lockScreen";
    }

    /* JADX INFO: loaded from: classes4.dex */
    public interface AdSource {
        public static final int ADMOB = 1;
        public static final int APPLOVIN = 3;
        public static final int FAN = 2;
        public static final int INMOBI = 8;
        public static final int IRON_SOURCE = 5;
        public static final int MAX = 14;
        public static final int SSP = 0;
    }

    /* JADX INFO: loaded from: classes4.dex */
    public interface AdTriggerStatus {
        public static final int TRIGGER_STATUS_NORMAL = 0;
        public static final int TRIGGER_STATUS_NO_NET = 1;
    }

    /* JADX INFO: loaded from: classes4.dex */
    public interface AdType {
        public static final int BANNER = 2;
        public static final int ICON = 6;
        public static final int INTERSTITIAL = 3;
        public static final int NATIVE = 1;
        public static final int NATIVE_BANNER = 10;
        public static final int REWARDED = 5;
        public static final int REWARDED_INTERSTITIAL = 7;
        public static final int SPLASH = 4;
        public static final int UNKNOW = -1;
    }

    /* JADX INFO: loaded from: classes4.dex */
    @Retention(RetentionPolicy.SOURCE)
    public @interface AdTypeInt {
    }

    /* JADX INFO: loaded from: classes4.dex */
    public interface AllianceType {
        public static final int ADCOLONY = 11;
        public static final int ADMOB = 1;
        public static final int APPLOVIN = 3;
        public static final int BIGO = 16;
        public static final int FAN = 2;
        public static final int INMOBI = 8;
        public static final int IRON_SOURCE = 5;
        public static final int MAX = 14;
        public static final int MINTEGRAL = 9;
        public static final int PANGLE = 6;
        public static final int SSP = 0;
        public static final int TopOn = 17;
        public static final int UNITY = 4;
        public static final int VUNGLE = 12;
        public static final int YANDEX = 15;
    }

    /* JADX INFO: loaded from: classes4.dex */
    public interface BidStartTimeType {
        public static final int BIDDING_DURATION_REACHED = 1;
        public static final int HIGH_PRICE_RETURN = 2;
    }

    /* JADX INFO: loaded from: classes4.dex */
    public interface CacheStatus {
        public static final int CACHE_AVAILABLE = 0;
        public static final int CACHE_EMPTY = 1;
        public static final int CACHE_ERROR = 5;
        public static final int CACHE_EXPIRE = 2;
        public static final int CACHE_LOW_PRICE = 4;
        public static final int CACHE_SENSITIVE = 3;
    }

    /* JADX INFO: loaded from: classes4.dex */
    public interface CacheTime {
        public static final int BANNER = 60;
        public static final int INTERSTITIAL = 60;
        public static final int NATIVE = 60;
        public static final int SPLASH = 240;
        public static final int VIDEO = 60;
    }

    /* JADX INFO: loaded from: classes4.dex */
    public interface FillCallbackMode {
        public static final int LIMIT_TIME_FILL = 1;
        public static final int QUICK_FILL = 2;
    }

    /* JADX INFO: loaded from: classes4.dex */
    public interface FillingSource {
        public static final int OFFLINE_CACHE_AD = 3;
        public static final int ONLINE_CACHE_AD = 2;
        public static final int REQUEST_AD = 1;
    }

    /* JADX INFO: loaded from: classes4.dex */
    public interface IconPosition {
        public static final int BOTTOM_LEFT = 3;
        public static final int BOTTOM_RIGHT = 2;
        public static final int CLOSE = 4;
        public static final int TOP_LEFT = 0;
        public static final int TOP_RIGHT = 1;
    }

    /* JADX INFO: loaded from: classes4.dex */
    public interface InitializeState {
        public static final int INITIALIZE_FINISH = 2;
        public static final int INITIALIZING = 1;
        public static final int UN_INITIALIZED = 0;
    }

    /* JADX INFO: loaded from: classes4.dex */
    public interface IsReadyValue {
        public static final int CODE_SEAT_IS_NULL = 5;
        public static final int CURRENT_TYPE_NOT_SUPPORTED = 6;
        public static final int LOADED_HAS_AD = 1;
        public static final int NOT_LOADED_HAS_AD = 2;
        public static final int NO_AD = 0;
        public static final int OBJECT_DESTROYED = 3;
        public static final int UNIT_ID_EMPTY = 4;
    }

    /* JADX INFO: loaded from: classes4.dex */
    public interface JSEventType {
        public static final int EVENT_CLICK = 3;
        public static final int EVENT_CLOSE = 4;
        public static final int EVENT_LOAD = 1;
        public static final int EVENT_SHOW = 2;
    }

    /* JADX INFO: loaded from: classes4.dex */
    public interface LoadIntervalMode {
        public static final int DYNAMIC_MODE = 2;
        public static final int FIXED_MODE = 1;
    }

    /* JADX INFO: loaded from: classes4.dex */
    public interface LoadType {
        public static final int LOAD = 1;
        public static final int PRELOAD = 2;
        public static final int TRIGGER_OFFLINE = 5;
    }

    /* JADX INFO: loaded from: classes4.dex */
    public interface Mode {
        public static final int RELEASE = 1;
        public static final int TEST_DEVICE = 2;
    }

    /* JADX INFO: loaded from: classes4.dex */
    public interface NetworkType {
        public static final int BIDDING = 1;
        public static final int QUERY = 3;
        public static final int UNKNOW = 0;
        public static final int WATERFALL = 2;
    }

    /* JADX INFO: loaded from: classes4.dex */
    public interface Pref {
        public static final String CLOUD_CONFIG_ERROR_CODE = "cloud_config_error_code";
        public static final String IS_ALL_AD_CLOSED = "all_ad_closed";
        public static final String LAST_MODE = "last_mode";
        public static final String REQ_CONFIG_INTERVAL = "req_config_interval";
    }

    /* JADX INFO: loaded from: classes4.dex */
    public interface PullNewestLive {
        public static final int AD_H5 = 4;
        public static final int AD_NEW = 2;
        public static final int AD_NORMAL = 0;
        public static final int AD_PULL = 3;
        public static final int AD_PULL_OR_NEW = 1;
    }

    /* JADX INFO: loaded from: classes4.dex */
    public interface SpecialAdType {
        public static final String INTERSTITIAL_VIDEO = "7";
    }

    /* JADX INFO: loaded from: classes4.dex */
    public interface SplashMode {
        public static final int SPLASH_PAGE = 1;
        public static final int SPLASH_VIEW = 2;
    }

    /* JADX INFO: loaded from: classes4.dex */
    public @interface SplashModeIntDef {
    }

    /* JADX INFO: loaded from: classes4.dex */
    public interface SupportHisavanaResult {
        public static final int NORMAL = 0;
        public static final int SUPPORT_ADX = 1;
        public static final int SUPPORT_BOTH = 3;
        public static final int SUPPORT_EW = 2;
    }

    /* JADX INFO: loaded from: classes4.dex */
    public interface TriggerMode {
        public static final int PRE_TRIGGER = 1;
        public static final int REALTIME_TRIGGER = 2;
    }

    public static String getAdType(int i11) {
        if (i11 == 10) {
            return "Native";
        }
        switch (i11) {
            case 1:
                return "Native";
            case 2:
                return "Banner";
            case 3:
                return "Interstitia";
            case 4:
                return "Splash";
            case 5:
                return "Video";
            case 6:
                return "Icon";
            default:
                return "UNKNOW";
        }
    }

    public static String getSourceName(int i11) {
        if (i11 == 0) {
            return "SSP";
        }
        if (i11 != 1) {
            return i11 != 2 ? "Unknow" : "Fan";
        }
        return "Admob";
    }

    public static TAdErrorCode transferCloudErrorCode(int i11) {
        TAdErrorCode tAdErrorCode = TAdErrorCode.ERROR_AD_UNIT_CONFIG_EMPTY;
        switch (i11) {
            case 3003000:
            case 3003001:
            case 3003006:
                return TAdErrorCode.ERROR_REQUEST_CLOUD_PARMER_EXCEPTION;
            case 3003002:
                return TAdErrorCode.ERROR_APPLICATION_IS_NOT_EXIST;
            case 3003003:
                return TAdErrorCode.ERROR_APPLICATION_IS_CLOSED;
            case 3003004:
            case 3003005:
            case 3003007:
            default:
                return tAdErrorCode;
            case 3003008:
                return TAdErrorCode.ERROR_PACKAGE_NAME_IS_INCONSISTENT;
            case 3003009:
                return TAdErrorCode.ERROR_OPERATING_SYSTEM_INCONSISTENCY;
        }
    }

    public static String transferSourceToStr(int i11) {
        switch (i11) {
            case 0:
                return "ssp";
            case 1:
                return PLATFORM_ADMOB;
            case 2:
                return PLATFORM_FACEBOOK;
            case 3:
                return "applovin";
            case 4:
                return "unity";
            case 5:
                return "IronSource";
            case 6:
                return "pangle";
            case 7:
            case 10:
            case 13:
            default:
                return "";
            case 8:
                return "inmobi";
            case 9:
                return "mintegral";
            case 11:
                return "adcolony";
            case 12:
                return "vungle";
            case 14:
                return "max";
            case 15:
                return "yandex";
            case 16:
                return "bigo";
            case 17:
                return "TopOn";
        }
    }
}
