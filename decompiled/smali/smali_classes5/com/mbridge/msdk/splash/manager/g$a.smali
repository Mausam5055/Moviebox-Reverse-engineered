.class Lcom/mbridge/msdk/splash/manager/g$a;
.super Lcom/mbridge/msdk/mbsignalcommon/listener/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/splash/manager/g;->a(Lcom/mbridge/msdk/splash/view/MBSplashView;Lcom/mbridge/msdk/splash/manager/g$d;Lcom/mbridge/msdk/splash/manager/g$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/splash/manager/g$c;

.field final synthetic b:Lcom/mbridge/msdk/splash/view/MBSplashView;

.field final synthetic c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:J

.field final synthetic f:Lcom/mbridge/msdk/splash/manager/g;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/splash/manager/g;Lcom/mbridge/msdk/splash/manager/g$c;Lcom/mbridge/msdk/splash/view/MBSplashView;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/splash/manager/g$a;->f:Lcom/mbridge/msdk/splash/manager/g;

    iput-object p2, p0, Lcom/mbridge/msdk/splash/manager/g$a;->a:Lcom/mbridge/msdk/splash/manager/g$c;

    iput-object p3, p0, Lcom/mbridge/msdk/splash/manager/g$a;->b:Lcom/mbridge/msdk/splash/view/MBSplashView;

    iput-object p4, p0, Lcom/mbridge/msdk/splash/manager/g$a;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iput-object p5, p0, Lcom/mbridge/msdk/splash/manager/g$a;->d:Ljava/lang/String;

    iput-wide p6, p0, Lcom/mbridge/msdk/splash/manager/g$a;->e:J

    invoke-direct {p0}, Lcom/mbridge/msdk/mbsignalcommon/listener/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;I)V
    .locals 7

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/listener/b;->a(Landroid/webkit/WebView;I)V

    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/g$a;->a:Lcom/mbridge/msdk/splash/manager/g$c;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/mbridge/msdk/splash/manager/g$c;->a(I)V

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    iget-object p2, p0, Lcom/mbridge/msdk/splash/manager/g$a;->f:Lcom/mbridge/msdk/splash/manager/g;

    invoke-static {p2, p1}, Lcom/mbridge/msdk/splash/manager/g;->a(Lcom/mbridge/msdk/splash/manager/g;Z)Z

    iget-object p2, p0, Lcom/mbridge/msdk/splash/manager/g$a;->b:Lcom/mbridge/msdk/splash/view/MBSplashView;

    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/splash/view/MBSplashView;->setH5Ready(Z)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/g$a;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v2, p0, Lcom/mbridge/msdk/splash/manager/g$a;->d:Ljava/lang/String;

    iget-wide v4, p0, Lcom/mbridge/msdk/splash/manager/g$a;->e:J

    const-string v3, ""

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/mbridge/msdk/splash/report/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;JI)V

    iget-object p2, p0, Lcom/mbridge/msdk/splash/manager/g$a;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/g$a;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const-string v1, ""

    invoke-static {p1, v1, p2, v0}, Lcom/mbridge/msdk/splash/report/a;->a(ILjava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/g$a;->f:Lcom/mbridge/msdk/splash/manager/g;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/mbridge/msdk/splash/manager/g;->a(Lcom/mbridge/msdk/splash/manager/g;Z)Z

    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/g$a;->b:Lcom/mbridge/msdk/splash/view/MBSplashView;

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/splash/view/MBSplashView;->setH5Ready(Z)V

    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/g$a;->d:Ljava/lang/String;

    iget-object p2, p0, Lcom/mbridge/msdk/splash/manager/g$a;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 v0, 0x2

    const-string v1, "readyState 2"

    invoke-static {v0, v1, p1, p2}, Lcom/mbridge/msdk/splash/report/a;->a(ILjava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/g$a;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v2, p0, Lcom/mbridge/msdk/splash/manager/g$a;->d:Ljava/lang/String;

    iget-wide v4, p0, Lcom/mbridge/msdk/splash/manager/g$a;->e:J

    const-string v3, "readyState 2"

    const/4 v6, 0x3

    invoke-static/range {v0 .. v6}, Lcom/mbridge/msdk/splash/report/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;JI)V

    :goto_0
    return-void
.end method

.method public a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-super {p0, p1, p2, p3, p4}, Lcom/mbridge/msdk/mbsignalcommon/listener/b;->a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/g$a;->a:Lcom/mbridge/msdk/splash/manager/g$c;

    if-eqz p1, :cond_0

    invoke-interface {p1, p3}, Lcom/mbridge/msdk/splash/manager/g$c;->onError(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/g$a;->f:Lcom/mbridge/msdk/splash/manager/g;

    invoke-virtual {p1}, Lcom/mbridge/msdk/splash/manager/g;->b()V

    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/g$a;->b:Lcom/mbridge/msdk/splash/view/MBSplashView;

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Lcom/mbridge/msdk/splash/view/MBSplashView;->setH5Ready(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "error code:"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/g$a;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/g$a;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 v2, 0x2

    invoke-static {v2, p1, v0, v1}, Lcom/mbridge/msdk/splash/report/a;->a(ILjava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/g$a;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v2, p0, Lcom/mbridge/msdk/splash/manager/g$a;->d:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/mbridge/msdk/splash/manager/g$a;->e:J

    const/4 v6, 0x3

    invoke-static/range {v0 .. v6}, Lcom/mbridge/msdk/splash/report/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;JI)V

    return-void
.end method

.method public a(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 7

    invoke-super {p0, p1, p2, p3}, Lcom/mbridge/msdk/mbsignalcommon/listener/b;->a(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/g$a;->a:Lcom/mbridge/msdk/splash/manager/g$c;

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/mbridge/msdk/splash/manager/g$c;->onError(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/g$a;->f:Lcom/mbridge/msdk/splash/manager/g;

    invoke-virtual {p1}, Lcom/mbridge/msdk/splash/manager/g;->b()V

    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/g$a;->b:Lcom/mbridge/msdk/splash/view/MBSplashView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/splash/view/MBSplashView;->setH5Ready(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "error url:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/g$a;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/g$a;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 v2, 0x2

    invoke-static {v2, p1, v0, v1}, Lcom/mbridge/msdk/splash/report/a;->a(ILjava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/g$a;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v2, p0, Lcom/mbridge/msdk/splash/manager/g$a;->d:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/mbridge/msdk/splash/manager/g$a;->e:J

    const/4 v6, 0x3

    invoke-static/range {v0 .. v6}, Lcom/mbridge/msdk/splash/report/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;JI)V

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 7

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/listener/b;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mbridge/msdk/splash/manager/g$a;->a:Lcom/mbridge/msdk/splash/manager/g$c;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/mbridge/msdk/splash/manager/g$c;->a()V

    :cond_0
    iget-object p2, p0, Lcom/mbridge/msdk/splash/manager/g$a;->f:Lcom/mbridge/msdk/splash/manager/g;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/mbridge/msdk/splash/manager/g;->b(Lcom/mbridge/msdk/splash/manager/g;Z)Z

    iget-object p2, p0, Lcom/mbridge/msdk/splash/manager/g$a;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isHasMBTplMark()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/mbridge/msdk/splash/manager/g$a;->b:Lcom/mbridge/msdk/splash/view/MBSplashView;

    invoke-virtual {p2, v0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->setH5Ready(Z)V

    iget-object p2, p0, Lcom/mbridge/msdk/splash/manager/g$a;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/g$a;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const-string v2, ""

    invoke-static {v0, v2, p2, v1}, Lcom/mbridge/msdk/splash/report/a;->a(ILjava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/g$a;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v2, p0, Lcom/mbridge/msdk/splash/manager/g$a;->d:Ljava/lang/String;

    iget-wide v4, p0, Lcom/mbridge/msdk/splash/manager/g$a;->e:J

    const-string v3, ""

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/mbridge/msdk/splash/report/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;JI)V

    :cond_1
    invoke-static {p1}, Lcom/mbridge/msdk/splash/signal/c;->a(Landroid/webkit/WebView;)V

    return-void
.end method
