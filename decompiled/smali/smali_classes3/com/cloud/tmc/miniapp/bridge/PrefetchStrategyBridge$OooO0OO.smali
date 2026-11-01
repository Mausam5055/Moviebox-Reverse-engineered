.class public final Lcom/cloud/tmc/miniapp/bridge/PrefetchStrategyBridge$OooO0OO;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tmc/network/INetworkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/bridge/PrefetchStrategyBridge;->requestStrategy(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

.field public final synthetic OooO0O0:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lokhttp3/Response;",
            "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lokhttp3/Response;",
            "-",
            "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/PrefetchStrategyBridge$OooO0OO;->OooO00o:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/bridge/PrefetchStrategyBridge$OooO0OO;->OooO0O0:Lkotlin/jvm/functions/Function2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/lang/Exception;)V
    .locals 0

    const-string p1, "e"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/PrefetchStrategyBridge$OooO0OO;->OooO00o:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/PrefetchStrategyBridge$OooO0OO;->OooO0O0:Lkotlin/jvm/functions/Function2;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/PrefetchStrategyBridge$OooO0OO;->OooO00o:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    invoke-interface {p1, p2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
