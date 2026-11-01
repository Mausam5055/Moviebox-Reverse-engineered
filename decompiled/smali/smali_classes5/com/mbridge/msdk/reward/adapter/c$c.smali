.class Lcom/mbridge/msdk/reward/adapter/c$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/reward/adapter/b$h;


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

.field final synthetic c:Z

.field final synthetic d:Ljava/util/concurrent/CopyOnWriteArrayList;

.field final synthetic e:I

.field final synthetic f:Lcom/mbridge/msdk/reward/adapter/c;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/reward/adapter/c;Lcom/mbridge/msdk/foundation/entity/CampaignEx;ZLjava/util/concurrent/CopyOnWriteArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    iput-object p2, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iput-boolean p3, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->c:Z

    iput-object p4, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput p5, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->e:I

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

    iput-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->a:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mbridge/msdk/reward/adapter/c;->O:Z

    iget-boolean v0, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->c:Z

    if-nez v0, :cond_7

    invoke-virtual {p4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cmpt=1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    move-result-object v2

    new-instance v10, Lcom/mbridge/msdk/reward/adapter/c$c$a;

    move-object v3, v10

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v3 .. v9}, Lcom/mbridge/msdk/reward/adapter/c$c$a;-><init>(Lcom/mbridge/msdk/reward/adapter/c$c;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    invoke-virtual {v2, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    iget-object v3, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-boolean v4, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->c:Z

    iget v5, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->e:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/mbridge/msdk/reward/adapter/c;->a(Ljava/util/List;ZI)Z

    move-result v2

    const/4 v3, 0x5

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->s(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v5}, Lcom/mbridge/msdk/reward/adapter/c;->t(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v6}, Lcom/mbridge/msdk/reward/adapter/c;->u(Lcom/mbridge/msdk/reward/adapter/c;)Z

    move-result v6

    invoke-static {v2, v4, p4, v5, v6}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/adapter/a;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    iget-boolean v2, v2, Lcom/mbridge/msdk/reward/adapter/c;->R:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    iput-boolean v1, v2, Lcom/mbridge/msdk/reward/adapter/c;->R:Z

    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->a:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->b(Ljava/util/List;)V

    :cond_3
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/adapter/a;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v4, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->a:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-interface {v2, v3, v4}, Lcom/mbridge/msdk/reward/adapter/a;->a(Ljava/util/List;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v5}, Lcom/mbridge/msdk/reward/adapter/c;->u(Lcom/mbridge/msdk/reward/adapter/c;)Z

    move-result v5

    invoke-static {v2, p2, v4, v5, p3}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/adapter/a;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    iget-boolean v2, v2, Lcom/mbridge/msdk/reward/adapter/c;->S:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/mbridge/msdk/reward/adapter/c;->S:Z

    const v2, 0xd6d8f

    const-string v3, "errorCode: 3503 errorMessage: have no temp but isReady false"

    invoke-static {v2, v3}, Lcom/mbridge/msdk/foundation/error/a;->a(ILjava/lang/String;)Lcom/mbridge/msdk/foundation/error/b;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->a:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    if-nez v3, :cond_6

    new-instance v3, Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-direct {v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;-><init>()V

    iput-object v3, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->a:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    :cond_6
    iget-object v3, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->a:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    iget-object v4, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v4}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->b(Ljava/util/List;)V

    iget-object v3, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->a:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-virtual {v3, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Lcom/mbridge/msdk/foundation/error/b;)V

    iget-object v3, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v3}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/adapter/a;

    move-result-object v3

    iget-object v4, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v5, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->a:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-interface {v3, v4, v2, v5}, Lcom/mbridge/msdk/reward/adapter/a;->a(Ljava/util/List;Lcom/mbridge/msdk/foundation/error/b;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    const-string v2, "RewardMVVideoAdapter"

    const-string v3, "Campaign \u4e0b\u8f7d\u6210\u529f\uff1a \u975e\u5927\u6a21\u677f\uff0c\u4e0d\u5b58\u5728\u64ad\u653e\u6a21\u677f,isReay false onVideoLoadFail"

    invoke-static {v2, v3}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    iget-boolean p1, p1, Lcom/mbridge/msdk/reward/adapter/c;->P:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    iget-boolean p1, p1, Lcom/mbridge/msdk/reward/adapter/c;->Q:Z

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c;->o:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    iget-boolean v0, v0, Lcom/mbridge/msdk/reward/adapter/c;->Q:Z

    if-eqz v0, :cond_8

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    iput-boolean v1, v0, Lcom/mbridge/msdk/reward/adapter/c;->Q:Z

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/mbridge/msdk/reward/adapter/c$c$b;

    invoke-direct {v0, p0, p3, p2, p4}, Lcom/mbridge/msdk/reward/adapter/c$c$b;-><init>(Lcom/mbridge/msdk/reward/adapter/c$c;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_9
    :goto_2
    return-void
.end method

.method public a(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/mbridge/msdk/foundation/error/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;",
            "Lcom/mbridge/msdk/foundation/error/b;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mbridge/msdk/reward/adapter/c;->O:Z

    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v0}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/adapter/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v0}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v0}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mbridge/msdk/reward/adapter/c$c$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/reward/adapter/c$c$c;-><init>(Lcom/mbridge/msdk/reward/adapter/c$c;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/mbridge/msdk/foundation/error/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
