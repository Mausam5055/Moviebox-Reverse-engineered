.class Lcom/mbridge/msdk/foundation/webview/BrowserView$d;
.super Landroid/webkit/WebChromeClient;


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

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView$d;->a:Lcom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    const/16 p1, 0x64

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView$d;->a:Lcom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/webview/BrowserView;->e(Lcom/mbridge/msdk/foundation/webview/BrowserView;)Lcom/mbridge/msdk/foundation/webview/ProgressBar;

    move-result-object p1

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->setProgressState(I)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/mbridge/msdk/foundation/webview/BrowserView$d$a;

    invoke-direct {p2, p0}, Lcom/mbridge/msdk/foundation/webview/BrowserView$d$a;-><init>(Lcom/mbridge/msdk/foundation/webview/BrowserView$d;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
