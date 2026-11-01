.class public final Lcom/cloud/tmc/render/system/SupportFullScreenWebChromeClient;
.super Lcom/cloud/tmc/render/system/DefaultWebChromeClient;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u001c\u0010\u0017\u001a\u00020\u00162\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/cloud/tmc/render/system/SupportFullScreenWebChromeClient;",
        "Lcom/cloud/tmc/render/system/DefaultWebChromeClient;",
        "context",
        "Landroid/content/Context;",
        "pageEventCallback",
        "Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;",
        "webviewBridgeHelper",
        "Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;",
        "customViewCallback",
        "Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;",
        "(Landroid/content/Context;Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;)V",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "getPageEventCallback",
        "()Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;",
        "setPageEventCallback",
        "(Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;)V",
        "getWebviewBridgeHelper",
        "()Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;",
        "onHideCustomView",
        "",
        "onShowCustomView",
        "view",
        "Landroid/view/View;",
        "callback",
        "Landroid/webkit/WebChromeClient$CustomViewCallback;",
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
.field private context:Landroid/content/Context;

.field private customViewCallback:Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;

.field private pageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

.field private final webviewBridgeHelper:Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/render/system/DefaultWebChromeClient;-><init>(Landroid/content/Context;Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;)V

    iput-object p1, p0, Lcom/cloud/tmc/render/system/SupportFullScreenWebChromeClient;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/cloud/tmc/render/system/SupportFullScreenWebChromeClient;->pageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    iput-object p3, p0, Lcom/cloud/tmc/render/system/SupportFullScreenWebChromeClient;->webviewBridgeHelper:Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;

    iput-object p4, p0, Lcom/cloud/tmc/render/system/SupportFullScreenWebChromeClient;->customViewCallback:Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    move-object p3, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/render/system/SupportFullScreenWebChromeClient;-><init>(Landroid/content/Context;Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;)V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/system/SupportFullScreenWebChromeClient;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getPageEventCallback()Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/system/SupportFullScreenWebChromeClient;->pageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    return-object v0
.end method

.method public getWebviewBridgeHelper()Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/system/SupportFullScreenWebChromeClient;->webviewBridgeHelper:Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;

    return-object v0
.end method

.method public onHideCustomView()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/system/SupportFullScreenWebChromeClient;->customViewCallback:Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;->onHideCustomView()V

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/system/SupportFullScreenWebChromeClient;->customViewCallback:Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/render/system/SupportFullScreenWebChromeClient;->context:Landroid/content/Context;

    return-void
.end method

.method public setPageEventCallback(Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/render/system/SupportFullScreenWebChromeClient;->pageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    return-void
.end method
