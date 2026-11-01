.class public final Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO;
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
        "Ljava/lang/Object;",
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

.field public final synthetic OooO0o0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;JLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO;->OooO00o:Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO;->OooO0O0:Lcom/cloud/tmc/integration/structure/App;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO;->OooO0OO:Ljava/lang/String;

    iput-wide p4, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO;->OooO0Oo:J

    iput-object p6, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO;->OooO0o0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v1, p1

    check-cast v1, Lcom/cloud/tmc/integration/net/BaseResponse;

    const-string p1, "it"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO;->OooO00o:Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO;->OooO0O0:Lcom/cloud/tmc/integration/structure/App;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO;->OooO0OO:Ljava/lang/String;

    iget-wide v4, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO;->OooO0Oo:J

    new-instance v6, Lcom/cloud/tmc/miniapp/bridge/OooO0o;

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO;->OooO0o0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    invoke-direct {v6, v2, p1}, Lcom/cloud/tmc/miniapp/bridge/OooO0o;-><init>(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge;->access$requestAppInfoFailed(Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge;Lcom/cloud/tmc/integration/net/BaseResponse;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;JLkotlin/jvm/functions/Function0;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
