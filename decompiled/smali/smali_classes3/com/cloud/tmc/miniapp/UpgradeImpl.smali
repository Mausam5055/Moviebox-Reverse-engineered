.class public final Lcom/cloud/tmc/miniapp/UpgradeImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/proxy/platform/IUpgradeProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/UpgradeImpl;->showFwUpdateTipsDialog$lambda$0(Landroid/content/Context;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Ljava/lang/String;)V

    return-void
.end method

.method private static final showFwUpdateTipsDialog$lambda$0(Landroid/content/Context;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Ljava/lang/String;)V
    .locals 3

    const-string v0, "$prepareCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.hilauncher.upgrade"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.XOSLauncher.upgrade"

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;->showUpgradeHintPrompt(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->killActivity(Landroid/content/Context;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public showFwUpdateTipsDialog(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V
    .locals 1

    const-string v0, "prepareCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/cloud/tmc/miniapp/k;

    invoke-direct {v0, p1, p3, p2}, Lcom/cloud/tmc/miniapp/k;-><init>(Landroid/content/Context;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method
