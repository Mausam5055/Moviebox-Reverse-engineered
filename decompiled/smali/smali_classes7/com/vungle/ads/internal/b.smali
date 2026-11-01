.class public final Lcom/vungle/ads/internal/b;
.super Ljava/lang/Object;


# static fields
.field public static final AD_CLOSE:Ljava/lang/String; = "ad.close"

.field public static final AD_DURATION_KEY:Ljava/lang/String; = "{{{dur}}}"

.field public static final AD_INDEX_FILE_NAME:Ljava/lang/String; = "index.html"

.field public static final AD_LOAD_DURATION:Ljava/lang/String; = "ad.loadDuration"

.field public static final AD_LOAD_DURATION_KEY:Ljava/lang/String; = "{{{time_dl}}}"

.field public static final AD_MRAID_JS_FILE_NAME:Ljava/lang/String; = "mraid.js"

.field public static final AD_VIEWED_NOT_FIRED:J = 0x2L

.field public static final AD_VISIBILITY_INVISIBLE:Ljava/lang/String; = "1"

.field public static final AD_VISIBILITY_VISIBLE:Ljava/lang/String; = "2"

.field public static final AD_VISIBILITY_VISIBLE_LATER:Ljava/lang/String; = "3"

.field public static final BOTH_NOT_FIRED:J = 0x3L

.field public static final CHECKPOINT_0:Ljava/lang/String; = "checkpoint.0"

.field public static final CLICK_URL:Ljava/lang/String; = "clickUrl"

.field public static final COORDINATE:Ljava/lang/String; = "coordinate"

.field public static final CP_0_NOT_FIRED:J = 0x1L

.field public static final CTA_URL:Ljava/lang/String; = "cta_url"

.field public static final DEEPLINK_CLICK:Ljava/lang/String; = "deeplink.click"

.field public static final DEEPLINK_SUCCESS_KEY:Ljava/lang/String; = "{{{is_success}}}"

.field public static final DEFAULT_ADS_ENDPOINT:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final DEFAULT_ERROR_LOGS_ENDPOINT:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final DEFAULT_METRICS_ENDPOINT:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final DEVICE_VOLUME_KEY:Ljava/lang/String; = "{{{vol}}}"

.field public static final IMPRESSION:Ljava/lang/String; = "impression"

.field public static final INSTANCE:Lcom/vungle/ads/internal/b;

.field public static final KEY_MAIN_VIDEO:Ljava/lang/String; = "MAIN_VIDEO"

.field public static final LOAD_AD:Ljava/lang/String; = "load_ad"

.field public static final MRAID_JS_FILE_NAME:Ljava/lang/String; = "mraid.min.js"

.field public static final NETWORK_OPERATOR_KEY:Ljava/lang/String; = "{{{carrier}}}"

.field public static final PLACEMENT_TYPE_APP_OPEN:Ljava/lang/String; = "appopen"

.field public static final PLACEMENT_TYPE_BANNER:Ljava/lang/String; = "banner"

.field public static final PLACEMENT_TYPE_INTERSTITIAL:Ljava/lang/String; = "interstitial"

.field public static final PLACEMENT_TYPE_IN_LINE:Ljava/lang/String; = "in_line"

.field public static final PLACEMENT_TYPE_MREC:Ljava/lang/String; = "mrec"

.field public static final PLACEMENT_TYPE_NATIVE:Ljava/lang/String; = "native"

.field public static final PLACEMENT_TYPE_REWARDED:Ljava/lang/String; = "rewarded"

.field public static final REMOTE_PLAY_KEY:Ljava/lang/String; = "{{{remote_play}}}"

.field public static final SESSION_ID:Ljava/lang/String; = "{{{session_id}}}"

.field public static final TEMPLATE_TYPE_BANNER:Ljava/lang/String; = "banner"

.field public static final TEMPLATE_TYPE_FULLSCREEN:Ljava/lang/String; = "fullscreen"

.field public static final TEMPLATE_TYPE_IN_LINE:Ljava/lang/String; = "in_line"

.field public static final TEMPLATE_TYPE_MREC:Ljava/lang/String; = "mrec"

.field public static final TEMPLATE_TYPE_NATIVE:Ljava/lang/String; = "native"

.field public static final TIMEOUT:I = 0x3c

.field public static final VIDEO_LENGTH_KEY:Ljava/lang/String; = "{{{vlen}}}"

.field public static final VIDEO_LENGTH_TPAT:Ljava/lang/String; = "video.length"

.field public static final WIN_NOTIFICATION:Ljava/lang/String; = "win-notification"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vungle/ads/internal/b;

    invoke-direct {v0}, Lcom/vungle/ads/internal/b;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/b;->INSTANCE:Lcom/vungle/ads/internal/b;

    const-string v0, "https://adx.ads.vungle.com/api/ads"

    sput-object v0, Lcom/vungle/ads/internal/b;->DEFAULT_ADS_ENDPOINT:Ljava/lang/String;

    const-string v0, "https://logs.ads.vungle.com/sdk/error_logs"

    sput-object v0, Lcom/vungle/ads/internal/b;->DEFAULT_ERROR_LOGS_ENDPOINT:Ljava/lang/String;

    const-string v0, "https://logs.ads.vungle.com/sdk/metrics"

    sput-object v0, Lcom/vungle/ads/internal/b;->DEFAULT_METRICS_ENDPOINT:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
