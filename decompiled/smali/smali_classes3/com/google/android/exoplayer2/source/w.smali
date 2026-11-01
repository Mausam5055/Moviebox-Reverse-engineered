.class final Lcom/google/android/exoplayer2/source/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/source/n;
.implements Lg9/n;
.implements Lcom/google/android/exoplayer2/upstream/Loader$b;
.implements Lcom/google/android/exoplayer2/upstream/Loader$e;
.implements Lcom/google/android/exoplayer2/source/a0$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/w$d;,
        Lcom/google/android/exoplayer2/source/w$e;,
        Lcom/google/android/exoplayer2/source/w$a;,
        Lcom/google/android/exoplayer2/source/w$c;,
        Lcom/google/android/exoplayer2/source/w$b;
    }
.end annotation


# static fields
.field private static final M:Ljava/util/Map;

.field private static final N:Lcom/google/android/exoplayer2/o1;


# instance fields
.field private A:Z

.field private B:I

.field private C:Z

.field private D:Z

.field private E:I

.field private F:Z

.field private G:J

.field private H:J

.field private I:Z

.field private J:I

.field private K:Z

.field private L:Z

.field private final a:Landroid/net/Uri;

.field private final b:Lcom/google/android/exoplayer2/upstream/k;

.field private final c:Lcom/google/android/exoplayer2/drm/u;

.field private final d:Lcom/google/android/exoplayer2/upstream/z;

.field private final e:Lcom/google/android/exoplayer2/source/p$a;

.field private final f:Lcom/google/android/exoplayer2/drm/s$a;

.field private final g:Lcom/google/android/exoplayer2/source/w$b;

.field private final h:Lcom/google/android/exoplayer2/upstream/b;

.field private final i:Ljava/lang/String;

.field private final j:J

.field private final k:Lcom/google/android/exoplayer2/upstream/Loader;

.field private final l:Lcom/google/android/exoplayer2/source/r;

.field private final m:Lcom/google/android/exoplayer2/util/h;

.field private final n:Ljava/lang/Runnable;

.field private final o:Ljava/lang/Runnable;

.field private final p:Landroid/os/Handler;

.field private q:Lcom/google/android/exoplayer2/source/n$a;

.field private r:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

.field private s:[Lcom/google/android/exoplayer2/source/a0;

.field private t:[Lcom/google/android/exoplayer2/source/w$d;

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Lcom/google/android/exoplayer2/source/w$e;

.field private y:Lg9/b0;

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/google/android/exoplayer2/source/w;->y()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/w;->M:Ljava/util/Map;

    new-instance v0, Lcom/google/android/exoplayer2/o1$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/o1$b;-><init>()V

    const-string v1, "icy"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o1$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    const-string v1, "application/x-icy"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/w;->N:Lcom/google/android/exoplayer2/o1;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/source/r;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/upstream/z;Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/source/w$b;Lcom/google/android/exoplayer2/upstream/b;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/w;->a:Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/w;->b:Lcom/google/android/exoplayer2/upstream/k;

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/w;->c:Lcom/google/android/exoplayer2/drm/u;

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/w;->f:Lcom/google/android/exoplayer2/drm/s$a;

    iput-object p6, p0, Lcom/google/android/exoplayer2/source/w;->d:Lcom/google/android/exoplayer2/upstream/z;

    iput-object p7, p0, Lcom/google/android/exoplayer2/source/w;->e:Lcom/google/android/exoplayer2/source/p$a;

    iput-object p8, p0, Lcom/google/android/exoplayer2/source/w;->g:Lcom/google/android/exoplayer2/source/w$b;

    iput-object p9, p0, Lcom/google/android/exoplayer2/source/w;->h:Lcom/google/android/exoplayer2/upstream/b;

    iput-object p10, p0, Lcom/google/android/exoplayer2/source/w;->i:Ljava/lang/String;

    int-to-long p1, p11

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/w;->j:J

    new-instance p1, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string p2, "ProgressiveMediaPeriod"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/w;->k:Lcom/google/android/exoplayer2/upstream/Loader;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/w;->l:Lcom/google/android/exoplayer2/source/r;

    new-instance p1, Lcom/google/android/exoplayer2/util/h;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/h;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/w;->m:Lcom/google/android/exoplayer2/util/h;

    new-instance p1, Lcom/google/android/exoplayer2/source/s;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/s;-><init>(Lcom/google/android/exoplayer2/source/w;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/w;->n:Ljava/lang/Runnable;

    new-instance p1, Lcom/google/android/exoplayer2/source/t;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/t;-><init>(Lcom/google/android/exoplayer2/source/w;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/w;->o:Ljava/lang/Runnable;

    invoke-static {}, Lcom/google/android/exoplayer2/util/p0;->w()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/w;->p:Landroid/os/Handler;

    const/4 p1, 0x0

    new-array p2, p1, [Lcom/google/android/exoplayer2/source/w$d;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/w;->t:[Lcom/google/android/exoplayer2/source/w$d;

    new-array p1, p1, [Lcom/google/android/exoplayer2/source/a0;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/w;->s:[Lcom/google/android/exoplayer2/source/a0;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/w;->H:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/w;->z:J

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/source/w;->B:I

    return-void
.end method

.method private A(Z)J
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/w;->s:[Lcom/google/android/exoplayer2/source/a0;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/w;->x:Lcom/google/android/exoplayer2/source/w$e;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/w$e;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/w$e;->c:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/w;->s:[Lcom/google/android/exoplayer2/source/a0;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/a0;->z()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method private C()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/w;->H:J

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

.method private synthetic E()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/w;->L:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->q:Lcom/google/android/exoplayer2/source/n$a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/n$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/b0$a;->g(Lcom/google/android/exoplayer2/source/b0;)V

    :cond_0
    return-void
.end method

.method private synthetic F()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/w;->F:Z

    return-void
.end method

.method private synthetic G(Lg9/b0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/w;->U(Lg9/b0;)V

    return-void
.end method

.method private H()V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/w;->L:Z

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/w;->v:Z

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/w;->u:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/w;->y:Lg9/b0;

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/w;->s:[Lcom/google/android/exoplayer2/source/a0;

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/a0;->F()Lcom/google/android/exoplayer2/o1;

    move-result-object v5

    if-nez v5, :cond_1

    return-void

    :cond_1
    add-int/2addr v4, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/w;->m:Lcom/google/android/exoplayer2/util/h;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/h;->d()Z

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/w;->s:[Lcom/google/android/exoplayer2/source/a0;

    array-length v2, v2

    new-array v3, v2, [Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v4, v2, [Z

    move v5, v0

    :goto_1
    if-ge v5, v2, :cond_9

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/w;->s:[Lcom/google/android/exoplayer2/source/a0;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/a0;->F()Lcom/google/android/exoplayer2/o1;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/o1;

    iget-object v7, v6, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/w;->p(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/w;->t(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    move v7, v0

    goto :goto_3

    :cond_4
    :goto_2
    move v7, v1

    :goto_3
    aput-boolean v7, v4, v5

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/source/w;->w:Z

    or-int/2addr v7, v9

    iput-boolean v7, p0, Lcom/google/android/exoplayer2/source/w;->w:Z

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/w;->r:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    if-eqz v7, :cond_8

    if-nez v8, :cond_5

    iget-object v9, p0, Lcom/google/android/exoplayer2/source/w;->t:[Lcom/google/android/exoplayer2/source/w$d;

    aget-object v9, v9, v5

    iget-boolean v9, v9, Lcom/google/android/exoplayer2/source/w$d;->b:Z

    if-eqz v9, :cond_7

    :cond_5
    iget-object v9, v6, Lcom/google/android/exoplayer2/o1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v9, :cond_6

    new-instance v9, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array v10, v1, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    aput-object v7, v10, v0

    invoke-direct {v9, v10}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    goto :goto_4

    :cond_6
    new-array v10, v1, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    aput-object v7, v10, v0

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/metadata/Metadata;->copyWithAppendedEntries([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v9

    :goto_4
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/o1;->b()Lcom/google/android/exoplayer2/o1$b;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/google/android/exoplayer2/o1$b;->X(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object v6

    :cond_7
    if-eqz v8, :cond_8

    iget v8, v6, Lcom/google/android/exoplayer2/o1;->f:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_8

    iget v8, v6, Lcom/google/android/exoplayer2/o1;->g:I

    if-ne v8, v9, :cond_8

    iget v8, v7, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->bitrate:I

    if-eq v8, v9, :cond_8

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/o1;->b()Lcom/google/android/exoplayer2/o1$b;

    move-result-object v6

    iget v7, v7, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->bitrate:I

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/o1$b;->G(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object v6

    :cond_8
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/w;->c:Lcom/google/android/exoplayer2/drm/u;

    invoke-interface {v7, v6}, Lcom/google/android/exoplayer2/drm/u;->a(Lcom/google/android/exoplayer2/o1;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/o1;->c(I)Lcom/google/android/exoplayer2/o1;

    move-result-object v6

    new-instance v7, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v1, [Lcom/google/android/exoplayer2/o1;

    aput-object v6, v9, v0

    invoke-direct {v7, v8, v9}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/o1;)V

    aput-object v7, v3, v5

    add-int/2addr v5, v1

    goto/16 :goto_1

    :cond_9
    new-instance v0, Lcom/google/android/exoplayer2/source/w$e;

    new-instance v2, Lt9/x;

    invoke-direct {v2, v3}, Lt9/x;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    invoke-direct {v0, v2, v4}, Lcom/google/android/exoplayer2/source/w$e;-><init>(Lt9/x;[Z)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/w;->x:Lcom/google/android/exoplayer2/source/w$e;

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/w;->v:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->q:Lcom/google/android/exoplayer2/source/n$a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/n$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/n$a;->h(Lcom/google/android/exoplayer2/source/n;)V

    :cond_a
    :goto_5
    return-void
.end method

.method private I(I)V
    .locals 10

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->w()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->x:Lcom/google/android/exoplayer2/source/w$e;

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/w$e;->d:[Z

    aget-boolean v2, v1, p1

    if-nez v2, :cond_0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/w$e;->a:Lt9/x;

    invoke-virtual {v0, p1}, Lt9/x;->b(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->c(I)Lcom/google/android/exoplayer2/o1;

    move-result-object v5

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/w;->e:Lcom/google/android/exoplayer2/source/p$a;

    iget-object v0, v5, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/w;->l(Ljava/lang/String;)I

    move-result v4

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/google/android/exoplayer2/source/w;->G:J

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/exoplayer2/source/p$a;->i(ILcom/google/android/exoplayer2/o1;ILjava/lang/Object;J)V

    const/4 v0, 0x1

    aput-boolean v0, v1, p1

    :cond_0
    return-void
.end method

.method private J(I)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->w()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->x:Lcom/google/android/exoplayer2/source/w$e;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/w$e;->b:[Z

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/w;->I:Z

    if-eqz v1, :cond_2

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->s:[Lcom/google/android/exoplayer2/source/a0;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/a0;->K(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/w;->H:J

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/w;->I:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/w;->D:Z

    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/w;->G:J

    iput v0, p0, Lcom/google/android/exoplayer2/source/w;->J:I

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/w;->s:[Lcom/google/android/exoplayer2/source/a0;

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/a0;->V()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/w;->q:Lcom/google/android/exoplayer2/source/n$a;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/n$a;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/b0$a;->g(Lcom/google/android/exoplayer2/source/b0;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private M()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->p:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/source/u;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/source/u;-><init>(Lcom/google/android/exoplayer2/source/w;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private Q(Lcom/google/android/exoplayer2/source/w$d;)Lg9/e0;
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->s:[Lcom/google/android/exoplayer2/source/a0;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/w;->t:[Lcom/google/android/exoplayer2/source/w$d;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/source/w$d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/w;->s:[Lcom/google/android/exoplayer2/source/a0;

    aget-object p1, p1, v1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/w;->h:Lcom/google/android/exoplayer2/upstream/b;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/w;->c:Lcom/google/android/exoplayer2/drm/u;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/w;->f:Lcom/google/android/exoplayer2/drm/s$a;

    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer2/source/a0;->k(Lcom/google/android/exoplayer2/upstream/b;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/drm/s$a;)Lcom/google/android/exoplayer2/source/a0;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer2/source/a0;->d0(Lcom/google/android/exoplayer2/source/a0$d;)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/w;->t:[Lcom/google/android/exoplayer2/source/w$d;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/exoplayer2/source/w$d;

    aput-object p1, v2, v0

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/p0;->k([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/exoplayer2/source/w$d;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/w;->t:[Lcom/google/android/exoplayer2/source/w$d;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/w;->s:[Lcom/google/android/exoplayer2/source/a0;

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/exoplayer2/source/a0;

    aput-object v1, p1, v0

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/p0;->k([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/exoplayer2/source/a0;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/w;->s:[Lcom/google/android/exoplayer2/source/a0;

    return-object v1
.end method

.method private T([ZJ)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->s:[Lcom/google/android/exoplayer2/source/a0;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/w;->s:[Lcom/google/android/exoplayer2/source/a0;

    aget-object v3, v3, v2

    invoke-virtual {v3, p2, p3, v1}, Lcom/google/android/exoplayer2/source/a0;->Z(JZ)Z

    move-result v3

    if-nez v3, :cond_1

    aget-boolean v3, p1, v2

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/w;->w:Z

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

.method private U(Lg9/b0;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->r:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Lg9/b0$b;

    invoke-direct {v0, v1, v2}, Lg9/b0$b;-><init>(J)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/w;->y:Lg9/b0;

    invoke-interface {p1}, Lg9/b0;->getDurationUs()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/exoplayer2/source/w;->z:J

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/w;->F:Z

    const/4 v3, 0x1

    if-nez v0, :cond_1

    invoke-interface {p1}, Lg9/b0;->getDurationUs()J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/w;->A:Z

    if-eqz v0, :cond_2

    const/4 v3, 0x7

    :cond_2
    iput v3, p0, Lcom/google/android/exoplayer2/source/w;->B:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->g:Lcom/google/android/exoplayer2/source/w$b;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/w;->z:J

    invoke-interface {p1}, Lg9/b0;->isSeekable()Z

    move-result p1

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/w;->A:Z

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/google/android/exoplayer2/source/w$b;->p(JZZ)V

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/w;->v:Z

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->H()V

    :cond_3
    return-void
.end method

.method private W()V
    .locals 26

    move-object/from16 v7, p0

    new-instance v8, Lcom/google/android/exoplayer2/source/w$a;

    iget-object v2, v7, Lcom/google/android/exoplayer2/source/w;->a:Landroid/net/Uri;

    iget-object v3, v7, Lcom/google/android/exoplayer2/source/w;->b:Lcom/google/android/exoplayer2/upstream/k;

    iget-object v4, v7, Lcom/google/android/exoplayer2/source/w;->l:Lcom/google/android/exoplayer2/source/r;

    iget-object v6, v7, Lcom/google/android/exoplayer2/source/w;->m:Lcom/google/android/exoplayer2/util/h;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/w$a;-><init>(Lcom/google/android/exoplayer2/source/w;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/source/r;Lg9/n;Lcom/google/android/exoplayer2/util/h;)V

    iget-boolean v0, v7, Lcom/google/android/exoplayer2/source/w;->v:Z

    if-eqz v0, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/w;->C()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iget-wide v0, v7, Lcom/google/android/exoplayer2/source/w;->z:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v4, v7, Lcom/google/android/exoplayer2/source/w;->H:J

    cmp-long v0, v4, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/google/android/exoplayer2/source/w;->K:Z

    iput-wide v2, v7, Lcom/google/android/exoplayer2/source/w;->H:J

    return-void

    :cond_0
    iget-object v0, v7, Lcom/google/android/exoplayer2/source/w;->y:Lg9/b0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg9/b0;

    iget-wide v4, v7, Lcom/google/android/exoplayer2/source/w;->H:J

    invoke-interface {v0, v4, v5}, Lg9/b0;->getSeekPoints(J)Lg9/b0$a;

    move-result-object v0

    iget-object v0, v0, Lg9/b0$a;->a:Lg9/c0;

    iget-wide v0, v0, Lg9/c0;->b:J

    iget-wide v4, v7, Lcom/google/android/exoplayer2/source/w;->H:J

    invoke-static {v8, v0, v1, v4, v5}, Lcom/google/android/exoplayer2/source/w$a;->f(Lcom/google/android/exoplayer2/source/w$a;JJ)V

    iget-object v0, v7, Lcom/google/android/exoplayer2/source/w;->s:[Lcom/google/android/exoplayer2/source/a0;

    array-length v1, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, v0, v4

    iget-wide v9, v7, Lcom/google/android/exoplayer2/source/w;->H:J

    invoke-virtual {v5, v9, v10}, Lcom/google/android/exoplayer2/source/a0;->b0(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iput-wide v2, v7, Lcom/google/android/exoplayer2/source/w;->H:J

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/w;->z()I

    move-result v0

    iput v0, v7, Lcom/google/android/exoplayer2/source/w;->J:I

    iget-object v0, v7, Lcom/google/android/exoplayer2/source/w;->k:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v1, v7, Lcom/google/android/exoplayer2/source/w;->d:Lcom/google/android/exoplayer2/upstream/z;

    iget v2, v7, Lcom/google/android/exoplayer2/source/w;->B:I

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/upstream/z;->a(I)I

    move-result v1

    invoke-virtual {v0, v8, v7, v1}, Lcom/google/android/exoplayer2/upstream/Loader;->m(Lcom/google/android/exoplayer2/upstream/Loader$d;Lcom/google/android/exoplayer2/upstream/Loader$b;I)J

    move-result-wide v13

    invoke-static {v8}, Lcom/google/android/exoplayer2/source/w$a;->d(Lcom/google/android/exoplayer2/source/w$a;)Lcom/google/android/exoplayer2/upstream/n;

    move-result-object v12

    iget-object v15, v7, Lcom/google/android/exoplayer2/source/w;->e:Lcom/google/android/exoplayer2/source/p$a;

    new-instance v16, Lt9/h;

    invoke-static {v8}, Lcom/google/android/exoplayer2/source/w$a;->c(Lcom/google/android/exoplayer2/source/w$a;)J

    move-result-wide v10

    move-object/from16 v9, v16

    invoke-direct/range {v9 .. v14}, Lt9/h;-><init>(JLcom/google/android/exoplayer2/upstream/n;J)V

    invoke-static {v8}, Lcom/google/android/exoplayer2/source/w$a;->e(Lcom/google/android/exoplayer2/source/w$a;)J

    move-result-wide v22

    iget-wide v0, v7, Lcom/google/android/exoplayer2/source/w;->z:J

    const/16 v17, 0x1

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-wide/from16 v24, v0

    invoke-virtual/range {v15 .. v25}, Lcom/google/android/exoplayer2/source/p$a;->A(Lt9/h;IILcom/google/android/exoplayer2/o1;ILjava/lang/Object;JJ)V

    return-void
.end method

.method private X()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/w;->D:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static synthetic f(Lcom/google/android/exoplayer2/source/w;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->F()V

    return-void
.end method

.method public static synthetic g(Lcom/google/android/exoplayer2/source/w;Lg9/b0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/w;->G(Lg9/b0;)V

    return-void
.end method

.method public static synthetic h(Lcom/google/android/exoplayer2/source/w;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->E()V

    return-void
.end method

.method public static synthetic i(Lcom/google/android/exoplayer2/source/w;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->H()V

    return-void
.end method

.method static synthetic k(Lcom/google/android/exoplayer2/source/w;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/w;->o:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic m(Lcom/google/android/exoplayer2/source/w;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/w;->p:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic o(Lcom/google/android/exoplayer2/source/w;Z)J
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/w;->A(Z)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic p()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/source/w;->M:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic q(Lcom/google/android/exoplayer2/source/w;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/w;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic r(Lcom/google/android/exoplayer2/source/w;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->M()V

    return-void
.end method

.method static synthetic s(Lcom/google/android/exoplayer2/source/w;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/w;->r:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    return-object p0
.end method

.method static synthetic t(Lcom/google/android/exoplayer2/source/w;Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/w;->r:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    return-object p1
.end method

.method static synthetic u()Lcom/google/android/exoplayer2/o1;
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/source/w;->N:Lcom/google/android/exoplayer2/o1;

    return-object v0
.end method

.method static synthetic v(Lcom/google/android/exoplayer2/source/w;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/w;->j:J

    return-wide v0
.end method

.method private w()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/w;->v:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->x:Lcom/google/android/exoplayer2/source/w$e;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->y:Lg9/b0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private x(Lcom/google/android/exoplayer2/source/w$a;I)Z
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/w;->F:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->y:Lg9/b0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lg9/b0;->getDurationUs()J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/source/w;->v:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->X()Z

    move-result p2

    if-nez p2, :cond_1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/w;->I:Z

    return v0

    :cond_1
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/source/w;->v:Z

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/w;->D:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/w;->G:J

    iput v0, p0, Lcom/google/android/exoplayer2/source/w;->J:I

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/w;->s:[Lcom/google/android/exoplayer2/source/a0;

    array-length v4, p2

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, p2, v0

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/a0;->V()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p1, v2, v3, v2, v3}, Lcom/google/android/exoplayer2/source/w$a;->f(Lcom/google/android/exoplayer2/source/w$a;JJ)V

    return v1

    :cond_3
    :goto_1
    iput p2, p0, Lcom/google/android/exoplayer2/source/w;->J:I

    return v1
.end method

.method private static y()Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Icy-MetaData"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private z()I
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->s:[Lcom/google/android/exoplayer2/source/a0;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/a0;->G()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method


# virtual methods
.method B()Lg9/e0;
    .locals 3

    new-instance v0, Lcom/google/android/exoplayer2/source/w$d;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/w$d;-><init>(IZ)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/w;->Q(Lcom/google/android/exoplayer2/source/w$d;)Lg9/e0;

    move-result-object v0

    return-object v0
.end method

.method D(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->X()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->s:[Lcom/google/android/exoplayer2/source/a0;

    aget-object p1, v0, p1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/w;->K:Z

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

.method K()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->k:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/w;->d:Lcom/google/android/exoplayer2/upstream/z;

    iget v2, p0, Lcom/google/android/exoplayer2/source/w;->B:I

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/upstream/z;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;->j(I)V

    return-void
.end method

.method L(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->s:[Lcom/google/android/exoplayer2/source/a0;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/a0;->N()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/w;->K()V

    return-void
.end method

.method public N(Lcom/google/android/exoplayer2/source/w$a;JJZ)V
    .locals 15

    move-object v0, p0

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/w$a;->b(Lcom/google/android/exoplayer2/source/w$a;)Lcom/google/android/exoplayer2/upstream/i0;

    move-result-object v1

    new-instance v14, Lt9/h;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/w$a;->c(Lcom/google/android/exoplayer2/source/w$a;)J

    move-result-wide v3

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/w$a;->d(Lcom/google/android/exoplayer2/source/w$a;)Lcom/google/android/exoplayer2/upstream/n;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/i0;->h()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/i0;->i()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/i0;->f()J

    move-result-wide v12

    move-object v2, v14

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v2 .. v13}, Lt9/h;-><init>(JLcom/google/android/exoplayer2/upstream/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/w;->d:Lcom/google/android/exoplayer2/upstream/z;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/w$a;->c(Lcom/google/android/exoplayer2/source/w$a;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/upstream/z;->b(J)V

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/w;->e:Lcom/google/android/exoplayer2/source/p$a;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/w$a;->e(Lcom/google/android/exoplayer2/source/w$a;)J

    move-result-wide v9

    iget-wide v11, v0, Lcom/google/android/exoplayer2/source/w;->z:J

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v14

    invoke-virtual/range {v2 .. v12}, Lcom/google/android/exoplayer2/source/p$a;->r(Lt9/h;IILcom/google/android/exoplayer2/o1;ILjava/lang/Object;JJ)V

    if-nez p6, :cond_1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/w;->s:[Lcom/google/android/exoplayer2/source/a0;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/a0;->V()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/google/android/exoplayer2/source/w;->E:I

    if-lez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/w;->q:Lcom/google/android/exoplayer2/source/n$a;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/n$a;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/source/b0$a;->g(Lcom/google/android/exoplayer2/source/b0;)V

    :cond_1
    return-void
.end method

.method public O(Lcom/google/android/exoplayer2/source/w$a;JJ)V
    .locals 16

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/w;->z:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/w;->y:Lg9/b0;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lg9/b0;->isSeekable()Z

    move-result v1

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/source/w;->A(Z)J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v5, v3, v5

    if-nez v5, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x2710

    add-long/2addr v3, v5

    :goto_0
    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/w;->z:J

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/w;->g:Lcom/google/android/exoplayer2/source/w$b;

    iget-boolean v6, v0, Lcom/google/android/exoplayer2/source/w;->A:Z

    invoke-interface {v5, v3, v4, v1, v6}, Lcom/google/android/exoplayer2/source/w$b;->p(JZZ)V

    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/w$a;->b(Lcom/google/android/exoplayer2/source/w$a;)Lcom/google/android/exoplayer2/upstream/i0;

    move-result-object v1

    new-instance v15, Lt9/h;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/w$a;->c(Lcom/google/android/exoplayer2/source/w$a;)J

    move-result-wide v4

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/w$a;->d(Lcom/google/android/exoplayer2/source/w$a;)Lcom/google/android/exoplayer2/upstream/n;

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/i0;->h()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/i0;->i()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/i0;->f()J

    move-result-wide v13

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lt9/h;-><init>(JLcom/google/android/exoplayer2/upstream/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/w;->d:Lcom/google/android/exoplayer2/upstream/z;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/w$a;->c(Lcom/google/android/exoplayer2/source/w$a;)J

    move-result-wide v3

    invoke-interface {v1, v3, v4}, Lcom/google/android/exoplayer2/upstream/z;->b(J)V

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/w;->e:Lcom/google/android/exoplayer2/source/p$a;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/w$a;->e(Lcom/google/android/exoplayer2/source/w$a;)J

    move-result-wide v10

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/w;->z:J

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v15

    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/p$a;->u(Lt9/h;IILcom/google/android/exoplayer2/o1;ILjava/lang/Object;JJ)V

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/source/w;->K:Z

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/w;->q:Lcom/google/android/exoplayer2/source/n$a;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/n$a;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/b0$a;->g(Lcom/google/android/exoplayer2/source/b0;)V

    return-void
.end method

.method public P(Lcom/google/android/exoplayer2/source/w$a;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$c;
    .locals 25

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/w$a;->b(Lcom/google/android/exoplayer2/source/w$a;)Lcom/google/android/exoplayer2/upstream/i0;

    move-result-object v1

    new-instance v14, Lt9/h;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/w$a;->c(Lcom/google/android/exoplayer2/source/w$a;)J

    move-result-wide v3

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/w$a;->d(Lcom/google/android/exoplayer2/source/w$a;)Lcom/google/android/exoplayer2/upstream/n;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/i0;->h()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/i0;->i()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/i0;->f()J

    move-result-wide v12

    move-object v2, v14

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v2 .. v13}, Lt9/h;-><init>(JLcom/google/android/exoplayer2/upstream/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v1, Lt9/i;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/w$a;->e(Lcom/google/android/exoplayer2/source/w$a;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->e1(J)J

    move-result-wide v21

    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/w;->z:J

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->e1(J)J

    move-result-wide v23

    const/16 v16, 0x1

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v15, v1

    invoke-direct/range {v15 .. v24}, Lt9/i;-><init>(IILcom/google/android/exoplayer2/o1;ILjava/lang/Object;JJ)V

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/w;->d:Lcom/google/android/exoplayer2/upstream/z;

    new-instance v3, Lcom/google/android/exoplayer2/upstream/z$c;

    move-object/from16 v13, p6

    move/from16 v4, p7

    invoke-direct {v3, v14, v1, v13, v4}, Lcom/google/android/exoplayer2/upstream/z$c;-><init>(Lt9/h;Lt9/i;Ljava/io/IOException;I)V

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/upstream/z;->c(Lcom/google/android/exoplayer2/upstream/z$c;)J

    move-result-wide v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    sget-object v1, Lcom/google/android/exoplayer2/upstream/Loader;->g:Lcom/google/android/exoplayer2/upstream/Loader$c;

    move-object/from16 v15, p1

    goto :goto_2

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/w;->z()I

    move-result v3

    iget v4, v0, Lcom/google/android/exoplayer2/source/w;->J:I

    if-le v3, v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v15, p1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :goto_1
    invoke-direct {v0, v15, v3}, Lcom/google/android/exoplayer2/source/w;->x(Lcom/google/android/exoplayer2/source/w$a;I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v4, v1, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->g(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$c;

    move-result-object v1

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/google/android/exoplayer2/upstream/Loader;->f:Lcom/google/android/exoplayer2/upstream/Loader$c;

    :goto_2
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader$c;->c()Z

    move-result v16

    xor-int/lit8 v17, v16, 0x1

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/w;->e:Lcom/google/android/exoplayer2/source/p$a;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/w$a;->e(Lcom/google/android/exoplayer2/source/w$a;)J

    move-result-wide v9

    iget-wide v11, v0, Lcom/google/android/exoplayer2/source/w;->z:J

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v14

    move-object/from16 v13, p6

    move/from16 v14, v17

    invoke-virtual/range {v2 .. v14}, Lcom/google/android/exoplayer2/source/p$a;->w(Lt9/h;IILcom/google/android/exoplayer2/o1;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    if-nez v16, :cond_3

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/w;->d:Lcom/google/android/exoplayer2/upstream/z;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/w$a;->c(Lcom/google/android/exoplayer2/source/w$a;)J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/z;->b(J)V

    :cond_3
    return-object v1
.end method

.method R(ILcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 3

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->X()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/w;->I(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->s:[Lcom/google/android/exoplayer2/source/a0;

    aget-object v0, v0, p1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/w;->K:Z

    invoke-virtual {v0, p2, p3, p4, v2}, Lcom/google/android/exoplayer2/source/a0;->S(Lcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;IZ)I

    move-result p2

    if-ne p2, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/w;->J(I)V

    :cond_1
    return p2
.end method

.method public S()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/w;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->s:[Lcom/google/android/exoplayer2/source/a0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/a0;->R()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->k:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/upstream/Loader;->l(Lcom/google/android/exoplayer2/upstream/Loader$e;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->p:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/w;->q:Lcom/google/android/exoplayer2/source/n$a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/w;->L:Z

    return-void
.end method

.method V(IJ)I
    .locals 2

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/w;->I(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->s:[Lcom/google/android/exoplayer2/source/a0;

    aget-object v0, v0, p1

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/w;->K:Z

    invoke-virtual {v0, p2, p3, v1}, Lcom/google/android/exoplayer2/source/a0;->E(JZ)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/a0;->e0(I)V

    if-nez p2, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/w;->J(I)V

    :cond_1
    return p2
.end method

.method public a(JLcom/google/android/exoplayer2/c3;)J
    .locals 9

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->w()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->y:Lg9/b0;

    invoke-interface {v0}, Lg9/b0;->isSeekable()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->y:Lg9/b0;

    invoke-interface {v0, p1, p2}, Lg9/b0;->getSeekPoints(J)Lg9/b0$a;

    move-result-object v0

    iget-object v1, v0, Lg9/b0$a;->a:Lg9/c0;

    iget-wide v5, v1, Lg9/c0;->a:J

    iget-object v0, v0, Lg9/b0$a;->b:Lg9/c0;

    iget-wide v7, v0, Lg9/c0;->a:J

    move-object v2, p3

    move-wide v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/exoplayer2/c3;->a(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public b([Lcom/google/android/exoplayer2/trackselection/h;[Z[Lt9/s;[ZJ)J
    .locals 8

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->w()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->x:Lcom/google/android/exoplayer2/source/w$e;

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/w$e;->a:Lt9/x;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/w$e;->c:[Z

    iget v2, p0, Lcom/google/android/exoplayer2/source/w;->E:I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, p1

    const/4 v6, 0x1

    if-ge v4, v5, :cond_2

    aget-object v5, p3, v4

    if-eqz v5, :cond_1

    aget-object v7, p1, v4

    if-eqz v7, :cond_0

    aget-boolean v7, p2, v4

    if-nez v7, :cond_1

    :cond_0
    check-cast v5, Lcom/google/android/exoplayer2/source/w$c;

    invoke-static {v5}, Lcom/google/android/exoplayer2/source/w$c;->a(Lcom/google/android/exoplayer2/source/w$c;)I

    move-result v5

    aget-boolean v7, v0, v5

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iget v7, p0, Lcom/google/android/exoplayer2/source/w;->E:I

    sub-int/2addr v7, v6

    iput v7, p0, Lcom/google/android/exoplayer2/source/w;->E:I

    aput-boolean v3, v0, v5

    const/4 v5, 0x0

    aput-object v5, p3, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/source/w;->C:Z

    if-eqz p2, :cond_4

    if-nez v2, :cond_3

    :goto_1
    move p2, v6

    goto :goto_2

    :cond_3
    move p2, v3

    goto :goto_2

    :cond_4
    const-wide/16 v4, 0x0

    cmp-long p2, p5, v4

    if-eqz p2, :cond_3

    goto :goto_1

    :goto_2
    move v2, v3

    :goto_3
    array-length v4, p1

    if-ge v2, v4, :cond_9

    aget-object v4, p3, v2

    if-nez v4, :cond_8

    aget-object v4, p1, v2

    if-eqz v4, :cond_8

    invoke-interface {v4}, Lla/m;->length()I

    move-result v5

    if-ne v5, v6, :cond_5

    move v5, v6

    goto :goto_4

    :cond_5
    move v5, v3

    :goto_4
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    invoke-interface {v4, v3}, Lla/m;->getIndexInTrackGroup(I)I

    move-result v5

    if-nez v5, :cond_6

    move v5, v6

    goto :goto_5

    :cond_6
    move v5, v3

    :goto_5
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    invoke-interface {v4}, Lla/m;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    invoke-virtual {v1, v4}, Lt9/x;->c(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v4

    aget-boolean v5, v0, v4

    xor-int/2addr v5, v6

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iget v5, p0, Lcom/google/android/exoplayer2/source/w;->E:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/exoplayer2/source/w;->E:I

    aput-boolean v6, v0, v4

    new-instance v5, Lcom/google/android/exoplayer2/source/w$c;

    invoke-direct {v5, p0, v4}, Lcom/google/android/exoplayer2/source/w$c;-><init>(Lcom/google/android/exoplayer2/source/w;I)V

    aput-object v5, p3, v2

    aput-boolean v6, p4, v2

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/w;->s:[Lcom/google/android/exoplayer2/source/a0;

    aget-object p2, p2, v4

    invoke-virtual {p2, p5, p6, v6}, Lcom/google/android/exoplayer2/source/a0;->Z(JZ)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/a0;->C()I

    move-result p2

    if-eqz p2, :cond_7

    move p2, v6

    goto :goto_6

    :cond_7
    move p2, v3

    :cond_8
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    iget p1, p0, Lcom/google/android/exoplayer2/source/w;->E:I

    if-nez p1, :cond_c

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/source/w;->I:Z

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/source/w;->D:Z

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/w;->k:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->i()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/w;->s:[Lcom/google/android/exoplayer2/source/a0;

    array-length p2, p1

    :goto_7
    if-ge v3, p2, :cond_a

    aget-object p3, p1, v3

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/source/a0;->r()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_a
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/w;->k:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->e()V

    goto :goto_a

    :cond_b
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/w;->s:[Lcom/google/android/exoplayer2/source/a0;

    array-length p2, p1

    :goto_8
    if-ge v3, p2, :cond_e

    aget-object p3, p1, v3

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/source/a0;->V()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_c
    if-eqz p2, :cond_e

    invoke-virtual {p0, p5, p6}, Lcom/google/android/exoplayer2/source/w;->seekToUs(J)J

    move-result-wide p5

    :goto_9
    array-length p1, p3

    if-ge v3, p1, :cond_e

    aget-object p1, p3, v3

    if-eqz p1, :cond_d

    aput-boolean v6, p4, v3

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_e
    :goto_a
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/source/w;->C:Z

    return-wide p5
.end method

.method public c(Lcom/google/android/exoplayer2/o1;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/w;->p:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->n:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public continueLoading(J)Z
    .locals 0

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/w;->K:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/w;->k:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->h()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/w;->I:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/w;->v:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/exoplayer2/source/w;->E:I

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/w;->m:Lcom/google/android/exoplayer2/util/h;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h;->f()Z

    move-result p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/w;->k:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/upstream/Loader;->i()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->W()V

    const/4 p1, 0x1

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public d(Lg9/b0;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->p:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/source/v;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/source/v;-><init>(Lcom/google/android/exoplayer2/source/w;Lg9/b0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public discardBuffer(JZ)V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->w()V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->x:Lcom/google/android/exoplayer2/source/w$e;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/w$e;->c:[Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/w;->s:[Lcom/google/android/exoplayer2/source/a0;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/w;->s:[Lcom/google/android/exoplayer2/source/a0;

    aget-object v3, v3, v2

    aget-boolean v4, v0, v2

    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/google/android/exoplayer2/source/a0;->q(JZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e(Lcom/google/android/exoplayer2/source/n$a;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/w;->q:Lcom/google/android/exoplayer2/source/n$a;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/w;->m:Lcom/google/android/exoplayer2/util/h;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h;->f()Z

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->W()V

    return-void
.end method

.method public endTracks()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/w;->u:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/w;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 11

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->w()V

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/w;->K:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_7

    iget v0, p0, Lcom/google/android/exoplayer2/source/w;->E:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/w;->H:J

    return-wide v0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/w;->w:Z

    const/4 v3, 0x0

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->s:[Lcom/google/android/exoplayer2/source/a0;

    array-length v0, v0

    move v6, v3

    move-wide v7, v4

    :goto_0
    if-ge v6, v0, :cond_4

    iget-object v9, p0, Lcom/google/android/exoplayer2/source/w;->x:Lcom/google/android/exoplayer2/source/w$e;

    iget-object v10, v9, Lcom/google/android/exoplayer2/source/w$e;->b:[Z

    aget-boolean v10, v10, v6

    if-eqz v10, :cond_2

    iget-object v9, v9, Lcom/google/android/exoplayer2/source/w$e;->c:[Z

    aget-boolean v9, v9, v6

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/google/android/exoplayer2/source/w;->s:[Lcom/google/android/exoplayer2/source/a0;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/source/a0;->J()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/google/android/exoplayer2/source/w;->s:[Lcom/google/android/exoplayer2/source/a0;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/source/a0;->z()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-wide v7, v4

    :cond_4
    cmp-long v0, v7, v4

    if-nez v0, :cond_5

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/source/w;->A(Z)J

    move-result-wide v7

    :cond_5
    cmp-long v0, v7, v1

    if-nez v0, :cond_6

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/w;->G:J

    :cond_6
    return-wide v7

    :cond_7
    :goto_1
    return-wide v1
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/w;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Lt9/x;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->w()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->x:Lcom/google/android/exoplayer2/source/w$e;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/w$e;->a:Lt9/x;

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->k:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->m:Lcom/google/android/exoplayer2/util/h;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic j(Lcom/google/android/exoplayer2/upstream/Loader$d;JJZ)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/w$a;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/w;->N(Lcom/google/android/exoplayer2/source/w$a;JJZ)V

    return-void
.end method

.method public bridge synthetic l(Lcom/google/android/exoplayer2/upstream/Loader$d;JJ)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/w$a;

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/w;->O(Lcom/google/android/exoplayer2/source/w$a;JJ)V

    return-void
.end method

.method public maybeThrowPrepareError()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/w;->K()V

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/w;->K:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/w;->v:Z

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

    check-cast p1, Lcom/google/android/exoplayer2/source/w$a;

    invoke-virtual/range {p0 .. p7}, Lcom/google/android/exoplayer2/source/w;->P(Lcom/google/android/exoplayer2/source/w$a;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$c;

    move-result-object p1

    return-object p1
.end method

.method public onLoaderReleased()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->s:[Lcom/google/android/exoplayer2/source/a0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/a0;->T()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->l:Lcom/google/android/exoplayer2/source/r;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/r;->release()V

    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/w;->D:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/w;->K:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->z()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/w;->J:I

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/w;->D:Z

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/w;->G:J

    return-wide v0

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 0

    return-void
.end method

.method public seekToUs(J)J
    .locals 4

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->w()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->x:Lcom/google/android/exoplayer2/source/w$e;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/w$e;->b:[Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/w;->y:Lg9/b0;

    invoke-interface {v1}, Lg9/b0;->isSeekable()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/w;->D:Z

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/w;->G:J

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/w;->C()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/w;->H:J

    return-wide p1

    :cond_1
    iget v2, p0, Lcom/google/android/exoplayer2/source/w;->B:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/source/w;->T([ZJ)Z

    move-result v0

    if-eqz v0, :cond_2

    return-wide p1

    :cond_2
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/w;->I:Z

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/w;->H:J

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/w;->K:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->k:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->s:[Lcom/google/android/exoplayer2/source/a0;

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/a0;->r()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->k:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->e()V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->k:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->f()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w;->s:[Lcom/google/android/exoplayer2/source/a0;

    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/a0;->V()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-wide p1
.end method

.method public track(II)Lg9/e0;
    .locals 1

    new-instance p2, Lcom/google/android/exoplayer2/source/w$d;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/google/android/exoplayer2/source/w$d;-><init>(IZ)V

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/w;->Q(Lcom/google/android/exoplayer2/source/w$d;)Lg9/e0;

    move-result-object p1

    return-object p1
.end method
