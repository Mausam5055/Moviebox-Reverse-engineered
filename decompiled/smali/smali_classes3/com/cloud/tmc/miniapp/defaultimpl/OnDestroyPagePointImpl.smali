.class public final Lcom/cloud/tmc/miniapp/defaultimpl/OnDestroyPagePointImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/point/OnDestroyPagePoint;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/defaultimpl/OnDestroyPagePointImpl$OooO00o;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/defaultimpl/OnDestroyPagePointImpl$OooO00o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/defaultimpl/OnDestroyPagePointImpl$OooO00o;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/defaultimpl/OnDestroyPagePointImpl$OooO00o;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/defaultimpl/OnDestroyPagePointImpl;->Companion:Lcom/cloud/tmc/miniapp/defaultimpl/OnDestroyPagePointImpl$OooO00o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/kernel/extension/ExtensionManager;)V
    .locals 1

    const-string v0, "page"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    :try_start_0
    const-string v0, "offKeyboardHeightChange"

    invoke-interface {p3, p2, v0}, Lcom/cloud/tmc/kernel/extension/ExtensionManager;->getBridgeExtensionByAction(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/BridgeExtension;

    move-result-object p3

    instance-of v0, p3, Lcom/cloud/tmc/integration/bridge/KeyboardBridge;

    if-eqz v0, :cond_0

    check-cast p3, Lcom/cloud/tmc/integration/bridge/KeyboardBridge;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Lcom/cloud/tmc/integration/bridge/KeyboardBridge;->offKeyboardHeightChange(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onFinalized()V
    .locals 2

    const-string v0, "OnDestroyPagePointImpl"

    const-string v1, "onFinalized"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInitialized()V
    .locals 2

    const-string v0, "OnDestroyPagePointImpl"

    const-string v1, "onInitialized"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
