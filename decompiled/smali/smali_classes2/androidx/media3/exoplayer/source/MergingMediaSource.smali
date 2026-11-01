.class public final Landroidx/media3/exoplayer/source/MergingMediaSource;
.super Landroidx/media3/exoplayer/source/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;,
        Landroidx/media3/exoplayer/source/MergingMediaSource$c;,
        Landroidx/media3/exoplayer/source/MergingMediaSource$b;
    }
.end annotation


# static fields
.field private static final w:Landroidx/media3/common/t;


# instance fields
.field private final k:Z

.field private final l:Z

.field private final m:[Landroidx/media3/exoplayer/source/r;

.field private final n:Ljava/util/List;

.field private final o:[Landroidx/media3/common/e0;

.field private final p:Ljava/util/ArrayList;

.field private final q:Lg2/e;

.field private final r:Ljava/util/Map;

.field private final s:Lcom/google/common/collect/j3;

.field private t:I

.field private u:[[J

.field private v:Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/common/t$c;

    invoke-direct {v0}, Landroidx/media3/common/t$c;-><init>()V

    const-string v1, "MergingMediaSource"

    invoke-virtual {v0, v1}, Landroidx/media3/common/t$c;->d(Ljava/lang/String;)Landroidx/media3/common/t$c;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/t$c;->a()Landroidx/media3/common/t;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/source/MergingMediaSource;->w:Landroidx/media3/common/t;

    return-void
.end method

.method public varargs constructor <init>(ZZLg2/e;[Landroidx/media3/exoplayer/source/r;)V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/source/c;-><init>()V

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->k:Z

    iput-boolean p2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->l:Z

    iput-object p4, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->m:[Landroidx/media3/exoplayer/source/r;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->q:Lg2/e;

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->p:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->t:I

    new-instance p1, Ljava/util/ArrayList;

    array-length p2, p4

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->n:Ljava/util/List;

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    array-length p3, p4

    if-ge p2, p3, :cond_0

    iget-object p3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->n:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    array-length p2, p4

    new-array p2, p2, [Landroidx/media3/common/e0;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->o:[Landroidx/media3/common/e0;

    new-array p1, p1, [[J

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->u:[[J

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->r:Ljava/util/Map;

    invoke-static {}, Lcom/google/common/collect/MultimapBuilder;->a()Lcom/google/common/collect/MultimapBuilder$e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/MultimapBuilder$e;->a()Lcom/google/common/collect/MultimapBuilder$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/MultimapBuilder$d;->g()Lcom/google/common/collect/i3;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->s:Lcom/google/common/collect/j3;

    return-void
.end method

.method public varargs constructor <init>(ZZ[Landroidx/media3/exoplayer/source/r;)V
    .locals 1

    new-instance v0, Lg2/f;

    invoke-direct {v0}, Lg2/f;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/media3/exoplayer/source/MergingMediaSource;-><init>(ZZLg2/e;[Landroidx/media3/exoplayer/source/r;)V

    return-void
.end method

.method public varargs constructor <init>(Z[Landroidx/media3/exoplayer/source/r;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/source/MergingMediaSource;-><init>(ZZ[Landroidx/media3/exoplayer/source/r;)V

    return-void
.end method

.method public varargs constructor <init>([Landroidx/media3/exoplayer/source/r;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/source/MergingMediaSource;-><init>(Z[Landroidx/media3/exoplayer/source/r;)V

    return-void
.end method

.method private J()V
    .locals 9

    new-instance v0, Landroidx/media3/common/e0$b;

    invoke-direct {v0}, Landroidx/media3/common/e0$b;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->t:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->o:[Landroidx/media3/common/e0;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2, v0}, Landroidx/media3/common/e0;->f(ILandroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/common/e0$b;->o()J

    move-result-wide v3

    neg-long v3, v3

    const/4 v5, 0x1

    :goto_1
    iget-object v6, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->o:[Landroidx/media3/common/e0;

    array-length v7, v6

    if-ge v5, v7, :cond_0

    aget-object v6, v6, v5

    invoke-virtual {v6, v2, v0}, Landroidx/media3/common/e0;->f(ILandroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/media3/common/e0$b;->o()J

    move-result-wide v6

    neg-long v6, v6

    iget-object v8, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->u:[[J

    aget-object v8, v8, v2

    sub-long v6, v3, v6

    aput-wide v6, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private M()V
    .locals 13

    new-instance v0, Landroidx/media3/common/e0$b;

    invoke-direct {v0}, Landroidx/media3/common/e0$b;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->t:I

    if-ge v2, v3, :cond_5

    const-wide/high16 v3, -0x8000000000000000L

    move v5, v1

    move-wide v6, v3

    :goto_1
    iget-object v8, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->o:[Landroidx/media3/common/e0;

    array-length v9, v8

    if-ge v5, v9, :cond_3

    aget-object v8, v8, v5

    invoke-virtual {v8, v2, v0}, Landroidx/media3/common/e0;->f(ILandroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/media3/common/e0$b;->k()J

    move-result-wide v8

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v10, v8, v10

    if-nez v10, :cond_0

    goto :goto_2

    :cond_0
    iget-object v10, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->u:[[J

    aget-object v10, v10, v2

    aget-wide v11, v10, v5

    add-long/2addr v8, v11

    cmp-long v10, v6, v3

    if-eqz v10, :cond_1

    cmp-long v10, v8, v6

    if-gez v10, :cond_2

    :cond_1
    move-wide v6, v8

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    aget-object v3, v8, v1

    invoke-virtual {v3, v2}, Landroidx/media3/common/e0;->m(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->r:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->s:Lcom/google/common/collect/j3;

    invoke-interface {v4, v3}, Lcom/google/common/collect/j3;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/source/b;

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v8, v9, v6, v7}, Landroidx/media3/exoplayer/source/b;->n(JJ)V

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method protected B()V
    .locals 2

    invoke-super {p0}, Landroidx/media3/exoplayer/source/c;->B()V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->o:[Landroidx/media3/common/e0;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->t:I

    iput-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->v:Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->p:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->m:[Landroidx/media3/exoplayer/source/r;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method protected bridge synthetic D(Ljava/lang/Object;Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/source/r$b;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/MergingMediaSource;->K(Ljava/lang/Integer;Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/source/r$b;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic H(Ljava/lang/Object;Landroidx/media3/exoplayer/source/r;Landroidx/media3/common/e0;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/MergingMediaSource;->L(Ljava/lang/Integer;Landroidx/media3/exoplayer/source/r;Landroidx/media3/common/e0;)V

    return-void
.end method

.method protected K(Ljava/lang/Integer;Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/source/r$b;
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->n:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/source/MergingMediaSource$c;

    invoke-static {v2}, Landroidx/media3/exoplayer/source/MergingMediaSource$c;->b(Landroidx/media3/exoplayer/source/MergingMediaSource$c;)Landroidx/media3/exoplayer/source/r$b;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroidx/media3/exoplayer/source/r$b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->n:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/MergingMediaSource$c;

    invoke-static {p1}, Landroidx/media3/exoplayer/source/MergingMediaSource$c;->b(Landroidx/media3/exoplayer/source/MergingMediaSource$c;)Landroidx/media3/exoplayer/source/r$b;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected L(Ljava/lang/Integer;Landroidx/media3/exoplayer/source/r;Landroidx/media3/common/e0;)V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->v:Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->t:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p3}, Landroidx/media3/common/e0;->i()I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->t:I

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroidx/media3/common/e0;->i()I

    move-result v0

    iget v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->t:I

    if-eq v0, v1, :cond_2

    new-instance p1, Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

    invoke-direct {p1, v2}, Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->v:Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->u:[[J

    array-length v0, v0

    if-nez v0, :cond_3

    iget v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->t:I

    iget-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->o:[Landroidx/media3/common/e0;

    array-length v1, v1

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    aput v0, v3, v2

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->u:[[J

    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->o:[Landroidx/media3/common/e0;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput-object p3, p2, p1

    iget-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->p:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->k:Z

    if-eqz p1, :cond_4

    invoke-direct {p0}, Landroidx/media3/exoplayer/source/MergingMediaSource;->J()V

    :cond_4
    iget-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->o:[Landroidx/media3/common/e0;

    aget-object p1, p1, v2

    iget-boolean p2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->l:Z

    if-eqz p2, :cond_5

    invoke-direct {p0}, Landroidx/media3/exoplayer/source/MergingMediaSource;->M()V

    new-instance p2, Landroidx/media3/exoplayer/source/MergingMediaSource$b;

    iget-object p3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->r:Ljava/util/Map;

    invoke-direct {p2, p1, p3}, Landroidx/media3/exoplayer/source/MergingMediaSource$b;-><init>(Landroidx/media3/common/e0;Ljava/util/Map;)V

    move-object p1, p2

    :cond_5
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/a;->A(Landroidx/media3/common/e0;)V

    :cond_6
    return-void
.end method

.method public a()Landroidx/media3/common/t;
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->m:[Landroidx/media3/exoplayer/source/r;

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/r;->a()Landroidx/media3/common/t;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/media3/exoplayer/source/MergingMediaSource;->w:Landroidx/media3/common/t;

    :goto_0
    return-object v0
.end method

.method public g(Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/exoplayer/upstream/b;J)Landroidx/media3/exoplayer/source/q;
    .locals 11

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->m:[Landroidx/media3/exoplayer/source/r;

    array-length v0, v0

    new-array v1, v0, [Landroidx/media3/exoplayer/source/q;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->o:[Landroidx/media3/common/e0;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v4, p1, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    move-result v2

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->o:[Landroidx/media3/common/e0;

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Landroidx/media3/common/e0;->m(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/media3/exoplayer/source/r$b;->a(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/r$b;

    move-result-object v4

    iget-object v5, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->m:[Landroidx/media3/exoplayer/source/r;

    aget-object v5, v5, v3

    iget-object v6, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->u:[[J

    aget-object v6, v6, v2

    aget-wide v7, v6, v3

    sub-long v6, p3, v7

    invoke-interface {v5, v4, p2, v6, v7}, Landroidx/media3/exoplayer/source/r;->g(Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/exoplayer/upstream/b;J)Landroidx/media3/exoplayer/source/q;

    move-result-object v5

    aput-object v5, v1, v3

    iget-object v5, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->n:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    new-instance v6, Landroidx/media3/exoplayer/source/MergingMediaSource$c;

    aget-object v7, v1, v3

    const/4 v8, 0x0

    invoke-direct {v6, v4, v7, v8}, Landroidx/media3/exoplayer/source/MergingMediaSource$c;-><init>(Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/exoplayer/source/q;Landroidx/media3/exoplayer/source/MergingMediaSource$a;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v5, Landroidx/media3/exoplayer/source/u;

    iget-object p2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->q:Lg2/e;

    iget-object p3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->u:[[J

    aget-object p3, p3, v2

    invoke-direct {v5, p2, p3, v1}, Landroidx/media3/exoplayer/source/u;-><init>(Lg2/e;[J[Landroidx/media3/exoplayer/source/q;)V

    iget-boolean p2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->l:Z

    if-eqz p2, :cond_1

    new-instance p2, Landroidx/media3/exoplayer/source/b;

    iget-object p3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->r:Ljava/util/Map;

    iget-object p4, p1, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-static {p3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v4, p2

    invoke-direct/range {v4 .. v10}, Landroidx/media3/exoplayer/source/b;-><init>(Landroidx/media3/exoplayer/source/q;ZJJ)V

    iget-object p3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->s:Lcom/google/common/collect/j3;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    invoke-interface {p3, p1, p2}, Lcom/google/common/collect/j3;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object v5, p2

    :cond_1
    return-object v5
.end method

.method public j(Landroidx/media3/exoplayer/source/q;)V
    .locals 6

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->l:Z

    if-eqz v0, :cond_2

    check-cast p1, Landroidx/media3/exoplayer/source/b;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->s:Lcom/google/common/collect/j3;

    invoke-interface {v0}, Lcom/google/common/collect/j3;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/source/b;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->s:Lcom/google/common/collect/j3;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/google/common/collect/j3;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, p1, Landroidx/media3/exoplayer/source/b;->a:Landroidx/media3/exoplayer/source/q;

    :cond_2
    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/source/u;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->m:[Landroidx/media3/exoplayer/source/r;

    array-length v3, v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->n:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move v4, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/source/MergingMediaSource$c;

    invoke-static {v5}, Landroidx/media3/exoplayer/source/MergingMediaSource$c;->a(Landroidx/media3/exoplayer/source/MergingMediaSource$c;)Landroidx/media3/exoplayer/source/q;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->m:[Landroidx/media3/exoplayer/source/r;

    aget-object v3, v3, v2

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/source/u;->i(I)Landroidx/media3/exoplayer/source/q;

    move-result-object v4

    invoke-interface {v3, v4}, Landroidx/media3/exoplayer/source/r;->j(Landroidx/media3/exoplayer/source/q;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public l(Landroidx/media3/common/t;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->m:[Landroidx/media3/exoplayer/source/r;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/r;->l(Landroidx/media3/common/t;)V

    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->v:Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroidx/media3/exoplayer/source/c;->maybeThrowSourceInfoRefreshError()V

    return-void

    :cond_0
    throw v0
.end method

.method public q(Landroidx/media3/common/t;)Z
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->m:[Landroidx/media3/exoplayer/source/r;

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/r;->q(Landroidx/media3/common/t;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method protected z(Lw1/n;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/media3/exoplayer/source/c;->z(Lw1/n;)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->m:[Landroidx/media3/exoplayer/source/r;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->m:[Landroidx/media3/exoplayer/source/r;

    aget-object v1, v1, p1

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/source/c;->I(Ljava/lang/Object;Landroidx/media3/exoplayer/source/r;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
