.class public final Lcom/transsion/lib_web/BaseLibWebFragment$g;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/lib_web/BaseLibWebFragment;->z0(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/lib_web/BaseLibWebFragment;

.field final synthetic b:Lcom/github/lzyzsd/jsbridge/BridgeWebView;


# direct methods
.method constructor <init>(Lcom/transsion/lib_web/BaseLibWebFragment;Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment$g;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    iput-object p2, p0, Lcom/transsion/lib_web/BaseLibWebFragment$g;->b:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/lib_web/download_render/utils/a;->a:Lcom/transsion/lib_web/download_render/utils/a;

    iget-object v1, p0, Lcom/transsion/lib_web/BaseLibWebFragment$g;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    invoke-virtual {v1}, Lcom/transsion/lib_web/BaseLibWebFragment;->k0()Lcom/transsion/lib_web/LoadUrlData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/lib_web/LoadUrlData;->getOriginUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    iget-object v3, p0, Lcom/transsion/lib_web/BaseLibWebFragment$g;->b:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getProgress()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/lib_web/download_render/utils/a;->k(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment$g;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/lib_web/BaseLibWebFragment;->K0(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment$g;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/lib_web/BaseLibWebFragment;->L0(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment$g;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/transsion/lib_web/BaseLibWebFragment;->M0(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment$g;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/lib_web/BaseLibWebFragment;->N0(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorResponse"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment$g;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/lib_web/BaseLibWebFragment;->O0(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment$g;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/lib_web/BaseLibWebFragment;->a0(Lcom/transsion/lib_web/BaseLibWebFragment;Z)V

    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment$g;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    sget-object v1, Lcom/transsion/lib_web/domain/LoadStatus;->FAILED:Lcom/transsion/lib_web/domain/LoadStatus;

    invoke-virtual {v0, v1}, Lcom/transsion/lib_web/BaseLibWebFragment;->S0(Lcom/transsion/lib_web/domain/LoadStatus;)V

    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment$g;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    invoke-virtual {v0}, Lcom/transsion/lib_web/BaseLibWebFragment;->l0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment$g;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/lib_web/BaseLibWebFragment;->V0(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V

    :cond_0
    sget-object v0, Lgm/n;->a:Lgm/n;

    iget-object v1, p0, Lcom/transsion/lib_web/BaseLibWebFragment$g;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    invoke-virtual {v1}, Lcom/transsion/lib_web/BaseLibWebFragment;->getClassTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_visible"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lgm/n;->c(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;Ljava/lang/String;)Z

    move-result p1

    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment$g;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    invoke-virtual {v0, p2}, Lcom/transsion/lib_web/BaseLibWebFragment;->P0(Landroid/webkit/RenderProcessGoneDetail;)V

    return p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment$g;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    invoke-virtual {v0}, Lcom/transsion/lib_web/BaseLibWebFragment;->m0()Lcom/transsion/lib_web/zip/loader/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/transsion/lib_web/zip/loader/d;->a(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 6

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    const-string v1, "yy://__QUEUE_MESSAGE__"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/transsion/lib_web/BaseLibWebFragment$g;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    invoke-virtual {v1}, Lcom/transsion/lib_web/BaseLibWebFragment;->k0()Lcom/transsion/lib_web/LoadUrlData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/lib_web/LoadUrlData;->setOriginUrl(Ljava/lang/String;)V

    :cond_2
    sget-object v1, Lgm/h;->a:Lgm/h;

    iget-object v2, p0, Lcom/transsion/lib_web/BaseLibWebFragment$g;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lgm/h;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    const/4 v3, 0x0

    const-string v4, "http"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5, v1, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/transsion/lib_web/BaseLibWebFragment$g;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    invoke-static {v1}, Lcom/transsion/lib_web/BaseLibWebFragment;->Z(Lcom/transsion/lib_web/BaseLibWebFragment;)Lgm/f;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment$g;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    invoke-static {p1}, Lcom/transsion/lib_web/BaseLibWebFragment;->Z(Lcom/transsion/lib_web/BaseLibWebFragment;)Lgm/f;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1, v0}, Lgm/f;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result v2

    :cond_5
    :goto_0
    return v2
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "yy://__QUEUE_MESSAGE__"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment$g;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    invoke-virtual {v0}, Lcom/transsion/lib_web/BaseLibWebFragment;->k0()Lcom/transsion/lib_web/LoadUrlData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/transsion/lib_web/LoadUrlData;->setOriginUrl(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lgm/h;->a:Lgm/h;

    iget-object v1, p0, Lcom/transsion/lib_web/BaseLibWebFragment$g;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lgm/h;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    const/4 v2, 0x0

    const-string v3, "http"

    const/4 v4, 0x0

    invoke-static {p2, v3, v4, v0, v2}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment$g;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    invoke-static {v0}, Lcom/transsion/lib_web/BaseLibWebFragment;->Z(Lcom/transsion/lib_web/BaseLibWebFragment;)Lgm/f;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment$g;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    invoke-static {p1}, Lcom/transsion/lib_web/BaseLibWebFragment;->Z(Lcom/transsion/lib_web/BaseLibWebFragment;)Lgm/f;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1, p2}, Lgm/f;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    :cond_3
    :goto_0
    return v1
.end method
