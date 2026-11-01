.class public Lcom/hisavana/pangle/check/ExistsCheck;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hisavana/common/interfacz/IBaseAdSummary;


# static fields
.field public static final PANGLE_TAG:Ljava/lang/String; = "pangle_log"

.field private static a:I

.field private static b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;->appId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;

    move-result-object p0

    sget-boolean v0, Lcom/hisavana/pangle/check/ExistsCheck;->b:Z

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;->debugLog(Z)Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;

    move-result-object p0

    sget v0, Lcom/hisavana/pangle/check/ExistsCheck;->a:I

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;->appIcon(I)Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;->supportMultiProcess(Z)Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;

    move-result-object p0

    sget-boolean v1, Lcom/hisavana/common/bean/AppStartInfo;->userConsent:Z

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;->setGDPRConsent(I)Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;

    move-result-object p0

    sget-boolean v1, Lcom/hisavana/common/bean/AppStartInfo;->ageRestrictedUser:Z

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;->setPAConsent(I)Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;->build()Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;

    move-result-object p0

    return-object p0
.end method

.method public static initAdSource(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$PAGInitCallback;)V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "pangle_log"

    const-string v2, "initAdSource"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk;->isInitSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$PAGInitCallback;->success()V

    :cond_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/hisavana/pangle/check/ExistsCheck;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;

    move-result-object p0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk;->init(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$PAGInitCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "sdk_init"

    const-string v2, "ExistsCheck --> Pangle--> initialize exception"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x7531

    invoke-interface {p1, v0, p0}, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$PAGInitCallback;->fail(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getBanner(Landroid/content/Context;Lcom/hisavana/common/bean/Network;II)Lcom/hisavana/common/base/BaseBanner;
    .locals 0

    new-instance p4, Lcom/hisavana/pangle/executer/PangleBanner;

    invoke-direct {p4, p1, p2, p3}, Lcom/hisavana/pangle/executer/PangleBanner;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V

    return-object p4
.end method

.method public getInterstitial(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseInterstitial;
    .locals 1

    new-instance v0, Lcom/hisavana/pangle/executer/PangleInterstitial;

    invoke-direct {v0, p1, p2}, Lcom/hisavana/pangle/executer/PangleInterstitial;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    return-object v0
.end method

.method public synthetic getInterstitialRewarded(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseVideo;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/hisavana/common/interfacz/a;->a(Lcom/hisavana/common/interfacz/IBaseAdSummary;Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseVideo;

    move-result-object p1

    return-object p1
.end method

.method public getNative(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)Lcom/hisavana/common/base/BaseNative;
    .locals 1

    new-instance v0, Lcom/hisavana/pangle/executer/PangleNative;

    invoke-direct {v0, p1, p2, p3}, Lcom/hisavana/pangle/executer/PangleNative;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V

    return-object v0
.end method

.method public getNativeViewHolder()Lcom/hisavana/common/base/BaseNativeViewHolder;
    .locals 1

    new-instance v0, Lcom/hisavana/pangle/holder/NativeAdViewHolder;

    invoke-direct {v0}, Lcom/hisavana/pangle/holder/NativeAdViewHolder;-><init>()V

    return-object v0
.end method

.method public getQueryPrice()Lcom/hisavana/common/base/BaseQueryPrice;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSplash(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseSplash;
    .locals 1

    new-instance v0, Lcom/hisavana/pangle/executer/PangleSplash;

    invoke-direct {v0, p1, p2}, Lcom/hisavana/pangle/executer/PangleSplash;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    return-object v0
.end method

.method public getVideo(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseVideo;
    .locals 1

    new-instance v0, Lcom/hisavana/pangle/executer/PangleVideo;

    invoke-direct {v0, p1, p2}, Lcom/hisavana/pangle/executer/PangleVideo;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/hisavana/common/bean/AdSourceConfig;)V
    .locals 3

    const-string v0, "pangle_log"

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p2, Lcom/hisavana/common/bean/AdSourceConfig;->isDebug:Z

    sput-boolean p1, Lcom/hisavana/pangle/check/ExistsCheck;->b:Z

    iget p1, p2, Lcom/hisavana/common/bean/AdSourceConfig;->appIconId:I

    sput p1, Lcom/hisavana/pangle/check/ExistsCheck;->a:I

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pangle initialize, appId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/hisavana/common/bean/AdSourceConfig;->pangleAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isClosePangleWebFileLock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p2, Lcom/hisavana/common/bean/AdSourceConfig;->isClosePangleWebFileLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p2, Lcom/hisavana/common/bean/AdSourceConfig;->isClosePangleWebFileLock:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string v1, "close Pangle Web File Lock"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk;->closeMultiWebViewFileLock()V

    :cond_1
    iget-object p1, p2, Lcom/hisavana/common/bean/AdSourceConfig;->pangleAppId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init Pangle in advance, pangleAppID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/hisavana/common/bean/AdSourceConfig;->pangleAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p2, Lcom/hisavana/common/bean/AdSourceConfig;->pangleAppId:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/hisavana/pangle/check/ExistsCheck;->initAdSource(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$PAGInitCallback;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string p2, "Pangle initialize exception"

    invoke-virtual {p1, v0, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
