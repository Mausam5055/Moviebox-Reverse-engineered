.class public Lcom/cloud/tmc/ad/athena/PostConstant;
.super Ljava/lang/Object;


# static fields
.field public static final EVENT:Ljava/lang/String; = "ad_ssp_show"

.field public static final EVENT_AD_FILLING_RESULT:Ljava/lang/String; = "ad_filling_result"

.field public static final EVENT_AD_PS_POPUP_CLICK:Ljava/lang/String; = "popup_click"

.field public static final EVENT_AD_PS_POPUP_IMP:Ljava/lang/String; = "popup_imp"

.field public static final EVENT_AD_SSP_CLICK:Ljava/lang/String; = "ad_ssp_click"

.field public static final EVENT_AD_SSP_CLOSE_AD:Ljava/lang/String; = "ad_ssp_close_ad"

.field public static final EVENT_AD_SSP_REQUEST:Ljava/lang/String; = "ad_ssp_request"

.field public static final EVENT_AD_SSP_REQUEST_PS:Ljava/lang/String; = "ad_ssp_request_ps_material"

.field public static final EVENT_AD_SSP_RETURN:Ljava/lang/String; = "ad_ssp_return"

.field public static final EVENT_AD_SSP_RETURN_PS:Ljava/lang/String; = "ad_ssp_return_ps_material"

.field public static final EVENT_AD_WEB_COMPLETE:Ljava/lang/String; = "ad_web_complete"

.field public static final EVENT_CLD_REQUEST:Ljava/lang/String; = "ad_cld_request"

.field public static final EVENT_CLD_RETURN:Ljava/lang/String; = "ad_cld_return"

.field public static final EVENT_DEEPLINK:Ljava/lang/String; = "deeplink"

.field public static final EVENT_FORM_INFO_SET:Ljava/lang/String; = "form_infor_set"

.field public static final EVENT_IMG:Ljava/lang/String; = "material_load"

.field public static final EVENT_MEDIA_CALL_REQUEST:Ljava/lang/String; = "media_call_request"

.field public static final EVENT_WEBVIEW_REDIRECT:Ljava/lang/String; = "ad_web_callback"

.field private static brand:Ljava/lang/String; = null

.field private static make:Ljava/lang/String; = null

.field private static mcc:Ljava/lang/String; = null

.field private static mccInteger:Ljava/util/concurrent/atomic/AtomicInteger; = null

.field private static mnc:Ljava/lang/String; = null

.field private static mncInteger:Ljava/util/concurrent/atomic/AtomicInteger; = null

.field private static model:Ljava/lang/String; = null

.field private static osVersion:Ljava/lang/String; = null

.field private static screenDensity:I = -0x1

.field private static screenHeight:I = -0x1

.field private static screenWidth:I = -0x1

.field private static sdkVersion:Ljava/lang/String; = null

.field private static sdkVersionCode:I = 0x0

.field private static sessionId:Ljava/lang/String; = null

.field private static type:I = -0x1

.field private static userAgent:Ljava/lang/String;

.field private static versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->mccInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->mncInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBrand()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->brand:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->brand:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public static getMake()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->make:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->make:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->make:Ljava/lang/String;

    return-object v0
.end method

.method public static getMcc()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->mcc:Ljava/lang/String;

    sget-object v1, Lcom/cloud/tmc/ad/athena/PostConstant;->mccInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->checkCanRetryInTimes(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/core/deviceinfo/DeviceInfo;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->mcc:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->mcc:Ljava/lang/String;

    return-object v0
.end method

.method public static getMnc()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->mnc:Ljava/lang/String;

    sget-object v1, Lcom/cloud/tmc/ad/athena/PostConstant;->mncInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->checkCanRetryInTimes(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/core/deviceinfo/DeviceInfo;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->mnc:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->mnc:Ljava/lang/String;

    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->model:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->model:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->model:Ljava/lang/String;

    return-object v0
.end method

.method public static getOsVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->osVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getSystemVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->osVersion:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getScreenDensity()I
    .locals 2

    sget v0, Lcom/cloud/tmc/ad/athena/PostConstant;->screenDensity:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/transsion/core/utils/e;->b()F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/cloud/tmc/ad/athena/PostConstant;->screenDensity:I

    :cond_0
    sget v0, Lcom/cloud/tmc/ad/athena/PostConstant;->screenDensity:I

    return v0
.end method

.method public static getScreenHeight()I
    .locals 2

    sget v0, Lcom/cloud/tmc/ad/athena/PostConstant;->screenHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/transsion/core/utils/e;->e()I

    move-result v0

    sput v0, Lcom/cloud/tmc/ad/athena/PostConstant;->screenHeight:I

    :cond_0
    sget v0, Lcom/cloud/tmc/ad/athena/PostConstant;->screenHeight:I

    return v0
.end method

.method public static getScreenWidth()I
    .locals 2

    sget v0, Lcom/cloud/tmc/ad/athena/PostConstant;->screenWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/transsion/core/utils/e;->f()I

    move-result v0

    sput v0, Lcom/cloud/tmc/ad/athena/PostConstant;->screenWidth:I

    :cond_0
    sget v0, Lcom/cloud/tmc/ad/athena/PostConstant;->screenWidth:I

    return v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->sdkVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1.0.61.06"

    sput-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->sdkVersion:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getSdkVersionCode()I
    .locals 1

    sget v0, Lcom/cloud/tmc/ad/athena/PostConstant;->sdkVersionCode:I

    if-nez v0, :cond_0

    const/16 v0, 0x425

    sput v0, Lcom/cloud/tmc/ad/athena/PostConstant;->sdkVersionCode:I

    :cond_0
    sget v0, Lcom/cloud/tmc/ad/athena/PostConstant;->sdkVersionCode:I

    return v0
.end method

.method public static getSessionId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getUUID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->sessionId:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public static getType()I
    .locals 2

    sget v0, Lcom/cloud/tmc/ad/athena/PostConstant;->type:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/transsion/core/deviceinfo/DeviceInfo;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput v0, Lcom/cloud/tmc/ad/athena/PostConstant;->type:I

    :cond_1
    sget v0, Lcom/cloud/tmc/ad/athena/PostConstant;->type:I

    return v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->userAgent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/tmc/ad/utils/UserAgentUtil;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->userAgent:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->versionName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/core/utils/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->versionName:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->versionName:Ljava/lang/String;

    return-object v0
.end method
