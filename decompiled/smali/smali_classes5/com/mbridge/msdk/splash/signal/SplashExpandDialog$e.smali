.class Lcom/mbridge/msdk/splash/signal/SplashExpandDialog$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/mbsignalcommon/mraid/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog$e;->a:Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog$e;->a:Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;

    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;->dismiss()V

    return-void
.end method

.method public expand(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public getMraidCampaign()Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public open(Ljava/lang/String;)V
    .locals 5

    const-string v0, "SplashExpandDialog"

    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog$e;->a:Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;

    invoke-static {v1}, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;->d(Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;)Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog$e;->a:Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;

    invoke-static {v3}, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;->d(Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;)Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object v3

    iget-wide v3, v3, Lcom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->lastTouchTime:J

    sub-long/2addr v1, v3

    sget v3, Lcom/mbridge/msdk/click/utils/a;->c:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog$e;->a:Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;

    invoke-static {v1}, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;->f(Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v2, p0, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog$e;->a:Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;

    invoke-static {v2}, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;->d(Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;)Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/mbridge/msdk/click/utils/a;->a:I

    invoke-static {v1, v2, v3}, Lcom/mbridge/msdk/click/utils/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog$e;->a:Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;

    invoke-static {v1}, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;->f(Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v3, v4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    :cond_1
    iget-object v1, p0, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog$e;->a:Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;

    invoke-static {v1}, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;->c(Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;)Lcom/mbridge/msdk/splash/middle/a;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog$e;->a:Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;

    invoke-static {v1}, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;->c(Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;)Lcom/mbridge/msdk/splash/middle/a;

    move-result-object v1

    invoke-interface {v1, v2, p1}, Lcom/mbridge/msdk/splash/middle/a;->a(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    const-string v1, "open"

    invoke-static {v0, v1, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public unload()V
    .locals 0

    invoke-virtual {p0}, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog$e;->close()V

    return-void
.end method

.method public useCustomClose(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog$e;->a:Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;

    invoke-static {v0}, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;->g(Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string v0, "SplashExpandDialog"

    const-string v1, "useCustomClose"

    invoke-static {v0, v1, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
