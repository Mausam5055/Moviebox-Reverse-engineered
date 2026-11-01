.class public Lcom/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService$Sj;
    }
.end annotation


# static fields
.field public static volatile Sj:Z

.field private static TKC:Z


# instance fields
.field private final sP:Landroid/os/Binder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService$Sj;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService;->sP:Landroid/os/Binder;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService;->sP:Landroid/os/Binder;

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/dNu;->sP(Landroid/content/Context;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService;->Sj:Z

    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService;->TKC:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/utils/uA;->sP()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService$1;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService;->TKC:Z

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
