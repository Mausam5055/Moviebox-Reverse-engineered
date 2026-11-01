.class public final Lcom/cloud/tmc/miniapp/bridge/OooO0OO;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/integration/structure/App;

.field public final synthetic OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/OooO0OO;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/bridge/OooO0OO;->OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/OooO0OO;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    const-string v1, "miniAppHasUpdateRequesting"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/node/ValueStore;->putBooleanValue(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/OooO0OO;->OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    const-string v1, "errMsg"

    const-string v2, "AppInfo request failed, please try again later: MAU10004"

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
