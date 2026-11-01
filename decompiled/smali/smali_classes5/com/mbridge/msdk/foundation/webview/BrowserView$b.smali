.class Lcom/mbridge/msdk/foundation/webview/BrowserView$b;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/webview/BrowserView;->getWebView()Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/webview/BrowserView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/webview/BrowserView;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView$b;->a:Lcom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadResource \u5f00\u59cb! = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrowserView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView$b;->a:Lcom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/webview/BrowserView;->d(Lcom/mbridge/msdk/foundation/webview/BrowserView;)Lcom/mbridge/msdk/foundation/webview/BrowserView$e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView$b;->a:Lcom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/webview/BrowserView;->d(Lcom/mbridge/msdk/foundation/webview/BrowserView;)Lcom/mbridge/msdk/foundation/webview/BrowserView$e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mbridge/msdk/foundation/webview/BrowserView$e;->c(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView$b;->a:Lcom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/webview/BrowserView;->d(Lcom/mbridge/msdk/foundation/webview/BrowserView;)Lcom/mbridge/msdk/foundation/webview/BrowserView$e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView$b;->a:Lcom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/webview/BrowserView;->d(Lcom/mbridge/msdk/foundation/webview/BrowserView;)Lcom/mbridge/msdk/foundation/webview/BrowserView$e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mbridge/msdk/foundation/webview/BrowserView$e;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f00\u59cb! = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrowserView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView$b;->a:Lcom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/webview/BrowserView;->a(Lcom/mbridge/msdk/foundation/webview/BrowserView;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView$b;->a:Lcom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/webview/BrowserView;->d(Lcom/mbridge/msdk/foundation/webview/BrowserView;)Lcom/mbridge/msdk/foundation/webview/BrowserView$e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView$b;->a:Lcom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/webview/BrowserView;->d(Lcom/mbridge/msdk/foundation/webview/BrowserView;)Lcom/mbridge/msdk/foundation/webview/BrowserView$e;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/mbridge/msdk/foundation/webview/BrowserView$e;->a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView$b;->a:Lcom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/webview/BrowserView;->e(Lcom/mbridge/msdk/foundation/webview/BrowserView;)Lcom/mbridge/msdk/foundation/webview/ProgressBar;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->setVisible(Z)V

    iget-object p1, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView$b;->a:Lcom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/webview/BrowserView;->e(Lcom/mbridge/msdk/foundation/webview/BrowserView;)Lcom/mbridge/msdk/foundation/webview/ProgressBar;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->setProgressState(I)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView$b;->a:Lcom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/webview/BrowserView;->d(Lcom/mbridge/msdk/foundation/webview/BrowserView;)Lcom/mbridge/msdk/foundation/webview/BrowserView$e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView$b;->a:Lcom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/webview/BrowserView;->d(Lcom/mbridge/msdk/foundation/webview/BrowserView;)Lcom/mbridge/msdk/foundation/webview/BrowserView$e;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mbridge/msdk/foundation/webview/BrowserView$e;->a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView$b;->a:Lcom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/webview/BrowserView;->d(Lcom/mbridge/msdk/foundation/webview/BrowserView;)Lcom/mbridge/msdk/foundation/webview/BrowserView$e;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView$b;->a:Lcom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/webview/BrowserView;->d(Lcom/mbridge/msdk/foundation/webview/BrowserView;)Lcom/mbridge/msdk/foundation/webview/BrowserView$e;

    move-result-object p1

    invoke-interface {p1}, Lcom/mbridge/msdk/foundation/webview/BrowserView$e;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return p2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BrowserView"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p2
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "js\u5927\u8df3! = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrowserView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView$b;->a:Lcom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/webview/BrowserView;->b(Lcom/mbridge/msdk/foundation/webview/BrowserView;)Lcom/mbridge/msdk/foundation/webview/ToolBar;

    move-result-object v0

    const-string v1, "backward"

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/webview/ToolBar;->getItem(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView$b;->a:Lcom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/webview/BrowserView;->b(Lcom/mbridge/msdk/foundation/webview/BrowserView;)Lcom/mbridge/msdk/foundation/webview/ToolBar;

    move-result-object v0

    const-string v1, "forward"

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/webview/ToolBar;->getItem(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView$b;->a:Lcom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/webview/BrowserView;->d(Lcom/mbridge/msdk/foundation/webview/BrowserView;)Lcom/mbridge/msdk/foundation/webview/BrowserView$e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView$b;->a:Lcom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/webview/BrowserView;->d(Lcom/mbridge/msdk/foundation/webview/BrowserView;)Lcom/mbridge/msdk/foundation/webview/BrowserView$e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mbridge/msdk/foundation/webview/BrowserView$e;->b(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method
