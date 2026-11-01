.class public final Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooOO0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/prepare/callback/OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge;->loadSubPackage(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

.field public final synthetic OooO0O0:Lcom/google/gson/JsonObject;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/google/gson/JsonObject;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooOO0;->OooO00o:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooOO0;->OooO0O0:Lcom/google/gson/JsonObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooOO0;->OooO00o:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    :cond_0
    return-void
.end method

.method public OooO00o(Ljava/lang/String;)V
    .locals 2

    const-string v0, "errorMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooOO0;->OooO0O0:Lcom/google/gson/JsonObject;

    const-string v1, "errMsg"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooOO0;->OooO00o:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooOO0;->OooO0O0:Lcom/google/gson/JsonObject;

    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    :cond_0
    return-void
.end method
