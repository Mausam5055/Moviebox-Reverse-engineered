.class public final Lg2/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/source/f0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg2/d$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/ImmutableList;

.field private b:J


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$a;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/a;->a(Z)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_1

    new-instance v1, Lg2/d$a;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/source/f0;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v1, v2, v4}, Lg2/d$a;-><init>(Landroidx/media3/exoplayer/source/f0;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lg2/d;->a:Lcom/google/common/collect/ImmutableList;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lg2/d;->b:J

    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/exoplayer/v2;)Z
    .locals 12

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    invoke-virtual {p0}, Lg2/d;->getNextLoadPositionUs()J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    move v6, v0

    move v7, v6

    :goto_0
    iget-object v8, p0, Lg2/d;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v8}, Ljava/util/AbstractCollection;->size()I

    move-result v8

    if-ge v6, v8, :cond_5

    iget-object v8, p0, Lg2/d;->a:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg2/d$a;

    invoke-virtual {v8}, Lg2/d$a;->getNextLoadPositionUs()J

    move-result-wide v8

    cmp-long v10, v8, v4

    if-eqz v10, :cond_2

    iget-wide v10, p1, Landroidx/media3/exoplayer/v2;->a:J

    cmp-long v10, v8, v10

    if-gtz v10, :cond_2

    const/4 v10, 0x1

    goto :goto_1

    :cond_2
    move v10, v0

    :goto_1
    cmp-long v8, v8, v2

    if-eqz v8, :cond_3

    if-eqz v10, :cond_4

    :cond_3
    iget-object v8, p0, Lg2/d;->a:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg2/d$a;

    invoke-virtual {v8, p1}, Lg2/d$a;->a(Landroidx/media3/exoplayer/v2;)Z

    move-result v8

    or-int/2addr v7, v8

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    or-int/2addr v1, v7

    if-nez v7, :cond_0

    :goto_2
    return v1
.end method

.method public getBufferedPositionUs()J
    .locals 14

    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x0

    move-wide v3, v0

    move-wide v5, v3

    :goto_0
    iget-object v7, p0, Lg2/d;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v7}, Ljava/util/AbstractCollection;->size()I

    move-result v7

    const-wide/high16 v8, -0x8000000000000000L

    if-ge v2, v7, :cond_3

    iget-object v7, p0, Lg2/d;->a:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg2/d$a;

    invoke-virtual {v7}, Lg2/d$a;->getBufferedPositionUs()J

    move-result-wide v10

    invoke-virtual {v7}, Lg2/d$a;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v7}, Lg2/d$a;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v12

    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v7}, Lg2/d$a;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    const/4 v12, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    cmp-long v7, v10, v8

    if-eqz v7, :cond_1

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_1
    cmp-long v7, v10, v8

    if-eqz v7, :cond_2

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    cmp-long v2, v3, v0

    if-eqz v2, :cond_4

    iput-wide v3, p0, Lg2/d;->b:J

    return-wide v3

    :cond_4
    cmp-long v0, v5, v0

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lg2/d;->b:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_5

    move-wide v5, v0

    :cond_5
    return-wide v5

    :cond_6
    return-wide v8
.end method

.method public getNextLoadPositionUs()J
    .locals 10

    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x0

    move-wide v3, v0

    :goto_0
    iget-object v5, p0, Lg2/d;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    const-wide/high16 v6, -0x8000000000000000L

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Lg2/d;->a:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg2/d$a;

    invoke-virtual {v5}, Lg2/d$a;->getNextLoadPositionUs()J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-eqz v5, :cond_0

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    cmp-long v0, v3, v0

    if-nez v0, :cond_2

    move-wide v3, v6

    :cond_2
    return-wide v3
.end method

.method public isLoading()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lg2/d;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lg2/d;->a:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg2/d$a;

    invoke-virtual {v2}, Lg2/d$a;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public reevaluateBuffer(J)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lg2/d;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lg2/d;->a:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg2/d$a;

    invoke-virtual {v1, p1, p2}, Lg2/d$a;->reevaluateBuffer(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
