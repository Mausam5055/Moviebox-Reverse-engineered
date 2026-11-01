.class public final Lcom/cloud/tmc/render/DefaultPageEventCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;
.implements Lcom/cloud/tmc/render/IRegisterEngineRouter;
.implements Lcom/cloud/tmc/render/IRegisterPageEventCallback;
.implements Lcom/cloud/tmc/render/IRegisterRenderId;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B7\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0006H\u0016J\u001a\u0010\'\u001a\u00020%2\u0008\u0010(\u001a\u0004\u0018\u00010)2\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0012\u0010*\u001a\u00020%2\u0008\u0010+\u001a\u0004\u0018\u00010,H\u0016J\u0012\u0010-\u001a\u00020%2\u0008\u0010.\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010/\u001a\u00020%H\u0016J\u0012\u00100\u001a\u00020%2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u001c\u00101\u001a\u00020%2\u0008\u00102\u001a\u0004\u0018\u00010)2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\u0010\u00103\u001a\u00020%2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010 \u00a8\u00064"
    }
    d2 = {
        "Lcom/cloud/tmc/render/DefaultPageEventCallback;",
        "Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;",
        "Lcom/cloud/tmc/render/IRegisterEngineRouter;",
        "Lcom/cloud/tmc/render/IRegisterPageEventCallback;",
        "Lcom/cloud/tmc/render/IRegisterRenderId;",
        "workerId",
        "",
        "renderId",
        "pageEventCallback",
        "Lcom/cloud/tmc/kernel/render/IPageEventCallback;",
        "bridgeDispatcher",
        "Lcom/cloud/tmc/worker/dispatch/IBridgeDispatch;",
        "engineRouter",
        "Lcom/cloud/tmc/kernel/engine/EngineRouter;",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/render/IPageEventCallback;Lcom/cloud/tmc/worker/dispatch/IBridgeDispatch;Lcom/cloud/tmc/kernel/engine/EngineRouter;)V",
        "getBridgeDispatcher",
        "()Lcom/cloud/tmc/worker/dispatch/IBridgeDispatch;",
        "getEngineRouter",
        "()Lcom/cloud/tmc/kernel/engine/EngineRouter;",
        "setEngineRouter",
        "(Lcom/cloud/tmc/kernel/engine/EngineRouter;)V",
        "newProgress",
        "",
        "getNewProgress",
        "()I",
        "setNewProgress",
        "(I)V",
        "getPageEventCallback",
        "()Lcom/cloud/tmc/kernel/render/IPageEventCallback;",
        "setPageEventCallback",
        "(Lcom/cloud/tmc/kernel/render/IPageEventCallback;)V",
        "getRenderId",
        "()Ljava/lang/String;",
        "setRenderId",
        "(Ljava/lang/String;)V",
        "getWorkerId",
        "onConsoleMessage",
        "",
        "consoleMessage",
        "onProgressChanged",
        "view",
        "Landroid/webkit/WebView;",
        "onReceivedIcon",
        "icon",
        "Landroid/graphics/Bitmap;",
        "onReceivedTitle",
        "title",
        "onRequestFocus",
        "registerEnginerRouter",
        "registerPageEventCallback",
        "webView",
        "registerRenderId",
        "com.cloud.tmc.render"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final bridgeDispatcher:Lcom/cloud/tmc/worker/dispatch/IBridgeDispatch;

.field private engineRouter:Lcom/cloud/tmc/kernel/engine/EngineRouter;

.field private newProgress:I

.field private pageEventCallback:Lcom/cloud/tmc/kernel/render/IPageEventCallback;

.field private renderId:Ljava/lang/String;

.field private final workerId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/render/IPageEventCallback;Lcom/cloud/tmc/worker/dispatch/IBridgeDispatch;Lcom/cloud/tmc/kernel/engine/EngineRouter;)V
    .locals 1

    const-string v0, "workerId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/render/DefaultPageEventCallback;->workerId:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/render/DefaultPageEventCallback;->renderId:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/render/DefaultPageEventCallback;->pageEventCallback:Lcom/cloud/tmc/kernel/render/IPageEventCallback;

    iput-object p4, p0, Lcom/cloud/tmc/render/DefaultPageEventCallback;->bridgeDispatcher:Lcom/cloud/tmc/worker/dispatch/IBridgeDispatch;

    iput-object p5, p0, Lcom/cloud/tmc/render/DefaultPageEventCallback;->engineRouter:Lcom/cloud/tmc/kernel/engine/EngineRouter;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/render/IPageEventCallback;Lcom/cloud/tmc/worker/dispatch/IBridgeDispatch;Lcom/cloud/tmc/kernel/engine/EngineRouter;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, p4

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/render/DefaultPageEventCallback;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/render/IPageEventCallback;Lcom/cloud/tmc/worker/dispatch/IBridgeDispatch;Lcom/cloud/tmc/kernel/engine/EngineRouter;)V

    return-void
.end method


# virtual methods
.method public final getBridgeDispatcher()Lcom/cloud/tmc/worker/dispatch/IBridgeDispatch;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/DefaultPageEventCallback;->bridgeDispatcher:Lcom/cloud/tmc/worker/dispatch/IBridgeDispatch;

    return-object v0
.end method

.method public final getEngineRouter()Lcom/cloud/tmc/kernel/engine/EngineRouter;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/DefaultPageEventCallback;->engineRouter:Lcom/cloud/tmc/kernel/engine/EngineRouter;

    return-object v0
.end method

.method public final getNewProgress()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/render/DefaultPageEventCallback;->newProgress:I

    return v0
.end method

.method public final getPageEventCallback()Lcom/cloud/tmc/kernel/render/IPageEventCallback;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/DefaultPageEventCallback;->pageEventCallback:Lcom/cloud/tmc/kernel/render/IPageEventCallback;

    return-object v0
.end method

.method public final getRenderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/DefaultPageEventCallback;->renderId:Ljava/lang/String;

    return-object v0
.end method

.method public final getWorkerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/DefaultPageEventCallback;->workerId:Ljava/lang/String;

    return-object v0
.end method

.method public onConsoleMessage(Ljava/lang/String;)V
    .locals 4

    const-string v0, "consoleMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/render/DefaultPageEventCallback;->bridgeDispatcher:Lcom/cloud/tmc/worker/dispatch/IBridgeDispatch;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cloud/tmc/render/DefaultPageEventCallback;->engineRouter:Lcom/cloud/tmc/kernel/engine/EngineRouter;

    iget-object v2, p0, Lcom/cloud/tmc/render/DefaultPageEventCallback;->workerId:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/tmc/render/DefaultPageEventCallback;->renderId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/cloud/tmc/worker/dispatch/IBridgeDispatch;->invoke(Lcom/cloud/tmc/kernel/engine/EngineRouter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    iput p2, p0, Lcom/cloud/tmc/render/DefaultPageEventCallback;->newProgress:I

    iget-object v0, p0, Lcom/cloud/tmc/render/DefaultPageEventCallback;->pageEventCallback:Lcom/cloud/tmc/kernel/render/IPageEventCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/kernel/render/IPageEventCallback;->onProgressChanged(Landroid/webkit/WebView;I)V

    :cond_0
    return-void
.end method

.method public onReceivedIcon(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/DefaultPageEventCallback;->pageEventCallback:Lcom/cloud/tmc/kernel/render/IPageEventCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/render/IPageEventCallback;->onReceivedIcon(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onReceivedTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/DefaultPageEventCallback;->pageEventCallback:Lcom/cloud/tmc/kernel/render/IPageEventCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/render/IPageEventCallback;->onReceivedTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRequestFocus()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/DefaultPageEventCallback;->pageEventCallback:Lcom/cloud/tmc/kernel/render/IPageEventCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IPageEventCallback;->onRequestFocus()V

    :cond_0
    return-void
.end method

.method public registerEnginerRouter(Lcom/cloud/tmc/kernel/engine/EngineRouter;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/render/DefaultPageEventCallback;->engineRouter:Lcom/cloud/tmc/kernel/engine/EngineRouter;

    return-void
.end method

.method public registerPageEventCallback(Landroid/webkit/WebView;Lcom/cloud/tmc/kernel/render/IPageEventCallback;)V
    .locals 1

    iput-object p2, p0, Lcom/cloud/tmc/render/DefaultPageEventCallback;->pageEventCallback:Lcom/cloud/tmc/kernel/render/IPageEventCallback;

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/cloud/tmc/render/DefaultPageEventCallback;->newProgress:I

    invoke-interface {p2, p1, v0}, Lcom/cloud/tmc/kernel/render/IPageEventCallback;->onProgressChanged(Landroid/webkit/WebView;I)V

    :cond_0
    return-void
.end method

.method public registerRenderId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "renderId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/render/DefaultPageEventCallback;->renderId:Ljava/lang/String;

    return-void
.end method

.method public final setEngineRouter(Lcom/cloud/tmc/kernel/engine/EngineRouter;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/render/DefaultPageEventCallback;->engineRouter:Lcom/cloud/tmc/kernel/engine/EngineRouter;

    return-void
.end method

.method public final setNewProgress(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/render/DefaultPageEventCallback;->newProgress:I

    return-void
.end method

.method public final setPageEventCallback(Lcom/cloud/tmc/kernel/render/IPageEventCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/render/DefaultPageEventCallback;->pageEventCallback:Lcom/cloud/tmc/kernel/render/IPageEventCallback;

    return-void
.end method

.method public final setRenderId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/render/DefaultPageEventCallback;->renderId:Ljava/lang/String;

    return-void
.end method
