.class Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->onDestory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    iget-object v0, v0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebViewDiff;->webView:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->clearWebView()V

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    iget-object v0, v0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebViewDiff;->webView:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->release()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->a(Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    invoke-static {v0, v1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->b(Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    invoke-static {v0, v1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->c(Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    invoke-static {v0}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->a(Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    invoke-static {v0, v1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->a(Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTBaseView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method
