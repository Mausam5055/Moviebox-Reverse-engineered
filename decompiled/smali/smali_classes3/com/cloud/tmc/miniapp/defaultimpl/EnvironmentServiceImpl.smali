.class public final Lcom/cloud/tmc/miniapp/defaultimpl/EnvironmentServiceImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/service/EnvironmentService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public defaultPlatform()Ljava/lang/String;
    .locals 1

    const-string v0, "TMC"

    return-object v0
.end method

.method public getAppLanguage()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/LanguageUtils;->getAppContextLanguage()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/AppUtils;->getAppName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAppName()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getApplicationContext()Landroid/app/Application;
    .locals 1

    invoke-static {}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getSApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public getLpid()I
    .locals 1

    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->getPid()I

    move-result v0

    return v0
.end method

.method public getProductVersion()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/AppUtils;->getAppVersionName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAppVersionName()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/defaultimpl/EnvironmentServiceImpl;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "applicationContext.resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTopActivity()Ljava/lang/ref/WeakReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
