.class Lcom/mbridge/msdk/advanced/manager/b$b;
.super Lcom/mbridge/msdk/mbsignalcommon/listener/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/advanced/manager/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:Lcom/mbridge/msdk/advanced/manager/b;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/advanced/manager/b;Lcom/mbridge/msdk/foundation/entity/CampaignEx;IJ)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->d:Lcom/mbridge/msdk/advanced/manager/b;

    iput-object p2, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iput p3, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->b:I

    iput-wide p4, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->c:J

    invoke-direct {p0}, Lcom/mbridge/msdk/mbsignalcommon/listener/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;I)V
    .locals 7

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/listener/b;->a(Landroid/webkit/WebView;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "=========readyState: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NativeAdvancedLoadManager"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget-object p2, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->d:Lcom/mbridge/msdk/advanced/manager/b;

    invoke-static {p2}, Lcom/mbridge/msdk/advanced/manager/b;->a(Lcom/mbridge/msdk/advanced/manager/b;)Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->setH5Ready(Z)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->d:Lcom/mbridge/msdk/advanced/manager/b;

    invoke-static {v0}, Lcom/mbridge/msdk/advanced/manager/b;->e(Lcom/mbridge/msdk/advanced/manager/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->d:Lcom/mbridge/msdk/advanced/manager/b;

    invoke-static {v0}, Lcom/mbridge/msdk/advanced/manager/b;->h(Lcom/mbridge/msdk/advanced/manager/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/mbridge/msdk/advanced/common/c;->a(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->d:Lcom/mbridge/msdk/advanced/manager/b;

    iget-object p2, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget v0, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->b:I

    invoke-static {p1, p2, v0}, Lcom/mbridge/msdk/advanced/manager/b;->a(Lcom/mbridge/msdk/advanced/manager/b;Lcom/mbridge/msdk/foundation/entity/CampaignEx;I)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object p1, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->d:Lcom/mbridge/msdk/advanced/manager/b;

    invoke-static {p1}, Lcom/mbridge/msdk/advanced/manager/b;->h(Lcom/mbridge/msdk/advanced/manager/b;)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->c:J

    const-string v3, ""

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/mbridge/msdk/advanced/report/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;JI)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->d:Lcom/mbridge/msdk/advanced/manager/b;

    iget-object p2, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget v0, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->b:I

    const-string v1, "readyState 2"

    invoke-static {p1, p2, v1, v0}, Lcom/mbridge/msdk/advanced/manager/b;->a(Lcom/mbridge/msdk/advanced/manager/b;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;I)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object p1, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->d:Lcom/mbridge/msdk/advanced/manager/b;

    invoke-static {p1}, Lcom/mbridge/msdk/advanced/manager/b;->h(Lcom/mbridge/msdk/advanced/manager/b;)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->c:J

    const-string v3, "readyState 2"

    const/4 v6, 0x3

    invoke-static/range {v0 .. v6}, Lcom/mbridge/msdk/advanced/report/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;JI)V

    :goto_0
    return-void
.end method

.method public a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-super {p0, p1, p2, p3, p4}, Lcom/mbridge/msdk/mbsignalcommon/listener/b;->a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceivedError\uff1a "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "NativeAdvancedLoadManager"

    invoke-static {p4, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->d:Lcom/mbridge/msdk/advanced/manager/b;

    iget-object p4, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget v0, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->b:I

    invoke-static {p1, p4, p3, v0}, Lcom/mbridge/msdk/advanced/manager/b;->a(Lcom/mbridge/msdk/advanced/manager/b;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;I)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object p1, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->d:Lcom/mbridge/msdk/advanced/manager/b;

    invoke-static {p1}, Lcom/mbridge/msdk/advanced/manager/b;->h(Lcom/mbridge/msdk/advanced/manager/b;)Ljava/lang/String;

    move-result-object v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "error code:"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->c:J

    const/4 v6, 0x3

    invoke-static/range {v0 .. v6}, Lcom/mbridge/msdk/advanced/report/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;JI)V

    return-void
.end method

.method public a(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 7

    invoke-super {p0, p1, p2, p3}, Lcom/mbridge/msdk/mbsignalcommon/listener/b;->a(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onReceivedSslError: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NativeAdvancedLoadManager"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->d:Lcom/mbridge/msdk/advanced/manager/b;

    iget-object p2, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedSslError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->b:I

    invoke-static {p1, p2, v0, v1}, Lcom/mbridge/msdk/advanced/manager/b;->a(Lcom/mbridge/msdk/advanced/manager/b;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;I)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object p1, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->d:Lcom/mbridge/msdk/advanced/manager/b;

    invoke-static {p1}, Lcom/mbridge/msdk/advanced/manager/b;->h(Lcom/mbridge/msdk/advanced/manager/b;)Ljava/lang/String;

    move-result-object v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "error url:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->c:J

    const/4 v6, 0x3

    invoke-static/range {v0 .. v6}, Lcom/mbridge/msdk/advanced/report/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;JI)V

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 7

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/listener/b;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    const-string p2, "onPageFinished"

    const-string v0, "NativeAdvancedLoadManager"

    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isHasMBTplMark()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->d:Lcom/mbridge/msdk/advanced/manager/b;

    invoke-static {p2}, Lcom/mbridge/msdk/advanced/manager/b;->a(Lcom/mbridge/msdk/advanced/manager/b;)Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->setH5Ready(Z)V

    const-string p2, "=======onPageFinished OK"

    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->d:Lcom/mbridge/msdk/advanced/manager/b;

    invoke-static {v0}, Lcom/mbridge/msdk/advanced/manager/b;->e(Lcom/mbridge/msdk/advanced/manager/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->d:Lcom/mbridge/msdk/advanced/manager/b;

    invoke-static {v0}, Lcom/mbridge/msdk/advanced/manager/b;->h(Lcom/mbridge/msdk/advanced/manager/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/mbridge/msdk/advanced/common/c;->a(Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->d:Lcom/mbridge/msdk/advanced/manager/b;

    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget v1, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->b:I

    invoke-static {p2, v0, v1}, Lcom/mbridge/msdk/advanced/manager/b;->a(Lcom/mbridge/msdk/advanced/manager/b;Lcom/mbridge/msdk/foundation/entity/CampaignEx;I)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object p2, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->d:Lcom/mbridge/msdk/advanced/manager/b;

    invoke-static {p2}, Lcom/mbridge/msdk/advanced/manager/b;->h(Lcom/mbridge/msdk/advanced/manager/b;)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Lcom/mbridge/msdk/advanced/manager/b$b;->c:J

    const-string v3, ""

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/mbridge/msdk/advanced/report/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;JI)V

    :cond_0
    invoke-static {p1}, Lcom/mbridge/msdk/advanced/signal/a;->a(Landroid/webkit/WebView;)V

    return-void
.end method
