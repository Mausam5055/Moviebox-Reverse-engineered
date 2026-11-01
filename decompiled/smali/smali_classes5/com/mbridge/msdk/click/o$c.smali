.class Lcom/mbridge/msdk/click/o$c;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/click/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/click/o;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/click/o;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/click/o$c;->a:Lcom/mbridge/msdk/click/o;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    :try_start_0
    const-string p2, "javascript:window.navigator.vibrate([]);"

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mbridge/msdk/click/o$c;->a:Lcom/mbridge/msdk/click/o;

    invoke-static {p2}, Lcom/mbridge/msdk/click/o;->h(Lcom/mbridge/msdk/click/o;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/mbridge/msdk/click/o$c;->a:Lcom/mbridge/msdk/click/o;

    iget-boolean v0, p2, Lcom/mbridge/msdk/click/o;->o:Z

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/mbridge/msdk/click/o;->f(Lcom/mbridge/msdk/click/o;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/mbridge/msdk/click/o$c;->a:Lcom/mbridge/msdk/click/o;

    invoke-static {p2}, Lcom/mbridge/msdk/click/o;->j(Lcom/mbridge/msdk/click/o;)Lcom/mbridge/msdk/click/o$f;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/mbridge/msdk/click/o$c;->a:Lcom/mbridge/msdk/click/o;

    invoke-static {p2}, Lcom/mbridge/msdk/click/o;->j(Lcom/mbridge/msdk/click/o;)Lcom/mbridge/msdk/click/o$f;

    move-result-object p2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/mbridge/msdk/click/o$f;->b(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    return-void
.end method
