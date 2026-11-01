.class public final Lcom/cloud/hisavana/sdk/b5;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private final a:Lcom/cloud/hisavana/sdk/r$a;

.field private final b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/r$a;)V
    .locals 1

    const-string v0, "admHandlerListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/b5;->a:Lcom/cloud/hisavana/sdk/r$a;

    const-string p1, "AdmWebClient"

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/b5;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b5;->b:Ljava/lang/String;

    const-string v1, "onPageFinished"

    invoke-virtual {p2, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getProgress()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/16 p2, 0x64

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/b5;->c:Z

    :cond_1
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    iget-boolean p1, p0, Lcom/cloud/hisavana/sdk/b5;->c:Z

    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, ""

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result p2

    goto :goto_0

    :cond_2
    const/16 p2, 0xbc7

    :goto_0
    iget-object p3, p0, Lcom/cloud/hisavana/sdk/b5;->a:Lcom/cloud/hisavana/sdk/r$a;

    invoke-interface {p3, p1, p2}, Lcom/cloud/hisavana/sdk/r$a;->a(Ljava/lang/String;I)V

    :cond_3
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b5;->a:Lcom/cloud/hisavana/sdk/r$a;

    invoke-interface {p1, v0}, Lcom/cloud/hisavana/sdk/r$a;->a(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    return p1
.end method
