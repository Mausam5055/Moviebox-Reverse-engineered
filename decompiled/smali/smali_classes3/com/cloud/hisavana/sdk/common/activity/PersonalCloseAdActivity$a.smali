.class Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$a;
.super Le7/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;->h()Landroid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;

    invoke-direct {p0}, Le7/j;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 7

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->setLoadStartTime(J)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/common/util/p0;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;

    iget-boolean p2, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->o:Z

    if-nez p2, :cond_1

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->o:Z

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getWebId()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getTargetUrl()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getRedirectType()I

    move-result v4

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getLoadTime()J

    move-result-wide v5

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->o0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    :cond_1
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/common/util/p0;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->m:Z

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    const-string p2, "error"

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->setErrorType(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->setErrorCode(I)V

    :cond_1
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/common/util/p0;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->m:Z

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    const-string p2, "error"

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->setErrorType(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->setErrorCode(I)V

    :cond_1
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/common/util/p0;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->m:Z

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    const-string p2, "ssl"

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->setErrorType(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->setErrorCode(I)V

    :cond_1
    return-void
.end method
