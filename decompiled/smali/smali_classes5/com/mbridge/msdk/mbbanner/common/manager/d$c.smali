.class Lcom/mbridge/msdk/mbbanner/common/manager/d$c;
.super Lcom/mbridge/msdk/mbsignalcommon/listener/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/mbbanner/common/manager/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/mbbanner/common/manager/d;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/mbbanner/common/manager/d;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d$c;->a:Lcom/mbridge/msdk/mbbanner/common/manager/d;

    invoke-direct {p0}, Lcom/mbridge/msdk/mbsignalcommon/listener/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;)V
    .locals 0

    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d$c;->a:Lcom/mbridge/msdk/mbbanner/common/manager/d;

    invoke-static {p1}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->o(Lcom/mbridge/msdk/mbbanner/common/manager/d;)V

    return-void
.end method

.method public a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance p1, Lcom/mbridge/msdk/foundation/error/b;

    const p4, 0xd6d80

    invoke-direct {p1, p4}, Lcom/mbridge/msdk/foundation/error/b;-><init>(I)V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " WebView receive error: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  message : "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/foundation/error/b;->c(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d$c;->a:Lcom/mbridge/msdk/mbbanner/common/manager/d;

    invoke-static {p2}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->j(Lcom/mbridge/msdk/mbbanner/common/manager/d;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/foundation/error/b;->b(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d$c;->a:Lcom/mbridge/msdk/mbbanner/common/manager/d;

    invoke-static {p2, p1}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->a(Lcom/mbridge/msdk/mbbanner/common/manager/d;Lcom/mbridge/msdk/foundation/error/b;)V

    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d$c;->a:Lcom/mbridge/msdk/mbbanner/common/manager/d;

    const/4 p2, 0x2

    invoke-static {p1, p3, p2}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->a(Lcom/mbridge/msdk/mbbanner/common/manager/d;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d$c;->a:Lcom/mbridge/msdk/mbbanner/common/manager/d;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->b(Lcom/mbridge/msdk/mbbanner/common/manager/d;Z)Z

    invoke-static {p1}, Lcom/mbridge/msdk/mbbanner/common/communication/a;->a(Landroid/webkit/WebView;)V

    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d$c;->a:Lcom/mbridge/msdk/mbbanner/common/manager/d;

    invoke-static {p1, v0}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c(Lcom/mbridge/msdk/mbbanner/common/manager/d;Z)Z

    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d$c;->a:Lcom/mbridge/msdk/mbbanner/common/manager/d;

    iget-object p1, p1, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isHasMBTplMark()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d$c;->a:Lcom/mbridge/msdk/mbbanner/common/manager/d;

    invoke-static {p1}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->n(Lcom/mbridge/msdk/mbbanner/common/manager/d;)V

    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d$c;->a:Lcom/mbridge/msdk/mbbanner/common/manager/d;

    const-string p2, ""

    invoke-static {p1, p2, v0}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->a(Lcom/mbridge/msdk/mbbanner/common/manager/d;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
