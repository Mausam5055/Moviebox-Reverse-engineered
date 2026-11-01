package com.cloud.tmc.integration.net;

import android.content.Context;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.utils.MccMncUtils;
import com.cloud.tmc.kernel.utils.AppDynamicBuildConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\bO\n\u0002\u0018\u0002\n\u0000\u001a\u0016\u0010P\u001a\u00020\u00012\u0006\u0010Q\u001a\u00020\u00012\u0006\u0010R\u001a\u00020S\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0003X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0003X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0003X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0003X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\b\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0003X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\u0003X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\f\u001a\u00020\u0003X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\r\u001a\u00020\u0003X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000e\u001a\u00020\u0003X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000f\u001a\u00020\u0003X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0010\u001a\u00020\u0003X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0011\u001a\u00020\u0003X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0012\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0013\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0014\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0015\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0016\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0017\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0018\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0019\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001a\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001b\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u0011\u0010\u001c\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u000e\u0010\u001f\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u0011\u0010 \u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001e\"\u0011\u0010\"\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u001e\"\u0011\u0010$\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u001e\"\u0011\u0010&\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u001e\"\u0011\u0010(\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\u001e\"\u0011\u0010*\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\u001e\"\u0011\u0010,\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b-\u0010\u001e\"\u0011\u0010.\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b/\u0010\u001e\"\u0011\u00100\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b1\u0010\u001e\"\u0011\u00102\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b3\u0010\u001e\"\u0011\u00104\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b5\u0010\u001e\"\u0011\u00106\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b7\u0010\u001e\"\u0011\u00108\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b9\u0010\u001e\"\u0011\u0010:\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b;\u0010\u001e\"\u0011\u0010<\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b=\u0010\u001e\"\u0011\u0010>\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b?\u0010\u001e\"\u0011\u0010@\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\bA\u0010\u001e\"\u0011\u0010B\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\bC\u0010\u001e\"\u0011\u0010D\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\bE\u0010\u001e\"\u0011\u0010F\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\bG\u0010\u001e\"\u0011\u0010H\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\bI\u0010\u001e\"\u0011\u0010J\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\bK\u0010\u001e\"\u0011\u0010L\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\bM\u0010\u001e\"\u0011\u0010N\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\bO\u0010\u001e¨\u0006T"}, d2 = {"AGREEMENT_URL", "", "ERROR_MINI_APP_CLOSE", "", "HTTP_APP_INFO_NOT_EXIST_ERR", "HTTP_APP_INFO_VERSION_FORMAT_ERR", "HTTP_APP_INFO_VERSION_NOT_EXIST_ERR", "HTTP_GATE_WAY_EXCEPTION", "HTTP_GATE_WAY_TERRITORY_ERROR", "HTTP_GATE_WAY_TOKEN_ERROR", "HTTP_MINIAPP_VERSION_EXPIRES_ERR", "HTTP_RESPONSE_EXCEPTION", "HTTP_RESPONSE_NULL", "HTTP_SERVER_ERROR", "HTTP_SUCCESS", "HTTP_TERRITORY_ERROR", "HTTP_TOKEN_EMPTY", "HTTP_TOKEN_ERROR", "KEY_HEADER_DEV_TOKEN", "KEY_HEADER_REQUESTCHANNEL", "KEY_HEADER_REQUEST_X_LDEBUG", "KEY_MINI_GAID", "KEY_QUERY_APPID", "KEY_QUERY_CLASSIFICATION", "KEY_QUERY_FRAMEVERSIONPREFIX", "KEY_QUERY_SHORTURLCODE", "KEY_QUERY_TYPE_CODE", "KEY_QUERY_VERSION", "MINI_URL_QUERY_MINI_APP", "getMINI_URL_QUERY_MINI_APP", "()Ljava/lang/String;", "PRIVACY_URL", "RECOMMEND_INFO_MINI_APP", "getRECOMMEND_INFO_MINI_APP", "URL_APPINFO_DEV_QUERY", "getURL_APPINFO_DEV_QUERY", "URL_APPINFO_QUERY", "getURL_APPINFO_QUERY", "URL_CANCEL_COLLECT_MINI_APP", "getURL_CANCEL_COLLECT_MINI_APP", "URL_COLLECT_MINI_APP", "getURL_COLLECT_MINI_APP", "URL_CONFIG_QUERY", "getURL_CONFIG_QUERY", "URL_FORM", "getURL_FORM", "URL_FW_INFO_QUERY", "getURL_FW_INFO_QUERY", "URL_MINI_CHANGE_WIDGET_SUBSCRIPTION_MSG_STATUS", "getURL_MINI_CHANGE_WIDGET_SUBSCRIPTION_MSG_STATUS", "URL_MINI_QUERY_MSG_STATUS", "getURL_MINI_QUERY_MSG_STATUS", "URL_MINI_QUERY_NEW_MSG_mini", "getURL_MINI_QUERY_NEW_MSG_mini", "URL_MINI_QUERY_OPEN_COMPONENTS", "getURL_MINI_QUERY_OPEN_COMPONENTS", "URL_MINI_QUERY_READ_MSG", "getURL_MINI_QUERY_READ_MSG", "URL_MINI_QUERY_WIDGET_ENABLE_STATUS", "getURL_MINI_QUERY_WIDGET_ENABLE_STATUS", "URL_MINI_QUERY_WIDGET_HISTORY_TITLE", "getURL_MINI_QUERY_WIDGET_HISTORY_TITLE", "URL_MINI_QUERY_WIDGET_SUBSCRIPTION_MSG", "getURL_MINI_QUERY_WIDGET_SUBSCRIPTION_MSG", "URL_MINI_QUERY_WIDGET_TITLE", "getURL_MINI_QUERY_WIDGET_TITLE", "URL_OPERATE_MESSAGE_SWITCH", "getURL_OPERATE_MESSAGE_SWITCH", "URL_QUERY_ALL_AUTH_INFO", "getURL_QUERY_ALL_AUTH_INFO", "URL_QUERY_NEW_MINIAPP_MESSAGE_INFO", "getURL_QUERY_NEW_MINIAPP_MESSAGE_INFO", "URL_SHORT_CONVERT_ORIGINAL", "getURL_SHORT_CONVERT_ORIGINAL", "URL_UNIQUEID", "getURL_UNIQUEID", "URL_UPLOAD", "getURL_UPLOAD", "URL_V8_QUERY", "getURL_V8_QUERY", "appendCommonParamUrl", "url", "context", "Landroid/content/Context;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 2, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class UrlKt {
    public static final String AGREEMENT_URL = "https://h5.dlight-app.com/outside/user-agreement?lang=";
    public static final int ERROR_MINI_APP_CLOSE = 9;
    public static final int HTTP_APP_INFO_NOT_EXIST_ERR = 30004;
    public static final int HTTP_APP_INFO_VERSION_FORMAT_ERR = 30022;
    public static final int HTTP_APP_INFO_VERSION_NOT_EXIST_ERR = 30005;
    public static final int HTTP_GATE_WAY_EXCEPTION = -4;
    public static final String HTTP_GATE_WAY_TERRITORY_ERROR = "GW.4451";
    public static final String HTTP_GATE_WAY_TOKEN_ERROR = "GW.4401";
    public static final int HTTP_MINIAPP_VERSION_EXPIRES_ERR = 30009;
    public static final int HTTP_RESPONSE_EXCEPTION = -3;
    public static final int HTTP_RESPONSE_NULL = -2;
    public static final int HTTP_SERVER_ERROR = -1;
    public static final int HTTP_SUCCESS = 200;
    public static final int HTTP_TERRITORY_ERROR = 451;
    public static final int HTTP_TOKEN_EMPTY = -5;
    public static final int HTTP_TOKEN_ERROR = 401;
    public static final String KEY_HEADER_DEV_TOKEN = "miniapp-token";
    public static final String KEY_HEADER_REQUESTCHANNEL = "requestChannel";
    public static final String KEY_HEADER_REQUEST_X_LDEBUG = "X-Ldebug";
    public static final String KEY_MINI_GAID = "gaid";
    public static final String KEY_QUERY_APPID = "appId";
    public static final String KEY_QUERY_CLASSIFICATION = "needClassification";
    public static final String KEY_QUERY_FRAMEVERSIONPREFIX = "frameVersionPrefix";
    public static final String KEY_QUERY_SHORTURLCODE = "shortUrlCode";
    public static final String KEY_QUERY_TYPE_CODE = "typeCode";
    public static final String KEY_QUERY_VERSION = "version";
    public static final String PRIVACY_URL = "https://h5.dlight-app.com/outside/privacy-policy?lang=";
    private static final String URL_CONFIG_QUERY = AppDynamicBuildConfig.getCONFIG_BASE_URL() + "common/cloudconfig/v1/consumer-not-login/configkeyvalue/query/get";
    private static final String URL_APPINFO_QUERY = AppDynamicBuildConfig.getMINI_APP_BASE_URL() + "miniapp/platform/consumer-not-login/appInfo/query/queryReleaseAppInfo";
    private static final String URL_FW_INFO_QUERY = AppDynamicBuildConfig.getMINI_APP_BASE_URL() + "miniapp/platform/consumer-not-login/appInfo/query/queryReleaseFrameAppInfo";
    private static final String URL_APPINFO_DEV_QUERY = AppDynamicBuildConfig.getMINI_APP_BASE_URL() + "miniapp/platform/consumer-not-login/appInfo/query/querySnapshotOrDevAppInfo";
    private static final String URL_V8_QUERY = AppDynamicBuildConfig.getBASE_V8_URL() + "miniapp/platform/consumer-not-login/sdk/query/queryV8SdkSoInfo";
    private static final String URL_UPLOAD = AppDynamicBuildConfig.getBASE_UPLOAD_URL() + "miniapp/platform/consumer-not-login/demoApp/cmd/applyDemoAppDemoUploadContext";
    private static final String URL_SHORT_CONVERT_ORIGINAL = AppDynamicBuildConfig.getMINI_APP_BASE_URL() + "miniapp/platform/consumer-not-login/shortUrl/query/queryOriginalUrl";
    private static final String URL_COLLECT_MINI_APP = AppDynamicBuildConfig.getMINI_APP_BASE_URL() + "miniapp/selfresearch/consumer-not-login/negativeCard/cmd/collecMiniApp";
    private static final String URL_CANCEL_COLLECT_MINI_APP = AppDynamicBuildConfig.getMINI_APP_BASE_URL() + "miniapp/selfresearch/consumer-not-login/negativeCard/cmd/cancelCollecMiniApp";
    private static final String RECOMMEND_INFO_MINI_APP = AppDynamicBuildConfig.getBASE_UPLOAD_URL() + "miniapp/selfresearch/consumer-not-login/negativeCard/query/getRecommendInfoMiniAppInfo";
    private static final String MINI_URL_QUERY_MINI_APP = AppDynamicBuildConfig.getMINI_APP_BASE_URL() + "miniapp/platform/consumer-not-login/appInfo/query/negativeScreenSearchMiniAppByNameOrDesc";
    private static final String URL_FORM = AppDynamicBuildConfig.getBASE_SUBMIT_FORM() + "/eagllwin/clue/consumer-not-login/clue/cmd/submitClue";
    private static final String URL_UNIQUEID = AppDynamicBuildConfig.getMINI_APP_BASE_URL() + "miniapp/platform/consumer-not-login/appInfo/query/queryUniqueId";
    private static final String URL_QUERY_NEW_MINIAPP_MESSAGE_INFO = AppDynamicBuildConfig.getMINI_APP_BASE_URL() + "miniapp/messageplatform/consumer-not-login/message/query/queryNewMiniappMessageInfo";
    private static final String URL_QUERY_ALL_AUTH_INFO = AppDynamicBuildConfig.getMINI_APP_BASE_URL() + "miniapp/messageplatform/consumer-not-login/message/query/queryMiniAppMessageAuthInfos";
    private static final String URL_OPERATE_MESSAGE_SWITCH = AppDynamicBuildConfig.getMINI_APP_BASE_URL() + "miniapp/messageplatform/consumer-not-login/message/cmd/operateMessageSwitch";
    private static final String URL_MINI_QUERY_MSG_STATUS = AppDynamicBuildConfig.getMINI_APP_BASE_URL() + "miniapp/messageplatform/consumer-not-login/message/query/queryMessageBoxReadStatus";
    private static final String URL_MINI_QUERY_NEW_MSG_mini = AppDynamicBuildConfig.getMINI_APP_BASE_URL() + "miniapp/messageplatform/consumer-not-login/message/query/queryMiniAppNewMessages";
    private static final String URL_MINI_QUERY_OPEN_COMPONENTS = AppDynamicBuildConfig.getMINI_APP_BASE_URL() + "miniapp/platform/consumer-not-login/appInfo/query/queryOpenComponents";
    private static final String URL_MINI_QUERY_WIDGET_TITLE = AppDynamicBuildConfig.getMINI_APP_BASE_URL() + "miniapp/platform/consumer-not-login/widget/query/queryInspirationalTitleInfos";
    private static final String URL_MINI_QUERY_WIDGET_HISTORY_TITLE = AppDynamicBuildConfig.getMINI_APP_BASE_URL() + "miniapp/platform/consumer-not-login/widget/query/queryHistoryTodayTitleInfos";
    private static final String URL_MINI_QUERY_WIDGET_SUBSCRIPTION_MSG = AppDynamicBuildConfig.getMINI_APP_BASE_URL() + "miniapp/messageplatform/consumer-not-login/message/query/queryUnReadSubscriptionMessages";
    private static final String URL_MINI_CHANGE_WIDGET_SUBSCRIPTION_MSG_STATUS = AppDynamicBuildConfig.getMINI_APP_BASE_URL() + "miniapp/messageplatform/consumer-not-login/message/cmd/batchReadMessage";
    private static final String URL_MINI_QUERY_WIDGET_ENABLE_STATUS = AppDynamicBuildConfig.getMINI_APP_BASE_URL() + "miniapp/platform/consumer-not-login/widget/query/showWidgetServices";
    private static final String URL_MINI_QUERY_READ_MSG = AppDynamicBuildConfig.getMINI_APP_BASE_URL() + "miniapp/messageplatform/consumer-not-login/message/cmd/readBox";

    public static final String appendCommonParamUrl(String url, Context context) {
        Intrinsics.h(url, "url");
        Intrinsics.h(context, "context");
        MccMncUtils mccMncUtils = MccMncUtils.INSTANCE;
        return url + mccMncUtils.getLanguageStr() + "&country=" + mccMncUtils.getCountryCodeBySimOrLang(context);
    }

    public static final String getMINI_URL_QUERY_MINI_APP() {
        return MINI_URL_QUERY_MINI_APP;
    }

    public static final String getRECOMMEND_INFO_MINI_APP() {
        return RECOMMEND_INFO_MINI_APP;
    }

    public static final String getURL_APPINFO_DEV_QUERY() {
        return URL_APPINFO_DEV_QUERY;
    }

    public static final String getURL_APPINFO_QUERY() {
        return URL_APPINFO_QUERY;
    }

    public static final String getURL_CANCEL_COLLECT_MINI_APP() {
        return URL_CANCEL_COLLECT_MINI_APP;
    }

    public static final String getURL_COLLECT_MINI_APP() {
        return URL_COLLECT_MINI_APP;
    }

    public static final String getURL_CONFIG_QUERY() {
        return URL_CONFIG_QUERY;
    }

    public static final String getURL_FORM() {
        return URL_FORM;
    }

    public static final String getURL_FW_INFO_QUERY() {
        return URL_FW_INFO_QUERY;
    }

    public static final String getURL_MINI_CHANGE_WIDGET_SUBSCRIPTION_MSG_STATUS() {
        return URL_MINI_CHANGE_WIDGET_SUBSCRIPTION_MSG_STATUS;
    }

    public static final String getURL_MINI_QUERY_MSG_STATUS() {
        return URL_MINI_QUERY_MSG_STATUS;
    }

    public static final String getURL_MINI_QUERY_NEW_MSG_mini() {
        return URL_MINI_QUERY_NEW_MSG_mini;
    }

    public static final String getURL_MINI_QUERY_OPEN_COMPONENTS() {
        return URL_MINI_QUERY_OPEN_COMPONENTS;
    }

    public static final String getURL_MINI_QUERY_READ_MSG() {
        return URL_MINI_QUERY_READ_MSG;
    }

    public static final String getURL_MINI_QUERY_WIDGET_ENABLE_STATUS() {
        return URL_MINI_QUERY_WIDGET_ENABLE_STATUS;
    }

    public static final String getURL_MINI_QUERY_WIDGET_HISTORY_TITLE() {
        return URL_MINI_QUERY_WIDGET_HISTORY_TITLE;
    }

    public static final String getURL_MINI_QUERY_WIDGET_SUBSCRIPTION_MSG() {
        return URL_MINI_QUERY_WIDGET_SUBSCRIPTION_MSG;
    }

    public static final String getURL_MINI_QUERY_WIDGET_TITLE() {
        return URL_MINI_QUERY_WIDGET_TITLE;
    }

    public static final String getURL_OPERATE_MESSAGE_SWITCH() {
        return URL_OPERATE_MESSAGE_SWITCH;
    }

    public static final String getURL_QUERY_ALL_AUTH_INFO() {
        return URL_QUERY_ALL_AUTH_INFO;
    }

    public static final String getURL_QUERY_NEW_MINIAPP_MESSAGE_INFO() {
        return URL_QUERY_NEW_MINIAPP_MESSAGE_INFO;
    }

    public static final String getURL_SHORT_CONVERT_ORIGINAL() {
        return URL_SHORT_CONVERT_ORIGINAL;
    }

    public static final String getURL_UNIQUEID() {
        return URL_UNIQUEID;
    }

    public static final String getURL_UPLOAD() {
        return URL_UPLOAD;
    }

    public static final String getURL_V8_QUERY() {
        return URL_V8_QUERY;
    }
}
