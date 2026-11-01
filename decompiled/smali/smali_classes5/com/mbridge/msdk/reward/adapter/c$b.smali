.class Lcom/mbridge/msdk/reward/adapter/c$b;
.super Lcom/mbridge/msdk/reward/request/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/reward/adapter/c;->b(Ljava/lang/String;ZLcom/mbridge/msdk/foundation/same/report/metrics/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

.field final synthetic f:Lcom/mbridge/msdk/reward/adapter/c;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/reward/adapter/c;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    iput-object p2, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->e:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-direct {p0}, Lcom/mbridge/msdk/reward/request/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v0, p1}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V

    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v0, p1}, Lcom/mbridge/msdk/reward/adapter/c;->b(Lcom/mbridge/msdk/reward/adapter/c;Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)Lcom/mbridge/msdk/reward/adapter/d;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/b;->getRequestId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/mbridge/msdk/reward/adapter/c;->G:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/adapter/c;->o(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/adapter/c;->o(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/adapter/c;->o(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNLRid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/adapter/c;->o(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    iput-boolean v0, p1, Lcom/mbridge/msdk/reward/adapter/c;->O:Z

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    iput-boolean v0, p1, Lcom/mbridge/msdk/reward/adapter/c;->P:Z

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c;->o:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    iget-boolean v1, v1, Lcom/mbridge/msdk/reward/adapter/c;->Q:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    iput-boolean v0, v1, Lcom/mbridge/msdk/reward/adapter/c;->Q:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    iput-boolean v0, p1, Lcom/mbridge/msdk/reward/adapter/c;->S:Z

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    iput-boolean v0, p1, Lcom/mbridge/msdk/reward/adapter/c;->R:Z

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->e:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    const-string v1, "exception after load success"

    invoke-static {p1, v1, v0}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/adapter/c;->f(Lcom/mbridge/msdk/reward/adapter/c;)V

    :cond_4
    :goto_1
    return-void

    :goto_2
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public b(ILjava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;J)J

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v0}, Lcom/mbridge/msdk/reward/adapter/c;->o(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v0}, Lcom/mbridge/msdk/reward/adapter/c;->o(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v0}, Lcom/mbridge/msdk/reward/adapter/c;->o(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNLRid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v0}, Lcom/mbridge/msdk/reward/adapter/c;->o(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v0}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v0}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    iput-boolean v1, v0, Lcom/mbridge/msdk/reward/adapter/c;->O:Z

    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    iput-boolean v1, v0, Lcom/mbridge/msdk/reward/adapter/c;->P:Z

    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    iget-object v0, v0, Lcom/mbridge/msdk/reward/adapter/c;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    iget-boolean v2, v2, Lcom/mbridge/msdk/reward/adapter/c;->Q:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    iput-boolean v1, v2, Lcom/mbridge/msdk/reward/adapter/c;->Q:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v0, p3, p1}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;Lcom/mbridge/msdk/foundation/same/report/metrics/c;I)V

    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    iput-boolean v1, v0, Lcom/mbridge/msdk/reward/adapter/c;->S:Z

    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    iput-boolean v1, v0, Lcom/mbridge/msdk/reward/adapter/c;->R:Z

    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v0}, Lcom/mbridge/msdk/reward/adapter/c;->h(Lcom/mbridge/msdk/reward/adapter/c;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v0, p1, p2, p3}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;ILjava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    :cond_4
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$b;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/adapter/c;->f(Lcom/mbridge/msdk/reward/adapter/c;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
