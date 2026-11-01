.class final Lcom/google/android/exoplayer2/source/hls/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$b;
.implements Lcom/google/android/exoplayer2/upstream/Loader$e;
.implements Lcom/google/android/exoplayer2/source/b0;
.implements Lg9/n;
.implements Lcom/google/android/exoplayer2/source/a0$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/hls/p$c;,
        Lcom/google/android/exoplayer2/source/hls/p$d;,
        Lcom/google/android/exoplayer2/source/hls/p$b;
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

.field private F:Lcom/google/android/exoplayer2/o1;

.field private G:Lcom/google/android/exoplayer2/o1;

.field private H:Z

.field private I:Lt9/x;

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

.field private W:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field private X:Lcom/google/android/exoplayer2/source/hls/i;

.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Lcom/google/android/exoplayer2/source/hls/p$b;

.field private final d:Lcom/google/android/exoplayer2/source/hls/e;

.field private final e:Lcom/google/android/exoplayer2/upstream/b;

.field private final f:Lcom/google/android/exoplayer2/o1;

.field private final g:Lcom/google/android/exoplayer2/drm/u;

.field private final h:Lcom/google/android/exoplayer2/drm/s$a;

.field private final i:Lcom/google/android/exoplayer2/upstream/z;

.field private final j:Lcom/google/android/exoplayer2/upstream/Loader;

.field private final k:Lcom/google/android/exoplayer2/source/p$a;

.field private final l:I

.field private final m:Lcom/google/android/exoplayer2/source/hls/e$b;

.field private final n:Ljava/util/ArrayList;

.field private final o:Ljava/util/List;

.field private final p:Ljava/lang/Runnable;

.field private final q:Ljava/lang/Runnable;

.field private final r:Landroid/os/Handler;

.field private final s:Ljava/util/ArrayList;

.field private final t:Ljava/util/Map;

.field private u:Lv9/f;

.field private v:[Lcom/google/android/exoplayer2/source/hls/p$d;

.field private w:[I

.field private x:Ljava/util/Set;

.field private y:Landroid/util/SparseIntArray;

.field private z:Lg9/e0;


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

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/p;->Y:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/google/android/exoplayer2/source/hls/p$b;Lcom/google/android/exoplayer2/source/hls/e;Ljava/util/Map;Lcom/google/android/exoplayer2/upstream/b;JLcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/upstream/z;Lcom/google/android/exoplayer2/source/p$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->a:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/exoplayer2/source/hls/p;->b:I

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/p;->c:Lcom/google/android/exoplayer2/source/hls/p$b;

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/hls/p;->t:Ljava/util/Map;

    iput-object p6, p0, Lcom/google/android/exoplayer2/source/hls/p;->e:Lcom/google/android/exoplayer2/upstream/b;

    iput-object p9, p0, Lcom/google/android/exoplayer2/source/hls/p;->f:Lcom/google/android/exoplayer2/o1;

    iput-object p10, p0, Lcom/google/android/exoplayer2/source/hls/p;->g:Lcom/google/android/exoplayer2/drm/u;

    iput-object p11, p0, Lcom/google/android/exoplayer2/source/hls/p;->h:Lcom/google/android/exoplayer2/drm/s$a;

    iput-object p12, p0, Lcom/google/android/exoplayer2/source/hls/p;->i:Lcom/google/android/exoplayer2/upstream/z;

    iput-object p13, p0, Lcom/google/android/exoplayer2/source/hls/p;->k:Lcom/google/android/exoplayer2/source/p$a;

    iput p14, p0, Lcom/google/android/exoplayer2/source/hls/p;->l:I

    new-instance p1, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string p2, "Loader:HlsSampleStreamWrapper"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    new-instance p1, Lcom/google/android/exoplayer2/source/hls/e$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/hls/e$b;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->m:Lcom/google/android/exoplayer2/source/hls/e$b;

    const/4 p1, 0x0

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/p;->w:[I

    new-instance p2, Ljava/util/HashSet;

    sget-object p3, Lcom/google/android/exoplayer2/source/hls/p;->Y:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p4

    invoke-direct {p2, p4}, Ljava/util/HashSet;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/p;->x:Ljava/util/Set;

    new-instance p2, Landroid/util/SparseIntArray;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p3

    invoke-direct {p2, p3}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/p;->y:Landroid/util/SparseIntArray;

    new-array p2, p1, [Lcom/google/android/exoplayer2/source/hls/p$d;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    new-array p2, p1, [Z

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/p;->O:[Z

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->N:[Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->o:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->s:Ljava/util/ArrayList;

    new-instance p1, Lcom/google/android/exoplayer2/source/hls/n;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/hls/n;-><init>(Lcom/google/android/exoplayer2/source/hls/p;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->p:Ljava/lang/Runnable;

    new-instance p1, Lcom/google/android/exoplayer2/source/hls/o;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/hls/o;-><init>(Lcom/google/android/exoplayer2/source/hls/p;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->q:Ljava/lang/Runnable;

    invoke-static {}, Lcom/google/android/exoplayer2/util/p0;->w()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->r:Landroid/os/Handler;

    iput-wide p7, p0, Lcom/google/android/exoplayer2/source/hls/p;->P:J

    iput-wide p7, p0, Lcom/google/android/exoplayer2/source/hls/p;->Q:J

    return-void
.end method

.method private A(Lcom/google/android/exoplayer2/source/hls/i;)V
    .locals 6

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->X:Lcom/google/android/exoplayer2/source/hls/i;

    iget-object v0, p1, Lv9/f;->d:Lcom/google/android/exoplayer2/o1;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->F:Lcom/google/android/exoplayer2/o1;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->Q:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/a0;->G()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/google/android/exoplayer2/source/hls/i;->l(Lcom/google/android/exoplayer2/source/hls/p;Lcom/google/common/collect/ImmutableList;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    array-length v1, v0

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v2, v0, v3

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/source/hls/p$d;->j0(Lcom/google/android/exoplayer2/source/hls/i;)V

    iget-boolean v4, p1, Lcom/google/android/exoplayer2/source/hls/i;->n:Z

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/a0;->g0()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static B(Lv9/f;)Z
    .locals 0

    instance-of p0, p0, Lcom/google/android/exoplayer2/source/hls/i;

    return p0
.end method

.method private C()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->Q:J

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

.method private F()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->I:Lt9/x;

    iget v0, v0, Lt9/x;->a:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->K:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    array-length v5, v4

    if-ge v3, v5, :cond_1

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/a0;->F()Lcom/google/android/exoplayer2/o1;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/o1;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/p;->I:Lt9/x;

    invoke-virtual {v5, v2}, Lt9/x;->b(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->c(I)Lcom/google/android/exoplayer2/o1;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/source/hls/p;->w(Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/o1;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/p;->K:[I

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/hls/l;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/hls/l;->a()V

    goto :goto_3

    :cond_3
    return-void
.end method

.method private G()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->H:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->K:[I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->C:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/a0;->F()Lcom/google/android/exoplayer2/o1;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->I:Lt9/x;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->F()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->k()V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->Y()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->c:Lcom/google/android/exoplayer2/source/hls/p$b;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/p$b;->onPrepared()V

    :cond_4
    :goto_1
    return-void
.end method

.method private P()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->C:Z

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->G()V

    return-void
.end method

.method private T()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/hls/p;->R:Z

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/source/a0;->W(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->R:Z

    return-void
.end method

.method private U(J)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2, v1}, Lcom/google/android/exoplayer2/source/a0;->Z(JZ)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/p;->O:[Z

    aget-boolean v3, v3, v2

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/hls/p;->M:Z

    if-nez v3, :cond_1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private Y()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->D:Z

    return-void
.end method

.method private d0([Lt9/s;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/p;->s:Ljava/util/ArrayList;

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/l;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic f(Lcom/google/android/exoplayer2/source/hls/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->P()V

    return-void
.end method

.method public static synthetic g(Lcom/google/android/exoplayer2/source/hls/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->G()V

    return-void
.end method

.method private h()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->D:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->I:Lt9/x;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->J:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private k()V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    array-length v2, v2

    const/4 v3, -0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    move v7, v3

    move v8, v4

    move v6, v5

    :goto_0
    const/4 v9, 0x2

    if-ge v6, v2, :cond_5

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    aget-object v10, v10, v6

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/source/a0;->F()Lcom/google/android/exoplayer2/o1;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/exoplayer2/o1;

    iget-object v10, v10, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    invoke-static {v10}, Lcom/google/android/exoplayer2/util/w;->t(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v10}, Lcom/google/android/exoplayer2/util/w;->p(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v1

    goto :goto_1

    :cond_1
    invoke-static {v10}, Lcom/google/android/exoplayer2/util/w;->s(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x3

    goto :goto_1

    :cond_2
    move v9, v3

    :goto_1
    invoke-static {v9}, Lcom/google/android/exoplayer2/source/hls/p;->z(I)I

    move-result v10

    invoke-static {v7}, Lcom/google/android/exoplayer2/source/hls/p;->z(I)I

    move-result v11

    if-le v10, v11, :cond_3

    move v8, v6

    move v7, v9

    goto :goto_2

    :cond_3
    if-ne v9, v7, :cond_4

    if-eq v8, v4, :cond_4

    move v8, v4

    :cond_4
    :goto_2
    add-int/2addr v6, v1

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/e;->j()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    iget v6, v3, Lcom/google/android/exoplayer2/source/TrackGroup;->a:I

    iput v4, v0, Lcom/google/android/exoplayer2/source/hls/p;->L:I

    new-array v4, v2, [I

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/hls/p;->K:[I

    move v4, v5

    :goto_3
    if-ge v4, v2, :cond_6

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/hls/p;->K:[I

    aput v4, v10, v4

    add-int/2addr v4, v1

    goto :goto_3

    :cond_6
    new-array v4, v2, [Lcom/google/android/exoplayer2/source/TrackGroup;

    move v10, v5

    :goto_4
    if-ge v10, v2, :cond_d

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    aget-object v11, v11, v10

    invoke-virtual {v11}, Lcom/google/android/exoplayer2/source/a0;->F()Lcom/google/android/exoplayer2/o1;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/o1;

    if-ne v10, v8, :cond_a

    new-array v12, v6, [Lcom/google/android/exoplayer2/o1;

    move v13, v5

    :goto_5
    if-ge v13, v6, :cond_9

    invoke-virtual {v3, v13}, Lcom/google/android/exoplayer2/source/TrackGroup;->c(I)Lcom/google/android/exoplayer2/o1;

    move-result-object v14

    if-ne v7, v1, :cond_7

    iget-object v15, v0, Lcom/google/android/exoplayer2/source/hls/p;->f:Lcom/google/android/exoplayer2/o1;

    if-eqz v15, :cond_7

    invoke-virtual {v14, v15}, Lcom/google/android/exoplayer2/o1;->j(Lcom/google/android/exoplayer2/o1;)Lcom/google/android/exoplayer2/o1;

    move-result-object v14

    :cond_7
    if-ne v6, v1, :cond_8

    invoke-virtual {v11, v14}, Lcom/google/android/exoplayer2/o1;->j(Lcom/google/android/exoplayer2/o1;)Lcom/google/android/exoplayer2/o1;

    move-result-object v14

    goto :goto_6

    :cond_8
    invoke-static {v14, v11, v1}, Lcom/google/android/exoplayer2/source/hls/p;->s(Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/o1;Z)Lcom/google/android/exoplayer2/o1;

    move-result-object v14

    :goto_6
    aput-object v14, v12, v13

    add-int/2addr v13, v1

    goto :goto_5

    :cond_9
    new-instance v11, Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v13, v0, Lcom/google/android/exoplayer2/source/hls/p;->a:Ljava/lang/String;

    invoke-direct {v11, v13, v12}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/o1;)V

    aput-object v11, v4, v10

    iput v10, v0, Lcom/google/android/exoplayer2/source/hls/p;->L:I

    goto :goto_9

    :cond_a
    if-ne v7, v9, :cond_b

    iget-object v12, v11, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    invoke-static {v12}, Lcom/google/android/exoplayer2/util/w;->p(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/hls/p;->f:Lcom/google/android/exoplayer2/o1;

    goto :goto_7

    :cond_b
    const/4 v12, 0x0

    :goto_7
    iget-object v13, v0, Lcom/google/android/exoplayer2/source/hls/p;->a:Ljava/lang/String;

    if-ge v10, v8, :cond_c

    move v14, v10

    goto :goto_8

    :cond_c
    add-int/lit8 v14, v10, -0x1

    :goto_8
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, 0x12

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ":muxed:"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v13, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-static {v12, v11, v5}, Lcom/google/android/exoplayer2/source/hls/p;->s(Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/o1;Z)Lcom/google/android/exoplayer2/o1;

    move-result-object v11

    new-array v12, v1, [Lcom/google/android/exoplayer2/o1;

    aput-object v11, v12, v5

    invoke-direct {v13, v9, v12}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/o1;)V

    aput-object v13, v4, v10

    :goto_9
    add-int/2addr v10, v1

    const/4 v9, 0x2

    goto/16 :goto_4

    :cond_d
    invoke-direct {v0, v4}, Lcom/google/android/exoplayer2/source/hls/p;->r([Lcom/google/android/exoplayer2/source/TrackGroup;)Lt9/x;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/hls/p;->I:Lt9/x;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/p;->J:Ljava/util/Set;

    if-nez v2, :cond_e

    goto :goto_a

    :cond_e
    move v1, v5

    :goto_a
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->J:Ljava/util/Set;

    return-void
.end method

.method private m(I)Z
    .locals 4

    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/hls/i;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/hls/i;->n:Z

    if-eqz v1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/hls/i;

    move v0, v2

    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/hls/i;->k(I)I

    move-result v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/a0;->C()I

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

.method private static p(II)Lg9/k;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x36

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unmapped track with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " of type "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HlsSampleStreamWrapper"

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lg9/k;

    invoke-direct {p0}, Lg9/k;-><init>()V

    return-object p0
.end method

.method private q(II)Lcom/google/android/exoplayer2/source/a0;
    .locals 9

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

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
    new-instance v8, Lcom/google/android/exoplayer2/source/hls/p$d;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/p;->e:Lcom/google/android/exoplayer2/upstream/b;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/p;->g:Lcom/google/android/exoplayer2/drm/u;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/p;->h:Lcom/google/android/exoplayer2/drm/s$a;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/p;->t:Ljava/util/Map;

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/source/hls/p$d;-><init>(Lcom/google/android/exoplayer2/upstream/b;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/drm/s$a;Ljava/util/Map;Lcom/google/android/exoplayer2/source/hls/p$a;)V

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->P:J

    invoke-virtual {v8, v2, v3}, Lcom/google/android/exoplayer2/source/a0;->b0(J)V

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->W:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/source/hls/p$d;->i0(Lcom/google/android/exoplayer2/drm/DrmInitData;)V

    :cond_2
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->V:J

    invoke-virtual {v8, v2, v3}, Lcom/google/android/exoplayer2/source/a0;->a0(J)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->X:Lcom/google/android/exoplayer2/source/hls/i;

    if-eqz v2, :cond_3

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/source/hls/p$d;->j0(Lcom/google/android/exoplayer2/source/hls/i;)V

    :cond_3
    invoke-virtual {v8, p0}, Lcom/google/android/exoplayer2/source/a0;->d0(Lcom/google/android/exoplayer2/source/a0$d;)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->w:[I

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->w:[I

    aput p1, v2, v0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    invoke-static {p1, v8}, Lcom/google/android/exoplayer2/util/p0;->E0([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/exoplayer2/source/hls/p$d;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->O:[Z

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->O:[Z

    aput-boolean v1, p1, v0

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->M:Z

    or-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->M:Z

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->x:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->y:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->append(II)V

    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/p;->z(I)I

    move-result p1

    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->A:I

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/hls/p;->z(I)I

    move-result v1

    if-le p1, v1, :cond_4

    iput v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->B:I

    iput p2, p0, Lcom/google/android/exoplayer2/source/hls/p;->A:I

    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->N:[Z

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->N:[Z

    return-object v8
.end method

.method private r([Lcom/google/android/exoplayer2/source/TrackGroup;)Lt9/x;
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    iget v3, v2, Lcom/google/android/exoplayer2/source/TrackGroup;->a:I

    new-array v3, v3, [Lcom/google/android/exoplayer2/o1;

    move v4, v0

    :goto_1
    iget v5, v2, Lcom/google/android/exoplayer2/source/TrackGroup;->a:I

    if-ge v4, v5, :cond_0

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/source/TrackGroup;->c(I)Lcom/google/android/exoplayer2/o1;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/p;->g:Lcom/google/android/exoplayer2/drm/u;

    invoke-interface {v6, v5}, Lcom/google/android/exoplayer2/drm/u;->a(Lcom/google/android/exoplayer2/o1;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/o1;->c(I)Lcom/google/android/exoplayer2/o1;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    new-instance v4, Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/TrackGroup;->b:Ljava/lang/String;

    invoke-direct {v4, v2, v3}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/o1;)V

    aput-object v4, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lt9/x;

    invoke-direct {v0, p1}, Lt9/x;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    return-object v0
.end method

.method private static s(Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/o1;Z)Lcom/google/android/exoplayer2/o1;
    .locals 7

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/w;->l(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/o1;->i:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/p0;->K(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/o1;->i:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/p0;->L(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/w;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/o1;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/w;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/o1;->b()Lcom/google/android/exoplayer2/o1$b;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/o1;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/o1$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/o1;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/o1$b;->U(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/o1;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/o1$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v4

    iget v5, p0, Lcom/google/android/exoplayer2/o1;->d:I

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/o1$b;->g0(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v4

    iget v5, p0, Lcom/google/android/exoplayer2/o1;->e:I

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/o1$b;->c0(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v4

    const/4 v5, -0x1

    if-eqz p2, :cond_2

    iget v6, p0, Lcom/google/android/exoplayer2/o1;->f:I

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/o1$b;->G(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v4

    if-eqz p2, :cond_3

    iget p2, p0, Lcom/google/android/exoplayer2/o1;->g:I

    goto :goto_2

    :cond_3
    move p2, v5

    :goto_2
    invoke-virtual {v4, p2}, Lcom/google/android/exoplayer2/o1$b;->Z(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/o1$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget v1, p0, Lcom/google/android/exoplayer2/o1;->q:I

    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/o1$b;->j0(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    iget v4, p0, Lcom/google/android/exoplayer2/o1;->r:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/o1$b;->Q(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    iget v4, p0, Lcom/google/android/exoplayer2/o1;->s:F

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/o1$b;->P(F)Lcom/google/android/exoplayer2/o1$b;

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {p2, v3}, Lcom/google/android/exoplayer2/o1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    :cond_5
    iget v1, p0, Lcom/google/android/exoplayer2/o1;->y:I

    if-eq v1, v5, :cond_6

    if-ne v0, v2, :cond_6

    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/o1$b;->H(I)Lcom/google/android/exoplayer2/o1$b;

    :cond_6
    iget-object p0, p0, Lcom/google/android/exoplayer2/o1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz p0, :cond_8

    iget-object p1, p1, Lcom/google/android/exoplayer2/o1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz p1, :cond_7

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/metadata/Metadata;->copyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p0

    :cond_7
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/o1$b;->X(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/o1$b;

    :cond_8
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object p0

    return-object p0
.end method

.method private t(I)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->i()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    if-ge p1, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/hls/p;->m(I)Z

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
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->x()Lcom/google/android/exoplayer2/source/hls/i;

    move-result-object v0

    iget-wide v5, v0, Lv9/f;->h:J

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/hls/p;->u(I)Lcom/google/android/exoplayer2/source/hls/i;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->P:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->Q:J

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/common/collect/g3;->g(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/i;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/i;->m()V

    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->T:Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->k:Lcom/google/android/exoplayer2/source/p$a;

    iget v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->A:I

    iget-wide v3, p1, Lv9/f;->g:J

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/p$a;->D(IJJ)V

    return-void
.end method

.method private u(I)Lcom/google/android/exoplayer2/source/hls/i;
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/i;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, p1, v2}, Lcom/google/android/exoplayer2/util/p0;->M0(Ljava/util/List;II)V

    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/hls/i;->k(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    aget-object v2, v2, p1

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/a0;->u(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private v(Lcom/google/android/exoplayer2/source/hls/i;)Z
    .locals 4

    iget p1, p1, Lcom/google/android/exoplayer2/source/hls/i;->k:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/p;->N:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/a0;->Q()I

    move-result v3

    if-ne v3, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private static w(Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/o1;)Z
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/w;->l(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/w;->l(Ljava/lang/String;)I

    move-result p0

    if-ne v2, p0, :cond_0

    move v4, v5

    :cond_0
    return v4

    :cond_1
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget p0, p0, Lcom/google/android/exoplayer2/o1;->D:I

    iget p1, p1, Lcom/google/android/exoplayer2/o1;->D:I

    if-ne p0, p1, :cond_5

    move v4, v5

    :cond_5
    return v4
.end method

.method private x()Lcom/google/android/exoplayer2/source/hls/i;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/i;

    return-object v0
.end method

.method private y(II)Lg9/e0;
    .locals 3

    sget-object v0, Lcom/google/android/exoplayer2/source/hls/p;->Y:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->y:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->x:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->w:[I

    aput p1, v1, v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->w:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    aget-object p1, p1, v0

    goto :goto_0

    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/hls/p;->p(II)Lg9/k;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private static z(I)I
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


# virtual methods
.method public D(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->C()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    aget-object p1, v0, p1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->T:Z

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/a0;->K(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public E()Z
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->A:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public H()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->maybeThrowError()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/e;->n()V

    return-void
.end method

.method public I(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/p;->H()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/a0;->N()V

    return-void
.end method

.method public J(Lv9/f;JJZ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/hls/p;->u:Lv9/f;

    new-instance v2, Lt9/h;

    iget-wide v4, v1, Lv9/f;->a:J

    iget-object v6, v1, Lv9/f;->b:Lcom/google/android/exoplayer2/upstream/n;

    invoke-virtual/range {p1 .. p1}, Lv9/f;->d()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lv9/f;->c()Ljava/util/Map;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lv9/f;->a()J

    move-result-wide v13

    move-object v3, v2

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lt9/h;-><init>(JLcom/google/android/exoplayer2/upstream/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/p;->i:Lcom/google/android/exoplayer2/upstream/z;

    iget-wide v4, v1, Lv9/f;->a:J

    invoke-interface {v3, v4, v5}, Lcom/google/android/exoplayer2/upstream/z;->b(J)V

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/p;->k:Lcom/google/android/exoplayer2/source/p$a;

    iget v5, v1, Lv9/f;->c:I

    iget v6, v0, Lcom/google/android/exoplayer2/source/hls/p;->b:I

    iget-object v7, v1, Lv9/f;->d:Lcom/google/android/exoplayer2/o1;

    iget v8, v1, Lv9/f;->e:I

    iget-object v9, v1, Lv9/f;->f:Ljava/lang/Object;

    iget-wide v10, v1, Lv9/f;->g:J

    iget-wide v12, v1, Lv9/f;->h:J

    move-object v4, v2

    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/p$a;->r(Lt9/h;IILcom/google/android/exoplayer2/o1;ILjava/lang/Object;JJ)V

    if-nez p6, :cond_2

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->C()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->E:I

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->T()V

    :cond_1
    iget v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->E:I

    if-lez v1, :cond_2

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->c:Lcom/google/android/exoplayer2/source/hls/p$b;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/source/b0$a;->g(Lcom/google/android/exoplayer2/source/b0;)V

    :cond_2
    return-void
.end method

.method public K(Lv9/f;JJ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/hls/p;->u:Lv9/f;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/hls/e;->p(Lv9/f;)V

    new-instance v2, Lt9/h;

    iget-wide v4, v1, Lv9/f;->a:J

    iget-object v6, v1, Lv9/f;->b:Lcom/google/android/exoplayer2/upstream/n;

    invoke-virtual/range {p1 .. p1}, Lv9/f;->d()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lv9/f;->c()Ljava/util/Map;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lv9/f;->a()J

    move-result-wide v13

    move-object v3, v2

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lt9/h;-><init>(JLcom/google/android/exoplayer2/upstream/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/p;->i:Lcom/google/android/exoplayer2/upstream/z;

    iget-wide v4, v1, Lv9/f;->a:J

    invoke-interface {v3, v4, v5}, Lcom/google/android/exoplayer2/upstream/z;->b(J)V

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/p;->k:Lcom/google/android/exoplayer2/source/p$a;

    iget v5, v1, Lv9/f;->c:I

    iget v6, v0, Lcom/google/android/exoplayer2/source/hls/p;->b:I

    iget-object v7, v1, Lv9/f;->d:Lcom/google/android/exoplayer2/o1;

    iget v8, v1, Lv9/f;->e:I

    iget-object v9, v1, Lv9/f;->f:Ljava/lang/Object;

    iget-wide v10, v1, Lv9/f;->g:J

    iget-wide v12, v1, Lv9/f;->h:J

    move-object v4, v2

    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/p$a;->u(Lt9/h;IILcom/google/android/exoplayer2/o1;ILjava/lang/Object;JJ)V

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->D:Z

    if-nez v1, :cond_0

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->P:J

    invoke-virtual {p0, v1, v2}, Lcom/google/android/exoplayer2/source/hls/p;->continueLoading(J)Z

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->c:Lcom/google/android/exoplayer2/source/hls/p$b;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/source/b0$a;->g(Lcom/google/android/exoplayer2/source/b0;)V

    :goto_0
    return-void
.end method

.method public L(Lv9/f;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$c;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v13, p6

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/hls/p;->B(Lv9/f;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v3, v1

    check-cast v3, Lcom/google/android/exoplayer2/source/hls/i;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/i;->o()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v13, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    if-eqz v3, :cond_1

    move-object v3, v13

    check-cast v3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    iget v3, v3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v4, 0x19a

    if-eq v3, v4, :cond_0

    const/16 v4, 0x194

    if-ne v3, v4, :cond_1

    :cond_0
    sget-object v1, Lcom/google/android/exoplayer2/upstream/Loader;->d:Lcom/google/android/exoplayer2/upstream/Loader$c;

    return-object v1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lv9/f;->a()J

    move-result-wide v3

    new-instance v5, Lt9/h;

    iget-wide v6, v1, Lv9/f;->a:J

    iget-object v8, v1, Lv9/f;->b:Lcom/google/android/exoplayer2/upstream/n;

    invoke-virtual/range {p1 .. p1}, Lv9/f;->d()Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lv9/f;->c()Ljava/util/Map;

    move-result-object v19

    move-object v14, v5

    move-wide v15, v6

    move-object/from16 v17, v8

    move-wide/from16 v20, p2

    move-wide/from16 v22, p4

    move-wide/from16 v24, v3

    invoke-direct/range {v14 .. v25}, Lt9/h;-><init>(JLcom/google/android/exoplayer2/upstream/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v6, Lt9/i;

    iget v7, v1, Lv9/f;->c:I

    iget v8, v0, Lcom/google/android/exoplayer2/source/hls/p;->b:I

    iget-object v9, v1, Lv9/f;->d:Lcom/google/android/exoplayer2/o1;

    iget v10, v1, Lv9/f;->e:I

    iget-object v11, v1, Lv9/f;->f:Ljava/lang/Object;

    iget-wide v14, v1, Lv9/f;->g:J

    invoke-static {v14, v15}, Lcom/google/android/exoplayer2/util/p0;->e1(J)J

    move-result-wide v26

    iget-wide v14, v1, Lv9/f;->h:J

    invoke-static {v14, v15}, Lcom/google/android/exoplayer2/util/p0;->e1(J)J

    move-result-wide v28

    move-object/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v9

    move/from16 v24, v10

    move-object/from16 v25, v11

    invoke-direct/range {v20 .. v29}, Lt9/i;-><init>(IILcom/google/android/exoplayer2/o1;ILjava/lang/Object;JJ)V

    new-instance v7, Lcom/google/android/exoplayer2/upstream/z$c;

    move/from16 v8, p7

    invoke-direct {v7, v5, v6, v13, v8}, Lcom/google/android/exoplayer2/upstream/z$c;-><init>(Lt9/h;Lt9/i;Ljava/io/IOException;I)V

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/p;->i:Lcom/google/android/exoplayer2/upstream/z;

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/source/hls/e;->k()Lcom/google/android/exoplayer2/trackselection/h;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/exoplayer2/trackselection/j;->c(Lcom/google/android/exoplayer2/trackselection/h;)Lcom/google/android/exoplayer2/upstream/z$a;

    move-result-object v8

    invoke-interface {v6, v8, v7}, Lcom/google/android/exoplayer2/upstream/z;->d(Lcom/google/android/exoplayer2/upstream/z$a;Lcom/google/android/exoplayer2/upstream/z$c;)Lcom/google/android/exoplayer2/upstream/z$b;

    move-result-object v6

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    iget v9, v6, Lcom/google/android/exoplayer2/upstream/z$b;->a:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    iget-wide v10, v6, Lcom/google/android/exoplayer2/upstream/z$b;->b:J

    invoke-virtual {v9, v1, v10, v11}, Lcom/google/android/exoplayer2/source/hls/e;->m(Lv9/f;J)Z

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

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/i;

    if-ne v2, v1, :cond_3

    move v8, v4

    :cond_3
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/hls/p;->P:J

    iput-wide v2, v0, Lcom/google/android/exoplayer2/source/hls/p;->Q:J

    goto :goto_1

    :cond_4
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/google/common/collect/g3;->g(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/i;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/hls/i;->m()V

    :cond_5
    :goto_1
    sget-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->f:Lcom/google/android/exoplayer2/upstream/Loader$c;

    :goto_2
    move-object/from16 v16, v2

    goto :goto_3

    :cond_6
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/p;->i:Lcom/google/android/exoplayer2/upstream/z;

    invoke-interface {v2, v7}, Lcom/google/android/exoplayer2/upstream/z;->c(Lcom/google/android/exoplayer2/upstream/z$c;)J

    move-result-wide v2

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v6

    if-eqz v4, :cond_7

    invoke-static {v8, v2, v3}, Lcom/google/android/exoplayer2/upstream/Loader;->g(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$c;

    move-result-object v2

    goto :goto_2

    :cond_7
    sget-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->g:Lcom/google/android/exoplayer2/upstream/Loader$c;

    goto :goto_2

    :goto_3
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/upstream/Loader$c;->c()Z

    move-result v17

    xor-int/lit8 v14, v17, 0x1

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/p;->k:Lcom/google/android/exoplayer2/source/p$a;

    iget v4, v1, Lv9/f;->c:I

    iget v6, v0, Lcom/google/android/exoplayer2/source/hls/p;->b:I

    iget-object v7, v1, Lv9/f;->d:Lcom/google/android/exoplayer2/o1;

    iget v8, v1, Lv9/f;->e:I

    iget-object v9, v1, Lv9/f;->f:Ljava/lang/Object;

    iget-wide v10, v1, Lv9/f;->g:J

    iget-wide v12, v1, Lv9/f;->h:J

    move-object v3, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-wide v9, v10

    move-wide v11, v12

    move-object/from16 v13, p6

    invoke-virtual/range {v2 .. v14}, Lcom/google/android/exoplayer2/source/p$a;->w(Lt9/h;IILcom/google/android/exoplayer2/o1;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    if-nez v17, :cond_8

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/hls/p;->u:Lv9/f;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/p;->i:Lcom/google/android/exoplayer2/upstream/z;

    iget-wide v3, v1, Lv9/f;->a:J

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/z;->b(J)V

    :cond_8
    if-eqz v15, :cond_a

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->D:Z

    if-nez v1, :cond_9

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->P:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/hls/p;->continueLoading(J)Z

    goto :goto_4

    :cond_9
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->c:Lcom/google/android/exoplayer2/source/hls/p$b;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/b0$a;->g(Lcom/google/android/exoplayer2/source/b0;)V

    :cond_a
    :goto_4
    return-object v16
.end method

.method public M()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->x:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public N(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/z$c;Z)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/hls/e;->o(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/hls/p;->i:Lcom/google/android/exoplayer2/upstream/z;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/e;->k()Lcom/google/android/exoplayer2/trackselection/h;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/j;->c(Lcom/google/android/exoplayer2/trackselection/h;)Lcom/google/android/exoplayer2/upstream/z$a;

    move-result-object v0

    invoke-interface {p3, v0, p2}, Lcom/google/android/exoplayer2/upstream/z;->d(Lcom/google/android/exoplayer2/upstream/z$a;Lcom/google/android/exoplayer2/upstream/z$c;)Lcom/google/android/exoplayer2/upstream/z$b;

    move-result-object p2

    if-eqz p2, :cond_1

    iget p3, p2, Lcom/google/android/exoplayer2/upstream/z$b;->a:I

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    iget-wide p2, p2, Lcom/google/android/exoplayer2/upstream/z$b;->b:J

    goto :goto_0

    :cond_1
    move-wide p2, v2

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/e;->q(Landroid/net/Uri;J)Z

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

.method public O()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/common/collect/g3;->g(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/i;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/hls/e;->c(Lcom/google/android/exoplayer2/source/hls/i;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/i;->t()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->T:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->e()V

    :cond_2
    :goto_0
    return-void
.end method

.method public varargs Q([Lcom/google/android/exoplayer2/source/TrackGroup;I[I)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/hls/p;->r([Lcom/google/android/exoplayer2/source/TrackGroup;)Lt9/x;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->I:Lt9/x;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->J:Ljava/util/Set;

    array-length p1, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget v1, p3, v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->J:Ljava/util/Set;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/p;->I:Lt9/x;

    invoke-virtual {v3, v1}, Lt9/x;->b(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput p2, p0, Lcom/google/android/exoplayer2/source/hls/p;->L:I

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->r:Landroid/os/Handler;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/hls/p;->c:Lcom/google/android/exoplayer2/source/hls/p$b;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lcom/google/android/exoplayer2/source/hls/m;

    invoke-direct {p3, p2}, Lcom/google/android/exoplayer2/source/hls/m;-><init>(Lcom/google/android/exoplayer2/source/hls/p$b;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->Y()V

    return-void
.end method

.method public R(ILcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 11

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->C()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/hls/i;

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/source/hls/p;->v(Lcom/google/android/exoplayer2/source/hls/i;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    invoke-static {v3, v2, v0}, Lcom/google/android/exoplayer2/util/p0;->M0(Ljava/util/List;II)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/i;

    iget-object v10, v0, Lv9/f;->d:Lcom/google/android/exoplayer2/o1;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/p;->G:Lcom/google/android/exoplayer2/o1;

    invoke-virtual {v10, v3}, Lcom/google/android/exoplayer2/o1;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/p;->k:Lcom/google/android/exoplayer2/source/p$a;

    iget v4, p0, Lcom/google/android/exoplayer2/source/hls/p;->b:I

    iget v6, v0, Lv9/f;->e:I

    iget-object v7, v0, Lv9/f;->f:Ljava/lang/Object;

    iget-wide v8, v0, Lv9/f;->g:J

    move-object v5, v10

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/exoplayer2/source/p$a;->i(ILcom/google/android/exoplayer2/o1;ILjava/lang/Object;J)V

    :cond_2
    iput-object v10, p0, Lcom/google/android/exoplayer2/source/hls/p;->G:Lcom/google/android/exoplayer2/o1;

    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/i;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/i;->o()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    aget-object v0, v0, p1

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->T:Z

    invoke-virtual {v0, p2, p3, p4, v1}, Lcom/google/android/exoplayer2/source/a0;->S(Lcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;IZ)I

    move-result p3

    const/4 p4, -0x5

    if-ne p3, p4, :cond_8

    iget-object p4, p2, Lcom/google/android/exoplayer2/p1;->b:Lcom/google/android/exoplayer2/o1;

    invoke-static {p4}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/exoplayer2/o1;

    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->B:I

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/a0;->Q()I

    move-result p1

    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/i;

    iget v0, v0, Lcom/google/android/exoplayer2/source/hls/i;->k:I

    if-eq v0, p1, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_6

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/hls/i;

    iget-object p1, p1, Lv9/f;->d:Lcom/google/android/exoplayer2/o1;

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->F:Lcom/google/android/exoplayer2/o1;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/o1;

    :goto_2
    invoke-virtual {p4, p1}, Lcom/google/android/exoplayer2/o1;->j(Lcom/google/android/exoplayer2/o1;)Lcom/google/android/exoplayer2/o1;

    move-result-object p4

    :cond_7
    iput-object p4, p2, Lcom/google/android/exoplayer2/p1;->b:Lcom/google/android/exoplayer2/o1;

    :cond_8
    return p3
.end method

.method public S()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->D:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/a0;->R()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/upstream/Loader;->l(Lcom/google/android/exoplayer2/upstream/Loader$e;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->r:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->H:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public V(JZ)Z
    .locals 3

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->P:J

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->C()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->Q:J

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->C:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/p;->U(J)Z

    move-result p3

    if-eqz p3, :cond_1

    return v2

    :cond_1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->Q:J

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->T:Z

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->i()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->C:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    array-length p2, p1

    :goto_0
    if-ge v2, p2, :cond_2

    aget-object p3, p1, v2

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/source/a0;->r()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->e()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->f()V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->T()V

    :goto_1
    return v1
.end method

.method public W([Lcom/google/android/exoplayer2/trackselection/h;[Z[Lt9/s;[ZJZ)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-wide/from16 v12, p5

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/p;->h()V

    iget v3, v0, Lcom/google/android/exoplayer2/source/hls/p;->E:I

    const/4 v14, 0x0

    move v4, v14

    :goto_0
    array-length v5, v1

    const/4 v6, 0x0

    const/4 v15, 0x1

    if-ge v4, v5, :cond_2

    aget-object v5, v2, v4

    check-cast v5, Lcom/google/android/exoplayer2/source/hls/l;

    if-eqz v5, :cond_1

    aget-object v7, v1, v4

    if-eqz v7, :cond_0

    aget-boolean v7, p2, v4

    if-nez v7, :cond_1

    :cond_0
    iget v7, v0, Lcom/google/android/exoplayer2/source/hls/p;->E:I

    sub-int/2addr v7, v15

    iput v7, v0, Lcom/google/android/exoplayer2/source/hls/p;->E:I

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/hls/l;->d()V

    aput-object v6, v2, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-nez p7, :cond_5

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/source/hls/p;->S:Z

    if-eqz v4, :cond_3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_3
    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/hls/p;->P:J

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
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/hls/e;->k()Lcom/google/android/exoplayer2/trackselection/h;

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
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/hls/p;->I:Lt9/x;

    invoke-interface {v5}, Lla/m;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v8

    invoke-virtual {v7, v8}, Lt9/x;->c(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v7

    iget v8, v0, Lcom/google/android/exoplayer2/source/hls/p;->L:I

    if-ne v7, v8, :cond_7

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    invoke-virtual {v8, v5}, Lcom/google/android/exoplayer2/source/hls/e;->u(Lcom/google/android/exoplayer2/trackselection/h;)V

    move-object v11, v5

    :cond_7
    aget-object v5, v2, v3

    if-nez v5, :cond_9

    iget v5, v0, Lcom/google/android/exoplayer2/source/hls/p;->E:I

    add-int/2addr v5, v15

    iput v5, v0, Lcom/google/android/exoplayer2/source/hls/p;->E:I

    new-instance v5, Lcom/google/android/exoplayer2/source/hls/l;

    invoke-direct {v5, v0, v7}, Lcom/google/android/exoplayer2/source/hls/l;-><init>(Lcom/google/android/exoplayer2/source/hls/p;I)V

    aput-object v5, v2, v3

    aput-boolean v15, p4, v3

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/p;->K:[I

    if-eqz v8, :cond_9

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/hls/l;->a()V

    if-nez v16, :cond_9

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/p;->K:[I

    aget v7, v8, v7

    aget-object v5, v5, v7

    invoke-virtual {v5, v12, v13, v15}, Lcom/google/android/exoplayer2/source/a0;->Z(JZ)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/a0;->C()I

    move-result v5

    if-eqz v5, :cond_8

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
    iget v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->E:I

    if-nez v1, :cond_d

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/hls/e;->r()V

    iput-object v6, v0, Lcom/google/android/exoplayer2/source/hls/p;->G:Lcom/google/android/exoplayer2/o1;

    iput-boolean v15, v0, Lcom/google/android/exoplayer2/source/hls/p;->R:Z

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->i()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->C:Z

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    array-length v3, v1

    :goto_6
    if-ge v14, v3, :cond_b

    aget-object v4, v1, v14

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/a0;->r()V

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_b
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->e()V

    goto/16 :goto_9

    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/p;->T()V

    goto :goto_9

    :cond_d
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {v11, v4}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->S:Z

    if-nez v1, :cond_f

    const-wide/16 v3, 0x0

    cmp-long v1, v12, v3

    if-gez v1, :cond_e

    neg-long v3, v12

    :cond_e
    move-wide v6, v3

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/p;->x()Lcom/google/android/exoplayer2/source/hls/i;

    move-result-object v1

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    invoke-virtual {v3, v1, v12, v13}, Lcom/google/android/exoplayer2/source/hls/e;->a(Lcom/google/android/exoplayer2/source/hls/i;J)[Lv9/o;

    move-result-object v17

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/hls/p;->o:Ljava/util/List;

    move-object v3, v11

    move-wide/from16 v4, p5

    move-object/from16 v18, v11

    move-object/from16 v11, v17

    invoke-interface/range {v3 .. v11}, Lcom/google/android/exoplayer2/trackselection/h;->d(JJJLjava/util/List;[Lv9/o;)V

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/e;->j()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    iget-object v1, v1, Lv9/f;->d:Lcom/google/android/exoplayer2/o1;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->d(Lcom/google/android/exoplayer2/o1;)I

    move-result v1

    invoke-interface/range {v18 .. v18}, Lcom/google/android/exoplayer2/trackselection/h;->getSelectedIndexInTrackGroup()I

    move-result v3

    if-eq v3, v1, :cond_10

    :cond_f
    iput-boolean v15, v0, Lcom/google/android/exoplayer2/source/hls/p;->R:Z

    move v1, v15

    move/from16 v16, v1

    goto :goto_7

    :cond_10
    move/from16 v1, p7

    :goto_7
    if-eqz v16, :cond_12

    invoke-virtual {v0, v12, v13, v1}, Lcom/google/android/exoplayer2/source/hls/p;->V(JZ)Z

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
    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/source/hls/p;->d0([Lt9/s;)V

    iput-boolean v15, v0, Lcom/google/android/exoplayer2/source/hls/p;->S:Z

    return v16
.end method

.method public X(Lcom/google/android/exoplayer2/drm/DrmInitData;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->W:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->W:Lcom/google/android/exoplayer2/drm/DrmInitData;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->O:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/hls/p$d;->i0(Lcom/google/android/exoplayer2/drm/DrmInitData;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public Z(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/hls/e;->t(Z)V

    return-void
.end method

.method public a(JLcom/google/android/exoplayer2/c3;)J
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/e;->b(JLcom/google/android/exoplayer2/c3;)J

    move-result-wide p1

    return-wide p1
.end method

.method public a0(J)V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->V:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->V:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Lcom/google/android/exoplayer2/source/a0;->a0(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b0(IJ)I
    .locals 2

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    aget-object v0, v0, p1

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->T:Z

    invoke-virtual {v0, p2, p3, v1}, Lcom/google/android/exoplayer2/source/a0;->E(JZ)I

    move-result p2

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {p3, v1}, Lcom/google/common/collect/g3;->h(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/source/hls/i;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/source/hls/i;->o()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/a0;->C()I

    move-result v1

    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/source/hls/i;->k(I)I

    move-result p1

    sub-int/2addr p1, v1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_1
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/a0;->e0(I)V

    return p2
.end method

.method public c(Lcom/google/android/exoplayer2/o1;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->r:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->p:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c0(I)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->h()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->K:[I

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->K:[I

    aget p1, v0, p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->N:[Z

    aget-boolean v0, v0, p1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->N:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    return-void
.end method

.method public continueLoading(J)Z
    .locals 23

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->T:Z

    const/4 v2, 0x0

    if-nez v1, :cond_a

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->i()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/p;->C()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/hls/p;->Q:J

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    array-length v6, v5

    move v7, v2

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    iget-wide v9, v0, Lcom/google/android/exoplayer2/source/hls/p;->Q:J

    invoke-virtual {v8, v9, v10}, Lcom/google/android/exoplayer2/source/a0;->b0(J)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move-object v10, v1

    move-wide v8, v3

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->o:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/p;->x()Lcom/google/android/exoplayer2/source/hls/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/i;->f()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-wide v3, v3, Lv9/f;->h:J

    goto :goto_1

    :cond_3
    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/hls/p;->P:J

    iget-wide v6, v3, Lv9/f;->g:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    goto :goto_1

    :goto_2
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->m:Lcom/google/android/exoplayer2/source/hls/e$b;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/hls/e$b;->a()V

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->D:Z

    const/4 v3, 0x1

    if-nez v1, :cond_5

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    move v11, v2

    goto :goto_4

    :cond_5
    :goto_3
    move v11, v3

    :goto_4
    iget-object v12, v0, Lcom/google/android/exoplayer2/source/hls/p;->m:Lcom/google/android/exoplayer2/source/hls/e$b;

    move-wide/from16 v6, p1

    invoke-virtual/range {v5 .. v12}, Lcom/google/android/exoplayer2/source/hls/e;->e(JJLjava/util/List;ZLcom/google/android/exoplayer2/source/hls/e$b;)V

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->m:Lcom/google/android/exoplayer2/source/hls/e$b;

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/source/hls/e$b;->b:Z

    iget-object v5, v1, Lcom/google/android/exoplayer2/source/hls/e$b;->a:Lv9/f;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/hls/e$b;->c:Landroid/net/Uri;

    if-eqz v4, :cond_6

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->Q:J

    iput-boolean v3, v0, Lcom/google/android/exoplayer2/source/hls/p;->T:Z

    return v3

    :cond_6
    if-nez v5, :cond_8

    if-eqz v1, :cond_7

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/p;->c:Lcom/google/android/exoplayer2/source/hls/p$b;

    invoke-interface {v3, v1}, Lcom/google/android/exoplayer2/source/hls/p$b;->d(Landroid/net/Uri;)V

    :cond_7
    return v2

    :cond_8
    invoke-static {v5}, Lcom/google/android/exoplayer2/source/hls/p;->B(Lv9/f;)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v1, v5

    check-cast v1, Lcom/google/android/exoplayer2/source/hls/i;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/hls/p;->A(Lcom/google/android/exoplayer2/source/hls/i;)V

    :cond_9
    iput-object v5, v0, Lcom/google/android/exoplayer2/source/hls/p;->u:Lv9/f;

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/p;->i:Lcom/google/android/exoplayer2/upstream/z;

    iget v4, v5, Lv9/f;->c:I

    invoke-interface {v2, v4}, Lcom/google/android/exoplayer2/upstream/z;->a(I)I

    move-result v2

    invoke-virtual {v1, v5, v0, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->m(Lcom/google/android/exoplayer2/upstream/Loader$d;Lcom/google/android/exoplayer2/upstream/Loader$b;I)J

    move-result-wide v10

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/hls/p;->k:Lcom/google/android/exoplayer2/source/p$a;

    new-instance v13, Lt9/h;

    iget-wide v7, v5, Lv9/f;->a:J

    iget-object v9, v5, Lv9/f;->b:Lcom/google/android/exoplayer2/upstream/n;

    move-object v6, v13

    invoke-direct/range {v6 .. v11}, Lt9/h;-><init>(JLcom/google/android/exoplayer2/upstream/n;J)V

    iget v14, v5, Lv9/f;->c:I

    iget v15, v0, Lcom/google/android/exoplayer2/source/hls/p;->b:I

    iget-object v1, v5, Lv9/f;->d:Lcom/google/android/exoplayer2/o1;

    iget v2, v5, Lv9/f;->e:I

    iget-object v4, v5, Lv9/f;->f:Ljava/lang/Object;

    iget-wide v6, v5, Lv9/f;->g:J

    iget-wide v8, v5, Lv9/f;->h:J

    move-object/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v18, v4

    move-wide/from16 v19, v6

    move-wide/from16 v21, v8

    invoke-virtual/range {v12 .. v22}, Lcom/google/android/exoplayer2/source/p$a;->A(Lt9/h;IILcom/google/android/exoplayer2/o1;ILjava/lang/Object;JJ)V

    return v3

    :cond_a
    :goto_5
    return v2
.end method

.method public d(Lg9/b0;)V
    .locals 0

    return-void
.end method

.method public discardBuffer(JZ)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->C:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/p;->N:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, p1, p2, p3, v3}, Lcom/google/android/exoplayer2/source/a0;->q(JZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public endTracks()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->U:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->T:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->Q:J

    return-wide v0

    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->P:J

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->x()Lcom/google/android/exoplayer2/source/hls/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/hls/i;->f()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/i;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    iget-wide v2, v2, Lv9/f;->h:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_4
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->C:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/a0;->z()J

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

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->Q:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->T:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->x()Lcom/google/android/exoplayer2/source/hls/i;

    move-result-object v0

    iget-wide v0, v0, Lv9/f;->h:J

    :goto_0
    return-wide v0
.end method

.method public getTrackGroups()Lt9/x;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->h()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->I:Lt9/x;

    return-object v0
.end method

.method public i(I)I
    .locals 3

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->h()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->K:[I

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->K:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->J:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->I:Lt9/x;

    invoke-virtual {v1, p1}, Lt9/x;->b(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v2, -0x3

    :cond_0
    return v2

    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->N:[Z

    aget-boolean v1, p1, v0

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const/4 v1, 0x1

    aput-boolean v1, p1, v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->i()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic j(Lcom/google/android/exoplayer2/upstream/Loader$d;JJZ)V
    .locals 0

    check-cast p1, Lv9/f;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/hls/p;->J(Lv9/f;JJZ)V

    return-void
.end method

.method public bridge synthetic l(Lcom/google/android/exoplayer2/upstream/Loader$d;JJ)V
    .locals 0

    check-cast p1, Lv9/f;

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/hls/p;->K(Lv9/f;JJ)V

    return-void
.end method

.method public maybeThrowPrepareError()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/p;->H()V

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->T:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->D:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Loading finished before preparation is complete."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic n(Lcom/google/android/exoplayer2/upstream/Loader$d;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$c;
    .locals 0

    check-cast p1, Lv9/f;

    invoke-virtual/range {p0 .. p7}, Lcom/google/android/exoplayer2/source/hls/p;->L(Lv9/f;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$c;

    move-result-object p1

    return-object p1
.end method

.method public o()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->D:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->P:J

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/hls/p;->continueLoading(J)Z

    :cond_0
    return-void
.end method

.method public onLoaderReleased()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/a0;->T()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reevaluateBuffer(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->h()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->u:Lv9/f;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->u:Lv9/f;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->o:Ljava/util/List;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/source/hls/e;->v(JLv9/f;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->e()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_3

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->o:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/i;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/hls/e;->c(Lcom/google/android/exoplayer2/source/hls/i;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/hls/p;->t(I)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->o:Ljava/util/List;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/source/hls/e;->h(JLjava/util/List;)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_5

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/hls/p;->t(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public track(II)Lg9/e0;
    .locals 3

    sget-object v0, Lcom/google/android/exoplayer2/source/hls/p;->Y:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/p;->y(II)Lg9/e0;

    move-result-object v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->w:[I

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

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->U:Z

    if-eqz v0, :cond_3

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/hls/p;->p(II)Lg9/k;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/p;->q(II)Lcom/google/android/exoplayer2/source/a0;

    move-result-object v0

    :cond_4
    const/4 p1, 0x5

    if-ne p2, p1, :cond_6

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->z:Lg9/e0;

    if-nez p1, :cond_5

    new-instance p1, Lcom/google/android/exoplayer2/source/hls/p$c;

    iget p2, p0, Lcom/google/android/exoplayer2/source/hls/p;->l:I

    invoke-direct {p1, v0, p2}, Lcom/google/android/exoplayer2/source/hls/p$c;-><init>(Lg9/e0;I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->z:Lg9/e0;

    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->z:Lg9/e0;

    return-object p1

    :cond_6
    return-object v0
.end method
