package com.transsion.push;

/* JADX INFO: loaded from: classes6.dex */
public final class PushConstants {
    public static final String ACTION_PUSH = "android.intent.action.TPUSH";
    public static final String ACTION_PUSH_ALARM = "tpush.intent.action.PUSH_ALARM";
    public static final String ACTION_PUSH_INIT_COMPLETE = "tpush.intent.action.INIT_COMPLETE";
    public static final String ACTION_PUSH_MSG_RECEIVER = "tpush.intent.action.TPUSH_MSG_RECEIVER";
    public static final String ACTION_PUSH_OLD = "android.intent.action.PUSH";
    public static final String ACTION_PUSH_RECEIVER = "tpush.intent.action.TPUSH_RECEIVER";

    @Deprecated
    public static final String ACTION_PUSH_TARGET_RECEIVER = "android.intent.action.TPUSH_TARGET_RECEIVER";
    public static final String ACTION_PUSH_TOPIC_STATUS = "tpush.intent.action.TOPIC_STATUS";
    public static final String ACTION_PUSH_TRACKER_ALARM = "tpush.intent.action.PUSH_TRACKER_ALARM";
    public static final String BASE_DEBUG_URL_V1 = "https://devtest-api.twibida.com/tcm/v1/instance/";
    public static final String BASE_DEBUG_URL_V2 = "https://devtest-api.twibida.com/tcm/v2/instance/";
    public static final String BASE_RELEASE_URL_V1 = "https://api.twibida.com/tcm/v1/instance/";
    public static final String BASE_RELEASE_URL_V2 = "https://api.twibida.com/tcm/v2/instance/";
    public static final String BASE_TEST_URL_V1 = "https://test-api.twibida.com/tcm/v1/instance/";
    public static final String BASE_TEST_URL_V2 = "https://test-api.twibida.com/tcm/v2/instance/";
    public static final String CONFIG_URL_PATH = "/config";
    public static final String DEBUG_POINT_REPORT = "https://mi-pre.shalltry.com/tcm/v1/sdk/point/report";
    public static final int DISPLAY_POLICY_SYSTEM_DISPLAY = 1;
    public static final int DISPLAY_POLICY_TARGET_BROADCAST = 3;
    public static final int DISPLAY_POLICY_TARGET_TRANSMIT = 2;
    public static final String EXTRA_KEY_CLIENT_ID = "extra_key_clientid";
    public static final String EXTRA_KEY_TOKEN = "extra_key_token";
    public static final String EXTRA_KEY_TOPIC_STATUS = "extra_key_topic_status";
    public static final String EXTRA_PUSH_CLICK_URLS = "extra_click_urls";
    public static final String EXTRA_PUSH_EXT_BUTTON_CLICK = "extra_noti_ext_button_click";
    public static final String EXTRA_PUSH_FROM_TPUSH_NOTI = "extra_from_tpush_noti";
    public static final String EXTRA_PUSH_IMP_URLS = "extra_imp_urls";
    public static final String EXTRA_PUSH_MESSAGE_ID = "message_id";
    public static final String EXTRA_PUSH_MESSAGE_SHOW_STATUS = "message_show_status";
    public static final String EXTRA_PUSH_MESSAGE_TYPE = "message_type";
    public static final String EXTRA_PUSH_NOTI_CLICK = "extra_noti_click";
    public static final String EXTRA_PUSH_SERVICE_TYPE = "service_type";
    public static final String EXTRA_PUSH_TRANS_DATA = "trans_data";
    public static final String EXTRA_TOKEN = "TOKEN";
    public static final String KEY_PUSH_MESSAGE = "message";
    public static final String MESSAGE_HANDLER_ACTION_SUFFIX = ".push.action";
    public static final int MESSAGE_TYPE_NOTIFICATION = 1;
    public static final int MESSAGE_TYPE_PROMOTE_INSTALL_NOTI = 5;
    public static final int MESSAGE_TYPE_PROMOTE_NOTI = 6;
    public static final int MESSAGE_TYPE_RETRACE_NOTI = 7;
    public static final int MESSAGE_TYPE_TRANSMIT = 2;
    public static final int NOTIFICATION_CUSTOM_TYPE = 3;
    public static final int NOTIFICATION_DEFAULT_TYPE = 1;
    public static final int NOTIFICATION_EX_TYPE_BIG_IMG = 3;
    public static final int NOTIFICATION_EX_TYPE_FORBID = 1;
    public static final int NOTIFICATION_EX_TYPE_TEXT = 2;

    @Deprecated
    public static final int NOTIFICATION_EX_TYPE_TXT_IMG_FOR_STYLE_4 = 4;

    @Deprecated
    public static final int NOTIFICATION_STYLE_2_TYPE = 2;

    @Deprecated
    public static final int NOTIFICATION_STYLE_TYPE = 4;

    @Deprecated
    public static final int OPEN_MODE_DOWNLOAD_APP = 3;
    public static final int OPEN_MODE_OPEN_URL = 2;
    public static final int OPEN_MODE_STARTUP_APP = 1;
    public static final String PROVIDER_FIELD_APP_ID = "appId";
    public static final String PROVIDER_FIELD_APP_KEY = "appKey";
    public static final String PROVIDER_FIELD_DESTROY = "destroy";
    public static final String PROVIDER_FIELD_NOTICE_ENABLE = "noticeEnable";
    public static final String PROVIDER_FIELD_PKG = "pkg";
    public static final String PROVIDER_FIELD_SDK_VERSION = "sdkVersion";
    public static final String PROVIDER_FIELD_SDK_VERSION_CODE = "sdkVersionCode";
    public static final String PROVIDER_FIELD_SYNC_INFO_INTERVAL = "syncInfoInterval";
    public static final String PROVIDER_FIELD_TOKEN = "token";
    public static final String PROVIDER_FIELD_UPDATE_TIME = "update_time";
    public static final String PROVIDER_VAID = "vaid";
    public static final int PUSH_NOT_SELF_DESTROYING = 1;
    public static final int PUSH_SELF_DESTROYING = 2;
    public static final String PUSH_SERVICE_TYPE_ARRIVE = "arrive";
    public static final String PUSH_SERVICE_TYPE_CHANNEL_MESSAGE = "channel_message";
    public static final String PUSH_SERVICE_TYPE_CLICK = "click";
    public static final String PUSH_SERVICE_TYPE_CONVERSION = "conversion";
    public static final String PUSH_SERVICE_TYPE_FORCE_UPDATE = "force_update";
    public static final String PUSH_SERVICE_TYPE_INIT = "init";
    public static final String PUSH_SERVICE_TYPE_REPORT_CLICK = "report_click";
    public static final String PUSH_SERVICE_TYPE_REPORT_IMP = "report_imp";
    public static final String PUSH_SERVICE_TYPE_REPORT_TRACKER = "report_tracker";
    public static final String PUSH_SERVICE_TYPE_SHOW = "show";
    public static final String PUSH_SERVICE_TYPE_SYNC_CONFIG = "sync_config";
    public static final String PUSH_SERVICE_TYPE_TARGET_MESSAGE = "message";
    public static final String PUSH_SERVICE_TYPE_TOKEN = "token";
    public static final String RELEASE_POINT_REPORT = "https://tracking.twibida.com/v1/sdk/point/report";
    public static final String RSA_PUB_KEY = "MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAKEaYIhDF/GSQZagVqAOo7UU/GqDjQBU5muTCS6qPMfAdtKOzbhRpNCJA/ZmgBxPhc8RVLPO9yiJn5g+hy+tz3cCAwEAAQ==";
    public static final String SP_CLIENT_ID_FILENAME = "sp_client_id";
    public static final String SP_FILENAME = "sp_push";
    public static final String SP_KEY_APP_CHECK_INTERVAL = "app_check_interval";
    public static final String SP_KEY_APP_CLOSE_JOB_SERVICE = "app_close_job_service";
    public static final String SP_KEY_APP_ID = "push_app_id";
    public static final String SP_KEY_APP_KEY = "push_app_key";
    public static final String SP_KEY_APP_MOBILE_UPLOAD_INTERVAL = "app_m_upload_interval";
    public static final String SP_KEY_APP_TOPIC_UNSUBSCRIBE_ALL = "app_topic_unsubscribe_all";
    public static final String SP_KEY_APP_UPLOAD_INTERVAL = "app_upload_interval";
    public static final String SP_KEY_CLIENT_ID = "push_client_id";
    public static final String SP_KEY_CONFIG = "push_config";
    public static final String SP_KEY_DESTROY_APP_IDS = "destroy_app_ids";
    public static final String SP_KEY_FCM_TOKEN = "push_token";
    public static final String SP_KEY_GROUP_ID = "push_group_id";
    public static final String SP_KEY_IMMEDIATELY_TRACK = "is_immediately_tracker";
    public static final String SP_KEY_ISDEBUG = "push_is_debug";
    public static final String SP_KEY_IS_NEXT_WITH_APP = "push_is_next_with_app";
    public static final String SP_KEY_IS_REPORT_DETAIL = "push_is_report_detail";
    public static final String SP_KEY_IS_TEST_ENV = "push_is_test_env";
    public static final String SP_KEY_MAX_NOTIFICATION_COUNT = "push_max_notification_count";
    public static final String SP_KEY_PUSHUI_CLICK_MESSAGE_IDS = "pushui_click_message_ids";
    public static final String SP_KEY_PUSHUI_MESSAGE_IDS = "pushui_message_ids";
    public static final String SP_KEY_PUSHUI_RETRACE_MESSAGE_IDS = "pushui_retrace_message_ids";
    public static final String SP_KEY_PUSH_INIT = "init";
    public static final String SP_KEY_PUSH_SWITCH = "sp_key_push_switch";
    public static final String SP_KEY_REPORT_ACTIVE_SUCCESS = "report_active_success";
    public static final String SP_KEY_REPORT_ACTIVE_TIME = "report_active_time";
    public static final String SP_KEY_REPORT_TPMS_TIME = "report_tpms_active_time";
    public static final String SP_KEY_RETRY_COUNT = "retry_count";
    public static final String SP_KEY_SELF_DESTROYING = "push_self_destroying";
    public static final String SP_KEY_SELF_DESTROYING_INTERVAL = "push_self_destroying_interval";
    public static final String SP_KEY_SELF_DESTROYING_TIME = "push_self_destroying_time";
    public static final String SP_KEY_START_POINT_REPORT = "push_start_point_report";
    public static final String SP_KEY_SUBSCRIBE_TOPICS = "topics";
    public static final String SP_KEY_SYNC_INTERVAL = "sync_interval";
    public static final String SP_KEY_TRACKER_REPORT_INTERVAL = "tracker_report_interval";
    public static final String SP_KEY_TRACKER_REPORT_TIME = "tracker_report_time";
    public static final String SP_KEY_TRACK_INSTALL = "is_track_install";
    public static final String SP_KEY_UPDATE_TOKEN_TIME = "update_token_time";
    public static final String SP_KEY_WHITE_LIST = "push_white_list";
    public static final String TEST_POINT_REPORT = "https://test-tracking.twibida.com/v1/sdk/point/report";
    public static final String TOPICS_URL_PATH = "/topics";
    public static final String TOPIC_SUBSCRIBE = "subscribe";
    public static final String TOPIC_UNSUBSCRIBE = "unsubscribe";
    public static final String TPMS_URL_PATH = "tpms";
    public static final String TPUSH_ACTION = "tpush.intent.action.TPUSH";
    public static final String TPUSH_APP_ID = "tpush_app_id";
    public static final String TPUSH_APP_KEY = "tpush_app_key";
    public static final String TPUSH_OPEN_DEBUG = "tpush_open_debug";
    public static final String TPUSH_TEST_ENV = "tpush_test_env";
    public static final int TYPE_CHANNEL = 0;
    public static final int TYPE_TARGET = 1;
    public static final String UPDATE_URL_PATH = "/report";
}
