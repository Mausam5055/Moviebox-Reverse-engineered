.class public final Lcom/cloud/tmc/miniapp/nativewebview/OooO00o;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field public OooO00o:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO00o;->OooO00o:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO00o;->OooO00o:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;->onProgressChanged(Landroid/webkit/WebView;I)V

    :cond_0
    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO00o;->OooO00o:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;->onReceivedIcon(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO00o;->OooO00o:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;->onReceivedTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
