.class public final Landroidx/media3/exoplayer/hls/playlist/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;
.implements Landroidx/media3/exoplayer/upstream/Loader$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/hls/playlist/a$c;,
        Landroidx/media3/exoplayer/hls/playlist/a$b;
    }
.end annotation


# static fields
.field public static final p:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$a;


# instance fields
.field private final a:Landroidx/media3/exoplayer/hls/f;

.field private final b:Lc2/e;

.field private final c:Landroidx/media3/exoplayer/upstream/m;

.field private final d:Ljava/util/HashMap;

.field private final e:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final f:D

.field private g:Landroidx/media3/exoplayer/source/s$a;

.field private h:Landroidx/media3/exoplayer/upstream/Loader;

.field private i:Landroid/os/Handler;

.field private j:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$c;

.field private k:Landroidx/media3/exoplayer/hls/playlist/d;

.field private l:Landroid/net/Uri;

.field private m:Landroidx/media3/exoplayer/hls/playlist/c;

.field private n:Z

.field private o:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc2/b;

    invoke-direct {v0}, Lc2/b;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/a;->p:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$a;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/hls/f;Landroidx/media3/exoplayer/upstream/m;Lc2/e;Landroidx/media3/exoplayer/upstream/f;)V
    .locals 7

    const-wide/high16 v5, 0x400c000000000000L    # 3.5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/hls/playlist/a;-><init>(Landroidx/media3/exoplayer/hls/f;Landroidx/media3/exoplayer/upstream/m;Lc2/e;Landroidx/media3/exoplayer/upstream/f;D)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/hls/f;Landroidx/media3/exoplayer/upstream/m;Lc2/e;Landroidx/media3/exoplayer/upstream/f;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/a;->a:Landroidx/media3/exoplayer/hls/f;

    iput-object p3, p0, Landroidx/media3/exoplayer/hls/playlist/a;->b:Lc2/e;

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/playlist/a;->c:Landroidx/media3/exoplayer/upstream/m;

    iput-wide p5, p0, Landroidx/media3/exoplayer/hls/playlist/a;->f:D

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/a;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/a;->d:Ljava/util/HashMap;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/hls/playlist/a;->o:J

    return-void
.end method

.method static synthetic A(Landroidx/media3/exoplayer/hls/playlist/a;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->l:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic B(Landroidx/media3/exoplayer/hls/playlist/a;)Z
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/playlist/a;->P()Z

    move-result p0

    return p0
.end method

.method static synthetic C(Landroidx/media3/exoplayer/hls/playlist/a;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic D(Landroidx/media3/exoplayer/hls/playlist/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->d:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic E(Landroidx/media3/exoplayer/hls/playlist/a;)Landroidx/media3/exoplayer/hls/f;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->a:Landroidx/media3/exoplayer/hls/f;

    return-object p0
.end method

.method static synthetic F(Landroidx/media3/exoplayer/hls/playlist/a;)Landroidx/media3/exoplayer/source/s$a;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->g:Landroidx/media3/exoplayer/source/s$a;

    return-object p0
.end method

.method static synthetic G(Landroidx/media3/exoplayer/hls/playlist/a;)Landroidx/media3/exoplayer/upstream/m;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->c:Landroidx/media3/exoplayer/upstream/m;

    return-object p0
.end method

.method private H(Ljava/util/List;)V
    .locals 5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    new-instance v3, Landroidx/media3/exoplayer/hls/playlist/a$c;

    invoke-direct {v3, p0, v2}, Landroidx/media3/exoplayer/hls/playlist/a$c;-><init>(Landroidx/media3/exoplayer/hls/playlist/a;Landroid/net/Uri;)V

    iget-object v4, p0, Landroidx/media3/exoplayer/hls/playlist/a;->d:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static I(Landroidx/media3/exoplayer/hls/playlist/c;Landroidx/media3/exoplayer/hls/playlist/c;)Landroidx/media3/exoplayer/hls/playlist/c$f;
    .locals 4

    iget-wide v0, p1, Landroidx/media3/exoplayer/hls/playlist/c;->k:J

    iget-wide v2, p0, Landroidx/media3/exoplayer/hls/playlist/c;->k:J

    sub-long/2addr v0, v2

    long-to-int p1, v0

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/hls/playlist/c$f;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private J(Landroidx/media3/exoplayer/hls/playlist/c;Landroidx/media3/exoplayer/hls/playlist/c;)Landroidx/media3/exoplayer/hls/playlist/c;
    .locals 2

    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/hls/playlist/c;->e(Landroidx/media3/exoplayer/hls/playlist/c;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p2, p2, Landroidx/media3/exoplayer/hls/playlist/c;->o:Z

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroidx/media3/exoplayer/hls/playlist/c;->c()Landroidx/media3/exoplayer/hls/playlist/c;

    move-result-object p1

    :cond_0
    return-object p1

    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/hls/playlist/a;->L(Landroidx/media3/exoplayer/hls/playlist/c;Landroidx/media3/exoplayer/hls/playlist/c;)J

    move-result-wide v0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/hls/playlist/a;->K(Landroidx/media3/exoplayer/hls/playlist/c;Landroidx/media3/exoplayer/hls/playlist/c;)I

    move-result p1

    invoke-virtual {p2, v0, v1, p1}, Landroidx/media3/exoplayer/hls/playlist/c;->b(JI)Landroidx/media3/exoplayer/hls/playlist/c;

    move-result-object p1

    return-object p1
.end method

.method private K(Landroidx/media3/exoplayer/hls/playlist/c;Landroidx/media3/exoplayer/hls/playlist/c;)I
    .locals 3

    iget-boolean v0, p2, Landroidx/media3/exoplayer/hls/playlist/c;->i:Z

    if-eqz v0, :cond_0

    iget p1, p2, Landroidx/media3/exoplayer/hls/playlist/c;->j:I

    return p1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->m:Landroidx/media3/exoplayer/hls/playlist/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, v0, Landroidx/media3/exoplayer/hls/playlist/c;->j:I

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez p1, :cond_2

    return v0

    :cond_2
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/hls/playlist/a;->I(Landroidx/media3/exoplayer/hls/playlist/c;Landroidx/media3/exoplayer/hls/playlist/c;)Landroidx/media3/exoplayer/hls/playlist/c$f;

    move-result-object v2

    if-eqz v2, :cond_3

    iget p1, p1, Landroidx/media3/exoplayer/hls/playlist/c;->j:I

    iget v0, v2, Landroidx/media3/exoplayer/hls/playlist/c$g;->d:I

    add-int/2addr p1, v0

    iget-object p2, p2, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/exoplayer/hls/playlist/c$f;

    iget p2, p2, Landroidx/media3/exoplayer/hls/playlist/c$g;->d:I

    sub-int/2addr p1, p2

    return p1

    :cond_3
    return v0
.end method

.method private L(Landroidx/media3/exoplayer/hls/playlist/c;Landroidx/media3/exoplayer/hls/playlist/c;)J
    .locals 8

    iget-boolean v0, p2, Landroidx/media3/exoplayer/hls/playlist/c;->p:Z

    if-eqz v0, :cond_0

    iget-wide p1, p2, Landroidx/media3/exoplayer/hls/playlist/c;->h:J

    return-wide p1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->m:Landroidx/media3/exoplayer/hls/playlist/c;

    if-eqz v0, :cond_1

    iget-wide v0, v0, Landroidx/media3/exoplayer/hls/playlist/c;->h:J

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    if-nez p1, :cond_2

    return-wide v0

    :cond_2
    iget-object v2, p1, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p1, p2}, Landroidx/media3/exoplayer/hls/playlist/a;->I(Landroidx/media3/exoplayer/hls/playlist/c;Landroidx/media3/exoplayer/hls/playlist/c;)Landroidx/media3/exoplayer/hls/playlist/c$f;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-wide p1, p1, Landroidx/media3/exoplayer/hls/playlist/c;->h:J

    iget-wide v0, v3, Landroidx/media3/exoplayer/hls/playlist/c$g;->e:J

    add-long/2addr p1, v0

    return-wide p1

    :cond_3
    int-to-long v2, v2

    iget-wide v4, p2, Landroidx/media3/exoplayer/hls/playlist/c;->k:J

    iget-wide v6, p1, Landroidx/media3/exoplayer/hls/playlist/c;->k:J

    sub-long/2addr v4, v6

    cmp-long p2, v2, v4

    if-nez p2, :cond_4

    invoke-virtual {p1}, Landroidx/media3/exoplayer/hls/playlist/c;->d()J

    move-result-wide p1

    return-wide p1

    :cond_4
    return-wide v0
.end method

.method private M(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->m:Landroidx/media3/exoplayer/hls/playlist/c;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->v:Landroidx/media3/exoplayer/hls/playlist/c$h;

    iget-boolean v1, v1, Landroidx/media3/exoplayer/hls/playlist/c$h;->e:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Landroidx/media3/exoplayer/hls/playlist/c;->t:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/hls/playlist/c$e;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    iget-wide v1, v0, Landroidx/media3/exoplayer/hls/playlist/c$e;->b:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_HLS_msn"

    invoke-virtual {p1, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget v0, v0, Landroidx/media3/exoplayer/hls/playlist/c$e;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v1, "_HLS_part"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private N(Landroid/net/Uri;)Z
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->k:Landroidx/media3/exoplayer/hls/playlist/d;

    iget-object v0, v0, Landroidx/media3/exoplayer/hls/playlist/d;->e:Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/hls/playlist/d$b;

    iget-object v3, v3, Landroidx/media3/exoplayer/hls/playlist/d$b;->a:Landroid/net/Uri;

    invoke-virtual {p1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private O(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/hls/playlist/a$c;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/hls/playlist/a$c;->j()Landroidx/media3/exoplayer/hls/playlist/c;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/media3/exoplayer/hls/playlist/a$c;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/hls/playlist/a$c;->B(Z)V

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Landroidx/media3/exoplayer/hls/playlist/c;->o:Z

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/hls/playlist/a$c;->r(Z)V

    :cond_1
    return-void
.end method

.method private P()Z
    .locals 9

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->k:Landroidx/media3/exoplayer/hls/playlist/d;

    iget-object v0, v0, Landroidx/media3/exoplayer/hls/playlist/d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_1

    iget-object v6, p0, Landroidx/media3/exoplayer/hls/playlist/a;->d:Ljava/util/HashMap;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/exoplayer/hls/playlist/d$b;

    iget-object v7, v7, Landroidx/media3/exoplayer/hls/playlist/d$b;->a:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/hls/playlist/a$c;

    invoke-static {v6}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/hls/playlist/a$c;

    invoke-static {v6}, Landroidx/media3/exoplayer/hls/playlist/a$c;->d(Landroidx/media3/exoplayer/hls/playlist/a$c;)J

    move-result-wide v7

    cmp-long v7, v2, v7

    if-lez v7, :cond_0

    invoke-static {v6}, Landroidx/media3/exoplayer/hls/playlist/a$c;->e(Landroidx/media3/exoplayer/hls/playlist/a$c;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->l:Landroid/net/Uri;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/hls/playlist/a;->M(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v6, v0}, Landroidx/media3/exoplayer/hls/playlist/a$c;->f(Landroidx/media3/exoplayer/hls/playlist/a$c;Landroid/net/Uri;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method private Q(Landroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->l:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/hls/playlist/a;->N(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->m:Landroidx/media3/exoplayer/hls/playlist/c;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroidx/media3/exoplayer/hls/playlist/c;->o:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/a;->l:Landroid/net/Uri;

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/hls/playlist/a$c;

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/a$c;->g(Landroidx/media3/exoplayer/hls/playlist/a$c;)Landroidx/media3/exoplayer/hls/playlist/c;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-boolean v2, v1, Landroidx/media3/exoplayer/hls/playlist/c;->o:Z

    if-eqz v2, :cond_1

    iput-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/a;->m:Landroidx/media3/exoplayer/hls/playlist/c;

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/a;->j:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$c;

    invoke-interface {p1, v1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$c;->f(Landroidx/media3/exoplayer/hls/playlist/c;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/hls/playlist/a;->M(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/hls/playlist/a$c;->f(Landroidx/media3/exoplayer/hls/playlist/a$c;Landroid/net/Uri;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private R(Landroid/net/Uri;Landroidx/media3/exoplayer/upstream/m$c;Z)Z
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$b;

    invoke-interface {v2, p1, p2, p3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$b;->d(Landroid/net/Uri;Landroidx/media3/exoplayer/upstream/m$c;Z)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method private W(Landroid/net/Uri;Landroidx/media3/exoplayer/hls/playlist/c;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->l:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/a;->m:Landroidx/media3/exoplayer/hls/playlist/c;

    if-nez p1, :cond_0

    iget-boolean p1, p2, Landroidx/media3/exoplayer/hls/playlist/c;->o:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/hls/playlist/a;->n:Z

    iget-wide v0, p2, Landroidx/media3/exoplayer/hls/playlist/c;->h:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->o:J

    :cond_0
    iput-object p2, p0, Landroidx/media3/exoplayer/hls/playlist/a;->m:Landroidx/media3/exoplayer/hls/playlist/c;

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/a;->j:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$c;

    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$c;->f(Landroidx/media3/exoplayer/hls/playlist/c;)V

    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/a;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$b;

    invoke-interface {p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$b;->c()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic r(Landroidx/media3/exoplayer/hls/playlist/a;Landroid/net/Uri;Landroidx/media3/exoplayer/upstream/m$c;Z)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/hls/playlist/a;->R(Landroid/net/Uri;Landroidx/media3/exoplayer/upstream/m$c;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic s(Landroidx/media3/exoplayer/hls/playlist/a;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->i:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic t(Landroidx/media3/exoplayer/hls/playlist/a;)Landroidx/media3/exoplayer/hls/playlist/d;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->k:Landroidx/media3/exoplayer/hls/playlist/d;

    return-object p0
.end method

.method static synthetic u(Landroidx/media3/exoplayer/hls/playlist/a;)Lc2/e;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->b:Lc2/e;

    return-object p0
.end method

.method static synthetic v(Landroidx/media3/exoplayer/hls/playlist/a;)Landroidx/media3/exoplayer/upstream/f;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic w(Landroidx/media3/exoplayer/hls/playlist/a;)Landroidx/media3/exoplayer/hls/playlist/c;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->m:Landroidx/media3/exoplayer/hls/playlist/c;

    return-object p0
.end method

.method static synthetic x(Landroidx/media3/exoplayer/hls/playlist/a;Landroidx/media3/exoplayer/hls/playlist/c;Landroidx/media3/exoplayer/hls/playlist/c;)Landroidx/media3/exoplayer/hls/playlist/c;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/hls/playlist/a;->J(Landroidx/media3/exoplayer/hls/playlist/c;Landroidx/media3/exoplayer/hls/playlist/c;)Landroidx/media3/exoplayer/hls/playlist/c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic y(Landroidx/media3/exoplayer/hls/playlist/a;Landroid/net/Uri;Landroidx/media3/exoplayer/hls/playlist/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/hls/playlist/a;->W(Landroid/net/Uri;Landroidx/media3/exoplayer/hls/playlist/c;)V

    return-void
.end method

.method static synthetic z(Landroidx/media3/exoplayer/hls/playlist/a;)D
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->f:D

    return-wide v0
.end method


# virtual methods
.method public S(Landroidx/media3/exoplayer/upstream/q;JJZ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    new-instance v14, Lg2/i;

    iget-wide v3, v1, Landroidx/media3/exoplayer/upstream/q;->a:J

    iget-object v5, v1, Landroidx/media3/exoplayer/upstream/q;->b:Lw1/h;

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/q;->d()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/q;->b()Ljava/util/Map;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/q;->a()J

    move-result-wide v12

    move-object v2, v14

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v2 .. v13}, Lg2/i;-><init>(JLw1/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object v2, v0, Landroidx/media3/exoplayer/hls/playlist/a;->c:Landroidx/media3/exoplayer/upstream/m;

    iget-wide v3, v1, Landroidx/media3/exoplayer/upstream/q;->a:J

    invoke-interface {v2, v3, v4}, Landroidx/media3/exoplayer/upstream/m;->b(J)V

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/a;->g:Landroidx/media3/exoplayer/source/s$a;

    const/4 v2, 0x4

    invoke-virtual {v1, v14, v2}, Landroidx/media3/exoplayer/source/s$a;->s(Lg2/i;I)V

    return-void
.end method

.method public T(Landroidx/media3/exoplayer/upstream/q;JJ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/q;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc2/d;

    instance-of v3, v2, Landroidx/media3/exoplayer/hls/playlist/c;

    if-eqz v3, :cond_0

    iget-object v4, v2, Lc2/d;->a:Ljava/lang/String;

    invoke-static {v4}, Landroidx/media3/exoplayer/hls/playlist/d;->d(Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/d;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v2

    check-cast v4, Landroidx/media3/exoplayer/hls/playlist/d;

    :goto_0
    iput-object v4, v0, Landroidx/media3/exoplayer/hls/playlist/a;->k:Landroidx/media3/exoplayer/hls/playlist/d;

    iget-object v5, v4, Landroidx/media3/exoplayer/hls/playlist/d;->e:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/hls/playlist/d$b;

    iget-object v5, v5, Landroidx/media3/exoplayer/hls/playlist/d$b;->a:Landroid/net/Uri;

    iput-object v5, v0, Landroidx/media3/exoplayer/hls/playlist/a;->l:Landroid/net/Uri;

    iget-object v5, v0, Landroidx/media3/exoplayer/hls/playlist/a;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v7, Landroidx/media3/exoplayer/hls/playlist/a$b;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8}, Landroidx/media3/exoplayer/hls/playlist/a$b;-><init>(Landroidx/media3/exoplayer/hls/playlist/a;Landroidx/media3/exoplayer/hls/playlist/a$a;)V

    invoke-virtual {v5, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v4, Landroidx/media3/exoplayer/hls/playlist/d;->d:Ljava/util/List;

    invoke-direct {v0, v4}, Landroidx/media3/exoplayer/hls/playlist/a;->H(Ljava/util/List;)V

    new-instance v4, Lg2/i;

    iget-wide v8, v1, Landroidx/media3/exoplayer/upstream/q;->a:J

    iget-object v10, v1, Landroidx/media3/exoplayer/upstream/q;->b:Lw1/h;

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/q;->d()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/q;->b()Ljava/util/Map;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/q;->a()J

    move-result-wide v17

    move-object v7, v4

    move-wide/from16 v13, p2

    move-wide/from16 v15, p4

    invoke-direct/range {v7 .. v18}, Lg2/i;-><init>(JLw1/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object v5, v0, Landroidx/media3/exoplayer/hls/playlist/a;->d:Ljava/util/HashMap;

    iget-object v7, v0, Landroidx/media3/exoplayer/hls/playlist/a;->l:Landroid/net/Uri;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/hls/playlist/a$c;

    if-eqz v3, :cond_1

    check-cast v2, Landroidx/media3/exoplayer/hls/playlist/c;

    invoke-static {v5, v2, v4}, Landroidx/media3/exoplayer/hls/playlist/a$c;->c(Landroidx/media3/exoplayer/hls/playlist/a$c;Landroidx/media3/exoplayer/hls/playlist/c;Lg2/i;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v6}, Landroidx/media3/exoplayer/hls/playlist/a$c;->r(Z)V

    :goto_1
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/playlist/a;->c:Landroidx/media3/exoplayer/upstream/m;

    iget-wide v5, v1, Landroidx/media3/exoplayer/upstream/q;->a:J

    invoke-interface {v2, v5, v6}, Landroidx/media3/exoplayer/upstream/m;->b(J)V

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/a;->g:Landroidx/media3/exoplayer/source/s$a;

    const/4 v2, 0x4

    invoke-virtual {v1, v4, v2}, Landroidx/media3/exoplayer/source/s$a;->v(Lg2/i;I)V

    return-void
.end method

.method public U(Landroidx/media3/exoplayer/upstream/q;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$c;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    new-instance v15, Lg2/i;

    iget-wide v4, v1, Landroidx/media3/exoplayer/upstream/q;->a:J

    iget-object v6, v1, Landroidx/media3/exoplayer/upstream/q;->b:Lw1/h;

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/q;->d()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/q;->b()Ljava/util/Map;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/q;->a()J

    move-result-wide v13

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lg2/i;-><init>(JLw1/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v3, Lg2/j;

    iget v4, v1, Landroidx/media3/exoplayer/upstream/q;->c:I

    invoke-direct {v3, v4}, Lg2/j;-><init>(I)V

    iget-object v4, v0, Landroidx/media3/exoplayer/hls/playlist/a;->c:Landroidx/media3/exoplayer/upstream/m;

    new-instance v5, Landroidx/media3/exoplayer/upstream/m$c;

    move/from16 v6, p7

    invoke-direct {v5, v15, v3, v2, v6}, Landroidx/media3/exoplayer/upstream/m$c;-><init>(Lg2/i;Lg2/j;Ljava/io/IOException;I)V

    invoke-interface {v4, v5}, Landroidx/media3/exoplayer/upstream/m;->c(Landroidx/media3/exoplayer/upstream/m$c;)J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v3, v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    iget-object v7, v0, Landroidx/media3/exoplayer/hls/playlist/a;->g:Landroidx/media3/exoplayer/source/s$a;

    iget v8, v1, Landroidx/media3/exoplayer/upstream/q;->c:I

    invoke-virtual {v7, v15, v8, v2, v5}, Landroidx/media3/exoplayer/source/s$a;->z(Lg2/i;ILjava/io/IOException;Z)V

    if-eqz v5, :cond_1

    iget-object v2, v0, Landroidx/media3/exoplayer/hls/playlist/a;->c:Landroidx/media3/exoplayer/upstream/m;

    iget-wide v7, v1, Landroidx/media3/exoplayer/upstream/q;->a:J

    invoke-interface {v2, v7, v8}, Landroidx/media3/exoplayer/upstream/m;->b(J)V

    :cond_1
    if-eqz v5, :cond_2

    sget-object v1, Landroidx/media3/exoplayer/upstream/Loader;->g:Landroidx/media3/exoplayer/upstream/Loader$c;

    goto :goto_1

    :cond_2
    invoke-static {v6, v3, v4}, Landroidx/media3/exoplayer/upstream/Loader;->g(ZJ)Landroidx/media3/exoplayer/upstream/Loader$c;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public V(Landroidx/media3/exoplayer/upstream/q;JJI)V
    .locals 21

    move-object/from16 v0, p1

    move/from16 v1, p6

    if-nez v1, :cond_0

    new-instance v8, Lg2/i;

    iget-wide v3, v0, Landroidx/media3/exoplayer/upstream/q;->a:J

    iget-object v5, v0, Landroidx/media3/exoplayer/upstream/q;->b:Lw1/h;

    move-object v2, v8

    move-wide/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lg2/i;-><init>(JLw1/h;J)V

    :goto_0
    move-object/from16 v2, p0

    goto :goto_1

    :cond_0
    new-instance v8, Lg2/i;

    iget-wide v10, v0, Landroidx/media3/exoplayer/upstream/q;->a:J

    iget-object v12, v0, Landroidx/media3/exoplayer/upstream/q;->b:Lw1/h;

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/q;->d()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/q;->b()Ljava/util/Map;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/q;->a()J

    move-result-wide v19

    move-object v9, v8

    move-wide/from16 v15, p2

    move-wide/from16 v17, p4

    invoke-direct/range {v9 .. v20}, Lg2/i;-><init>(JLw1/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    goto :goto_0

    :goto_1
    iget-object v3, v2, Landroidx/media3/exoplayer/hls/playlist/a;->g:Landroidx/media3/exoplayer/source/s$a;

    iget v0, v0, Landroidx/media3/exoplayer/upstream/q;->c:I

    invoke-virtual {v3, v8, v0, v1}, Landroidx/media3/exoplayer/source/s$a;->B(Lg2/i;II)V

    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/hls/playlist/a$c;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/hls/playlist/a$c;->u()V

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->o:J

    return-wide v0
.end method

.method public c()Landroidx/media3/exoplayer/hls/playlist/d;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->k:Landroidx/media3/exoplayer/hls/playlist/d;

    return-object v0
.end method

.method public d(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/hls/playlist/a$c;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/hls/playlist/a$c;->r(Z)V

    return-void
.end method

.method public e(Landroid/net/Uri;)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/hls/playlist/a$c;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/hls/playlist/a$c;->m()Z

    move-result p1

    return p1
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->n:Z

    return v0
.end method

.method public g(Landroid/net/Uri;J)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/hls/playlist/a$c;

    if-eqz p1, :cond_0

    invoke-static {p1, p2, p3}, Landroidx/media3/exoplayer/hls/playlist/a$c;->b(Landroidx/media3/exoplayer/hls/playlist/a$c;J)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->h:Landroidx/media3/exoplayer/upstream/Loader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->maybeThrowError()V

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->l:Landroid/net/Uri;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/hls/playlist/a;->a(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public i(Landroid/net/Uri;Z)Landroidx/media3/exoplayer/hls/playlist/c;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/hls/playlist/a$c;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/playlist/a$c;->j()Landroidx/media3/exoplayer/hls/playlist/c;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/hls/playlist/a;->Q(Landroid/net/Uri;)V

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/hls/playlist/a;->O(Landroid/net/Uri;)V

    :cond_0
    return-object v0
.end method

.method public j(Landroid/net/Uri;Landroidx/media3/exoplayer/source/s$a;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$c;)V
    .locals 3

    invoke-static {}, Landroidx/media3/common/util/a1;->A()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->i:Landroid/os/Handler;

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/playlist/a;->g:Landroidx/media3/exoplayer/source/s$a;

    iput-object p3, p0, Landroidx/media3/exoplayer/hls/playlist/a;->j:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$c;

    new-instance p2, Lw1/h$b;

    invoke-direct {p2}, Lw1/h$b;-><init>()V

    invoke-virtual {p2, p1}, Lw1/h$b;->i(Landroid/net/Uri;)Lw1/h$b;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lw1/h$b;->b(I)Lw1/h$b;

    move-result-object p1

    invoke-virtual {p1}, Lw1/h$b;->a()Lw1/h;

    move-result-object p1

    new-instance p3, Landroidx/media3/exoplayer/upstream/q;

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->a:Landroidx/media3/exoplayer/hls/f;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/hls/f;->a(I)Landroidx/media3/datasource/a;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/playlist/a;->b:Lc2/e;

    invoke-interface {v2}, Lc2/e;->a()Landroidx/media3/exoplayer/upstream/q$a;

    move-result-object v2

    invoke-direct {p3, v0, p1, v1, v2}, Landroidx/media3/exoplayer/upstream/q;-><init>(Landroidx/media3/datasource/a;Lw1/h;ILandroidx/media3/exoplayer/upstream/q$a;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/a;->h:Landroidx/media3/exoplayer/upstream/Loader;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Landroidx/media3/common/util/a;->g(Z)V

    new-instance p1, Landroidx/media3/exoplayer/upstream/Loader;

    const-string p2, "DefaultHlsPlaylistTracker:MultivariantPlaylist"

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/a;->h:Landroidx/media3/exoplayer/upstream/Loader;

    iget-object p2, p0, Landroidx/media3/exoplayer/hls/playlist/a;->c:Landroidx/media3/exoplayer/upstream/m;

    iget v0, p3, Landroidx/media3/exoplayer/upstream/q;->c:I

    invoke-interface {p2, v0}, Landroidx/media3/exoplayer/upstream/m;->a(I)I

    move-result p2

    invoke-virtual {p1, p3, p0, p2}, Landroidx/media3/exoplayer/upstream/Loader;->m(Landroidx/media3/exoplayer/upstream/Loader$d;Landroidx/media3/exoplayer/upstream/Loader$b;I)J

    return-void
.end method

.method public bridge synthetic k(Landroidx/media3/exoplayer/upstream/Loader$d;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$c;
    .locals 0

    check-cast p1, Landroidx/media3/exoplayer/upstream/q;

    invoke-virtual/range {p0 .. p7}, Landroidx/media3/exoplayer/hls/playlist/a;->U(Landroidx/media3/exoplayer/upstream/q;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$c;

    move-result-object p1

    return-object p1
.end method

.method public l(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/hls/playlist/a$c;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/hls/playlist/a$c;->B(Z)V

    :cond_0
    return-void
.end method

.method public m(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$b;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public n(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$b;)V
    .locals 1

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic o(Landroidx/media3/exoplayer/upstream/Loader$d;JJI)V
    .locals 0

    check-cast p1, Landroidx/media3/exoplayer/upstream/q;

    invoke-virtual/range {p0 .. p6}, Landroidx/media3/exoplayer/hls/playlist/a;->V(Landroidx/media3/exoplayer/upstream/q;JJI)V

    return-void
.end method

.method public bridge synthetic p(Landroidx/media3/exoplayer/upstream/Loader$d;JJ)V
    .locals 0

    check-cast p1, Landroidx/media3/exoplayer/upstream/q;

    invoke-virtual/range {p0 .. p5}, Landroidx/media3/exoplayer/hls/playlist/a;->T(Landroidx/media3/exoplayer/upstream/q;JJ)V

    return-void
.end method

.method public bridge synthetic q(Landroidx/media3/exoplayer/upstream/Loader$d;JJZ)V
    .locals 0

    check-cast p1, Landroidx/media3/exoplayer/upstream/q;

    invoke-virtual/range {p0 .. p6}, Landroidx/media3/exoplayer/hls/playlist/a;->S(Landroidx/media3/exoplayer/upstream/q;JJZ)V

    return-void
.end method

.method public stop()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->l:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->m:Landroidx/media3/exoplayer/hls/playlist/c;

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->k:Landroidx/media3/exoplayer/hls/playlist/d;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Landroidx/media3/exoplayer/hls/playlist/a;->o:J

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/a;->h:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/upstream/Loader;->k()V

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->h:Landroidx/media3/exoplayer/upstream/Loader;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/a;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/hls/playlist/a$c;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/hls/playlist/a$c;->A()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/a;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->i:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
