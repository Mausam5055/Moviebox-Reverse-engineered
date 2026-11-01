.class public Lcom/mbridge/msdk/mbnative/cache/a;
.super Lcom/mbridge/msdk/mbnative/cache/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mbridge/msdk/mbnative/cache/b<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Lcom/mbridge/msdk/out/Campaign;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/mbridge/msdk/foundation/db/e;

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/mbnative/cache/b;-><init>()V

    iput p1, p0, Lcom/mbridge/msdk/mbnative/cache/a;->b:I

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/db/g;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/g;

    move-result-object p1

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/db/e;->a(Lcom/mbridge/msdk/foundation/db/f;)Lcom/mbridge/msdk/foundation/db/e;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/mbnative/cache/a;->a:Lcom/mbridge/msdk/foundation/db/e;

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/mbnative/cache/a;)Lcom/mbridge/msdk/foundation/db/e;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/mbnative/cache/a;->a:Lcom/mbridge/msdk/foundation/db/e;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/mbnative/cache/a;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/out/Campaign;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/cache/a;->a:Lcom/mbridge/msdk/foundation/db/e;

    iget v1, p0, Lcom/mbridge/msdk/mbnative/cache/a;->b:I

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/mbridge/msdk/foundation/db/e;->a(Ljava/lang/String;III)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p2, v2}, Lcom/mbridge/msdk/mbnative/cache/a;->a(Ljava/util/List;I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p2, p1}, Lcom/mbridge/msdk/mbnative/cache/a;->a(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/mbnative/cache/a;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mbridge/msdk/mbnative/cache/a;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 7

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    check-cast p2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/cache/a;->a:Lcom/mbridge/msdk/foundation/db/e;

    invoke-virtual {p2}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getTab()I

    move-result v2

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCacheLevel()I

    move-result v4

    invoke-virtual {p2}, Lcom/mbridge/msdk/out/Campaign;->getType()I

    move-result v5

    move-object v3, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/mbridge/msdk/foundation/db/e;->a(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/cache/a;->a:Lcom/mbridge/msdk/foundation/db/e;

    invoke-virtual {p2}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCacheLevel()I

    move-result v3

    iget v4, p0, Lcom/mbridge/msdk/mbnative/cache/a;->b:I

    move-object v2, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/mbridge/msdk/foundation/db/e;->a(Ljava/lang/String;Ljava/lang/String;IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/out/Campaign;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/cache/a;->a:Lcom/mbridge/msdk/foundation/db/e;

    iget v1, p0, Lcom/mbridge/msdk/mbnative/cache/a;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/mbridge/msdk/foundation/db/e;->a(Ljava/lang/String;IIZ)V

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/cache/a;->a:Lcom/mbridge/msdk/foundation/db/e;

    iget v1, p0, Lcom/mbridge/msdk/mbnative/cache/a;->b:I

    const/4 v4, 0x2

    invoke-virtual {v0, p1, v4, v1, v3}, Lcom/mbridge/msdk/foundation/db/e;->a(Ljava/lang/String;IIZ)V

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCacheLevel(I)V

    iget-object v1, p0, Lcom/mbridge/msdk/mbnative/cache/a;->a:Lcom/mbridge/msdk/foundation/db/e;

    invoke-virtual {v1, v0, p1, v2}, Lcom/mbridge/msdk/foundation/db/e;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;I)J

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/out/Campaign;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v0, 0x1

    xor-int/2addr p3, v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/mbnative/cache/a;->a:Lcom/mbridge/msdk/foundation/db/e;

    iget v2, p0, Lcom/mbridge/msdk/mbnative/cache/a;->b:I

    invoke-virtual {v1, p1, v0, v2, p3}, Lcom/mbridge/msdk/foundation/db/e;->a(Ljava/lang/String;IIZ)V

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/cache/a;->a:Lcom/mbridge/msdk/foundation/db/e;

    iget v1, p0, Lcom/mbridge/msdk/mbnative/cache/a;->b:I

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2, v1, p3}, Lcom/mbridge/msdk/foundation/db/e;->a(Ljava/lang/String;IIZ)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/threadpool/a;->b()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p3

    new-instance v0, Lcom/mbridge/msdk/mbnative/cache/a$a;

    invoke-direct {v0, p0, p2, p1}, Lcom/mbridge/msdk/mbnative/cache/a$a;-><init>(Lcom/mbridge/msdk/mbnative/cache/a;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCacheLevel(I)V

    iget-object v2, p0, Lcom/mbridge/msdk/mbnative/cache/a;->a:Lcom/mbridge/msdk/foundation/db/e;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, p2, v3}, Lcom/mbridge/msdk/foundation/db/e;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;I)J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getTimestamp()J

    move-result-wide v3

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 v5, 0x2

    if-eq p2, v5, :cond_0

    const-wide/16 v5, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/mbnative/cache/b;->b()J

    move-result-wide v5

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/mbridge/msdk/mbnative/cache/b;->a()J

    move-result-wide v5

    :goto_0
    sub-long/2addr v1, v3

    cmp-long p2, v1, v5

    if-lez p2, :cond_2

    return p1

    :cond_2
    return v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/mbnative/cache/a;->b(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/out/Campaign;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/cache/a;->a:Lcom/mbridge/msdk/foundation/db/e;

    iget v1, p0, Lcom/mbridge/msdk/mbnative/cache/a;->b:I

    const/4 v2, 0x2

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/mbridge/msdk/foundation/db/e;->a(Ljava/lang/String;III)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p2, v2}, Lcom/mbridge/msdk/mbnative/cache/a;->a(Ljava/util/List;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p2, p0, Lcom/mbridge/msdk/mbnative/cache/a;->a:Lcom/mbridge/msdk/foundation/db/e;

    iget v1, p0, Lcom/mbridge/msdk/mbnative/cache/a;->b:I

    invoke-virtual {p2, p1, v2, v1}, Lcom/mbridge/msdk/foundation/db/e;->a(Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-object v0
.end method
