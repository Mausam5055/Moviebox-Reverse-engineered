.class Lcom/mbridge/msdk/reward/adapter/c$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/reward/adapter/b$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

.field final synthetic b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic c:Ljava/util/concurrent/CopyOnWriteArrayList;

.field final synthetic d:Z

.field final synthetic e:I

.field final synthetic f:Lcom/mbridge/msdk/reward/adapter/c;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/reward/adapter/c;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/concurrent/CopyOnWriteArrayList;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$e;->f:Lcom/mbridge/msdk/reward/adapter/c;

    iput-object p2, p0, Lcom/mbridge/msdk/reward/adapter/c$e;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iput-object p3, p0, Lcom/mbridge/msdk/reward/adapter/c$e;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-boolean p4, p0, Lcom/mbridge/msdk/reward/adapter/c$e;->d:Z

    iput p5, p0, Lcom/mbridge/msdk/reward/adapter/c$e;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->c()Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getLocalRequestId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    iput-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$e;->a:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/error/b;)V
    .locals 4

    const-string p1, "\u5927\u6a21\u677f\u4e1a\u52a1\uff0c\u5927\u6a21\u677f\u4e0b\u8f7d\u5931\u8d25"

    const-string v0, "RewardMVVideoAdapter"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$e;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$e;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$e;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "tpl download fail but hit ignoreCheckRule"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$e;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCMPTEntryUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/c$e;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$e;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "endcard download fail but hit ignoreCheckRule at 3203"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$e;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/adapter/c;->s(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/c$e;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/reward/adapter/c$e;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v3}, Lcom/mbridge/msdk/reward/adapter/c;->u(Lcom/mbridge/msdk/reward/adapter/c;)Z

    move-result v3

    invoke-static {p1, v1, v2, v3, p2}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$e;->f:Lcom/mbridge/msdk/reward/adapter/c;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/mbridge/msdk/reward/adapter/c;->P:Z

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$e;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$e;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    move-result-object p1

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$e;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/adapter/a;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$e;->f:Lcom/mbridge/msdk/reward/adapter/c;

    iget-boolean p1, p1, Lcom/mbridge/msdk/reward/adapter/c;->S:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$e;->f:Lcom/mbridge/msdk/reward/adapter/c;

    iput-boolean p2, p1, Lcom/mbridge/msdk/reward/adapter/c;->S:Z

    if-eqz p3, :cond_3

    const-string p1, "errorCode: 3203 errorMessage: tpl temp resource download failed"

    invoke-virtual {p3, p1}, Lcom/mbridge/msdk/foundation/error/b;->c(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$e;->a:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    if-nez p1, :cond_4

    new-instance p1, Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-direct {p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$e;->a:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    :cond_4
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$e;->a:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    iget-object p2, p0, Lcom/mbridge/msdk/reward/adapter/c$e;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->b(Ljava/util/List;)V

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$e;->a:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-virtual {p1, p3}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Lcom/mbridge/msdk/foundation/error/b;)V

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$e;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/adapter/a;

    move-result-object p1

    iget-object p2, p0, Lcom/mbridge/msdk/reward/adapter/c$e;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {p2}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    move-result-object p2

    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/c$e;->a:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-interface {p1, p2, p3, v1}, Lcom/mbridge/msdk/reward/adapter/a;->a(Ljava/util/List;Lcom/mbridge/msdk/foundation/error/b;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    const-string p1, "\u5927\u6a21\u677f\u4e1a\u52a1\uff0c\u5927\u6a21\u677f\u4e0b\u8f7d\u5931\u8d25 onVideoLoadFail"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string p4, "RewardMVVideoAdapter"

    const-string v0, "\u5927\u6a21\u677f\u4e1a\u52a1\uff0c\u5927\u6a21\u677f\u4e0b\u8f7d\u6210\u529f"

    invoke-static {p4, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/mbridge/msdk/reward/adapter/c$e;->f:Lcom/mbridge/msdk/reward/adapter/c;

    const/4 v0, 0x1

    iput-boolean v0, p4, Lcom/mbridge/msdk/reward/adapter/c;->P:Z

    iget-object p4, p0, Lcom/mbridge/msdk/reward/adapter/c$e;->f:Lcom/mbridge/msdk/reward/adapter/c;

    iget-boolean p4, p4, Lcom/mbridge/msdk/reward/adapter/c;->O:Z

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/mbridge/msdk/reward/adapter/c$e;->f:Lcom/mbridge/msdk/reward/adapter/c;

    iget-boolean p4, p4, Lcom/mbridge/msdk/reward/adapter/c;->Q:Z

    if-nez p4, :cond_1

    iget-object p4, p0, Lcom/mbridge/msdk/reward/adapter/c$e;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {p4}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    move-result-object p4

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/mbridge/msdk/reward/adapter/c$e;->f:Lcom/mbridge/msdk/reward/adapter/c;

    iget-object p4, p4, Lcom/mbridge/msdk/reward/adapter/c;->o:Ljava/lang/Object;

    monitor-enter p4

    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/c$e;->f:Lcom/mbridge/msdk/reward/adapter/c;

    iget-boolean v1, v1, Lcom/mbridge/msdk/reward/adapter/c;->Q:Z

    if-eqz v1, :cond_0

    monitor-exit p4

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/c$e;->f:Lcom/mbridge/msdk/reward/adapter/c;

    iput-boolean v0, v1, Lcom/mbridge/msdk/reward/adapter/c;->Q:Z

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p4, p0, Lcom/mbridge/msdk/reward/adapter/c$e;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {p4}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    move-result-object p4

    new-instance v0, Lcom/mbridge/msdk/reward/adapter/c$e$a;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/mbridge/msdk/reward/adapter/c$e$a;-><init>(Lcom/mbridge/msdk/reward/adapter/c$e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :goto_0
    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-void
.end method
