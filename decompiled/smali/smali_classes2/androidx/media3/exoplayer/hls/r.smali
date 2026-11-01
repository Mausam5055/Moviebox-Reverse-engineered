.class final Landroidx/media3/exoplayer/hls/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/upstream/Loader$b;
.implements Landroidx/media3/exoplayer/upstream/Loader$e;
.implements Landroidx/media3/exoplayer/source/f0;
.implements Ll2/t;
.implements Landroidx/media3/exoplayer/source/e0$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/hls/r$b;,
        Landroidx/media3/exoplayer/hls/r$d;,
        Landroidx/media3/exoplayer/hls/r$c;
    }
.end annotation


# static fields
.field private static final Y:Ljava/util/Set;


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field private D:Z

.field private E:I

.field private F:Landroidx/media3/common/r;

.field private G:Landroidx/media3/common/r;

.field private H:Z

.field private I:Lg2/z;

.field private J:Ljava/util/Set;

.field private K:[I

.field private L:I

.field private M:Z

.field private N:[Z

.field private O:[Z

.field private P:J

.field private Q:J

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:J

.field private W:Landroidx/media3/common/DrmInitData;

.field private X:Landroidx/media3/exoplayer/hls/i;

.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Landroidx/media3/exoplayer/hls/r$b;

.field private final d:Landroidx/media3/exoplayer/hls/e;

.field private final e:Landroidx/media3/exoplayer/upstream/b;

.field private final f:Landroidx/media3/common/r;

.field private final g:Landroidx/media3/exoplayer/drm/t;

.field private final h:Landroidx/media3/exoplayer/drm/r$a;

.field private final i:Landroidx/media3/exoplayer/upstream/m;

.field private final j:Landroidx/media3/exoplayer/upstream/Loader;

.field private final k:Landroidx/media3/exoplayer/source/s$a;

.field private final l:I

.field private final m:Landroidx/media3/exoplayer/hls/e$b;

.field private final n:Ljava/util/ArrayList;

.field private final o:Ljava/util/List;

.field private final p:Ljava/lang/Runnable;

.field private final q:Ljava/lang/Runnable;

.field private final r:Landroid/os/Handler;

.field private final s:Ljava/util/ArrayList;

.field private final t:Ljava/util/Map;

.field private u:Lh2/e;

.field private v:[Landroidx/media3/exoplayer/hls/r$d;

.field private w:[I

.field private x:Ljava/util/Set;

.field private y:Landroid/util/SparseIntArray;

.field private z:Ll2/s0;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Integer;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    aput-object v4, v6, v1

    aput-object v5, v6, v3

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/r;->Y:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroidx/media3/exoplayer/hls/r$b;Landroidx/media3/exoplayer/hls/e;Ljava/util/Map;Landroidx/media3/exoplayer/upstream/b;JLandroidx/media3/common/r;Landroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/upstream/m;Landroidx/media3/exoplayer/source/s$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r;->a:Ljava/lang/String;

    iput p2, p0, Landroidx/media3/exoplayer/hls/r;->b:I

    iput-object p3, p0, Landroidx/media3/exoplayer/hls/r;->c:Landroidx/media3/exoplayer/hls/r$b;

    iput-object p4, p0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    iput-object p5, p0, Landroidx/media3/exoplayer/hls/r;->t:Ljava/util/Map;

    iput-object p6, p0, Landroidx/media3/exoplayer/hls/r;->e:Landroidx/media3/exoplayer/upstream/b;

    iput-object p9, p0, Landroidx/media3/exoplayer/hls/r;->f:Landroidx/media3/common/r;

    iput-object p10, p0, Landroidx/media3/exoplayer/hls/r;->g:Landroidx/media3/exoplayer/drm/t;

    iput-object p11, p0, Landroidx/media3/exoplayer/hls/r;->h:Landroidx/media3/exoplayer/drm/r$a;

    iput-object p12, p0, Landroidx/media3/exoplayer/hls/r;->i:Landroidx/media3/exoplayer/upstream/m;

    iput-object p13, p0, Landroidx/media3/exoplayer/hls/r;->k:Landroidx/media3/exoplayer/source/s$a;

    iput p14, p0, Landroidx/media3/exoplayer/hls/r;->l:I

    new-instance p1, Landroidx/media3/exoplayer/upstream/Loader;

    const-string p2, "Loader:HlsSampleStreamWrapper"

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r;->j:Landroidx/media3/exoplayer/upstream/Loader;

    new-instance p1, Landroidx/media3/exoplayer/hls/e$b;

    invoke-direct {p1}, Landroidx/media3/exoplayer/hls/e$b;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r;->m:Landroidx/media3/exoplayer/hls/e$b;

    const/4 p1, 0x0

    new-array p2, p1, [I

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/r;->w:[I

    new-instance p2, Ljava/util/HashSet;

    sget-object p3, Landroidx/media3/exoplayer/hls/r;->Y:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p4

    invoke-direct {p2, p4}, Ljava/util/HashSet;-><init>(I)V

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/r;->x:Ljava/util/Set;

    new-instance p2, Landroid/util/SparseIntArray;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p3

    invoke-direct {p2, p3}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/r;->y:Landroid/util/SparseIntArray;

    new-array p2, p1, [Landroidx/media3/exoplayer/hls/r$d;

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    new-array p2, p1, [Z

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/r;->O:[Z

    new-array p1, p1, [Z

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r;->N:[Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r;->o:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r;->s:Ljava/util/ArrayList;

    new-instance p1, Landroidx/media3/exoplayer/hls/o;

    invoke-direct {p1, p0}, Landroidx/media3/exoplayer/hls/o;-><init>(Landroidx/media3/exoplayer/hls/r;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r;->p:Ljava/lang/Runnable;

    new-instance p1, Landroidx/media3/exoplayer/hls/p;

    invoke-direct {p1, p0}, Landroidx/media3/exoplayer/hls/p;-><init>(Landroidx/media3/exoplayer/hls/r;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r;->q:Ljava/lang/Runnable;

    invoke-static {}, Landroidx/media3/common/util/a1;->A()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r;->r:Landroid/os/Handler;

    iput-wide p7, p0, Landroidx/media3/exoplayer/hls/r;->P:J

    iput-wide p7, p0, Landroidx/media3/exoplayer/hls/r;->Q:J

    return-void
.end method

.method private A()Landroidx/media3/exoplayer/hls/i;
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/hls/i;

    return-object v0
.end method

.method private B(II)Ll2/s0;
    .locals 3

    sget-object v0, Landroidx/media3/exoplayer/hls/r;->Y:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/a;->a(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->y:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->x:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->w:[I

    aput p1, v1, v0

    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->w:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_2

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    aget-object p1, p1, v0

    goto :goto_0

    :cond_2
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/hls/r;->s(II)Ll2/n;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private static C(I)I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x3

    if-eq p0, v0, :cond_1

    if-eq p0, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method private D(Landroidx/media3/exoplayer/hls/i;)V
    .locals 6

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r;->X:Landroidx/media3/exoplayer/hls/i;

    iget-object v0, p1, Lh2/e;->d:Landroidx/media3/common/r;

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/r;->F:Landroidx/media3/common/r;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/hls/r;->Q:J

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$a;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    invoke-virtual {v5}, Landroidx/media3/exoplayer/source/e0;->J()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroidx/media3/exoplayer/hls/i;->l(Landroidx/media3/exoplayer/hls/r;Lcom/google/common/collect/ImmutableList;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    array-length v1, v0

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v2, v0, v3

    invoke-virtual {v2, p1}, Landroidx/media3/exoplayer/hls/r$d;->m0(Landroidx/media3/exoplayer/hls/i;)V

    iget-boolean v4, p1, Landroidx/media3/exoplayer/hls/i;->n:Z

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/e0;->j0()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static E(Lh2/e;)Z
    .locals 0

    instance-of p0, p0, Landroidx/media3/exoplayer/hls/i;

    return p0
.end method

.method private F()Z
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/r;->Q:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic I(Landroidx/media3/exoplayer/hls/i;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->c:Landroidx/media3/exoplayer/hls/r$b;

    iget-object p1, p1, Landroidx/media3/exoplayer/hls/i;->m:Landroid/net/Uri;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/hls/r$b;->d(Landroid/net/Uri;)V

    return-void
.end method

.method private J()V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->I:Lg2/z;

    iget v0, v0, Lg2/z;->a:I

    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/media3/exoplayer/hls/r;->K:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    move v3, v1

    :goto_1
    iget-object v4, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    array-length v5, v4

    if-ge v3, v5, :cond_1

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroidx/media3/exoplayer/source/e0;->I()Landroidx/media3/common/r;

    move-result-object v4

    invoke-static {v4}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/r;

    iget-object v5, p0, Landroidx/media3/exoplayer/hls/r;->I:Lg2/z;

    invoke-virtual {v5, v2}, Lg2/z;->b(I)Landroidx/media3/common/f0;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroidx/media3/common/f0;->a(I)Landroidx/media3/common/r;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/media3/exoplayer/hls/r;->z(Landroidx/media3/common/r;Landroidx/media3/common/r;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroidx/media3/exoplayer/hls/r;->K:[I

    aput v3, v4, v2

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/hls/m;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/hls/m;->a()V

    goto :goto_3

    :cond_3
    return-void
.end method

.method private K()V
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->H:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->K:[I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->C:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/e0;->I()Landroidx/media3/common/r;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->I:Lg2/z;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->J()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->m()V

    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->d0()V

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->c:Landroidx/media3/exoplayer/hls/r$b;

    invoke-interface {v0}, Landroidx/media3/exoplayer/hls/r$b;->onPrepared()V

    :cond_4
    :goto_1
    return-void
.end method

.method private U()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->C:Z

    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->K()V

    return-void
.end method

.method private Y()V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    iget-boolean v5, p0, Landroidx/media3/exoplayer/hls/r;->R:Z

    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/source/e0;->Z(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Landroidx/media3/exoplayer/hls/r;->R:Z

    return-void
.end method

.method private Z(JLandroidx/media3/exoplayer/hls/i;)Z
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    aget-object v3, v3, v2

    if-eqz p3, :cond_0

    invoke-virtual {p3, v2}, Landroidx/media3/exoplayer/hls/i;->k(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/media3/exoplayer/source/e0;->b0(I)Z

    move-result v3

    goto :goto_1

    :cond_0
    invoke-virtual {v3, p1, p2, v1}, Landroidx/media3/exoplayer/source/e0;->c0(JZ)Z

    move-result v3

    :goto_1
    if-nez v3, :cond_2

    iget-object v3, p0, Landroidx/media3/exoplayer/hls/r;->O:[Z

    aget-boolean v3, v3, v2

    if-nez v3, :cond_1

    iget-boolean v3, p0, Landroidx/media3/exoplayer/hls/r;->M:Z

    if-nez v3, :cond_2

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic d(Landroidx/media3/exoplayer/hls/r;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->U()V

    return-void
.end method

.method private d0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->D:Z

    return-void
.end method

.method public static synthetic h(Landroidx/media3/exoplayer/hls/r;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->K()V

    return-void
.end method

.method public static synthetic i(Landroidx/media3/exoplayer/hls/r;Landroidx/media3/exoplayer/hls/i;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/hls/r;->I(Landroidx/media3/exoplayer/hls/i;)V

    return-void
.end method

.method private i0([Lg2/u;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    iget-object v3, p0, Landroidx/media3/exoplayer/hls/r;->s:Ljava/util/ArrayList;

    check-cast v2, Landroidx/media3/exoplayer/hls/m;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private j()V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->D:Z

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->I:Lg2/z;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->J:Ljava/util/Set;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private m()V
    .locals 15

    const/4 v0, 0x1

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    array-length v1, v1

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v6, v2

    move v7, v3

    move v5, v4

    :goto_0
    const/4 v8, 0x2

    if-ge v5, v1, :cond_5

    iget-object v9, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    aget-object v9, v9, v5

    invoke-virtual {v9}, Landroidx/media3/exoplayer/source/e0;->I()Landroidx/media3/common/r;

    move-result-object v9

    invoke-static {v9}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/common/r;

    iget-object v9, v9, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-static {v9}, Landroidx/media3/common/y;->t(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v9}, Landroidx/media3/common/y;->o(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v0

    goto :goto_1

    :cond_1
    invoke-static {v9}, Landroidx/media3/common/y;->s(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x3

    goto :goto_1

    :cond_2
    move v8, v2

    :goto_1
    invoke-static {v8}, Landroidx/media3/exoplayer/hls/r;->C(I)I

    move-result v9

    invoke-static {v6}, Landroidx/media3/exoplayer/hls/r;->C(I)I

    move-result v10

    if-le v9, v10, :cond_3

    move v7, v5

    move v6, v8

    goto :goto_2

    :cond_3
    if-ne v8, v6, :cond_4

    if-eq v7, v3, :cond_4

    move v7, v3

    :cond_4
    :goto_2
    add-int/2addr v5, v0

    goto :goto_0

    :cond_5
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/hls/e;->k()Landroidx/media3/common/f0;

    move-result-object v2

    iget v5, v2, Landroidx/media3/common/f0;->a:I

    iput v3, p0, Landroidx/media3/exoplayer/hls/r;->L:I

    new-array v3, v1, [I

    iput-object v3, p0, Landroidx/media3/exoplayer/hls/r;->K:[I

    move v3, v4

    :goto_3
    if-ge v3, v1, :cond_6

    iget-object v9, p0, Landroidx/media3/exoplayer/hls/r;->K:[I

    aput v3, v9, v3

    add-int/2addr v3, v0

    goto :goto_3

    :cond_6
    new-array v3, v1, [Landroidx/media3/common/f0;

    move v9, v4

    :goto_4
    if-ge v9, v1, :cond_d

    iget-object v10, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    aget-object v10, v10, v9

    invoke-virtual {v10}, Landroidx/media3/exoplayer/source/e0;->I()Landroidx/media3/common/r;

    move-result-object v10

    invoke-static {v10}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/common/r;

    if-ne v9, v7, :cond_a

    new-array v11, v5, [Landroidx/media3/common/r;

    move v12, v4

    :goto_5
    if-ge v12, v5, :cond_9

    invoke-virtual {v2, v12}, Landroidx/media3/common/f0;->a(I)Landroidx/media3/common/r;

    move-result-object v13

    if-ne v6, v0, :cond_7

    iget-object v14, p0, Landroidx/media3/exoplayer/hls/r;->f:Landroidx/media3/common/r;

    if-eqz v14, :cond_7

    invoke-virtual {v13, v14}, Landroidx/media3/common/r;->j(Landroidx/media3/common/r;)Landroidx/media3/common/r;

    move-result-object v13

    :cond_7
    if-ne v5, v0, :cond_8

    invoke-virtual {v10, v13}, Landroidx/media3/common/r;->j(Landroidx/media3/common/r;)Landroidx/media3/common/r;

    move-result-object v13

    goto :goto_6

    :cond_8
    invoke-static {v13, v10, v0}, Landroidx/media3/exoplayer/hls/r;->v(Landroidx/media3/common/r;Landroidx/media3/common/r;Z)Landroidx/media3/common/r;

    move-result-object v13

    :goto_6
    aput-object v13, v11, v12

    add-int/2addr v12, v0

    goto :goto_5

    :cond_9
    new-instance v10, Landroidx/media3/common/f0;

    iget-object v12, p0, Landroidx/media3/exoplayer/hls/r;->a:Ljava/lang/String;

    invoke-direct {v10, v12, v11}, Landroidx/media3/common/f0;-><init>(Ljava/lang/String;[Landroidx/media3/common/r;)V

    aput-object v10, v3, v9

    iput v9, p0, Landroidx/media3/exoplayer/hls/r;->L:I

    goto :goto_9

    :cond_a
    if-ne v6, v8, :cond_b

    iget-object v11, v10, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-static {v11}, Landroidx/media3/common/y;->o(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    iget-object v11, p0, Landroidx/media3/exoplayer/hls/r;->f:Landroidx/media3/common/r;

    goto :goto_7

    :cond_b
    const/4 v11, 0x0

    :goto_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Landroidx/media3/exoplayer/hls/r;->a:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ":muxed:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v9, v7, :cond_c

    move v13, v9

    goto :goto_8

    :cond_c
    add-int/lit8 v13, v9, -0x1

    :goto_8
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Landroidx/media3/common/f0;

    invoke-static {v11, v10, v4}, Landroidx/media3/exoplayer/hls/r;->v(Landroidx/media3/common/r;Landroidx/media3/common/r;Z)Landroidx/media3/common/r;

    move-result-object v10

    new-array v11, v0, [Landroidx/media3/common/r;

    aput-object v10, v11, v4

    invoke-direct {v13, v12, v11}, Landroidx/media3/common/f0;-><init>(Ljava/lang/String;[Landroidx/media3/common/r;)V

    aput-object v13, v3, v9

    :goto_9
    add-int/2addr v9, v0

    goto :goto_4

    :cond_d
    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/hls/r;->u([Landroidx/media3/common/f0;)Lg2/z;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/hls/r;->I:Lg2/z;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->J:Ljava/util/Set;

    if-nez v1, :cond_e

    goto :goto_a

    :cond_e
    move v0, v4

    :goto_a
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/r;->J:Ljava/util/Set;

    return-void
.end method

.method private n(I)Z
    .locals 4

    move v0, p1

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/hls/i;

    iget-boolean v1, v1, Landroidx/media3/exoplayer/hls/i;->n:Z

    if-eqz v1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/hls/i;

    move v0, v2

    :goto_1
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/hls/i;->k(I)I

    move-result v1

    iget-object v3, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/e0;->F()I

    move-result v3

    if-le v3, v1, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private static s(II)Ll2/n;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unmapped track with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " of type "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HlsSampleStreamWrapper"

    invoke-static {p1, p0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ll2/n;

    invoke-direct {p0}, Ll2/n;-><init>()V

    return-object p0
.end method

.method private t(II)Landroidx/media3/exoplayer/source/e0;
    .locals 9

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    array-length v0, v0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    new-instance v8, Landroidx/media3/exoplayer/hls/r$d;

    iget-object v3, p0, Landroidx/media3/exoplayer/hls/r;->e:Landroidx/media3/exoplayer/upstream/b;

    iget-object v4, p0, Landroidx/media3/exoplayer/hls/r;->g:Landroidx/media3/exoplayer/drm/t;

    iget-object v5, p0, Landroidx/media3/exoplayer/hls/r;->h:Landroidx/media3/exoplayer/drm/r$a;

    iget-object v6, p0, Landroidx/media3/exoplayer/hls/r;->t:Ljava/util/Map;

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/hls/r$d;-><init>(Landroidx/media3/exoplayer/upstream/b;Landroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/drm/r$a;Ljava/util/Map;Landroidx/media3/exoplayer/hls/r$a;)V

    iget-wide v2, p0, Landroidx/media3/exoplayer/hls/r;->P:J

    invoke-virtual {v8, v2, v3}, Landroidx/media3/exoplayer/source/e0;->e0(J)V

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/r;->W:Landroidx/media3/common/DrmInitData;

    invoke-virtual {v8, v2}, Landroidx/media3/exoplayer/hls/r$d;->l0(Landroidx/media3/common/DrmInitData;)V

    :cond_2
    iget-wide v2, p0, Landroidx/media3/exoplayer/hls/r;->V:J

    invoke-virtual {v8, v2, v3}, Landroidx/media3/exoplayer/source/e0;->d0(J)V

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/r;->X:Landroidx/media3/exoplayer/hls/i;

    if-eqz v2, :cond_3

    invoke-virtual {v8, v2}, Landroidx/media3/exoplayer/hls/r$d;->m0(Landroidx/media3/exoplayer/hls/i;)V

    :cond_3
    invoke-virtual {v8, p0}, Landroidx/media3/exoplayer/source/e0;->g0(Landroidx/media3/exoplayer/source/e0$d;)V

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/r;->w:[I

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/exoplayer/hls/r;->w:[I

    aput p1, v2, v0

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    invoke-static {p1, v8}, Landroidx/media3/common/util/a1;->V0([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/media3/exoplayer/hls/r$d;

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->O:[Z

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r;->O:[Z

    aput-boolean v1, p1, v0

    iget-boolean p1, p0, Landroidx/media3/exoplayer/hls/r;->M:Z

    or-int/2addr p1, v1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/hls/r;->M:Z

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->x:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->y:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->append(II)V

    invoke-static {p2}, Landroidx/media3/exoplayer/hls/r;->C(I)I

    move-result p1

    iget v1, p0, Landroidx/media3/exoplayer/hls/r;->A:I

    invoke-static {v1}, Landroidx/media3/exoplayer/hls/r;->C(I)I

    move-result v1

    if-le p1, v1, :cond_4

    iput v0, p0, Landroidx/media3/exoplayer/hls/r;->B:I

    iput p2, p0, Landroidx/media3/exoplayer/hls/r;->A:I

    :cond_4
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->N:[Z

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r;->N:[Z

    return-object v8
.end method

.method private u([Landroidx/media3/common/f0;)Lg2/z;
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    iget v3, v2, Landroidx/media3/common/f0;->a:I

    new-array v3, v3, [Landroidx/media3/common/r;

    move v4, v0

    :goto_1
    iget v5, v2, Landroidx/media3/common/f0;->a:I

    if-ge v4, v5, :cond_0

    invoke-virtual {v2, v4}, Landroidx/media3/common/f0;->a(I)Landroidx/media3/common/r;

    move-result-object v5

    iget-object v6, p0, Landroidx/media3/exoplayer/hls/r;->g:Landroidx/media3/exoplayer/drm/t;

    invoke-interface {v6, v5}, Landroidx/media3/exoplayer/drm/t;->b(Landroidx/media3/common/r;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/media3/common/r;->c(I)Landroidx/media3/common/r;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    new-instance v4, Landroidx/media3/common/f0;

    iget-object v2, v2, Landroidx/media3/common/f0;->b:Ljava/lang/String;

    invoke-direct {v4, v2, v3}, Landroidx/media3/common/f0;-><init>(Ljava/lang/String;[Landroidx/media3/common/r;)V

    aput-object v4, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lg2/z;

    invoke-direct {v0, p1}, Lg2/z;-><init>([Landroidx/media3/common/f0;)V

    return-object v0
.end method

.method private static v(Landroidx/media3/common/r;Landroidx/media3/common/r;Z)Landroidx/media3/common/r;
    .locals 7

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/y;->k(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Landroidx/media3/common/r;->k:Ljava/lang/String;

    invoke-static {v1, v0}, Landroidx/media3/common/util/a1;->R(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroidx/media3/common/r;->k:Ljava/lang/String;

    invoke-static {v1, v0}, Landroidx/media3/common/util/a1;->S(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/y;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/media3/common/r;->k:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-static {v1, v3}, Landroidx/media3/common/y;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    move-result-object v4

    iget-object v5, p0, Landroidx/media3/common/r;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v4

    iget-object v5, p0, Landroidx/media3/common/r;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/media3/common/r$b;->h0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v4

    iget-object v5, p0, Landroidx/media3/common/r;->c:Ljava/util/List;

    invoke-virtual {v4, v5}, Landroidx/media3/common/r$b;->i0(Ljava/util/List;)Landroidx/media3/common/r$b;

    move-result-object v4

    iget-object v5, p0, Landroidx/media3/common/r;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/media3/common/r$b;->j0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v4

    iget v5, p0, Landroidx/media3/common/r;->e:I

    invoke-virtual {v4, v5}, Landroidx/media3/common/r$b;->w0(I)Landroidx/media3/common/r$b;

    move-result-object v4

    iget v5, p0, Landroidx/media3/common/r;->f:I

    invoke-virtual {v4, v5}, Landroidx/media3/common/r$b;->s0(I)Landroidx/media3/common/r$b;

    move-result-object v4

    const/4 v5, -0x1

    if-eqz p2, :cond_2

    iget v6, p0, Landroidx/media3/common/r;->h:I

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    invoke-virtual {v4, v6}, Landroidx/media3/common/r$b;->Q(I)Landroidx/media3/common/r$b;

    move-result-object v4

    if-eqz p2, :cond_3

    iget p2, p0, Landroidx/media3/common/r;->i:I

    goto :goto_2

    :cond_3
    move p2, v5

    :goto_2
    invoke-virtual {v4, p2}, Landroidx/media3/common/r$b;->p0(I)Landroidx/media3/common/r$b;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroidx/media3/common/r$b;->S(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget v1, p0, Landroidx/media3/common/r;->v:I

    invoke-virtual {p2, v1}, Landroidx/media3/common/r$b;->B0(I)Landroidx/media3/common/r$b;

    move-result-object v1

    iget v4, p0, Landroidx/media3/common/r;->w:I

    invoke-virtual {v1, v4}, Landroidx/media3/common/r$b;->d0(I)Landroidx/media3/common/r$b;

    move-result-object v1

    iget v4, p0, Landroidx/media3/common/r;->x:F

    invoke-virtual {v1, v4}, Landroidx/media3/common/r$b;->b0(F)Landroidx/media3/common/r$b;

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {p2, v3}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    :cond_5
    iget v1, p0, Landroidx/media3/common/r;->E:I

    if-eq v1, v5, :cond_6

    if-ne v0, v2, :cond_6

    invoke-virtual {p2, v1}, Landroidx/media3/common/r$b;->R(I)Landroidx/media3/common/r$b;

    :cond_6
    iget-object p0, p0, Landroidx/media3/common/r;->l:Landroidx/media3/common/x;

    if-eqz p0, :cond_8

    iget-object p1, p1, Landroidx/media3/common/r;->l:Landroidx/media3/common/x;

    if-eqz p1, :cond_7

    invoke-virtual {p1, p0}, Landroidx/media3/common/x;->b(Landroidx/media3/common/x;)Landroidx/media3/common/x;

    move-result-object p0

    :cond_7
    invoke-virtual {p2, p0}, Landroidx/media3/common/r$b;->n0(Landroidx/media3/common/x;)Landroidx/media3/common/r$b;

    :cond_8
    invoke-virtual {p2}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object p0

    return-object p0
.end method

.method private w(I)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->j:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->i()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    if-ge p1, v0, :cond_1

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/hls/r;->n(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_1
    if-ne p1, v1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->A()Landroidx/media3/exoplayer/hls/i;

    move-result-object v0

    iget-wide v5, v0, Lh2/e;->h:J

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/hls/r;->x(I)Landroidx/media3/exoplayer/hls/i;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/r;->P:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/hls/r;->Q:J

    goto :goto_2

    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/common/collect/g3;->g(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/hls/i;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/i;->m()V

    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->T:Z

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->k:Landroidx/media3/exoplayer/source/s$a;

    iget v2, p0, Landroidx/media3/exoplayer/hls/r;->A:I

    iget-wide v3, p1, Lh2/e;->g:J

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/source/s$a;->F(IJJ)V

    return-void
.end method

.method private x(I)Landroidx/media3/exoplayer/hls/i;
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/hls/i;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, p1, v2}, Landroidx/media3/common/util/a1;->c1(Ljava/util/List;II)V

    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/hls/i;->k(I)I

    move-result v1

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    aget-object v2, v2, p1

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/source/e0;->w(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private y(Landroidx/media3/exoplayer/hls/i;)Z
    .locals 7

    iget p1, p1, Landroidx/media3/exoplayer/hls/i;->k:I

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroidx/media3/exoplayer/hls/r;->N:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/e0;->T()J

    move-result-wide v3

    int-to-long v5, p1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private static z(Landroidx/media3/common/r;Landroidx/media3/common/r;)Z
    .locals 6

    iget-object v0, p0, Landroidx/media3/common/r;->o:Ljava/lang/String;

    iget-object v1, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/y;->k(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_1

    invoke-static {v1}, Landroidx/media3/common/y;->k(Ljava/lang/String;)I

    move-result p0

    if-ne v2, p0, :cond_0

    move v4, v5

    :cond_0
    return v4

    :cond_1
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v4

    :cond_2
    const-string v1, "application/cea-608"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "application/cea-708"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    return v5

    :cond_4
    :goto_0
    iget p0, p0, Landroidx/media3/common/r;->J:I

    iget p1, p1, Landroidx/media3/common/r;->J:I

    if-ne p0, p1, :cond_5

    move v4, v5

    :cond_5
    return v4
.end method


# virtual methods
.method public G(I)Z
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->F()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    aget-object p1, v0, p1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->T:Z

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/source/e0;->N(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public H()Z
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/hls/r;->A:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public L()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->j:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->maybeThrowError()V

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/e;->p()V

    return-void
.end method

.method public M(I)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/r;->L()V

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/e0;->Q()V

    return-void
.end method

.method public N(Lh2/e;JJZ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput-object v2, v0, Landroidx/media3/exoplayer/hls/r;->u:Lh2/e;

    new-instance v2, Lg2/i;

    iget-wide v4, v1, Lh2/e;->a:J

    iget-object v6, v1, Lh2/e;->b:Lw1/h;

    invoke-virtual/range {p1 .. p1}, Lh2/e;->d()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lh2/e;->c()Ljava/util/Map;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lh2/e;->a()J

    move-result-wide v13

    move-object v3, v2

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lg2/i;-><init>(JLw1/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object v3, v0, Landroidx/media3/exoplayer/hls/r;->i:Landroidx/media3/exoplayer/upstream/m;

    iget-wide v4, v1, Lh2/e;->a:J

    invoke-interface {v3, v4, v5}, Landroidx/media3/exoplayer/upstream/m;->b(J)V

    iget-object v3, v0, Landroidx/media3/exoplayer/hls/r;->k:Landroidx/media3/exoplayer/source/s$a;

    iget v5, v1, Lh2/e;->c:I

    iget v6, v0, Landroidx/media3/exoplayer/hls/r;->b:I

    iget-object v7, v1, Lh2/e;->d:Landroidx/media3/common/r;

    iget v8, v1, Lh2/e;->e:I

    iget-object v9, v1, Lh2/e;->f:Ljava/lang/Object;

    iget-wide v10, v1, Lh2/e;->g:J

    iget-wide v12, v1, Lh2/e;->h:J

    move-object v4, v2

    invoke-virtual/range {v3 .. v13}, Landroidx/media3/exoplayer/source/s$a;->t(Lg2/i;IILandroidx/media3/common/r;ILjava/lang/Object;JJ)V

    if-nez p6, :cond_2

    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->F()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v0, Landroidx/media3/exoplayer/hls/r;->E:I

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->Y()V

    :cond_1
    iget v1, v0, Landroidx/media3/exoplayer/hls/r;->E:I

    if-lez v1, :cond_2

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/r;->c:Landroidx/media3/exoplayer/hls/r$b;

    invoke-interface {v1, p0}, Landroidx/media3/exoplayer/source/f0$a;->f(Landroidx/media3/exoplayer/source/f0;)V

    :cond_2
    return-void
.end method

.method public O(Lh2/e;JJ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput-object v2, v0, Landroidx/media3/exoplayer/hls/r;->u:Lh2/e;

    iget-object v2, v0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/hls/e;->r(Lh2/e;)V

    new-instance v2, Lg2/i;

    iget-wide v4, v1, Lh2/e;->a:J

    iget-object v6, v1, Lh2/e;->b:Lw1/h;

    invoke-virtual/range {p1 .. p1}, Lh2/e;->d()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lh2/e;->c()Ljava/util/Map;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lh2/e;->a()J

    move-result-wide v13

    move-object v3, v2

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lg2/i;-><init>(JLw1/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object v3, v0, Landroidx/media3/exoplayer/hls/r;->i:Landroidx/media3/exoplayer/upstream/m;

    iget-wide v4, v1, Lh2/e;->a:J

    invoke-interface {v3, v4, v5}, Landroidx/media3/exoplayer/upstream/m;->b(J)V

    iget-object v3, v0, Landroidx/media3/exoplayer/hls/r;->k:Landroidx/media3/exoplayer/source/s$a;

    iget v5, v1, Lh2/e;->c:I

    iget v6, v0, Landroidx/media3/exoplayer/hls/r;->b:I

    iget-object v7, v1, Lh2/e;->d:Landroidx/media3/common/r;

    iget v8, v1, Lh2/e;->e:I

    iget-object v9, v1, Lh2/e;->f:Ljava/lang/Object;

    iget-wide v10, v1, Lh2/e;->g:J

    iget-wide v12, v1, Lh2/e;->h:J

    move-object v4, v2

    invoke-virtual/range {v3 .. v13}, Landroidx/media3/exoplayer/source/s$a;->w(Lg2/i;IILandroidx/media3/common/r;ILjava/lang/Object;JJ)V

    iget-boolean v1, v0, Landroidx/media3/exoplayer/hls/r;->D:Z

    if-nez v1, :cond_0

    new-instance v1, Landroidx/media3/exoplayer/v2$b;

    invoke-direct {v1}, Landroidx/media3/exoplayer/v2$b;-><init>()V

    iget-wide v2, v0, Landroidx/media3/exoplayer/hls/r;->P:J

    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/v2$b;->f(J)Landroidx/media3/exoplayer/v2$b;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/exoplayer/v2$b;->d()Landroidx/media3/exoplayer/v2;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/hls/r;->a(Landroidx/media3/exoplayer/v2;)Z

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/r;->c:Landroidx/media3/exoplayer/hls/r$b;

    invoke-interface {v1, p0}, Landroidx/media3/exoplayer/source/f0$a;->f(Landroidx/media3/exoplayer/source/f0;)V

    :goto_0
    return-void
.end method

.method public P(Lh2/e;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$c;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v13, p6

    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/hls/r;->E(Lh2/e;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v3, v1

    check-cast v3, Landroidx/media3/exoplayer/hls/i;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/hls/i;->o()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v13, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    if-eqz v3, :cond_1

    move-object v3, v13

    check-cast v3, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    iget v3, v3, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v4, 0x19a

    if-eq v3, v4, :cond_0

    const/16 v4, 0x194

    if-ne v3, v4, :cond_1

    :cond_0
    sget-object v1, Landroidx/media3/exoplayer/upstream/Loader;->d:Landroidx/media3/exoplayer/upstream/Loader$c;

    return-object v1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lh2/e;->a()J

    move-result-wide v3

    new-instance v5, Lg2/i;

    iget-wide v6, v1, Lh2/e;->a:J

    iget-object v8, v1, Lh2/e;->b:Lw1/h;

    invoke-virtual/range {p1 .. p1}, Lh2/e;->d()Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lh2/e;->c()Ljava/util/Map;

    move-result-object v19

    move-object v14, v5

    move-wide v15, v6

    move-object/from16 v17, v8

    move-wide/from16 v20, p2

    move-wide/from16 v22, p4

    move-wide/from16 v24, v3

    invoke-direct/range {v14 .. v25}, Lg2/i;-><init>(JLw1/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v6, Lg2/j;

    iget v7, v1, Lh2/e;->c:I

    iget v8, v0, Landroidx/media3/exoplayer/hls/r;->b:I

    iget-object v9, v1, Lh2/e;->d:Landroidx/media3/common/r;

    iget v10, v1, Lh2/e;->e:I

    iget-object v11, v1, Lh2/e;->f:Ljava/lang/Object;

    iget-wide v14, v1, Lh2/e;->g:J

    invoke-static {v14, v15}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v26

    iget-wide v14, v1, Lh2/e;->h:J

    invoke-static {v14, v15}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v28

    move-object/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v9

    move/from16 v24, v10

    move-object/from16 v25, v11

    invoke-direct/range {v20 .. v29}, Lg2/j;-><init>(IILandroidx/media3/common/r;ILjava/lang/Object;JJ)V

    new-instance v7, Landroidx/media3/exoplayer/upstream/m$c;

    move/from16 v8, p7

    invoke-direct {v7, v5, v6, v13, v8}, Landroidx/media3/exoplayer/upstream/m$c;-><init>(Lg2/i;Lg2/j;Ljava/io/IOException;I)V

    iget-object v6, v0, Landroidx/media3/exoplayer/hls/r;->i:Landroidx/media3/exoplayer/upstream/m;

    iget-object v8, v0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    invoke-virtual {v8}, Landroidx/media3/exoplayer/hls/e;->l()Lj2/z;

    move-result-object v8

    invoke-static {v8}, Lj2/d0;->c(Lj2/z;)Landroidx/media3/exoplayer/upstream/m$a;

    move-result-object v8

    invoke-interface {v6, v8, v7}, Landroidx/media3/exoplayer/upstream/m;->d(Landroidx/media3/exoplayer/upstream/m$a;Landroidx/media3/exoplayer/upstream/m$c;)Landroidx/media3/exoplayer/upstream/m$b;

    move-result-object v6

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    iget v9, v6, Landroidx/media3/exoplayer/upstream/m$b;->a:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    iget-object v9, v0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    iget-wide v10, v6, Landroidx/media3/exoplayer/upstream/m$b;->b:J

    invoke-virtual {v9, v1, v10, v11}, Landroidx/media3/exoplayer/hls/e;->o(Lh2/e;J)Z

    move-result v6

    move v15, v6

    goto :goto_0

    :cond_2
    move v15, v8

    :goto_0
    if-eqz v15, :cond_6

    if-eqz v2, :cond_5

    const-wide/16 v6, 0x0

    cmp-long v2, v3, v6

    if-nez v2, :cond_5

    iget-object v2, v0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/hls/i;

    if-ne v2, v1, :cond_3

    move v8, v4

    :cond_3
    invoke-static {v8}, Landroidx/media3/common/util/a;->g(Z)V

    iget-object v2, v0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v2, v0, Landroidx/media3/exoplayer/hls/r;->P:J

    iput-wide v2, v0, Landroidx/media3/exoplayer/hls/r;->Q:J

    goto :goto_1

    :cond_4
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/google/common/collect/g3;->g(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/hls/i;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/hls/i;->m()V

    :cond_5
    :goto_1
    sget-object v2, Landroidx/media3/exoplayer/upstream/Loader;->f:Landroidx/media3/exoplayer/upstream/Loader$c;

    :goto_2
    move-object/from16 v16, v2

    goto :goto_3

    :cond_6
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/r;->i:Landroidx/media3/exoplayer/upstream/m;

    invoke-interface {v2, v7}, Landroidx/media3/exoplayer/upstream/m;->c(Landroidx/media3/exoplayer/upstream/m$c;)J

    move-result-wide v2

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v6

    if-eqz v4, :cond_7

    invoke-static {v8, v2, v3}, Landroidx/media3/exoplayer/upstream/Loader;->g(ZJ)Landroidx/media3/exoplayer/upstream/Loader$c;

    move-result-object v2

    goto :goto_2

    :cond_7
    sget-object v2, Landroidx/media3/exoplayer/upstream/Loader;->g:Landroidx/media3/exoplayer/upstream/Loader$c;

    goto :goto_2

    :goto_3
    invoke-virtual/range {v16 .. v16}, Landroidx/media3/exoplayer/upstream/Loader$c;->c()Z

    move-result v17

    xor-int/lit8 v14, v17, 0x1

    iget-object v2, v0, Landroidx/media3/exoplayer/hls/r;->k:Landroidx/media3/exoplayer/source/s$a;

    iget v4, v1, Lh2/e;->c:I

    iget v6, v0, Landroidx/media3/exoplayer/hls/r;->b:I

    iget-object v7, v1, Lh2/e;->d:Landroidx/media3/common/r;

    iget v8, v1, Lh2/e;->e:I

    iget-object v9, v1, Lh2/e;->f:Ljava/lang/Object;

    iget-wide v10, v1, Lh2/e;->g:J

    iget-wide v12, v1, Lh2/e;->h:J

    move-object v3, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-wide v9, v10

    move-wide v11, v12

    move-object/from16 v13, p6

    invoke-virtual/range {v2 .. v14}, Landroidx/media3/exoplayer/source/s$a;->y(Lg2/i;IILandroidx/media3/common/r;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    if-nez v17, :cond_8

    const/4 v2, 0x0

    iput-object v2, v0, Landroidx/media3/exoplayer/hls/r;->u:Lh2/e;

    iget-object v2, v0, Landroidx/media3/exoplayer/hls/r;->i:Landroidx/media3/exoplayer/upstream/m;

    iget-wide v3, v1, Lh2/e;->a:J

    invoke-interface {v2, v3, v4}, Landroidx/media3/exoplayer/upstream/m;->b(J)V

    :cond_8
    if-eqz v15, :cond_a

    iget-boolean v1, v0, Landroidx/media3/exoplayer/hls/r;->D:Z

    if-nez v1, :cond_9

    new-instance v1, Landroidx/media3/exoplayer/v2$b;

    invoke-direct {v1}, Landroidx/media3/exoplayer/v2$b;-><init>()V

    iget-wide v2, v0, Landroidx/media3/exoplayer/hls/r;->P:J

    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/v2$b;->f(J)Landroidx/media3/exoplayer/v2$b;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/exoplayer/v2$b;->d()Landroidx/media3/exoplayer/v2;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/hls/r;->a(Landroidx/media3/exoplayer/v2;)Z

    goto :goto_4

    :cond_9
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/r;->c:Landroidx/media3/exoplayer/hls/r$b;

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/source/f0$a;->f(Landroidx/media3/exoplayer/source/f0;)V

    :cond_a
    :goto_4
    return-object v16
.end method

.method public Q(Lh2/e;JJI)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez p6, :cond_0

    new-instance v8, Lg2/i;

    iget-wide v3, v1, Lh2/e;->a:J

    iget-object v5, v1, Lh2/e;->b:Lw1/h;

    move-object v2, v8

    move-wide/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lg2/i;-><init>(JLw1/h;J)V

    :goto_0
    move-object/from16 v22, v8

    goto :goto_1

    :cond_0
    new-instance v8, Lg2/i;

    iget-wide v10, v1, Lh2/e;->a:J

    iget-object v12, v1, Lh2/e;->b:Lw1/h;

    invoke-virtual/range {p1 .. p1}, Lh2/e;->d()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lh2/e;->c()Ljava/util/Map;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lh2/e;->a()J

    move-result-wide v19

    move-object v9, v8

    move-wide/from16 v15, p2

    move-wide/from16 v17, p4

    invoke-direct/range {v9 .. v20}, Lg2/i;-><init>(JLw1/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    goto :goto_0

    :goto_1
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/r;->k:Landroidx/media3/exoplayer/source/s$a;

    iget v3, v1, Lh2/e;->c:I

    iget v4, v0, Landroidx/media3/exoplayer/hls/r;->b:I

    iget-object v5, v1, Lh2/e;->d:Landroidx/media3/common/r;

    iget v6, v1, Lh2/e;->e:I

    iget-object v7, v1, Lh2/e;->f:Ljava/lang/Object;

    iget-wide v8, v1, Lh2/e;->g:J

    iget-wide v10, v1, Lh2/e;->h:J

    move-object/from16 v21, v2

    move/from16 v23, v3

    move/from16 v24, v4

    move-object/from16 v25, v5

    move/from16 v26, v6

    move-object/from16 v27, v7

    move-wide/from16 v28, v8

    move-wide/from16 v30, v10

    move/from16 v32, p6

    invoke-virtual/range {v21 .. v32}, Landroidx/media3/exoplayer/source/s$a;->C(Lg2/i;IILandroidx/media3/common/r;ILjava/lang/Object;JJI)V

    return-void
.end method

.method public R()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->x:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public S(Landroid/net/Uri;Landroidx/media3/exoplayer/upstream/m$c;Z)Z
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/hls/e;->q(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-nez p3, :cond_1

    iget-object p3, p0, Landroidx/media3/exoplayer/hls/r;->i:Landroidx/media3/exoplayer/upstream/m;

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/e;->l()Lj2/z;

    move-result-object v0

    invoke-static {v0}, Lj2/d0;->c(Lj2/z;)Landroidx/media3/exoplayer/upstream/m$a;

    move-result-object v0

    invoke-interface {p3, v0, p2}, Landroidx/media3/exoplayer/upstream/m;->d(Landroidx/media3/exoplayer/upstream/m$a;Landroidx/media3/exoplayer/upstream/m$c;)Landroidx/media3/exoplayer/upstream/m$b;

    move-result-object p2

    if-eqz p2, :cond_1

    iget p3, p2, Landroidx/media3/exoplayer/upstream/m$b;->a:I

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    iget-wide p2, p2, Landroidx/media3/exoplayer/upstream/m$b;->b:J

    goto :goto_0

    :cond_1
    move-wide p2, v2

    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/exoplayer/hls/e;->s(Landroid/net/Uri;J)Z

    move-result p1

    if-eqz p1, :cond_2

    cmp-long p1, p2, v2

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public T()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/common/collect/g3;->g(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/hls/i;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/hls/e;->d(Landroidx/media3/exoplayer/hls/i;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/i;->t()V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->r:Landroid/os/Handler;

    new-instance v2, Landroidx/media3/exoplayer/hls/n;

    invoke-direct {v2, p0, v0}, Landroidx/media3/exoplayer/hls/n;-><init>(Landroidx/media3/exoplayer/hls/r;Landroidx/media3/exoplayer/hls/i;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->T:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->j:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->j:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->e()V

    :cond_3
    :goto_0
    return-void
.end method

.method public varargs V([Landroidx/media3/common/f0;I[I)V
    .locals 4

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/hls/r;->u([Landroidx/media3/common/f0;)Lg2/z;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r;->I:Lg2/z;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r;->J:Ljava/util/Set;

    array-length p1, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget v1, p3, v0

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/r;->J:Ljava/util/Set;

    iget-object v3, p0, Landroidx/media3/exoplayer/hls/r;->I:Lg2/z;

    invoke-virtual {v3, v1}, Lg2/z;->b(I)Landroidx/media3/common/f0;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput p2, p0, Landroidx/media3/exoplayer/hls/r;->L:I

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->r:Landroid/os/Handler;

    iget-object p2, p0, Landroidx/media3/exoplayer/hls/r;->c:Landroidx/media3/exoplayer/hls/r$b;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Landroidx/media3/exoplayer/hls/q;

    invoke-direct {p3, p2}, Landroidx/media3/exoplayer/hls/q;-><init>(Landroidx/media3/exoplayer/hls/r$b;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->d0()V

    return-void
.end method

.method public W(ILandroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 11

    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->F()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    move v0, v2

    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/hls/i;

    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/hls/r;->y(Landroidx/media3/exoplayer/hls/i;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    invoke-static {v3, v2, v0}, Landroidx/media3/common/util/a1;->c1(Ljava/util/List;II)V

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/hls/i;

    iget-object v10, v0, Lh2/e;->d:Landroidx/media3/common/r;

    iget-object v3, p0, Landroidx/media3/exoplayer/hls/r;->G:Landroidx/media3/common/r;

    invoke-virtual {v10, v3}, Landroidx/media3/common/r;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroidx/media3/exoplayer/hls/r;->k:Landroidx/media3/exoplayer/source/s$a;

    iget v4, p0, Landroidx/media3/exoplayer/hls/r;->b:I

    iget v6, v0, Lh2/e;->e:I

    iget-object v7, v0, Lh2/e;->f:Ljava/lang/Object;

    iget-wide v8, v0, Lh2/e;->g:J

    move-object v5, v10

    invoke-virtual/range {v3 .. v9}, Landroidx/media3/exoplayer/source/s$a;->j(ILandroidx/media3/common/r;ILjava/lang/Object;J)V

    :cond_2
    iput-object v10, p0, Landroidx/media3/exoplayer/hls/r;->G:Landroidx/media3/common/r;

    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/hls/i;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/i;->o()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    aget-object v0, v0, p1

    iget-boolean v1, p0, Landroidx/media3/exoplayer/hls/r;->T:Z

    invoke-virtual {v0, p2, p3, p4, v1}, Landroidx/media3/exoplayer/source/e0;->V(Landroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;IZ)I

    move-result p3

    const/4 p4, -0x5

    if-ne p3, p4, :cond_8

    iget-object p4, p2, Landroidx/media3/exoplayer/s2;->b:Landroidx/media3/common/r;

    invoke-static {p4}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/media3/common/r;

    iget v0, p0, Landroidx/media3/exoplayer/hls/r;->B:I

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/e0;->T()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->d(J)I

    move-result p1

    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/hls/i;

    iget v0, v0, Landroidx/media3/exoplayer/hls/i;->k:I

    if-eq v0, p1, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_6

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/hls/i;

    iget-object p1, p1, Lh2/e;->d:Landroidx/media3/common/r;

    goto :goto_2

    :cond_6
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->F:Landroidx/media3/common/r;

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/r;

    :goto_2
    invoke-virtual {p4, p1}, Landroidx/media3/common/r;->j(Landroidx/media3/common/r;)Landroidx/media3/common/r;

    move-result-object p4

    :cond_7
    iput-object p4, p2, Landroidx/media3/exoplayer/s2;->b:Landroidx/media3/common/r;

    :cond_8
    return p3
.end method

.method public X()V
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->D:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/e0;->U()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/e;->t()V

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->j:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/upstream/Loader;->l(Landroidx/media3/exoplayer/upstream/Loader$e;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->r:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->H:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public a(Landroidx/media3/exoplayer/v2;)Z
    .locals 11

    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->T:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->j:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->i()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->j:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->F()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/hls/r;->Q:J

    iget-object v4, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    array-length v5, v4

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    iget-wide v8, p0, Landroidx/media3/exoplayer/hls/r;->Q:J

    invoke-virtual {v7, v8, v9}, Landroidx/media3/exoplayer/source/e0;->e0(J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move-object v8, v0

    move-wide v6, v2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->o:Ljava/util/List;

    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->A()Landroidx/media3/exoplayer/hls/i;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/exoplayer/hls/i;->f()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v2, v2, Lh2/e;->h:J

    goto :goto_1

    :cond_3
    iget-wide v3, p0, Landroidx/media3/exoplayer/hls/r;->P:J

    iget-wide v5, v2, Lh2/e;->g:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_1

    :goto_2
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->m:Landroidx/media3/exoplayer/hls/e$b;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/e$b;->a()V

    iget-object v4, p0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->D:Z

    const/4 v2, 0x1

    if-nez v0, :cond_5

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    move v9, v1

    goto :goto_4

    :cond_5
    :goto_3
    move v9, v2

    :goto_4
    iget-object v10, p0, Landroidx/media3/exoplayer/hls/r;->m:Landroidx/media3/exoplayer/hls/e$b;

    move-object v5, p1

    invoke-virtual/range {v4 .. v10}, Landroidx/media3/exoplayer/hls/e;->f(Landroidx/media3/exoplayer/v2;JLjava/util/List;ZLandroidx/media3/exoplayer/hls/e$b;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->m:Landroidx/media3/exoplayer/hls/e$b;

    iget-boolean v0, p1, Landroidx/media3/exoplayer/hls/e$b;->b:Z

    iget-object v3, p1, Landroidx/media3/exoplayer/hls/e$b;->a:Lh2/e;

    iget-object p1, p1, Landroidx/media3/exoplayer/hls/e$b;->c:Landroid/net/Uri;

    if-eqz v0, :cond_6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/hls/r;->Q:J

    iput-boolean v2, p0, Landroidx/media3/exoplayer/hls/r;->T:Z

    return v2

    :cond_6
    if-nez v3, :cond_8

    if-eqz p1, :cond_7

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->c:Landroidx/media3/exoplayer/hls/r$b;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/hls/r$b;->d(Landroid/net/Uri;)V

    :cond_7
    return v1

    :cond_8
    invoke-static {v3}, Landroidx/media3/exoplayer/hls/r;->E(Lh2/e;)Z

    move-result p1

    if-eqz p1, :cond_9

    move-object p1, v3

    check-cast p1, Landroidx/media3/exoplayer/hls/i;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/hls/r;->D(Landroidx/media3/exoplayer/hls/i;)V

    :cond_9
    iput-object v3, p0, Landroidx/media3/exoplayer/hls/r;->u:Lh2/e;

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->j:Landroidx/media3/exoplayer/upstream/Loader;

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->i:Landroidx/media3/exoplayer/upstream/m;

    iget v1, v3, Lh2/e;->c:I

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/upstream/m;->a(I)I

    move-result v0

    invoke-virtual {p1, v3, p0, v0}, Landroidx/media3/exoplayer/upstream/Loader;->m(Landroidx/media3/exoplayer/upstream/Loader$d;Landroidx/media3/exoplayer/upstream/Loader$b;I)J

    return v2

    :cond_a
    :goto_5
    return v1
.end method

.method public a0(JZ)Z
    .locals 6

    iput-wide p1, p0, Landroidx/media3/exoplayer/hls/r;->P:J

    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->F()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-wide p1, p0, Landroidx/media3/exoplayer/hls/r;->Q:J

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/e;->m()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/hls/i;

    iget-wide v4, v3, Lh2/e;->g:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->C:Z

    if-eqz v0, :cond_3

    if-nez p3, :cond_3

    invoke-direct {p0, p1, p2, v3}, Landroidx/media3/exoplayer/hls/r;->Z(JLandroidx/media3/exoplayer/hls/i;)Z

    move-result p3

    if-eqz p3, :cond_3

    return v2

    :cond_3
    iput-wide p1, p0, Landroidx/media3/exoplayer/hls/r;->Q:J

    iput-boolean v2, p0, Landroidx/media3/exoplayer/hls/r;->T:Z

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->j:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/upstream/Loader;->i()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Landroidx/media3/exoplayer/hls/r;->C:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    array-length p2, p1

    :goto_2
    if-ge v2, p2, :cond_4

    aget-object p3, p1, v2

    invoke-virtual {p3}, Landroidx/media3/exoplayer/source/e0;->s()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->j:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/upstream/Loader;->e()V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->j:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/upstream/Loader;->f()V

    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->Y()V

    :goto_3
    return v1
.end method

.method public b(JLandroidx/media3/exoplayer/c4;)J
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/exoplayer/hls/e;->c(JLandroidx/media3/exoplayer/c4;)J

    move-result-wide p1

    return-wide p1
.end method

.method public b0([Lj2/z;[Z[Lg2/u;[ZJZ)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-wide/from16 v12, p5

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/hls/r;->j()V

    iget v3, v0, Landroidx/media3/exoplayer/hls/r;->E:I

    const/4 v14, 0x0

    move v4, v14

    :goto_0
    array-length v5, v1

    const/4 v6, 0x0

    const/4 v15, 0x1

    if-ge v4, v5, :cond_2

    aget-object v5, v2, v4

    check-cast v5, Landroidx/media3/exoplayer/hls/m;

    if-eqz v5, :cond_1

    aget-object v7, v1, v4

    if-eqz v7, :cond_0

    aget-boolean v7, p2, v4

    if-nez v7, :cond_1

    :cond_0
    iget v7, v0, Landroidx/media3/exoplayer/hls/r;->E:I

    sub-int/2addr v7, v15

    iput v7, v0, Landroidx/media3/exoplayer/hls/r;->E:I

    invoke-virtual {v5}, Landroidx/media3/exoplayer/hls/m;->d()V

    aput-object v6, v2, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-nez p7, :cond_5

    iget-boolean v4, v0, Landroidx/media3/exoplayer/hls/r;->S:Z

    if-eqz v4, :cond_3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_3
    iget-wide v3, v0, Landroidx/media3/exoplayer/hls/r;->P:J

    cmp-long v3, v12, v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move v3, v14

    goto :goto_2

    :cond_5
    :goto_1
    move v3, v15

    :goto_2
    iget-object v4, v0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/hls/e;->l()Lj2/z;

    move-result-object v4

    move/from16 v16, v3

    move-object v11, v4

    move v3, v14

    :goto_3
    array-length v5, v1

    if-ge v3, v5, :cond_a

    aget-object v5, v1, v3

    if-nez v5, :cond_6

    goto :goto_5

    :cond_6
    iget-object v7, v0, Landroidx/media3/exoplayer/hls/r;->I:Lg2/z;

    invoke-interface {v5}, Lj2/c0;->getTrackGroup()Landroidx/media3/common/f0;

    move-result-object v8

    invoke-virtual {v7, v8}, Lg2/z;->d(Landroidx/media3/common/f0;)I

    move-result v7

    iget v8, v0, Landroidx/media3/exoplayer/hls/r;->L:I

    if-ne v7, v8, :cond_7

    iget-object v8, v0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    invoke-virtual {v8, v5}, Landroidx/media3/exoplayer/hls/e;->w(Lj2/z;)V

    move-object v11, v5

    :cond_7
    aget-object v5, v2, v3

    if-nez v5, :cond_9

    iget v5, v0, Landroidx/media3/exoplayer/hls/r;->E:I

    add-int/2addr v5, v15

    iput v5, v0, Landroidx/media3/exoplayer/hls/r;->E:I

    new-instance v5, Landroidx/media3/exoplayer/hls/m;

    invoke-direct {v5, v0, v7}, Landroidx/media3/exoplayer/hls/m;-><init>(Landroidx/media3/exoplayer/hls/r;I)V

    aput-object v5, v2, v3

    aput-boolean v15, p4, v3

    iget-object v8, v0, Landroidx/media3/exoplayer/hls/r;->K:[I

    if-eqz v8, :cond_9

    invoke-virtual {v5}, Landroidx/media3/exoplayer/hls/m;->a()V

    if-nez v16, :cond_9

    iget-object v5, v0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    iget-object v8, v0, Landroidx/media3/exoplayer/hls/r;->K:[I

    aget v7, v8, v7

    aget-object v5, v5, v7

    invoke-virtual {v5}, Landroidx/media3/exoplayer/source/e0;->F()I

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v5, v12, v13, v15}, Landroidx/media3/exoplayer/source/e0;->c0(JZ)Z

    move-result v5

    if-nez v5, :cond_8

    move v5, v15

    goto :goto_4

    :cond_8
    move v5, v14

    :goto_4
    move/from16 v16, v5

    :cond_9
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    iget v1, v0, Landroidx/media3/exoplayer/hls/r;->E:I

    if-nez v1, :cond_d

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/hls/e;->t()V

    iput-object v6, v0, Landroidx/media3/exoplayer/hls/r;->G:Landroidx/media3/common/r;

    iput-boolean v15, v0, Landroidx/media3/exoplayer/hls/r;->R:Z

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/r;->j:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/upstream/Loader;->i()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-boolean v1, v0, Landroidx/media3/exoplayer/hls/r;->C:Z

    if-eqz v1, :cond_b

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    array-length v3, v1

    :goto_6
    if-ge v14, v3, :cond_b

    aget-object v4, v1, v14

    invoke-virtual {v4}, Landroidx/media3/exoplayer/source/e0;->s()V

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_b
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/r;->j:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/upstream/Loader;->e()V

    goto/16 :goto_9

    :cond_c
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/hls/r;->Y()V

    goto :goto_9

    :cond_d
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {v11, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-boolean v1, v0, Landroidx/media3/exoplayer/hls/r;->S:Z

    if-nez v1, :cond_f

    const-wide/16 v3, 0x0

    cmp-long v1, v12, v3

    if-gez v1, :cond_e

    neg-long v3, v12

    :cond_e
    move-wide v6, v3

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/hls/r;->A()Landroidx/media3/exoplayer/hls/i;

    move-result-object v1

    iget-object v3, v0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    invoke-virtual {v3, v1, v12, v13}, Landroidx/media3/exoplayer/hls/e;->a(Landroidx/media3/exoplayer/hls/i;J)[Lh2/n;

    move-result-object v17

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v10, v0, Landroidx/media3/exoplayer/hls/r;->o:Ljava/util/List;

    move-object v3, v11

    move-wide/from16 v4, p5

    move-object/from16 v18, v11

    move-object/from16 v11, v17

    invoke-interface/range {v3 .. v11}, Lj2/z;->e(JJJLjava/util/List;[Lh2/n;)V

    iget-object v3, v0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/hls/e;->k()Landroidx/media3/common/f0;

    move-result-object v3

    iget-object v1, v1, Lh2/e;->d:Landroidx/media3/common/r;

    invoke-virtual {v3, v1}, Landroidx/media3/common/f0;->b(Landroidx/media3/common/r;)I

    move-result v1

    invoke-interface/range {v18 .. v18}, Lj2/z;->getSelectedIndexInTrackGroup()I

    move-result v3

    if-eq v3, v1, :cond_10

    :cond_f
    iput-boolean v15, v0, Landroidx/media3/exoplayer/hls/r;->R:Z

    move v1, v15

    move/from16 v16, v1

    goto :goto_7

    :cond_10
    move/from16 v1, p7

    :goto_7
    if-eqz v16, :cond_12

    invoke-virtual {v0, v12, v13, v1}, Landroidx/media3/exoplayer/hls/r;->a0(JZ)Z

    :goto_8
    array-length v1, v2

    if-ge v14, v1, :cond_12

    aget-object v1, v2, v14

    if-eqz v1, :cond_11

    aput-boolean v15, p4, v14

    :cond_11
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_12
    :goto_9
    invoke-direct {v0, v2}, Landroidx/media3/exoplayer/hls/r;->i0([Lg2/u;)V

    iput-boolean v15, v0, Landroidx/media3/exoplayer/hls/r;->S:Z

    return v16
.end method

.method public c(Landroidx/media3/common/r;)V
    .locals 1

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->r:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->p:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c0(Landroidx/media3/common/DrmInitData;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->W:Landroidx/media3/common/DrmInitData;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r;->W:Landroidx/media3/common/DrmInitData;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/r;->O:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/hls/r$d;->l0(Landroidx/media3/common/DrmInitData;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public discardBuffer(JZ)V
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->C:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    aget-object v2, v2, v1

    iget-object v3, p0, Landroidx/media3/exoplayer/hls/r;->N:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, p1, p2, p3, v3}, Landroidx/media3/exoplayer/source/e0;->r(JZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public e0(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/hls/e;->v(Z)V

    return-void
.end method

.method public endTracks()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->U:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->r:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public f(Ll2/m0;)V
    .locals 0

    return-void
.end method

.method public f0(J)V
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/r;->V:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    iput-wide p1, p0, Landroidx/media3/exoplayer/hls/r;->V:J

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Landroidx/media3/exoplayer/source/e0;->d0(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g0(IJ)I
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    aget-object v0, v0, p1

    iget-boolean v1, p0, Landroidx/media3/exoplayer/hls/r;->T:Z

    invoke-virtual {v0, p2, p3, v1}, Landroidx/media3/exoplayer/source/e0;->H(JZ)I

    move-result p2

    iget-object p3, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {p3, v1}, Lcom/google/common/collect/g3;->h(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/media3/exoplayer/hls/i;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroidx/media3/exoplayer/hls/i;->o()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/e0;->F()I

    move-result v1

    invoke-virtual {p3, p1}, Landroidx/media3/exoplayer/hls/i;->k(I)I

    move-result p1

    sub-int/2addr p1, v1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_1
    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/source/e0;->h0(I)V

    return p2
.end method

.method public getBufferedPositionUs()J
    .locals 7

    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->T:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/r;->Q:J

    return-wide v0

    :cond_1
    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/r;->P:J

    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->A()Landroidx/media3/exoplayer/hls/i;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/exoplayer/hls/i;->f()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/hls/i;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    iget-wide v2, v2, Lh2/e;->h:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_4
    iget-boolean v2, p0, Landroidx/media3/exoplayer/hls/r;->C:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    invoke-virtual {v5}, Landroidx/media3/exoplayer/source/e0;->C()J

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/r;->Q:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->T:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->A()Landroidx/media3/exoplayer/hls/i;

    move-result-object v0

    iget-wide v0, v0, Lh2/e;->h:J

    :goto_0
    return-wide v0
.end method

.method public getTrackGroups()Lg2/z;
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->j()V

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->I:Lg2/z;

    return-object v0
.end method

.method public h0(I)V
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->j()V

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->K:[I

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->K:[I

    aget p1, v0, p1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->N:[Z

    aget-boolean v0, v0, p1

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->N:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    return-void
.end method

.method public isLoading()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->j:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->i()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic k(Landroidx/media3/exoplayer/upstream/Loader$d;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$c;
    .locals 0

    check-cast p1, Lh2/e;

    invoke-virtual/range {p0 .. p7}, Landroidx/media3/exoplayer/hls/r;->P(Lh2/e;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$c;

    move-result-object p1

    return-object p1
.end method

.method public l(I)I
    .locals 3

    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->j()V

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->K:[I

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->K:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->J:Ljava/util/Set;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->I:Lg2/z;

    invoke-virtual {v1, p1}, Lg2/z;->b(I)Landroidx/media3/common/f0;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v2, -0x3

    :cond_0
    return v2

    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->N:[Z

    aget-boolean v1, p1, v0

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const/4 v1, 0x1

    aput-boolean v1, p1, v0

    return v0
.end method

.method public maybeThrowPrepareError()V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/r;->L()V

    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->T:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->D:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Loading finished before preparation is complete."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic o(Landroidx/media3/exoplayer/upstream/Loader$d;JJI)V
    .locals 0

    check-cast p1, Lh2/e;

    invoke-virtual/range {p0 .. p6}, Landroidx/media3/exoplayer/hls/r;->Q(Lh2/e;JJI)V

    return-void
.end method

.method public onLoaderReleased()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/e0;->W()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic p(Landroidx/media3/exoplayer/upstream/Loader$d;JJ)V
    .locals 0

    check-cast p1, Lh2/e;

    invoke-virtual/range {p0 .. p5}, Landroidx/media3/exoplayer/hls/r;->O(Lh2/e;JJ)V

    return-void
.end method

.method public bridge synthetic q(Landroidx/media3/exoplayer/upstream/Loader$d;JJZ)V
    .locals 0

    check-cast p1, Lh2/e;

    invoke-virtual/range {p0 .. p6}, Landroidx/media3/exoplayer/hls/r;->N(Lh2/e;JJZ)V

    return-void
.end method

.method public r()V
    .locals 3

    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->D:Z

    if-nez v0, :cond_0

    new-instance v0, Landroidx/media3/exoplayer/v2$b;

    invoke-direct {v0}, Landroidx/media3/exoplayer/v2$b;-><init>()V

    iget-wide v1, p0, Landroidx/media3/exoplayer/hls/r;->P:J

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/v2$b;->f(J)Landroidx/media3/exoplayer/v2$b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/v2$b;->d()Landroidx/media3/exoplayer/v2;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/hls/r;->a(Landroidx/media3/exoplayer/v2;)Z

    :cond_0
    return-void
.end method

.method public reevaluateBuffer(J)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->j:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->h()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->j:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->u:Lh2/e;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->u:Lh2/e;

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/r;->o:Ljava/util/List;

    invoke-virtual {v0, p1, p2, v1, v2}, Landroidx/media3/exoplayer/hls/e;->x(JLh2/e;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->j:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/upstream/Loader;->e()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_3

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/r;->o:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/hls/i;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/hls/e;->d(Landroidx/media3/exoplayer/hls/i;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/hls/r;->w(I)V

    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->o:Ljava/util/List;

    invoke-virtual {v0, p1, p2, v1}, Landroidx/media3/exoplayer/hls/e;->i(JLjava/util/List;)I

    move-result p1

    iget-object p2, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_5

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/hls/r;->w(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public track(II)Ll2/s0;
    .locals 3

    sget-object v0, Landroidx/media3/exoplayer/hls/r;->Y:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/hls/r;->B(II)Ll2/s0;

    move-result-object v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/r;->w:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_1

    aget-object v0, v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->U:Z

    if-eqz v0, :cond_3

    invoke-static {p1, p2}, Landroidx/media3/exoplayer/hls/r;->s(II)Ll2/n;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/hls/r;->t(II)Landroidx/media3/exoplayer/source/e0;

    move-result-object v0

    :cond_4
    const/4 p1, 0x5

    if-ne p2, p1, :cond_6

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->z:Ll2/s0;

    if-nez p1, :cond_5

    new-instance p1, Landroidx/media3/exoplayer/hls/r$c;

    iget p2, p0, Landroidx/media3/exoplayer/hls/r;->l:I

    invoke-direct {p1, v0, p2}, Landroidx/media3/exoplayer/hls/r$c;-><init>(Ll2/s0;I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r;->z:Ll2/s0;

    :cond_5
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->z:Ll2/s0;

    return-object p1

    :cond_6
    return-object v0
.end method
