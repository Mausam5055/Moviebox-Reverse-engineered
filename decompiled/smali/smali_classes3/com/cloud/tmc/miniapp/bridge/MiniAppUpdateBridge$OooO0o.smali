.class public final Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO0o;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge;->forceUpdateAppInfo(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/cloud/tmc/integration/net/BaseResponse<",
        "+",
        "Lcom/cloud/tmc/integration/model/AppInfoModel;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge;

.field public final synthetic OooO0O0:Lcom/cloud/tmc/integration/structure/App;

.field public final synthetic OooO0OO:Ljava/lang/String;

.field public final synthetic OooO0Oo:J

.field public final synthetic OooO0o:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

.field public final synthetic OooO0o0:Z

.field public final synthetic OooO0oO:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;JZLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO0o;->OooO0O0:Lcom/cloud/tmc/integration/structure/App;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO0o;->OooO0OO:Ljava/lang/String;

    iput-wide p4, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO0o;->OooO0Oo:J

    iput-boolean p6, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO0o;->OooO0o0:Z

    iput-object p7, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO0o;->OooO0o:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    iput-object p8, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO0o;->OooO0oO:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v1, p1

    check-cast v1, Lcom/cloud/tmc/integration/net/BaseResponse;

    const-string p1, "it"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO0o;->OooO0O0:Lcom/cloud/tmc/integration/structure/App;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO0o;->OooO0OO:Ljava/lang/String;

    iget-wide v4, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO0o;->OooO0Oo:J

    iget-boolean v6, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO0o;->OooO0o0:Z

    new-instance v7, Lcom/cloud/tmc/miniapp/bridge/OooO0O0;

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO0o;->OooO0oO:Landroid/content/Context;

    iget-object v8, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO0o;->OooO0o:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    invoke-direct {v7, v2, p1, v8}, Lcom/cloud/tmc/miniapp/bridge/OooO0O0;-><init>(Lcom/cloud/tmc/integration/structure/App;Landroid/content/Context;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    new-instance v8, Lcom/cloud/tmc/miniapp/bridge/OooO0OO;

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO0o;->OooO0O0:Lcom/cloud/tmc/integration/structure/App;

    iget-object v9, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO0o;->OooO0o:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    invoke-direct {v8, p1, v9}, Lcom/cloud/tmc/miniapp/bridge/OooO0OO;-><init>(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    invoke-static/range {v0 .. v8}, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge;->access$requestAppInfoSuccess(Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge;Lcom/cloud/tmc/integration/net/BaseResponse;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;JZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "MiniAppUpdateBridge"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO0o;->OooO0O0:Lcom/cloud/tmc/integration/structure/App;

    const-string v0, "miniAppHasUpdateRequesting"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/kernel/node/ValueStore;->putBooleanValue(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO0o;->OooO0o:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    const-string v0, "errMsg"

    const-string v1, "AppInfo request failed, please try again later: MAU10004"

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
