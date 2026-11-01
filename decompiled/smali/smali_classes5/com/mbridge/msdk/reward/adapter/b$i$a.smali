.class Lcom/mbridge/msdk/reward/adapter/b$i$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/reward/adapter/b$i;->a(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/mbridge/msdk/reward/adapter/b$i;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/reward/adapter/b$i;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/reward/adapter/b$i$a;->f:Lcom/mbridge/msdk/reward/adapter/b$i;

    iput p2, p0, Lcom/mbridge/msdk/reward/adapter/b$i$a;->a:I

    iput-wide p3, p0, Lcom/mbridge/msdk/reward/adapter/b$i$a;->b:J

    iput-object p5, p0, Lcom/mbridge/msdk/reward/adapter/b$i$a;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/mbridge/msdk/reward/adapter/b$i$a;->d:Ljava/lang/String;

    iput-object p7, p0, Lcom/mbridge/msdk/reward/adapter/b$i$a;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, "1"

    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/b$i$a;->f:Lcom/mbridge/msdk/reward/adapter/b$i;

    invoke-static {v1}, Lcom/mbridge/msdk/reward/adapter/b$i;->a(Lcom/mbridge/msdk/reward/adapter/b$i;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Lcom/mbridge/msdk/foundation/entity/m;

    const-string v3, "m_download_end"

    iget v4, p0, Lcom/mbridge/msdk/reward/adapter/b$i$a;->a:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p0, Lcom/mbridge/msdk/reward/adapter/b$i$a;->b:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mbridge/msdk/reward/adapter/b$i$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$i$a;->f:Lcom/mbridge/msdk/reward/adapter/b$i;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/b$i;->a(Lcom/mbridge/msdk/reward/adapter/b$i;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v7

    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$i$a;->f:Lcom/mbridge/msdk/reward/adapter/b$i;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/b$i;->b(Lcom/mbridge/msdk/reward/adapter/b$i;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/mbridge/msdk/reward/adapter/b$i$a;->d:Ljava/lang/String;

    const-string v10, "2"

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lcom/mbridge/msdk/foundation/entity/m;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$i$a;->f:Lcom/mbridge/msdk/reward/adapter/b$i;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/b$i;->a(Lcom/mbridge/msdk/reward/adapter/b$i;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$i$a;->f:Lcom/mbridge/msdk/reward/adapter/b$i;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/b$i;->a(Lcom/mbridge/msdk/reward/adapter/b$i;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCurrentLocalRid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$i$a;->f:Lcom/mbridge/msdk/reward/adapter/b$i;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/b$i;->a(Lcom/mbridge/msdk/reward/adapter/b$i;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/entity/m;->o(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$i$a;->f:Lcom/mbridge/msdk/reward/adapter/b$i;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/b$i;->a(Lcom/mbridge/msdk/reward/adapter/b$i;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/entity/m;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$i$a;->f:Lcom/mbridge/msdk/reward/adapter/b$i;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/b$i;->a(Lcom/mbridge/msdk/reward/adapter/b$i;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdSpaceT()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/entity/m;->a(I)V

    const-string v2, "scenes"

    invoke-virtual {v1, v2, v0}, Lcom/mbridge/msdk/foundation/entity/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "url"

    iget-object v3, p0, Lcom/mbridge/msdk/reward/adapter/b$i$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/foundation/entity/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$i$a;->f:Lcom/mbridge/msdk/reward/adapter/b$i;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/b$i;->a(Lcom/mbridge/msdk/reward/adapter/b$i;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v2

    const/16 v3, 0x11f

    if-ne v2, v3, :cond_1

    const-string v0, "3"

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/foundation/entity/m;->a(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$i$a;->f:Lcom/mbridge/msdk/reward/adapter/b$i;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/b$i;->a(Lcom/mbridge/msdk/reward/adapter/b$i;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v2

    const/16 v3, 0x5e

    if-ne v2, v3, :cond_2

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/foundation/entity/m;->a(Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/b$i$a;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/b$i$a;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/foundation/entity/m;->q(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/b$i$a;->f:Lcom/mbridge/msdk/reward/adapter/b$i;

    invoke-static {v0}, Lcom/mbridge/msdk/reward/adapter/b$i;->a(Lcom/mbridge/msdk/reward/adapter/b$i;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/foundation/entity/m;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/b$i$a;->f:Lcom/mbridge/msdk/reward/adapter/b$i;

    invoke-static {v0}, Lcom/mbridge/msdk/reward/adapter/b$i;->b(Lcom/mbridge/msdk/reward/adapter/b$i;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$i$a;->f:Lcom/mbridge/msdk/reward/adapter/b$i;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/b$i;->a(Lcom/mbridge/msdk/reward/adapter/b$i;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/mbridge/msdk/foundation/same/report/g;->a(Lcom/mbridge/msdk/foundation/entity/m;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RewardCampaignsResourceManager"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method
