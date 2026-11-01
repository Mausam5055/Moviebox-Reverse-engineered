.class public Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/drm/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$f;,
        Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$g;,
        Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$c;,
        Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$e;,
        Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MissingSchemeDataException;,
        Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$d;,
        Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;
    }
.end annotation


# instance fields
.field private final b:Ljava/util/UUID;

.field private final c:Landroidx/media3/exoplayer/drm/b0$c;

.field private final d:Landroidx/media3/exoplayer/drm/m0;

.field private final e:Ljava/util/HashMap;

.field private final f:Z

.field private final g:[I

.field private final h:Z

.field private final i:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$f;

.field private final j:Landroidx/media3/exoplayer/upstream/m;

.field private final k:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$g;

.field private final l:J

.field private final m:Ljava/util/List;

.field private final n:Ljava/util/Set;

.field private final o:Ljava/util/Set;

.field private p:I

.field private q:Landroidx/media3/exoplayer/drm/b0;

.field private r:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

.field private s:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

.field private t:Landroid/os/Looper;

.field private u:Landroid/os/Handler;

.field private v:I

.field private w:[B

.field private x:Ly1/f4;

.field volatile y:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$d;


# direct methods
.method private constructor <init>(Ljava/util/UUID;Landroidx/media3/exoplayer/drm/b0$c;Landroidx/media3/exoplayer/drm/m0;Ljava/util/HashMap;Z[IZLandroidx/media3/exoplayer/upstream/m;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidx/media3/common/h;->b:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Use C.CLEARKEY_UUID instead"

    invoke-static {v0, v1}, Landroidx/media3/common/util/a;->b(ZLjava/lang/Object;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->b:Ljava/util/UUID;

    iput-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->c:Landroidx/media3/exoplayer/drm/b0$c;

    iput-object p3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->d:Landroidx/media3/exoplayer/drm/m0;

    iput-object p4, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->e:Ljava/util/HashMap;

    iput-boolean p5, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->f:Z

    iput-object p6, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->g:[I

    iput-boolean p7, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->h:Z

    iput-object p8, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->j:Landroidx/media3/exoplayer/upstream/m;

    new-instance p1, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$f;

    invoke-direct {p1, p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$f;-><init>(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->i:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$f;

    new-instance p1, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$g;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$g;-><init>(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$a;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->k:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$g;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->v:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->m:Ljava/util/List;

    invoke-static {}, Lcom/google/common/collect/Sets;->h()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->n:Ljava/util/Set;

    invoke-static {}, Lcom/google/common/collect/Sets;->h()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->o:Ljava/util/Set;

    iput-wide p9, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->l:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/UUID;Landroidx/media3/exoplayer/drm/b0$c;Landroidx/media3/exoplayer/drm/m0;Ljava/util/HashMap;Z[IZLandroidx/media3/exoplayer/upstream/m;JLandroidx/media3/exoplayer/drm/DefaultDrmSessionManager$a;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Landroidx/media3/exoplayer/drm/b0$c;Landroidx/media3/exoplayer/drm/m0;Ljava/util/HashMap;Z[IZLandroidx/media3/exoplayer/upstream/m;J)V

    return-void
.end method

.method private A(Landroid/os/Looper;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->y:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$d;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$d;

    invoke-direct {v0, p0, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$d;-><init>(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->y:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$d;

    :cond_0
    return-void
.end method

.method private B()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->q:Landroidx/media3/exoplayer/drm/b0;

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->p:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->n:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->q:Landroidx/media3/exoplayer/drm/b0;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/drm/b0;

    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/b0;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->q:Landroidx/media3/exoplayer/drm/b0;

    :cond_0
    return-void
.end method

.method private C()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->o:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/r4;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/drm/DrmSession;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/drm/DrmSession;->f(Landroidx/media3/exoplayer/drm/r$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private D()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->n:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/r4;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$e;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$e;->release()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private F(Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/r$a;)V
    .locals 4

    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/drm/DrmSession;->f(Landroidx/media3/exoplayer/drm/r$a;)V

    iget-wide v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->l:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/drm/DrmSession;->f(Landroidx/media3/exoplayer/drm/r$a;)V

    :cond_0
    return-void
.end method

.method private G(Z)V
    .locals 2

    const-string v0, "DefaultDrmSessionMgr"

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->t:Landroid/os/Looper;

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v1, "DefaultDrmSessionManager accessed before setPlayer(), possibly on the wrong thread."

    invoke-static {v0, v1, p1}, Landroidx/media3/common/util/u;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->t:Landroid/os/Looper;

    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq p1, v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultDrmSessionManager accessed on the wrong thread.\nCurrent thread: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nExpected thread: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->t:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, p1, v1}, Landroidx/media3/common/util/u;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic e(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroidx/media3/exoplayer/drm/DefaultDrmSession;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->s:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    return-object p0
.end method

.method static synthetic f(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Landroidx/media3/exoplayer/drm/DefaultDrmSession;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->s:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    return-object p1
.end method

.method static synthetic g(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$f;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->i:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$f;

    return-object p0
.end method

.method static synthetic h(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->B()V

    return-void
.end method

.method static synthetic i(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->n:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic j(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->t:Landroid/os/Looper;

    return-object p0
.end method

.method static synthetic k(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;Landroid/os/Looper;Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/common/r;Z)Landroidx/media3/exoplayer/drm/DrmSession;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->s(Landroid/os/Looper;Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/common/r;Z)Landroidx/media3/exoplayer/drm/DrmSession;

    move-result-object p0

    return-object p0
.end method

.method static synthetic l(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->m:Ljava/util/List;

    return-object p0
.end method

.method static synthetic m(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->l:J

    return-wide v0
.end method

.method static synthetic n(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->o:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic o(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->u:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic p(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->p:I

    return p0
.end method

.method static synthetic q(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroidx/media3/exoplayer/drm/DefaultDrmSession;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->r:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    return-object p0
.end method

.method static synthetic r(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Landroidx/media3/exoplayer/drm/DefaultDrmSession;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->r:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    return-object p1
.end method

.method private s(Landroid/os/Looper;Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/common/r;Z)Landroidx/media3/exoplayer/drm/DrmSession;
    .locals 4

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->A(Landroid/os/Looper;)V

    iget-object p1, p3, Landroidx/media3/common/r;->s:Landroidx/media3/common/DrmInitData;

    if-nez p1, :cond_0

    iget-object p1, p3, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/common/y;->k(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, p4}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->z(IZ)Landroidx/media3/exoplayer/drm/DrmSession;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->w:[B

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p3, :cond_2

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/DrmInitData;

    iget-object p3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->b:Ljava/util/UUID;

    invoke-static {p1, p3, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->x(Landroidx/media3/common/DrmInitData;Ljava/util/UUID;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    new-instance p1, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MissingSchemeDataException;

    iget-object p3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->b:Ljava/util/UUID;

    invoke-direct {p1, p3, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MissingSchemeDataException;-><init>(Ljava/util/UUID;Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$a;)V

    const-string p3, "DefaultDrmSessionMgr"

    const-string p4, "DRM error"

    invoke-static {p3, p4, p1}, Landroidx/media3/common/util/u;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/drm/r$a;->l(Ljava/lang/Exception;)V

    :cond_1
    new-instance p2, Landroidx/media3/exoplayer/drm/z;

    new-instance p3, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    const/16 p4, 0x1773

    invoke-direct {p3, p1, p4}, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;I)V

    invoke-direct {p2, p3}, Landroidx/media3/exoplayer/drm/z;-><init>(Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;)V

    return-object p2

    :cond_2
    move-object p1, v1

    :cond_3
    iget-boolean p3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->f:Z

    if-nez p3, :cond_4

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->s:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    goto :goto_0

    :cond_4
    iget-object p3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->m:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    iget-object v3, v2, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->a:Ljava/util/List;

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v1, v2

    :cond_6
    :goto_0
    if-nez v1, :cond_8

    invoke-direct {p0, p1, v0, p2, p4}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->w(Ljava/util/List;ZLandroidx/media3/exoplayer/drm/r$a;Z)Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    move-result-object v1

    iget-boolean p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->f:Z

    if-nez p1, :cond_7

    iput-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->s:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    :cond_7
    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->m:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    invoke-virtual {v1, p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->e(Landroidx/media3/exoplayer/drm/r$a;)V

    :goto_1
    return-object v1
.end method

.method private static t(Landroidx/media3/exoplayer/drm/DrmSession;)Z
    .locals 3

    invoke-interface {p0}, Landroidx/media3/exoplayer/drm/DrmSession;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Landroidx/media3/exoplayer/drm/DrmSession;->getError()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of v0, p0, Landroid/media/ResourceBusyException;

    if-nez v0, :cond_1

    invoke-static {p0}, Landroidx/media3/exoplayer/drm/x;->e(Ljava/lang/Throwable;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method private u(Landroidx/media3/common/DrmInitData;)Z
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->w:[B

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->b:Ljava/util/UUID;

    invoke-static {p1, v0, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->x(Landroidx/media3/common/DrmInitData;Ljava/util/UUID;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v0, p1, Landroidx/media3/common/DrmInitData;->schemeDataCount:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p1, v2}, Landroidx/media3/common/DrmInitData;->get(I)Landroidx/media3/common/DrmInitData$SchemeData;

    move-result-object v0

    sget-object v3, Landroidx/media3/common/h;->b:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Landroidx/media3/common/DrmInitData$SchemeData;->matches(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DrmInitData only contains common PSSH SchemeData. Assuming support for: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->b:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "DefaultDrmSessionMgr"

    invoke-static {v3, v0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    iget-object p1, p1, Landroidx/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    if-eqz p1, :cond_8

    const-string v0, "cenc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const-string v0, "cbcs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget p1, Landroidx/media3/common/util/a1;->a:I

    const/16 v0, 0x19

    if-lt p1, v0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1

    :cond_5
    const-string v0, "cbc1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "cens"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    return v1

    :cond_7
    :goto_2
    return v2

    :cond_8
    :goto_3
    return v1
.end method

.method private v(Ljava/util/List;ZLandroidx/media3/exoplayer/drm/r$a;)Landroidx/media3/exoplayer/drm/DefaultDrmSession;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->q:Landroidx/media3/exoplayer/drm/b0;

    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->h:Z

    or-int v9, v1, p2

    new-instance v1, Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    iget-object v3, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->b:Ljava/util/UUID;

    iget-object v4, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->q:Landroidx/media3/exoplayer/drm/b0;

    iget-object v5, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->i:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$f;

    iget-object v6, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->k:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$g;

    iget v8, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->v:I

    iget-object v11, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->w:[B

    iget-object v12, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->e:Ljava/util/HashMap;

    iget-object v13, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->d:Landroidx/media3/exoplayer/drm/m0;

    iget-object v2, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->t:Landroid/os/Looper;

    invoke-static {v2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/os/Looper;

    iget-object v15, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->j:Landroidx/media3/exoplayer/upstream/m;

    iget-object v2, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->x:Ly1/f4;

    invoke-static {v2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Ly1/f4;

    move-object v2, v1

    move-object/from16 v7, p1

    move/from16 v10, p2

    invoke-direct/range {v2 .. v16}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;-><init>(Ljava/util/UUID;Landroidx/media3/exoplayer/drm/b0;Landroidx/media3/exoplayer/drm/DefaultDrmSession$a;Landroidx/media3/exoplayer/drm/DefaultDrmSession$b;Ljava/util/List;IZZ[BLjava/util/HashMap;Landroidx/media3/exoplayer/drm/m0;Landroid/os/Looper;Landroidx/media3/exoplayer/upstream/m;Ly1/f4;)V

    move-object/from16 v2, p3

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->e(Landroidx/media3/exoplayer/drm/r$a;)V

    iget-wide v2, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->l:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->e(Landroidx/media3/exoplayer/drm/r$a;)V

    :cond_0
    return-object v1
.end method

.method private w(Ljava/util/List;ZLandroidx/media3/exoplayer/drm/r$a;Z)Landroidx/media3/exoplayer/drm/DefaultDrmSession;
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->v(Ljava/util/List;ZLandroidx/media3/exoplayer/drm/r$a;)Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->t(Landroidx/media3/exoplayer/drm/DrmSession;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->o:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->C()V

    invoke-direct {p0, v0, p3}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->F(Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/r$a;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->v(Ljava/util/List;ZLandroidx/media3/exoplayer/drm/r$a;)Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->t(Landroidx/media3/exoplayer/drm/DrmSession;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p4, :cond_2

    iget-object p4, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->n:Ljava/util/Set;

    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_2

    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->D()V

    iget-object p4, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->o:Ljava/util/Set;

    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_1

    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->C()V

    :cond_1
    invoke-direct {p0, v0, p3}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->F(Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/r$a;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->v(Ljava/util/List;ZLandroidx/media3/exoplayer/drm/r$a;)Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private static x(Landroidx/media3/common/DrmInitData;Ljava/util/UUID;Z)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Landroidx/media3/common/DrmInitData;->schemeDataCount:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroidx/media3/common/DrmInitData;->schemeDataCount:I

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Landroidx/media3/common/DrmInitData;->get(I)Landroidx/media3/common/DrmInitData$SchemeData;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/media3/common/DrmInitData$SchemeData;->matches(Ljava/util/UUID;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroidx/media3/common/h;->c:Ljava/util/UUID;

    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Landroidx/media3/common/h;->b:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Landroidx/media3/common/DrmInitData$SchemeData;->matches(Ljava/util/UUID;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget-object v3, v2, Landroidx/media3/common/DrmInitData$SchemeData;->data:[B

    if-nez v3, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private declared-synchronized y(Landroid/os/Looper;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->t:Landroid/os/Looper;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->t:Landroid/os/Looper;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->u:Landroid/os/Handler;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroidx/media3/common/util/a;->g(Z)V

    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->u:Landroid/os/Handler;

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private z(IZ)Landroidx/media3/exoplayer/drm/DrmSession;
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->q:Landroidx/media3/exoplayer/drm/b0;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/drm/b0;

    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/b0;->a()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    sget-boolean v1, Landroidx/media3/exoplayer/drm/c0;->d:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->g:[I

    invoke-static {v1, p1}, Landroidx/media3/common/util/a1;->O0([II)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/b0;->a()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->r:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    if-nez p1, :cond_2

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-direct {p0, p1, v0, v3, p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->w(Ljava/util/List;ZLandroidx/media3/exoplayer/drm/r$a;Z)Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->m:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->r:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v3}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->e(Landroidx/media3/exoplayer/drm/r$a;)V

    :goto_0
    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->r:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    return-object p1

    :cond_3
    :goto_1
    return-object v3
.end method


# virtual methods
.method public E(I[B)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iput p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->v:I

    iput-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->w:[B

    return-void
.end method

.method public a(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/common/r;)Landroidx/media3/exoplayer/drm/DrmSession;
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->G(Z)V

    iget v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->p:I

    const/4 v2, 0x1

    if-lez v1, :cond_0

    move v0, v2

    :cond_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->t:Landroid/os/Looper;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->t:Landroid/os/Looper;

    invoke-direct {p0, v0, p1, p2, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->s(Landroid/os/Looper;Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/common/r;Z)Landroidx/media3/exoplayer/drm/DrmSession;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroidx/media3/common/r;)I
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->G(Z)V

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->q:Landroidx/media3/exoplayer/drm/b0;

    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/drm/b0;

    invoke-interface {v1}, Landroidx/media3/exoplayer/drm/b0;->a()I

    move-result v1

    iget-object v2, p1, Landroidx/media3/common/r;->s:Landroidx/media3/common/DrmInitData;

    if-nez v2, :cond_1

    iget-object p1, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/common/y;->k(Ljava/lang/String;)I

    move-result p1

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->g:[I

    invoke-static {v2, p1}, Landroidx/media3/common/util/a1;->O0([II)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    move v0, v1

    :cond_0
    return v0

    :cond_1
    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->u(Landroidx/media3/common/DrmInitData;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public c(Landroid/os/Looper;Ly1/f4;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->y(Landroid/os/Looper;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->x:Ly1/f4;

    return-void
.end method

.method public d(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/common/r;)Landroidx/media3/exoplayer/drm/t$b;
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->p:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->t:Landroid/os/Looper;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$e;

    invoke-direct {v0, p0, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$e;-><init>(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;Landroidx/media3/exoplayer/drm/r$a;)V

    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$e;->c(Landroidx/media3/common/r;)V

    return-object v0
.end method

.method public final prepare()V
    .locals 6

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->G(Z)V

    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->p:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->p:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->q:Landroidx/media3/exoplayer/drm/b0;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->c:Landroidx/media3/exoplayer/drm/b0$c;

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->b:Ljava/util/UUID;

    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/drm/b0$c;->a(Ljava/util/UUID;)Landroidx/media3/exoplayer/drm/b0;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->q:Landroidx/media3/exoplayer/drm/b0;

    new-instance v2, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$c;

    invoke-direct {v2, p0, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$c;-><init>(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$a;)V

    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/drm/b0;->f(Landroidx/media3/exoplayer/drm/b0$b;)V

    goto :goto_1

    :cond_1
    iget-wide v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->l:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->m:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->e(Landroidx/media3/exoplayer/drm/r$a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final release()V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->G(Z)V

    iget v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->p:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->p:I

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->l:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->m:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->f(Landroidx/media3/exoplayer/drm/r$a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->D()V

    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->B()V

    return-void
.end method
