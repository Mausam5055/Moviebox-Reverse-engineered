.class Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$i;
.super Lcom/mbridge/msdk/mbsignalcommon/listener/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$i;->a:Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;

    invoke-direct {p0}, Lcom/mbridge/msdk/mbsignalcommon/listener/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$i;->a:Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->a(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;Z)Z

    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$i;->a:Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;

    invoke-static {p1}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->e(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)Lcom/mbridge/msdk/interstitial/controller/a$d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$i;->a:Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;

    invoke-static {p1}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->e(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)Lcom/mbridge/msdk/interstitial/controller/a$d;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/mbridge/msdk/interstitial/controller/a$d;->a(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$i;->a:Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;

    const/4 p2, 0x3

    invoke-static {p1, p2, p3}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->a(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public a(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$i;->a:Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->a(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;Z)Z

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$i;->a:Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;

    invoke-static {p1}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->b(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$i;->a:Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;

    const-string p2, ""

    const/4 v0, 0x1

    invoke-static {p1, v0, p2}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->a(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$i;->a:Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;

    iget-object p2, p1, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->r:Ljava/lang/Runnable;

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->f(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$i;->a:Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;

    invoke-static {p1}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->f(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$i;->a:Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;

    iget-object p2, p2, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->r:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$i;->a:Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;

    invoke-static {p1}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->e(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)Lcom/mbridge/msdk/interstitial/controller/a$d;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$i;->a:Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;

    invoke-static {p1}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->e(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)Lcom/mbridge/msdk/interstitial/controller/a$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/interstitial/controller/a$d;->c()V

    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$i;->a:Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;

    iget-boolean p2, p1, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->mIsMBPage:Z

    if-nez p2, :cond_2

    invoke-static {p1}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->f(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$i;->a:Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;

    iget-object p2, p2, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->s:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$i;->a:Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;

    invoke-static {p1}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->g(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$i;->a:Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;

    invoke-static {p1}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->e(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)Lcom/mbridge/msdk/interstitial/controller/a$d;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$i;->a:Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;

    invoke-static {p1}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->e(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)Lcom/mbridge/msdk/interstitial/controller/a$d;

    move-result-object p1

    const-string p2, "load page failed"

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/interstitial/controller/a$d;->a(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/webkit/WebView;I)V
    .locals 0

    return-void
.end method

.method public b(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public c(Landroid/webkit/WebView;I)V
    .locals 0

    return-void
.end method
