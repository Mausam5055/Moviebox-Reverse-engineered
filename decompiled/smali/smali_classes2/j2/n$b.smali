.class final Lj2/n$b;
.super Lj2/n$i;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj2/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final e:I

.field private final f:Z

.field private final g:Ljava/lang/String;

.field private final h:Lj2/n$e;

.field private final i:Z

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:Z

.field private final n:Z

.field private final o:I

.field private final p:I

.field private final q:Z

.field private final r:I

.field private final s:I

.field private final t:I

.field private final u:I

.field private final v:Z

.field private final w:Z

.field private final x:Z


# direct methods
.method public constructor <init>(ILandroidx/media3/common/f0;ILj2/n$e;IZLcom/google/common/base/n;I)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Lj2/n$i;-><init>(ILandroidx/media3/common/f0;I)V

    iput-object p4, p0, Lj2/n$b;->h:Lj2/n$e;

    iget-boolean p1, p4, Lj2/n$e;->y0:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x18

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    :goto_0
    iget-boolean p2, p4, Lj2/n$e;->u0:Z

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    and-int p2, p8, p1

    if-eqz p2, :cond_1

    move p2, p3

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    iput-boolean p2, p0, Lj2/n$b;->m:Z

    iget-object p2, p0, Lj2/n$i;->d:Landroidx/media3/common/r;

    iget-object p2, p2, Landroidx/media3/common/r;->d:Ljava/lang/String;

    invoke-static {p2}, Lj2/n;->a0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lj2/n$b;->g:Ljava/lang/String;

    invoke-static {p5, v0}, Landroidx/media3/exoplayer/x3;->l(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lj2/n$b;->i:Z

    move p2, v0

    :goto_2
    iget-object p8, p4, Landroidx/media3/common/h0;->p:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p8}, Ljava/util/AbstractCollection;->size()I

    move-result p8

    const v1, 0x7fffffff

    if-ge p2, p8, :cond_3

    iget-object p8, p0, Lj2/n$i;->d:Landroidx/media3/common/r;

    iget-object v2, p4, Landroidx/media3/common/h0;->p:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p8, v2, v0}, Lj2/n;->H(Landroidx/media3/common/r;Ljava/lang/String;Z)I

    move-result p8

    if-lez p8, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    move p8, v0

    move p2, v1

    :goto_3
    iput p2, p0, Lj2/n$b;->k:I

    iput p8, p0, Lj2/n$b;->j:I

    iget-object p2, p0, Lj2/n$i;->d:Landroidx/media3/common/r;

    iget p2, p2, Landroidx/media3/common/r;->f:I

    iget p8, p4, Landroidx/media3/common/h0;->q:I

    invoke-static {p2, p8}, Lj2/n;->y(II)I

    move-result p2

    iput p2, p0, Lj2/n$b;->l:I

    iget-object p2, p0, Lj2/n$i;->d:Landroidx/media3/common/r;

    iget p8, p2, Landroidx/media3/common/r;->f:I

    if-eqz p8, :cond_5

    and-int/2addr p8, p3

    if-eqz p8, :cond_4

    goto :goto_4

    :cond_4
    move p8, v0

    goto :goto_5

    :cond_5
    :goto_4
    move p8, p3

    :goto_5
    iput-boolean p8, p0, Lj2/n$b;->n:Z

    iget p8, p2, Landroidx/media3/common/r;->e:I

    and-int/2addr p8, p3

    if-eqz p8, :cond_6

    move p8, p3

    goto :goto_6

    :cond_6
    move p8, v0

    :goto_6
    iput-boolean p8, p0, Lj2/n$b;->q:Z

    invoke-static {p2}, Lj2/n;->B(Landroidx/media3/common/r;)Z

    move-result p2

    iput-boolean p2, p0, Lj2/n$b;->x:Z

    iget-object p2, p0, Lj2/n$i;->d:Landroidx/media3/common/r;

    iget p8, p2, Landroidx/media3/common/r;->E:I

    iput p8, p0, Lj2/n$b;->r:I

    iget v2, p2, Landroidx/media3/common/r;->F:I

    iput v2, p0, Lj2/n$b;->s:I

    iget v2, p2, Landroidx/media3/common/r;->j:I

    iput v2, p0, Lj2/n$b;->t:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    iget v4, p4, Landroidx/media3/common/h0;->s:I

    if-gt v2, v4, :cond_9

    :cond_7
    if-eq p8, v3, :cond_8

    iget v2, p4, Landroidx/media3/common/h0;->r:I

    if-gt p8, v2, :cond_9

    :cond_8
    invoke-interface {p7, p2}, Lcom/google/common/base/n;->apply(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    move p2, p3

    goto :goto_7

    :cond_9
    move p2, v0

    :goto_7
    iput-boolean p2, p0, Lj2/n$b;->f:Z

    invoke-static {}, Landroidx/media3/common/util/a1;->p0()[Ljava/lang/String;

    move-result-object p2

    move p7, v0

    :goto_8
    array-length p8, p2

    if-ge p7, p8, :cond_b

    iget-object p8, p0, Lj2/n$i;->d:Landroidx/media3/common/r;

    aget-object v2, p2, p7

    invoke-static {p8, v2, v0}, Lj2/n;->H(Landroidx/media3/common/r;Ljava/lang/String;Z)I

    move-result p8

    if-lez p8, :cond_a

    goto :goto_9

    :cond_a
    add-int/lit8 p7, p7, 0x1

    goto :goto_8

    :cond_b
    move p8, v0

    move p7, v1

    :goto_9
    iput p7, p0, Lj2/n$b;->o:I

    iput p8, p0, Lj2/n$b;->p:I

    move p2, v0

    :goto_a
    iget-object p7, p4, Landroidx/media3/common/h0;->t:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p7}, Ljava/util/AbstractCollection;->size()I

    move-result p7

    if-ge p2, p7, :cond_d

    iget-object p7, p0, Lj2/n$i;->d:Landroidx/media3/common/r;

    iget-object p7, p7, Landroidx/media3/common/r;->o:Ljava/lang/String;

    if-eqz p7, :cond_c

    iget-object p8, p4, Landroidx/media3/common/h0;->t:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p8, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p8

    invoke-virtual {p7, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_c

    move v1, p2

    goto :goto_b

    :cond_c
    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_d
    :goto_b
    iput v1, p0, Lj2/n$b;->u:I

    invoke-static {p5}, Landroidx/media3/exoplayer/x3;->h(I)I

    move-result p2

    const/16 p4, 0x80

    if-ne p2, p4, :cond_e

    move p2, p3

    goto :goto_c

    :cond_e
    move p2, v0

    :goto_c
    iput-boolean p2, p0, Lj2/n$b;->v:Z

    invoke-static {p5}, Landroidx/media3/exoplayer/x3;->j(I)I

    move-result p2

    const/16 p4, 0x40

    if-ne p2, p4, :cond_f

    goto :goto_d

    :cond_f
    move p3, v0

    :goto_d
    iput-boolean p3, p0, Lj2/n$b;->w:Z

    invoke-direct {p0, p5, p6, p1}, Lj2/n$b;->g(IZI)I

    move-result p1

    iput p1, p0, Lj2/n$b;->e:I

    return-void
.end method

.method public static d(Ljava/util/List;Ljava/util/List;)I
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj2/n$b;

    invoke-static {p1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj2/n$b;

    invoke-virtual {p0, p1}, Lj2/n$b;->e(Lj2/n$b;)I

    move-result p0

    return p0
.end method

.method public static f(ILandroidx/media3/common/f0;Lj2/n$e;[IZLcom/google/common/base/n;I)Lcom/google/common/collect/ImmutableList;
    .locals 13

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$a;

    move-result-object v0

    const/4 v1, 0x0

    move-object v11, p1

    :goto_0
    iget v2, v11, Landroidx/media3/common/f0;->a:I

    if-ge v1, v2, :cond_0

    new-instance v12, Lj2/n$b;

    aget v7, p3, v1

    move-object v2, v12

    move v3, p0

    move-object v4, p1

    move v5, v1

    move-object v6, p2

    move/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Lj2/n$b;-><init>(ILandroidx/media3/common/f0;ILj2/n$e;IZLcom/google/common/base/n;I)V

    invoke-virtual {v0, v12}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private g(IZI)I
    .locals 4

    iget-object v0, p0, Lj2/n$b;->h:Lj2/n$e;

    iget-boolean v0, v0, Lj2/n$e;->A0:Z

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/x3;->l(IZ)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lj2/n$b;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lj2/n$b;->h:Lj2/n$e;

    iget-boolean v0, v0, Lj2/n$e;->t0:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lj2/n$b;->h:Lj2/n$e;

    iget-object v2, v0, Landroidx/media3/common/h0;->u:Landroidx/media3/common/h0$b;

    iget v2, v2, Landroidx/media3/common/h0$b;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lj2/n$i;->d:Landroidx/media3/common/r;

    invoke-static {v0, p1, v2}, Lj2/n;->C(Lj2/n$e;ILandroidx/media3/common/r;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-static {p1, v1}, Landroidx/media3/exoplayer/x3;->l(IZ)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lj2/n$b;->f:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lj2/n$i;->d:Landroidx/media3/common/r;

    iget v0, v0, Landroidx/media3/common/r;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lj2/n$b;->h:Lj2/n$e;

    iget-boolean v1, v0, Landroidx/media3/common/h0;->C:Z

    if-nez v1, :cond_4

    iget-boolean v1, v0, Landroidx/media3/common/h0;->B:Z

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lj2/n$e;->C0:Z

    if-nez v1, :cond_3

    if-nez p2, :cond_4

    :cond_3
    iget-object p2, v0, Landroidx/media3/common/h0;->u:Landroidx/media3/common/h0$b;

    iget p2, p2, Landroidx/media3/common/h0$b;->a:I

    if-eq p2, v3, :cond_4

    and-int/2addr p1, p3

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    :goto_0
    return v3
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lj2/n$b;->e:I

    return v0
.end method

.method public bridge synthetic b(Lj2/n$i;)Z
    .locals 0

    check-cast p1, Lj2/n$b;

    invoke-virtual {p0, p1}, Lj2/n$b;->h(Lj2/n$b;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lj2/n$b;

    invoke-virtual {p0, p1}, Lj2/n$b;->e(Lj2/n$b;)I

    move-result p1

    return p1
.end method

.method public e(Lj2/n$b;)I
    .locals 5

    iget-boolean v0, p0, Lj2/n$b;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lj2/n$b;->i:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lj2/n;->A()Lcom/google/common/collect/Ordering;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lj2/n;->A()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/google/common/collect/h2;->k()Lcom/google/common/collect/h2;

    move-result-object v1

    iget-boolean v2, p0, Lj2/n$b;->i:Z

    iget-boolean v3, p1, Lj2/n$b;->i:Z

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/h2;->h(ZZ)Lcom/google/common/collect/h2;

    move-result-object v1

    iget v2, p0, Lj2/n$b;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lj2/n$b;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/h2;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/h2;

    move-result-object v1

    iget v2, p0, Lj2/n$b;->j:I

    iget v3, p1, Lj2/n$b;->j:I

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/h2;->d(II)Lcom/google/common/collect/h2;

    move-result-object v1

    iget v2, p0, Lj2/n$b;->l:I

    iget v3, p1, Lj2/n$b;->l:I

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/h2;->d(II)Lcom/google/common/collect/h2;

    move-result-object v1

    iget-boolean v2, p0, Lj2/n$b;->q:Z

    iget-boolean v3, p1, Lj2/n$b;->q:Z

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/h2;->h(ZZ)Lcom/google/common/collect/h2;

    move-result-object v1

    iget-boolean v2, p0, Lj2/n$b;->n:Z

    iget-boolean v3, p1, Lj2/n$b;->n:Z

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/h2;->h(ZZ)Lcom/google/common/collect/h2;

    move-result-object v1

    iget v2, p0, Lj2/n$b;->o:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lj2/n$b;->o:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/h2;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/h2;

    move-result-object v1

    iget v2, p0, Lj2/n$b;->p:I

    iget v3, p1, Lj2/n$b;->p:I

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/h2;->d(II)Lcom/google/common/collect/h2;

    move-result-object v1

    iget-boolean v2, p0, Lj2/n$b;->f:Z

    iget-boolean v3, p1, Lj2/n$b;->f:Z

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/h2;->h(ZZ)Lcom/google/common/collect/h2;

    move-result-object v1

    iget v2, p0, Lj2/n$b;->u:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lj2/n$b;->u:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/h2;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/h2;

    move-result-object v1

    iget-object v2, p0, Lj2/n$b;->h:Lj2/n$e;

    iget-boolean v2, v2, Landroidx/media3/common/h0;->B:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lj2/n$b;->t:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lj2/n$b;->t:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lj2/n;->A()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/h2;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/h2;

    move-result-object v1

    :cond_1
    iget-boolean v2, p0, Lj2/n$b;->v:Z

    iget-boolean v3, p1, Lj2/n$b;->v:Z

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/h2;->h(ZZ)Lcom/google/common/collect/h2;

    move-result-object v1

    iget-boolean v2, p0, Lj2/n$b;->w:Z

    iget-boolean v3, p1, Lj2/n$b;->w:Z

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/h2;->h(ZZ)Lcom/google/common/collect/h2;

    move-result-object v1

    iget-boolean v2, p0, Lj2/n$b;->x:Z

    iget-boolean v3, p1, Lj2/n$b;->x:Z

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/h2;->h(ZZ)Lcom/google/common/collect/h2;

    move-result-object v1

    iget v2, p0, Lj2/n$b;->r:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lj2/n$b;->r:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/common/collect/h2;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/h2;

    move-result-object v1

    iget v2, p0, Lj2/n$b;->s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lj2/n$b;->s:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/common/collect/h2;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/h2;

    move-result-object v1

    iget-object v2, p0, Lj2/n$b;->g:Ljava/lang/String;

    iget-object v3, p1, Lj2/n$b;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lj2/n$b;->t:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lj2/n$b;->t:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/common/collect/h2;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/h2;

    move-result-object v1

    :cond_2
    invoke-virtual {v1}, Lcom/google/common/collect/h2;->j()I

    move-result p1

    return p1
.end method

.method public h(Lj2/n$b;)Z
    .locals 3

    iget-object v0, p0, Lj2/n$b;->h:Lj2/n$e;

    iget-boolean v0, v0, Lj2/n$e;->w0:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lj2/n$i;->d:Landroidx/media3/common/r;

    iget v0, v0, Landroidx/media3/common/r;->E:I

    if-eq v0, v1, :cond_3

    iget-object v2, p1, Lj2/n$i;->d:Landroidx/media3/common/r;

    iget v2, v2, Landroidx/media3/common/r;->E:I

    if-ne v0, v2, :cond_3

    :cond_0
    iget-boolean v0, p0, Lj2/n$b;->m:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lj2/n$i;->d:Landroidx/media3/common/r;

    iget-object v0, v0, Landroidx/media3/common/r;->o:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v2, p1, Lj2/n$i;->d:Landroidx/media3/common/r;

    iget-object v2, v2, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lj2/n$b;->h:Lj2/n$e;

    iget-boolean v2, v0, Lj2/n$e;->v0:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lj2/n$i;->d:Landroidx/media3/common/r;

    iget v2, v2, Landroidx/media3/common/r;->F:I

    if-eq v2, v1, :cond_3

    iget-object v1, p1, Lj2/n$i;->d:Landroidx/media3/common/r;

    iget v1, v1, Landroidx/media3/common/r;->F:I

    if-ne v2, v1, :cond_3

    :cond_2
    iget-boolean v0, v0, Lj2/n$e;->x0:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lj2/n$b;->v:Z

    iget-boolean v1, p1, Lj2/n$b;->v:Z

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lj2/n$b;->w:Z

    iget-boolean p1, p1, Lj2/n$b;->w:Z

    if-ne v0, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
