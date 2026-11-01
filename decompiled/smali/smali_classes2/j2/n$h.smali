.class final Lj2/n$h;
.super Lj2/n$i;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj2/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "h"
.end annotation


# instance fields
.field private final e:I

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:Z


# direct methods
.method public constructor <init>(ILandroidx/media3/common/f0;ILj2/n$e;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Lj2/n$i;-><init>(ILandroidx/media3/common/f0;I)V

    const/4 p1, 0x0

    invoke-static {p5, p1}, Landroidx/media3/exoplayer/x3;->l(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lj2/n$h;->f:Z

    iget-object p2, p0, Lj2/n$i;->d:Landroidx/media3/common/r;

    iget p2, p2, Landroidx/media3/common/r;->e:I

    iget p3, p4, Landroidx/media3/common/h0;->y:I

    not-int p3, p3

    and-int/2addr p2, p3

    and-int/lit8 p3, p2, 0x1

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, p1

    :goto_0
    iput-boolean p3, p0, Lj2/n$h;->g:Z

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    move p2, p1

    :goto_1
    iput-boolean p2, p0, Lj2/n$h;->h:Z

    if-eqz p7, :cond_2

    invoke-static {p7}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    goto :goto_2

    :cond_2
    iget-object p2, p4, Landroidx/media3/common/h0;->v:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, ""

    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    goto :goto_2

    :cond_3
    iget-object p2, p4, Landroidx/media3/common/h0;->v:Lcom/google/common/collect/ImmutableList;

    :goto_2
    move p3, p1

    :goto_3
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge p3, v1, :cond_5

    iget-object v1, p0, Lj2/n$i;->d:Landroidx/media3/common/r;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-boolean v3, p4, Landroidx/media3/common/h0;->z:Z

    invoke-static {v1, v2, v3}, Lj2/n;->H(Landroidx/media3/common/r;Ljava/lang/String;Z)I

    move-result v1

    if-lez v1, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_5
    const p3, 0x7fffffff

    move v1, p1

    :goto_4
    iput p3, p0, Lj2/n$h;->i:I

    iput v1, p0, Lj2/n$h;->j:I

    const/16 p2, 0x440

    if-eqz p7, :cond_6

    move p3, p2

    goto :goto_5

    :cond_6
    iget p3, p4, Landroidx/media3/common/h0;->w:I

    :goto_5
    iget-object p7, p0, Lj2/n$i;->d:Landroidx/media3/common/r;

    iget p7, p7, Landroidx/media3/common/r;->f:I

    invoke-static {p7, p3}, Lj2/n;->y(II)I

    move-result p3

    iput p3, p0, Lj2/n$h;->k:I

    iget-object p7, p0, Lj2/n$i;->d:Landroidx/media3/common/r;

    iget p7, p7, Landroidx/media3/common/r;->f:I

    and-int/2addr p2, p7

    if-eqz p2, :cond_7

    move p2, v0

    goto :goto_6

    :cond_7
    move p2, p1

    :goto_6
    iput-boolean p2, p0, Lj2/n$h;->m:Z

    invoke-static {p6}, Lj2/n;->a0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_8

    move p2, v0

    goto :goto_7

    :cond_8
    move p2, p1

    :goto_7
    iget-object p7, p0, Lj2/n$i;->d:Landroidx/media3/common/r;

    invoke-static {p7, p6, p2}, Lj2/n;->H(Landroidx/media3/common/r;Ljava/lang/String;Z)I

    move-result p2

    iput p2, p0, Lj2/n$h;->l:I

    if-gtz v1, :cond_b

    iget-object p6, p4, Landroidx/media3/common/h0;->v:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p6}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p6

    if-eqz p6, :cond_9

    if-gtz p3, :cond_b

    :cond_9
    iget-boolean p3, p0, Lj2/n$h;->g:Z

    if-nez p3, :cond_b

    iget-boolean p3, p0, Lj2/n$h;->h:Z

    if-eqz p3, :cond_a

    if-lez p2, :cond_a

    goto :goto_8

    :cond_a
    move p2, p1

    goto :goto_9

    :cond_b
    :goto_8
    move p2, v0

    :goto_9
    iget-boolean p3, p4, Lj2/n$e;->A0:Z

    invoke-static {p5, p3}, Landroidx/media3/exoplayer/x3;->l(IZ)Z

    move-result p3

    if-eqz p3, :cond_c

    if-eqz p2, :cond_c

    move p1, v0

    :cond_c
    iput p1, p0, Lj2/n$h;->e:I

    return-void
.end method

.method public static d(Ljava/util/List;Ljava/util/List;)I
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj2/n$h;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj2/n$h;

    invoke-virtual {p0, p1}, Lj2/n$h;->e(Lj2/n$h;)I

    move-result p0

    return p0
.end method

.method public static f(ILandroidx/media3/common/f0;Lj2/n$e;[ILjava/lang/String;Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .locals 12

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$a;

    move-result-object v0

    const/4 v1, 0x0

    move-object v10, p1

    :goto_0
    iget v2, v10, Landroidx/media3/common/f0;->a:I

    if-ge v1, v2, :cond_0

    new-instance v11, Lj2/n$h;

    aget v7, p3, v1

    move-object v2, v11

    move v3, p0

    move-object v4, p1

    move v5, v1

    move-object v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v2 .. v9}, Lj2/n$h;-><init>(ILandroidx/media3/common/f0;ILj2/n$e;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lj2/n$h;->e:I

    return v0
.end method

.method public bridge synthetic b(Lj2/n$i;)Z
    .locals 0

    check-cast p1, Lj2/n$h;

    invoke-virtual {p0, p1}, Lj2/n$h;->g(Lj2/n$h;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lj2/n$h;

    invoke-virtual {p0, p1}, Lj2/n$h;->e(Lj2/n$h;)I

    move-result p1

    return p1
.end method

.method public e(Lj2/n$h;)I
    .locals 4

    invoke-static {}, Lcom/google/common/collect/h2;->k()Lcom/google/common/collect/h2;

    move-result-object v0

    iget-boolean v1, p0, Lj2/n$h;->f:Z

    iget-boolean v2, p1, Lj2/n$h;->f:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/h2;->h(ZZ)Lcom/google/common/collect/h2;

    move-result-object v0

    iget v1, p0, Lj2/n$h;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lj2/n$h;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/h2;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/h2;

    move-result-object v0

    iget v1, p0, Lj2/n$h;->j:I

    iget v2, p1, Lj2/n$h;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/h2;->d(II)Lcom/google/common/collect/h2;

    move-result-object v0

    iget v1, p0, Lj2/n$h;->k:I

    iget v2, p1, Lj2/n$h;->k:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/h2;->d(II)Lcom/google/common/collect/h2;

    move-result-object v0

    iget-boolean v1, p0, Lj2/n$h;->g:Z

    iget-boolean v2, p1, Lj2/n$h;->g:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/h2;->h(ZZ)Lcom/google/common/collect/h2;

    move-result-object v0

    iget-boolean v1, p0, Lj2/n$h;->h:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Lj2/n$h;->h:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget v3, p0, Lj2/n$h;->j:I

    if-nez v3, :cond_0

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/h2;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/h2;

    move-result-object v0

    iget v1, p0, Lj2/n$h;->l:I

    iget v2, p1, Lj2/n$h;->l:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/h2;->d(II)Lcom/google/common/collect/h2;

    move-result-object v0

    iget v1, p0, Lj2/n$h;->k:I

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lj2/n$h;->m:Z

    iget-boolean p1, p1, Lj2/n$h;->m:Z

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/h2;->i(ZZ)Lcom/google/common/collect/h2;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/h2;->j()I

    move-result p1

    return p1
.end method

.method public g(Lj2/n$h;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
