.class Lcom/mbridge/msdk/click/a$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/click/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/click/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;ZLjava/lang/Boolean;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/Boolean;

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Z

.field final synthetic f:Lcom/mbridge/msdk/click/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/click/a;Lcom/mbridge/msdk/foundation/entity/CampaignEx;ZLjava/lang/Boolean;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/click/a$d;->f:Lcom/mbridge/msdk/click/a;

    iput-object p2, p0, Lcom/mbridge/msdk/click/a$d;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iput-boolean p3, p0, Lcom/mbridge/msdk/click/a$d;->b:Z

    iput-object p4, p0, Lcom/mbridge/msdk/click/a$d;->c:Ljava/lang/Boolean;

    iput-object p5, p0, Lcom/mbridge/msdk/click/a$d;->d:Ljava/util/List;

    iput-boolean p6, p0, Lcom/mbridge/msdk/click/a$d;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 11

    sget-object v0, Lcom/mbridge/msdk/click/a;->p:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/click/a$d;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "CommonClickControl"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    instance-of v2, p1, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/mbridge/msdk/click/a$d;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1, p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setJumpResult(Lcom/mbridge/msdk/click/entity/JumpLoaderResult;)V

    iget-object v3, p0, Lcom/mbridge/msdk/click/a$d;->f:Lcom/mbridge/msdk/click/a;

    iget-object v4, p0, Lcom/mbridge/msdk/click/a$d;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-boolean v6, p0, Lcom/mbridge/msdk/click/a$d;->b:Z

    invoke-static {v3}, Lcom/mbridge/msdk/click/a;->d(Lcom/mbridge/msdk/click/a;)Z

    move-result v7

    iget-object v8, p0, Lcom/mbridge/msdk/click/a$d;->c:Ljava/lang/Boolean;

    iget-object v9, p0, Lcom/mbridge/msdk/click/a$d;->d:Ljava/util/List;

    move-object v5, p1

    invoke-static/range {v3 .. v9}, Lcom/mbridge/msdk/click/a;->a(Lcom/mbridge/msdk/click/a;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/click/entity/JumpLoaderResult;ZZLjava/lang/Boolean;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->isjumpDone()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mbridge/msdk/click/a$d;->f:Lcom/mbridge/msdk/click/a;

    invoke-static {v1}, Lcom/mbridge/msdk/click/a;->e(Lcom/mbridge/msdk/click/a;)Lcom/mbridge/msdk/foundation/db/g;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/db/d;->a(Lcom/mbridge/msdk/foundation/db/f;)Lcom/mbridge/msdk/foundation/db/d;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/click/a$d;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v3, p0, Lcom/mbridge/msdk/click/a$d;->f:Lcom/mbridge/msdk/click/a;

    invoke-static {v3}, Lcom/mbridge/msdk/click/a;->f(Lcom/mbridge/msdk/click/a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mbridge/msdk/click/b;->a(Lcom/mbridge/msdk/foundation/db/d;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/mbridge/msdk/click/a$d;->f:Lcom/mbridge/msdk/click/a;

    iget-boolean v2, p0, Lcom/mbridge/msdk/click/a$d;->e:Z

    iget-object v3, p0, Lcom/mbridge/msdk/click/a$d;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v1, v2, v3}, Lcom/mbridge/msdk/click/a;->a(Lcom/mbridge/msdk/click/a;ZLcom/mbridge/msdk/out/Campaign;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    move-object v1, p1

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v10, v1

    move-object v1, p1

    move-object p1, v10

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_3
    :try_start_2
    new-instance p1, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    invoke-direct {p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    const-string v2, "result"

    const-string v3, "1"

    invoke-virtual {p1, v2, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v1, :cond_3

    const-string v2, "status_code"

    invoke-virtual {v1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :catchall_2
    move-exception p1

    goto :goto_6

    :cond_3
    :goto_4
    iget-object v1, p0, Lcom/mbridge/msdk/click/a$d;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "tcp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_5

    :cond_4
    const/4 v1, -0x1

    :goto_5
    const-string v2, "net_ty"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object v1

    const-string v2, "2000138"

    iget-object v3, p0, Lcom/mbridge/msdk/click/a$d;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1, v2, v3, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_7

    :goto_6
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_7
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/mbridge/msdk/click/a;->p:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/click/a$d;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "CommonClickControl"

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    instance-of v2, p1, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/mbridge/msdk/click/a$d;->f:Lcom/mbridge/msdk/click/a;

    check-cast p1, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    iget-object v3, p0, Lcom/mbridge/msdk/click/a$d;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 v4, 0x1

    invoke-static {v1, p1, v3, v4}, Lcom/mbridge/msdk/click/a;->a(Lcom/mbridge/msdk/click/a;Lcom/mbridge/msdk/click/entity/JumpLoaderResult;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_2
    iget-object p1, p0, Lcom/mbridge/msdk/click/a$d;->f:Lcom/mbridge/msdk/click/a;

    invoke-static {p1}, Lcom/mbridge/msdk/click/a;->c(Lcom/mbridge/msdk/click/a;)Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mbridge/msdk/click/a$d;->f:Lcom/mbridge/msdk/click/a;

    invoke-static {p1}, Lcom/mbridge/msdk/click/a;->c(Lcom/mbridge/msdk/click/a;)Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    move-result-object p1

    iget-object v2, p0, Lcom/mbridge/msdk/click/a$d;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-interface {p1, v2, p2}, Lcom/mbridge/msdk/out/BaseTrackingListener;->onRedirectionFailed(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/click/a$d;->f:Lcom/mbridge/msdk/click/a;

    iget-boolean p2, p0, Lcom/mbridge/msdk/click/a$d;->e:Z

    iget-object v2, p0, Lcom/mbridge/msdk/click/a$d;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {p1, p2, v2}, Lcom/mbridge/msdk/click/a;->a(Lcom/mbridge/msdk/click/a;ZLcom/mbridge/msdk/out/Campaign;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    :try_start_3
    iget-object p1, p0, Lcom/mbridge/msdk/click/a$d;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "tcp"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    goto :goto_3

    :catchall_2
    move-exception p1

    goto :goto_4

    :cond_3
    const/4 p1, -0x1

    :goto_3
    new-instance p2, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    invoke-direct {p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    const-string v2, "result"

    const-string v3, "2"

    invoke-virtual {p2, v2, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "net_ty"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v1, :cond_4

    const-string p1, "status_code"

    invoke-virtual {v1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object p1

    const-string v1, "2000138"

    iget-object v2, p0, Lcom/mbridge/msdk/click/a$d;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1, v1, v2, p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_5

    :goto_4
    sget-boolean p2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_5
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
