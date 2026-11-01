.class public Lcom/mbridge/msdk/advanced/manager/c;
.super Lcom/mbridge/msdk/advanced/manager/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/mbridge/msdk/advanced/manager/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;ZLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a;->e:Lcom/mbridge/msdk/click/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mbridge/msdk/click/a;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/advanced/manager/a;->j:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/click/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a;->e:Lcom/mbridge/msdk/click/a;

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a;->e:Lcom/mbridge/msdk/click/a;

    new-instance v1, Lcom/mbridge/msdk/advanced/manager/c$a;

    invoke-direct {v1, p0, p1}, Lcom/mbridge/msdk/advanced/manager/c$a;-><init>(Lcom/mbridge/msdk/advanced/manager/c;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/click/a;->a(Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    if-eqz p2, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/mbridge/msdk/advanced/manager/a;->j:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/mbridge/msdk/advanced/report/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p2, p0, Lcom/mbridge/msdk/advanced/manager/a;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mbridge/msdk/advanced/manager/a;->e:Lcom/mbridge/msdk/click/a;

    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/click/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    iget-object p2, p0, Lcom/mbridge/msdk/advanced/manager/a;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isReportClick()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/mbridge/msdk/advanced/manager/a;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setReportClick(Z)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/mbridge/msdk/advanced/report/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/advanced/manager/a;->d:Lcom/mbridge/msdk/advanced/middle/d;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/mbridge/msdk/advanced/manager/a;->l:Lcom/mbridge/msdk/out/MBridgeIds;

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/advanced/middle/d;->b(Lcom/mbridge/msdk/out/MBridgeIds;)V

    :cond_3
    return-void
.end method
