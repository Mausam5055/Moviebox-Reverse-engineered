.class public Lcom/cloud/tmc/ad/TaErrorCode;
.super Ljava/lang/Object;


# static fields
.field public static final ADMEDIA_NO_FILL:Lcom/cloud/tmc/ad/TaErrorCode;

.field private static final ADMEDIA_NO_FILL_CODE:I = 0x3ec

.field private static final ADM_SCALE_IS_WRONG:I = 0x3f8

.field public static final ADM_SCALE_NOT_FIT:Lcom/cloud/tmc/ad/TaErrorCode;

.field private static final AD_BE_FILTER_CODE:I = 0x3e9

.field public static final AD_CONFIG_SILENCE:Lcom/cloud/tmc/ad/TaErrorCode;

.field private static final AD_CONFIG_SILENCE_CODE:I = 0x3f6

.field public static final AD_DATA_PARSE_RESPONSE_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

.field private static final AD_DATA_PARSE_RESPONSE_ERROR_CODE:I = 0x3f7

.field public static final AD_EXPIRE:Lcom/cloud/tmc/ad/TaErrorCode;

.field private static final AD_IS_EMPTY_CODE:I = 0x232b

.field public static final AD_NOT_AVALID:Lcom/cloud/tmc/ad/TaErrorCode;

.field public static final AD_NO_CACHED:Lcom/cloud/tmc/ad/TaErrorCode;

.field private static final CONFIG_IS_NOT_EXIT:I = 0x3f9

.field public static final CONFIG_IS_NOT_EXIT_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

.field private static final CONFIG_SHOW_COUNT_LIMIT:I = 0x3fa

.field public static final CONFIG_SHOW_COUNT_LIMIT_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

.field public static final HTTP_RESPONSE_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

.field private static final HTTP_RESPONSE_ERROR_CODE:I = 0x232e

.field public static final INVALID_CRVT_CODE:I = 0x2332

.field public static final INVALID_CRVT_TYPE:Lcom/cloud/tmc/ad/TaErrorCode;

.field public static final INVALID_URL:Lcom/cloud/tmc/ad/TaErrorCode;

.field private static final INVALID_URL_CODE:I = 0x3ee

.field public static final LOAD_AD_TIMEOUT_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

.field public static final NETWORK_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

.field private static final NETWORK_ERROR_CODE:I = 0x2328

.field public static final NOT_ALLOW_DEEPLINK:Lcom/cloud/tmc/ad/TaErrorCode;

.field public static final NOT_ALLOW_DEEPLINK_CODE:I = 0x3f4

.field public static final NOT_SELF_AD:Lcom/cloud/tmc/ad/TaErrorCode;

.field private static final NOT_SELF_AD_CODE:I = 0x3f3

.field public static final NO_AD:Lcom/cloud/tmc/ad/TaErrorCode;

.field private static final NO_AD_CODE:I = 0x3ea

.field public static final PARSE_BITMAP_ERROR:I = 0x2335

.field public static final PLATFORM_IS_NOT_EXIT:Lcom/cloud/tmc/ad/TaErrorCode;

.field private static final PLATFORM_NOT_EXIT:I = 0x3f1

.field public static final REGISTER_VIEW_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

.field private static final REGISTER_VIEW_ERROR_CODE:I = 0x3ed

.field private static final RESPONSE_ADT_DIFFRENT_CODE:I = 0x2334

.field public static final RESPONSE_ADT_DIFFRENT_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

.field public static final RESPONSE_AD_IS_EMPTY:Lcom/cloud/tmc/ad/TaErrorCode;

.field private static final RESPONSE_PMID_DIFFRENT_CODE:I = 0x2333

.field public static final RESPONSE_PMID_DIFFRENT_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

.field public static final SELF_AD_BE_FILTER:Lcom/cloud/tmc/ad/TaErrorCode;

.field public static final SENSITIVE_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

.field private static final SENSITIVE_ERROR_CODE:I = 0x3eb

.field private static final SPLASH_AD_EXPIRED:I = 0x3ef

.field private static final SPLASH_AD_NOT_AVALID:I = 0x3f5

.field private static final SPLASH_AD_NO_CACHED:I = 0x3f0

.field public static final SUCCESS_CODE:I = 0xc8

.field public static final TIMEOUT_ERROR_CODE:I = 0x232f

.field public static final UNKNOWN_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

.field public static final UNKNOWN_ERROR_CODE:I = 0x2710

.field public static final UNKNOWN_ERROR_CODE_1:I = 0x2711

.field public static final UNKNOWN_ERROR_CODE_2:I = 0x2712


# instance fields
.field private final errorCode:I

.field private final errorMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    const/16 v1, 0x2328

    const-string v2, "Network Error"

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->NETWORK_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    const-string v1, "request\'s pmid is diffrent with response\'s"

    const/16 v2, 0x2333

    invoke-direct {v0, v2, v1}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->RESPONSE_PMID_DIFFRENT_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    const-string v1, "request\'s adt is diffrent with response\'s"

    invoke-direct {v0, v2, v1}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->RESPONSE_ADT_DIFFRENT_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    const/16 v1, 0x232b

    const-string v2, "Response Ad is empty"

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->RESPONSE_AD_IS_EMPTY:Lcom/cloud/tmc/ad/TaErrorCode;

    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    const/16 v1, 0x232e

    const-string v2, "http response is empty"

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->HTTP_RESPONSE_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    const/16 v1, 0x2332

    const-string v2, "Invalid Crvt type."

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->INVALID_CRVT_TYPE:Lcom/cloud/tmc/ad/TaErrorCode;

    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    const/16 v1, 0x3e9

    const-string v2, "ad be filter"

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->SELF_AD_BE_FILTER:Lcom/cloud/tmc/ad/TaErrorCode;

    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    const/16 v1, 0x3f3

    const-string v2, "not self ad error"

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->NOT_SELF_AD:Lcom/cloud/tmc/ad/TaErrorCode;

    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    const/16 v1, 0x3ea

    const-string v2, "no ad show, set visible gone"

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->NO_AD:Lcom/cloud/tmc/ad/TaErrorCode;

    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    const/16 v1, 0x3eb

    const-string v2, "Sensitive AD"

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->SENSITIVE_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    const/16 v1, 0x3ec

    const-string v2, "Admedia can not provide ad to this device, please contact the ad manager."

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->ADMEDIA_NO_FILL:Lcom/cloud/tmc/ad/TaErrorCode;

    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    const/16 v1, 0x3ed

    const-string v2, "register view error"

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->REGISTER_VIEW_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    const/16 v1, 0x3ee

    const-string v2, "Invalid url."

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->INVALID_URL:Lcom/cloud/tmc/ad/TaErrorCode;

    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    const/16 v1, 0x3ef

    const-string v2, "ad expired"

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->AD_EXPIRE:Lcom/cloud/tmc/ad/TaErrorCode;

    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    const/16 v1, 0x3f0

    const-string v2, "no ad"

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->AD_NO_CACHED:Lcom/cloud/tmc/ad/TaErrorCode;

    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    const/16 v1, 0x3f5

    const-string v2, "ad not avalid"

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->AD_NOT_AVALID:Lcom/cloud/tmc/ad/TaErrorCode;

    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    const/16 v1, 0x3f6

    const-string v2, "ad is at silence"

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->AD_CONFIG_SILENCE:Lcom/cloud/tmc/ad/TaErrorCode;

    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    const/16 v1, 0x3f1

    const-string v2, "ad platform is not exit."

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->PLATFORM_IS_NOT_EXIT:Lcom/cloud/tmc/ad/TaErrorCode;

    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    const/16 v1, 0x2710

    const-string v2, "Unkown error."

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->UNKNOWN_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    const/16 v1, 0x3f4

    const-string v2, "Not_allow_deeplink"

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->NOT_ALLOW_DEEPLINK:Lcom/cloud/tmc/ad/TaErrorCode;

    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    const/16 v1, 0x3f8

    const-string v2, "adm scales is not fit"

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->ADM_SCALE_NOT_FIT:Lcom/cloud/tmc/ad/TaErrorCode;

    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    const/16 v1, 0x3f7

    const-string v2, "ad data parse response error"

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->AD_DATA_PARSE_RESPONSE_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    const/16 v1, 0x3f9

    const-string v2, "code seat is not exit"

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->CONFIG_IS_NOT_EXIT_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    const/16 v1, 0x3fa

    const-string v2, "code seat show count limit"

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->CONFIG_SHOW_COUNT_LIMIT_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    const/16 v1, 0x232f

    const-string v2, "load ad time out"

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->LOAD_AD_TIMEOUT_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "empty msg"

    :cond_0
    iput p1, p0, Lcom/cloud/tmc/ad/TaErrorCode;->errorCode:I

    iput-object p2, p0, Lcom/cloud/tmc/ad/TaErrorCode;->errorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/ad/TaErrorCode;->errorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/TaErrorCode;->errorMessage:Ljava/lang/String;

    return-object v0
.end method
