.class Lcom/mbridge/msdk/mbbanner/controll/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/mbbanner/common/listener/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/mbbanner/controll/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/mbbanner/controll/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/mbbanner/controll/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-static {v0}, Lcom/mbridge/msdk/mbbanner/controll/a;->a(Lcom/mbridge/msdk/mbbanner/controll/a;)Lcom/mbridge/msdk/out/BannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-static {v0}, Lcom/mbridge/msdk/mbbanner/controll/a;->a(Lcom/mbridge/msdk/mbbanner/controll/a;)Lcom/mbridge/msdk/out/BannerAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-static {v1}, Lcom/mbridge/msdk/mbbanner/controll/a;->f(Lcom/mbridge/msdk/mbbanner/controll/a;)Lcom/mbridge/msdk/out/MBridgeIds;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/out/BannerAdListener;->showFullScreen(Lcom/mbridge/msdk/out/MBridgeIds;)V

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/mbbanner/controll/a;->b(Lcom/mbridge/msdk/mbbanner/controll/a;Z)Z

    invoke-static {}, Lcom/mbridge/msdk/mbbanner/common/manager/a;->b()Lcom/mbridge/msdk/mbbanner/common/manager/a;

    move-result-object v2

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-static {v0}, Lcom/mbridge/msdk/mbbanner/controll/a;->j(Lcom/mbridge/msdk/mbbanner/controll/a;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-static {v0}, Lcom/mbridge/msdk/mbbanner/controll/a;->g(Lcom/mbridge/msdk/mbbanner/controll/a;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x2

    invoke-virtual/range {v2 .. v7}, Lcom/mbridge/msdk/mbbanner/common/manager/a;->a(ILjava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/mbbanner/common/data/a;Lcom/mbridge/msdk/mbbanner/common/listener/b;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-virtual {v0}, Lcom/mbridge/msdk/mbbanner/controll/a;->c()V

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-static {v0}, Lcom/mbridge/msdk/mbbanner/controll/a;->a(Lcom/mbridge/msdk/mbbanner/controll/a;)Lcom/mbridge/msdk/out/BannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-static {v0}, Lcom/mbridge/msdk/mbbanner/controll/a;->a(Lcom/mbridge/msdk/mbbanner/controll/a;)Lcom/mbridge/msdk/out/BannerAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-static {v1}, Lcom/mbridge/msdk/mbbanner/controll/a;->f(Lcom/mbridge/msdk/mbbanner/controll/a;)Lcom/mbridge/msdk/out/MBridgeIds;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/out/BannerAdListener;->onLogImpression(Lcom/mbridge/msdk/out/MBridgeIds;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-static {v0}, Lcom/mbridge/msdk/mbbanner/controll/a;->g(Lcom/mbridge/msdk/mbbanner/controll/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getLocalRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/mbbanner/common/report/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "1"

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_1
    const-string p1, "2"

    :goto_0
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-static {p1}, Lcom/mbridge/msdk/mbbanner/controll/a;->h(Lcom/mbridge/msdk/mbbanner/controll/a;)Lcom/mbridge/msdk/mbbanner/common/manager/c;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-static {p1}, Lcom/mbridge/msdk/mbbanner/controll/a;->h(Lcom/mbridge/msdk/mbbanner/controll/a;)Lcom/mbridge/msdk/mbbanner/common/manager/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c()I

    move-result p1

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->g(I)V

    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-static {p1}, Lcom/mbridge/msdk/mbbanner/controll/a;->i(Lcom/mbridge/msdk/mbbanner/controll/a;)I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->b(I)V

    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-static {p1}, Lcom/mbridge/msdk/mbbanner/controll/a;->i(Lcom/mbridge/msdk/mbbanner/controll/a;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->c(I)V

    const-string p1, "2000128"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/mbridge/msdk/mbbanner/common/report/a;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    const-string p1, "2000130"

    invoke-static {p1, v0, v1}, Lcom/mbridge/msdk/mbbanner/common/report/a;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-static {}, Lcom/mbridge/msdk/mbbanner/controll/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public a(Lcom/mbridge/msdk/foundation/error/b;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-static {v0, p1}, Lcom/mbridge/msdk/mbbanner/controll/a;->a(Lcom/mbridge/msdk/mbbanner/controll/a;Lcom/mbridge/msdk/foundation/error/b;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/mbridge/msdk/mbbanner/controll/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onShowSuccessed:"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-static {v0}, Lcom/mbridge/msdk/mbbanner/controll/a;->a(Lcom/mbridge/msdk/mbbanner/controll/a;)Lcom/mbridge/msdk/out/BannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-static {v0}, Lcom/mbridge/msdk/mbbanner/controll/a;->a(Lcom/mbridge/msdk/mbbanner/controll/a;)Lcom/mbridge/msdk/out/BannerAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-static {v1}, Lcom/mbridge/msdk/mbbanner/controll/a;->f(Lcom/mbridge/msdk/mbbanner/controll/a;)Lcom/mbridge/msdk/out/MBridgeIds;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/out/BannerAdListener;->onLoadSuccessed(Lcom/mbridge/msdk/out/MBridgeIds;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-static {v0}, Lcom/mbridge/msdk/mbbanner/controll/a;->g(Lcom/mbridge/msdk/mbbanner/controll/a;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getLocalRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mbridge/msdk/mbbanner/common/report/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->b(Ljava/util/List;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->g(I)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getBannerUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v2, 0x2

    :cond_1
    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->d(I)V

    const-string p1, "2000048"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/mbridge/msdk/mbbanner/common/report/a;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/mbridge/msdk/mbbanner/controll/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-static {v0}, Lcom/mbridge/msdk/mbbanner/controll/a;->a(Lcom/mbridge/msdk/mbbanner/controll/a;)Lcom/mbridge/msdk/out/BannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-static {v0}, Lcom/mbridge/msdk/mbbanner/controll/a;->a(Lcom/mbridge/msdk/mbbanner/controll/a;)Lcom/mbridge/msdk/out/BannerAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-static {v1}, Lcom/mbridge/msdk/mbbanner/controll/a;->f(Lcom/mbridge/msdk/mbbanner/controll/a;)Lcom/mbridge/msdk/out/MBridgeIds;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/out/BannerAdListener;->onCloseBanner(Lcom/mbridge/msdk/out/MBridgeIds;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-static {v0}, Lcom/mbridge/msdk/mbbanner/controll/a;->a(Lcom/mbridge/msdk/mbbanner/controll/a;)Lcom/mbridge/msdk/out/BannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-static {v0}, Lcom/mbridge/msdk/mbbanner/controll/a;->a(Lcom/mbridge/msdk/mbbanner/controll/a;)Lcom/mbridge/msdk/out/BannerAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-static {v1}, Lcom/mbridge/msdk/mbbanner/controll/a;->f(Lcom/mbridge/msdk/mbbanner/controll/a;)Lcom/mbridge/msdk/out/MBridgeIds;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/out/BannerAdListener;->onClick(Lcom/mbridge/msdk/out/MBridgeIds;)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 8

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-static {v0}, Lcom/mbridge/msdk/mbbanner/controll/a;->a(Lcom/mbridge/msdk/mbbanner/controll/a;)Lcom/mbridge/msdk/out/BannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-static {v0}, Lcom/mbridge/msdk/mbbanner/controll/a;->a(Lcom/mbridge/msdk/mbbanner/controll/a;)Lcom/mbridge/msdk/out/BannerAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-static {v1}, Lcom/mbridge/msdk/mbbanner/controll/a;->f(Lcom/mbridge/msdk/mbbanner/controll/a;)Lcom/mbridge/msdk/out/MBridgeIds;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/out/BannerAdListener;->closeFullScreen(Lcom/mbridge/msdk/out/MBridgeIds;)V

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mbridge/msdk/mbbanner/controll/a;->b(Lcom/mbridge/msdk/mbbanner/controll/a;Z)Z

    invoke-static {}, Lcom/mbridge/msdk/mbbanner/common/manager/a;->b()Lcom/mbridge/msdk/mbbanner/common/manager/a;

    move-result-object v2

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-static {v0}, Lcom/mbridge/msdk/mbbanner/controll/a;->j(Lcom/mbridge/msdk/mbbanner/controll/a;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-static {v0}, Lcom/mbridge/msdk/mbbanner/controll/a;->g(Lcom/mbridge/msdk/mbbanner/controll/a;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/mbridge/msdk/mbbanner/common/data/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-static {v1}, Lcom/mbridge/msdk/mbbanner/controll/a;->k(Lcom/mbridge/msdk/mbbanner/controll/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-static {v1}, Lcom/mbridge/msdk/mbbanner/controll/a;->b(Lcom/mbridge/msdk/mbbanner/controll/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-static {v1}, Lcom/mbridge/msdk/mbbanner/controll/a;->i(Lcom/mbridge/msdk/mbbanner/controll/a;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-direct {v6, v0, v1}, Lcom/mbridge/msdk/mbbanner/common/data/a;-><init>(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-static {v0}, Lcom/mbridge/msdk/mbbanner/controll/a;->c(Lcom/mbridge/msdk/mbbanner/controll/a;)Lcom/mbridge/msdk/mbbanner/common/listener/b;

    move-result-object v7

    const/4 v3, 0x3

    invoke-virtual/range {v2 .. v7}, Lcom/mbridge/msdk/mbbanner/common/manager/a;->a(ILjava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/mbbanner/common/data/a;Lcom/mbridge/msdk/mbbanner/common/listener/b;)V

    :cond_0
    return-void
.end method

.method public onLeaveApp()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-static {v0}, Lcom/mbridge/msdk/mbbanner/controll/a;->a(Lcom/mbridge/msdk/mbbanner/controll/a;)Lcom/mbridge/msdk/out/BannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-static {v0}, Lcom/mbridge/msdk/mbbanner/controll/a;->a(Lcom/mbridge/msdk/mbbanner/controll/a;)Lcom/mbridge/msdk/out/BannerAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/controll/a$a;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-static {v1}, Lcom/mbridge/msdk/mbbanner/controll/a;->f(Lcom/mbridge/msdk/mbbanner/controll/a;)Lcom/mbridge/msdk/out/MBridgeIds;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/out/BannerAdListener;->onLeaveApp(Lcom/mbridge/msdk/out/MBridgeIds;)V

    :cond_0
    return-void
.end method
