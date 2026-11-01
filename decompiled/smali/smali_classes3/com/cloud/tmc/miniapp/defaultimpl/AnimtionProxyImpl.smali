.class public final Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/proxy/AnimtionProxy;


# instance fields
.field public final OooO00o:Ljava/lang/String;

.field public final OooO0O0:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AnimtionProxyImpl"

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;->OooO00o:Ljava/lang/String;

    new-instance v0, Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl$OooO00o;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;->OooO0O0:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getMemoryInfo(Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;Landroid/content/Context;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;->OooO00o(Landroid/content/Context;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final OooO00o()I
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;->OooO0O0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final OooO00o(Landroid/content/Context;)I
    .locals 3

    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/ActivityManager;

    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    long-to-float p1, v0

    const/high16 v0, 0x4e800000

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;->OooO00o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current device memory size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " GB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    double-to-float p1, v0

    float-to-int p1, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;->OooO00o:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public enableAnimation()Z
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;->isLowClient()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public enableLoadingAnimation()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    const-string v2, "miniLogoAnimateConfig"

    const-string v3, "{\"miniAnimateEnable\":true,\"loadingAnimMemorySize\":2}"

    invoke-virtual {v1, v2, v3}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->getMiniAnimateEnable()Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;->OooO00o()I

    move-result v2

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->getLoadingAnimMemorySize()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    return v0

    :goto_1
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;->OooO00o:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;->OooO00o:Ljava/lang/String;

    return-object v0
.end method

.method public isLowClient()Z
    .locals 5

    const-class v0, Lcom/cloud/tmc/kernel/service/ConfigService;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/service/ConfigService;

    const-string v1, "enableAnimMemorySize"

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;->OooO00o:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;->OooO00o()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current device memory size format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " GB"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;->OooO00o()I

    move-result v1

    if-gt v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
