.class public Lcom/bytedance/sdk/openadsdk/core/uA/Sj/Sj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static volatile Sj:Lcom/bytedance/sdk/openadsdk/core/uA/Sj/Sj;


# instance fields
.field private final sP:Lcom/bytedance/sdk/openadsdk/core/uA/Sj/sP;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/uA/Sj/sP;->Sj(Landroid/app/Application;)Lcom/bytedance/sdk/openadsdk/core/uA/Sj/sP;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/uA/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/uA/Sj/sP;

    return-void
.end method

.method public static Sj(Landroid/app/Application;)Lcom/bytedance/sdk/openadsdk/core/uA/Sj/Sj;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/uA/Sj/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/uA/Sj/Sj;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/uA/Sj/Sj;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/uA/Sj/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/uA/Sj/Sj;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/uA/Sj/Sj;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/uA/Sj/Sj;-><init>(Landroid/app/Application;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/uA/Sj/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/uA/Sj/Sj;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/uA/Sj/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/uA/Sj/Sj;

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/uA/Sj/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/uA/Sj/Sj;

    return-object p0
.end method


# virtual methods
.method public Sj(Ljava/lang/String;JI)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/uA/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/uA/Sj/sP;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/uA/Sj/sP;->Sj(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "null"

    return-object p1
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/uA/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/uA/Sj/sP;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/uA/Sj/sP;->Sj(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/uA/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/uA/Sj/sP;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/uA/Sj/sP;->sP(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
