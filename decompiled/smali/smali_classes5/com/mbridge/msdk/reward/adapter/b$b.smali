.class Lcom/mbridge/msdk/reward/adapter/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/foundation/tools/x$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/reward/adapter/b;->a(ILcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic c:Lcom/mbridge/msdk/reward/adapter/b;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/reward/adapter/b;ILcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/reward/adapter/b$b;->c:Lcom/mbridge/msdk/reward/adapter/b;

    iput p2, p0, Lcom/mbridge/msdk/reward/adapter/b$b;->a:I

    iput-object p3, p0, Lcom/mbridge/msdk/reward/adapter/b$b;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/download/DownloadError;)V
    .locals 7

    :try_start_0
    const-string v0, ""

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/download/DownloadError;->getException()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/download/DownloadError;->getException()Ljava/lang/Exception;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    new-instance p2, Lcom/mbridge/msdk/foundation/entity/m;

    invoke-direct {p2}, Lcom/mbridge/msdk/foundation/entity/m;-><init>()V

    iget v1, p0, Lcom/mbridge/msdk/reward/adapter/b$b;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "1"

    const/4 v3, 0x1

    const-string v4, "m_download_end"

    const/4 v5, 0x3

    if-eqz v1, :cond_4

    const/4 v6, 0x2

    if-eq v1, v3, :cond_3

    if-eq v1, v6, :cond_1

    goto :goto_2

    :cond_1
    :try_start_1
    invoke-virtual {p2, v5}, Lcom/mbridge/msdk/foundation/entity/m;->e(I)V

    invoke-virtual {p2, v5}, Lcom/mbridge/msdk/foundation/entity/m;->d(I)V

    invoke-virtual {p2, v4}, Lcom/mbridge/msdk/foundation/entity/m;->j(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/b$b;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/mbridge/msdk/foundation/entity/m;->N:I

    goto :goto_1

    :cond_2
    sget v1, Lcom/mbridge/msdk/foundation/entity/m;->O:I

    :goto_1
    invoke-virtual {p2, v1}, Lcom/mbridge/msdk/foundation/entity/m;->b(I)V

    invoke-virtual {p2, v2}, Lcom/mbridge/msdk/foundation/entity/m;->f(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p2, v6}, Lcom/mbridge/msdk/foundation/entity/m;->e(I)V

    invoke-virtual {p2, v5}, Lcom/mbridge/msdk/foundation/entity/m;->d(I)V

    invoke-virtual {p2, v4}, Lcom/mbridge/msdk/foundation/entity/m;->j(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p2, v3}, Lcom/mbridge/msdk/foundation/entity/m;->e(I)V

    invoke-virtual {p2, v5}, Lcom/mbridge/msdk/foundation/entity/m;->d(I)V

    invoke-virtual {p2, v4}, Lcom/mbridge/msdk/foundation/entity/m;->j(Ljava/lang/String;)V

    :goto_2
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/b$b;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {p2, v1}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/foundation/entity/m;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/b$b;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/mbridge/msdk/foundation/entity/m;->o(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/mbridge/msdk/foundation/entity/m;->m(Ljava/lang/String;)V

    const-string v0, "scenes"

    invoke-virtual {p2, v0, v2}, Lcom/mbridge/msdk/foundation/entity/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-virtual {p2, v0, p1}, Lcom/mbridge/msdk/foundation/entity/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/b$b;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1, p2, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Lcom/mbridge/msdk/foundation/entity/m;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_3
    sget-boolean p2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_4
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    if-nez p5, :cond_4

    :try_start_0
    new-instance p2, Lcom/mbridge/msdk/foundation/entity/m;

    invoke-direct {p2}, Lcom/mbridge/msdk/foundation/entity/m;-><init>()V

    iget p3, p0, Lcom/mbridge/msdk/reward/adapter/b$b;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p4, "1"

    const-string p5, "m_download_end"

    const/4 v0, 0x1

    if-eqz p3, :cond_3

    const/4 v1, 0x2

    if-eq p3, v0, :cond_2

    if-eq p3, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p3, 0x3

    :try_start_1
    invoke-virtual {p2, p3}, Lcom/mbridge/msdk/foundation/entity/m;->e(I)V

    invoke-virtual {p2, v0}, Lcom/mbridge/msdk/foundation/entity/m;->d(I)V

    invoke-virtual {p2, p5}, Lcom/mbridge/msdk/foundation/entity/m;->j(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/mbridge/msdk/reward/adapter/b$b;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result p3

    if-eqz p3, :cond_1

    sget p3, Lcom/mbridge/msdk/foundation/entity/m;->N:I

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    sget p3, Lcom/mbridge/msdk/foundation/entity/m;->O:I

    :goto_0
    invoke-virtual {p2, p3}, Lcom/mbridge/msdk/foundation/entity/m;->b(I)V

    invoke-virtual {p2, p4}, Lcom/mbridge/msdk/foundation/entity/m;->f(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2, v1}, Lcom/mbridge/msdk/foundation/entity/m;->e(I)V

    invoke-virtual {p2, v0}, Lcom/mbridge/msdk/foundation/entity/m;->d(I)V

    invoke-virtual {p2, p5}, Lcom/mbridge/msdk/foundation/entity/m;->j(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v0}, Lcom/mbridge/msdk/foundation/entity/m;->e(I)V

    invoke-virtual {p2, v0}, Lcom/mbridge/msdk/foundation/entity/m;->d(I)V

    invoke-virtual {p2, p5}, Lcom/mbridge/msdk/foundation/entity/m;->j(Ljava/lang/String;)V

    :goto_1
    iget-object p3, p0, Lcom/mbridge/msdk/reward/adapter/b$b;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/mbridge/msdk/foundation/entity/m;->o(Ljava/lang/String;)V

    const-string p3, "url"

    invoke-virtual {p2, p3, p1}, Lcom/mbridge/msdk/foundation/entity/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "scenes"

    invoke-virtual {p2, p1, p4}, Lcom/mbridge/msdk/foundation/entity/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object p1

    iget-object p3, p0, Lcom/mbridge/msdk/reward/adapter/b$b;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1, p2, p3}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Lcom/mbridge/msdk/foundation/entity/m;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_2
    sget-boolean p2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RewardCampaignsResourceManager"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method
