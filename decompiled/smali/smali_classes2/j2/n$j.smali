.class final Lj2/n$j;
.super Lj2/n$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj2/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "j"
.end annotation


# instance fields
.field private final e:Z

.field private final f:Lj2/n$e;

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:Z

.field private final q:I

.field private final r:Z

.field private final s:I

.field private final t:Z

.field private final u:Z

.field private final v:I


# direct methods
.method public constructor <init>(ILandroidx/media3/common/f0;ILj2/n$e;ILjava/lang/String;IZ)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Lj2/n$i;-><init>(ILandroidx/media3/common/f0;I)V

    iput-object p4, p0, Lj2/n$j;->f:Lj2/n$e;

    iget-boolean p1, p4, Lj2/n$e;->r0:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x18

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    :goto_0
    iget-boolean p2, p4, Lj2/n$e;->q0:Z

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    and-int p2, p7, p1

    if-eqz p2, :cond_1

    move p2, p3

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    iput-boolean p2, p0, Lj2/n$j;->r:Z

    const/high16 p2, -0x40800000    # -1.0f

    const/4 p7, -0x1

    if-eqz p8, :cond_6

    iget-object v1, p0, Lj2/n$i;->d:Landroidx/media3/common/r;

    iget v2, v1, Landroidx/media3/common/r;->v:I

    if-eq v2, p7, :cond_2

    iget v3, p4, Landroidx/media3/common/h0;->a:I

    if-gt v2, v3, :cond_6

    :cond_2
    iget v2, v1, Landroidx/media3/common/r;->w:I

    if-eq v2, p7, :cond_3

    iget v3, p4, Landroidx/media3/common/h0;->b:I

    if-gt v2, v3, :cond_6

    :cond_3
    iget v2, v1, Landroidx/media3/common/r;->x:F

    cmpl-float v3, v2, p2

    if-eqz v3, :cond_4

    iget v3, p4, Landroidx/media3/common/h0;->c:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_6

    :cond_4
    iget v1, v1, Landroidx/media3/common/r;->j:I

    if-eq v1, p7, :cond_5

    iget v2, p4, Landroidx/media3/common/h0;->d:I

    if-gt v1, v2, :cond_6

    :cond_5
    move v1, p3

    goto :goto_2

    :cond_6
    move v1, v0

    :goto_2
    iput-boolean v1, p0, Lj2/n$j;->e:Z

    if-eqz p8, :cond_b

    iget-object p8, p0, Lj2/n$i;->d:Landroidx/media3/common/r;

    iget v1, p8, Landroidx/media3/common/r;->v:I

    if-eq v1, p7, :cond_7

    iget v2, p4, Landroidx/media3/common/h0;->e:I

    if-lt v1, v2, :cond_b

    :cond_7
    iget v1, p8, Landroidx/media3/common/r;->w:I

    if-eq v1, p7, :cond_8

    iget v2, p4, Landroidx/media3/common/h0;->f:I

    if-lt v1, v2, :cond_b

    :cond_8
    iget v1, p8, Landroidx/media3/common/r;->x:F

    cmpl-float v2, v1, p2

    if-eqz v2, :cond_9

    iget v2, p4, Landroidx/media3/common/h0;->g:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_b

    :cond_9
    iget p8, p8, Landroidx/media3/common/r;->j:I

    if-eq p8, p7, :cond_a

    iget p7, p4, Landroidx/media3/common/h0;->h:I

    if-lt p8, p7, :cond_b

    :cond_a
    move p7, p3

    goto :goto_3

    :cond_b
    move p7, v0

    :goto_3
    iput-boolean p7, p0, Lj2/n$j;->g:Z

    invoke-static {p5, v0}, Landroidx/media3/exoplayer/x3;->l(IZ)Z

    move-result p7

    iput-boolean p7, p0, Lj2/n$j;->h:Z

    iget-object p7, p0, Lj2/n$i;->d:Landroidx/media3/common/r;

    iget p8, p7, Landroidx/media3/common/r;->x:F

    cmpl-float p2, p8, p2

    if-eqz p2, :cond_c

    const/high16 p2, 0x41200000    # 10.0f

    cmpl-float p2, p8, p2

    if-ltz p2, :cond_c

    move p2, p3

    goto :goto_4

    :cond_c
    move p2, v0

    :goto_4
    iput-boolean p2, p0, Lj2/n$j;->i:Z

    iget p2, p7, Landroidx/media3/common/r;->j:I

    iput p2, p0, Lj2/n$j;->j:I

    invoke-virtual {p7}, Landroidx/media3/common/r;->e()I

    move-result p2

    iput p2, p0, Lj2/n$j;->k:I

    move p2, v0

    :goto_5
    iget-object p7, p4, Landroidx/media3/common/h0;->n:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p7}, Ljava/util/AbstractCollection;->size()I

    move-result p7

    const p8, 0x7fffffff

    if-ge p2, p7, :cond_e

    iget-object p7, p0, Lj2/n$i;->d:Landroidx/media3/common/r;

    iget-object v1, p4, Landroidx/media3/common/h0;->n:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p7, v1, v0}, Lj2/n;->H(Landroidx/media3/common/r;Ljava/lang/String;Z)I

    move-result p7

    if-lez p7, :cond_d

    goto :goto_6

    :cond_d
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_e
    move p2, p8

    move p7, v0

    :goto_6
    iput p2, p0, Lj2/n$j;->m:I

    iput p7, p0, Lj2/n$j;->n:I

    iget-object p2, p0, Lj2/n$i;->d:Landroidx/media3/common/r;

    iget p2, p2, Landroidx/media3/common/r;->f:I

    iget p7, p4, Landroidx/media3/common/h0;->o:I

    invoke-static {p2, p7}, Lj2/n;->y(II)I

    move-result p2

    iput p2, p0, Lj2/n$j;->o:I

    iget-object p2, p0, Lj2/n$i;->d:Landroidx/media3/common/r;

    iget p2, p2, Landroidx/media3/common/r;->f:I

    if-eqz p2, :cond_10

    and-int/2addr p2, p3

    if-eqz p2, :cond_f

    goto :goto_7

    :cond_f
    move p2, v0

    goto :goto_8

    :cond_10
    :goto_7
    move p2, p3

    :goto_8
    iput-boolean p2, p0, Lj2/n$j;->p:Z

    invoke-static {p6}, Lj2/n;->a0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_11

    move p2, p3

    goto :goto_9

    :cond_11
    move p2, v0

    :goto_9
    iget-object p7, p0, Lj2/n$i;->d:Landroidx/media3/common/r;

    invoke-static {p7, p6, p2}, Lj2/n;->H(Landroidx/media3/common/r;Ljava/lang/String;Z)I

    move-result p2

    iput p2, p0, Lj2/n$j;->q:I

    move p2, v0

    :goto_a
    iget-object p6, p4, Landroidx/media3/common/h0;->m:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p6}, Ljava/util/AbstractCollection;->size()I

    move-result p6

    if-ge p2, p6, :cond_13

    iget-object p6, p0, Lj2/n$i;->d:Landroidx/media3/common/r;

    iget-object p6, p6, Landroidx/media3/common/r;->o:Ljava/lang/String;

    if-eqz p6, :cond_12

    iget-object p7, p4, Landroidx/media3/common/h0;->m:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    invoke-virtual {p6, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_12

    move p8, p2

    goto :goto_b

    :cond_12
    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_13
    :goto_b
    iput p8, p0, Lj2/n$j;->l:I

    invoke-static {p5}, Landroidx/media3/exoplayer/x3;->h(I)I

    move-result p2

    const/16 p4, 0x80

    if-ne p2, p4, :cond_14

    move p2, p3

    goto :goto_c

    :cond_14
    move p2, v0

    :goto_c
    iput-boolean p2, p0, Lj2/n$j;->t:Z

    invoke-static {p5}, Landroidx/media3/exoplayer/x3;->j(I)I

    move-result p2

    const/16 p4, 0x40

    if-ne p2, p4, :cond_15

    goto :goto_d

    :cond_15
    move p3, v0

    :goto_d
    iput-boolean p3, p0, Lj2/n$j;->u:Z

    iget-object p2, p0, Lj2/n$i;->d:Landroidx/media3/common/r;

    iget-object p2, p2, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-static {p2}, Lj2/n;->z(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lj2/n$j;->v:I

    invoke-direct {p0, p5, p1}, Lj2/n$j;->j(II)I

    move-result p1

    iput p1, p0, Lj2/n$j;->s:I

    return-void
.end method

.method public static synthetic d(Lj2/n$j;Lj2/n$j;)I
    .locals 0

    invoke-static {p0, p1}, Lj2/n$j;->g(Lj2/n$j;Lj2/n$j;)I

    move-result p0

    return p0
.end method

.method public static synthetic e(Lj2/n$j;Lj2/n$j;)I
    .locals 0

    invoke-static {p0, p1}, Lj2/n$j;->f(Lj2/n$j;Lj2/n$j;)I

    move-result p0

    return p0
.end method

.method private static f(Lj2/n$j;Lj2/n$j;)I
    .locals 4

    invoke-static {}, Lcom/google/common/collect/h2;->k()Lcom/google/common/collect/h2;

    move-result-object v0

    iget-boolean v1, p0, Lj2/n$j;->h:Z

    iget-boolean v2, p1, Lj2/n$j;->h:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/h2;->h(ZZ)Lcom/google/common/collect/h2;

    move-result-object v0

    iget v1, p0, Lj2/n$j;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lj2/n$j;->m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/h2;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/h2;

    move-result-object v0

    iget v1, p0, Lj2/n$j;->n:I

    iget v2, p1, Lj2/n$j;->n:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/h2;->d(II)Lcom/google/common/collect/h2;

    move-result-object v0

    iget v1, p0, Lj2/n$j;->o:I

    iget v2, p1, Lj2/n$j;->o:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/h2;->d(II)Lcom/google/common/collect/h2;

    move-result-object v0

    iget-boolean v1, p0, Lj2/n$j;->p:Z

    iget-boolean v2, p1, Lj2/n$j;->p:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/h2;->h(ZZ)Lcom/google/common/collect/h2;

    move-result-object v0

    iget v1, p0, Lj2/n$j;->q:I

    iget v2, p1, Lj2/n$j;->q:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/h2;->d(II)Lcom/google/common/collect/h2;

    move-result-object v0

    iget-boolean v1, p0, Lj2/n$j;->i:Z

    iget-boolean v2, p1, Lj2/n$j;->i:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/h2;->h(ZZ)Lcom/google/common/collect/h2;

    move-result-object v0

    iget-boolean v1, p0, Lj2/n$j;->e:Z

    iget-boolean v2, p1, Lj2/n$j;->e:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/h2;->h(ZZ)Lcom/google/common/collect/h2;

    move-result-object v0

    iget-boolean v1, p0, Lj2/n$j;->g:Z

    iget-boolean v2, p1, Lj2/n$j;->g:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/h2;->h(ZZ)Lcom/google/common/collect/h2;

    move-result-object v0

    iget v1, p0, Lj2/n$j;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lj2/n$j;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/h2;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/h2;

    move-result-object v0

    iget-boolean v1, p0, Lj2/n$j;->t:Z

    iget-boolean v2, p1, Lj2/n$j;->t:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/h2;->h(ZZ)Lcom/google/common/collect/h2;

    move-result-object v0

    iget-boolean v1, p0, Lj2/n$j;->u:Z

    iget-boolean v2, p1, Lj2/n$j;->u:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/h2;->h(ZZ)Lcom/google/common/collect/h2;

    move-result-object v0

    iget-boolean v1, p0, Lj2/n$j;->t:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lj2/n$j;->u:Z

    if-eqz v1, :cond_0

    iget p0, p0, Lj2/n$j;->v:I

    iget p1, p1, Lj2/n$j;->v:I

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/h2;->d(II)Lcom/google/common/collect/h2;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/h2;->j()I

    move-result p0

    return p0
.end method

.method private static g(Lj2/n$j;Lj2/n$j;)I
    .locals 5

    iget-boolean v0, p0, Lj2/n$j;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lj2/n$j;->h:Z

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

    iget-object v2, p0, Lj2/n$j;->f:Lj2/n$e;

    iget-boolean v2, v2, Landroidx/media3/common/h0;->B:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lj2/n$j;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lj2/n$j;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lj2/n;->A()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/h2;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/h2;

    move-result-object v1

    :cond_1
    iget v2, p0, Lj2/n$j;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lj2/n$j;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/common/collect/h2;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/h2;

    move-result-object v1

    iget p0, p0, Lj2/n$j;->j:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget p1, p1, Lj2/n$j;->j:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p0, p1, v0}, Lcom/google/common/collect/h2;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/h2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/h2;->j()I

    move-result p0

    return p0
.end method

.method public static h(Ljava/util/List;Ljava/util/List;)I
    .locals 4

    invoke-static {}, Lcom/google/common/collect/h2;->k()Lcom/google/common/collect/h2;

    move-result-object v0

    new-instance v1, Lj2/w;

    invoke-direct {v1}, Lj2/w;-><init>()V

    invoke-static {p0, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj2/n$j;

    new-instance v2, Lj2/w;

    invoke-direct {v2}, Lj2/w;-><init>()V

    invoke-static {p1, v2}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj2/n$j;

    new-instance v3, Lj2/w;

    invoke-direct {v3}, Lj2/w;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/h2;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/h2;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/h2;->d(II)Lcom/google/common/collect/h2;

    move-result-object v0

    new-instance v1, Lj2/x;

    invoke-direct {v1}, Lj2/x;-><init>()V

    invoke-static {p0, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj2/n$j;

    new-instance v1, Lj2/x;

    invoke-direct {v1}, Lj2/x;-><init>()V

    invoke-static {p1, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj2/n$j;

    new-instance v1, Lj2/x;

    invoke-direct {v1}, Lj2/x;-><init>()V

    invoke-virtual {v0, p0, p1, v1}, Lcom/google/common/collect/h2;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/h2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/h2;->j()I

    move-result p0

    return p0
.end method

.method public static i(ILandroidx/media3/common/f0;Lj2/n$e;[ILjava/lang/String;ILandroid/graphics/Point;)Lcom/google/common/collect/ImmutableList;
    .locals 16

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v0, p6

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_0
    iget v1, v10, Landroidx/media3/common/h0;->i:I

    :goto_0
    if-eqz v0, :cond_1

    iget v0, v0, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_1
    iget v0, v10, Landroidx/media3/common/h0;->j:I

    :goto_1
    iget-boolean v2, v10, Landroidx/media3/common/h0;->l:Z

    invoke-static {v9, v1, v0, v2}, Lj2/n;->x(Landroidx/media3/common/f0;IIZ)I

    move-result v11

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$a;

    move-result-object v12

    const/4 v13, 0x0

    move v14, v13

    :goto_2
    iget v0, v9, Landroidx/media3/common/f0;->a:I

    if-ge v14, v0, :cond_4

    invoke-virtual {v9, v14}, Landroidx/media3/common/f0;->a(I)Landroidx/media3/common/r;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/r;->e()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v11, v1, :cond_3

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    if-gt v0, v11, :cond_2

    goto :goto_3

    :cond_2
    move v8, v13

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v0, 0x1

    move v8, v0

    :goto_4
    new-instance v15, Lj2/n$j;

    aget v5, p3, v14

    move-object v0, v15

    move/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v14

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v0 .. v8}, Lj2/n$j;-><init>(ILandroidx/media3/common/f0;ILj2/n$e;ILjava/lang/String;IZ)V

    invoke-virtual {v12, v15}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v12}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private j(II)I
    .locals 2

    iget-object v0, p0, Lj2/n$i;->d:Landroidx/media3/common/r;

    iget v0, v0, Landroidx/media3/common/r;->f:I

    and-int/lit16 v0, v0, 0x4000

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lj2/n$j;->f:Lj2/n$e;

    iget-boolean v0, v0, Lj2/n$e;->A0:Z

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/x3;->l(IZ)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lj2/n$j;->e:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lj2/n$j;->f:Lj2/n$e;

    iget-boolean v0, v0, Lj2/n$e;->p0:Z

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-static {p1, v1}, Landroidx/media3/exoplayer/x3;->l(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lj2/n$j;->g:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lj2/n$j;->e:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lj2/n$i;->d:Landroidx/media3/common/r;

    iget v0, v0, Landroidx/media3/common/r;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lj2/n$j;->f:Lj2/n$e;

    iget-boolean v1, v0, Landroidx/media3/common/h0;->C:Z

    if-nez v1, :cond_3

    iget-boolean v0, v0, Landroidx/media3/common/h0;->B:Z

    if-nez v0, :cond_3

    and-int/2addr p1, p2

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    :goto_0
    return p1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lj2/n$j;->s:I

    return v0
.end method

.method public bridge synthetic b(Lj2/n$i;)Z
    .locals 0

    check-cast p1, Lj2/n$j;

    invoke-virtual {p0, p1}, Lj2/n$j;->k(Lj2/n$j;)Z

    move-result p1

    return p1
.end method

.method public k(Lj2/n$j;)Z
    .locals 2

    iget-boolean v0, p0, Lj2/n$j;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lj2/n$i;->d:Landroidx/media3/common/r;

    iget-object v0, v0, Landroidx/media3/common/r;->o:Ljava/lang/String;

    iget-object v1, p1, Lj2/n$i;->d:Landroidx/media3/common/r;

    iget-object v1, v1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lj2/n$j;->f:Lj2/n$e;

    iget-boolean v0, v0, Lj2/n$e;->s0:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lj2/n$j;->t:Z

    iget-boolean v1, p1, Lj2/n$j;->t:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lj2/n$j;->u:Z

    iget-boolean p1, p1, Lj2/n$j;->u:Z

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
