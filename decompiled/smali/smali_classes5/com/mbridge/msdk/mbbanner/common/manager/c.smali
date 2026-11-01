.class public Lcom/mbridge/msdk/mbbanner/common/manager/c;
.super Lcom/mbridge/msdk/mbbanner/common/manager/d;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/out/MBBannerView;Lcom/mbridge/msdk/mbbanner/common/listener/c;Ljava/lang/String;Ljava/lang/String;ZLcom/mbridge/msdk/setting/l;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/mbridge/msdk/mbbanner/common/manager/d;-><init>(Lcom/mbridge/msdk/out/MBBannerView;Lcom/mbridge/msdk/mbbanner/common/listener/c;Ljava/lang/String;Ljava/lang/String;ZLcom/mbridge/msdk/setting/l;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;ZLjava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->o:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->t:Lcom/mbridge/msdk/click/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/mbridge/msdk/click/a;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->p:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/click/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->t:Lcom/mbridge/msdk/click/a;

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->t:Lcom/mbridge/msdk/click/a;

    new-instance v1, Lcom/mbridge/msdk/mbbanner/common/manager/c$a;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/mbbanner/common/manager/c$a;-><init>(Lcom/mbridge/msdk/mbbanner/common/manager/c;)V

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/click/a;->a(Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->t:Lcom/mbridge/msdk/click/a;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/click/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isReportClick()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setReportClick(Z)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mbridge/msdk/mbbanner/common/report/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->a:Lcom/mbridge/msdk/mbbanner/common/listener/c;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/mbridge/msdk/mbbanner/common/listener/c;->c()V

    :cond_3
    if-eqz p2, :cond_4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->p:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/mbridge/msdk/mbbanner/common/report/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
