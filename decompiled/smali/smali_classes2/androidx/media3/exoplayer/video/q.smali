.class public final Landroidx/media3/exoplayer/video/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/l0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/q$b;,
        Landroidx/media3/exoplayer/video/q$c;,
        Landroidx/media3/exoplayer/video/q$d;,
        Landroidx/media3/exoplayer/video/q$e;,
        Landroidx/media3/exoplayer/video/q$f;
    }
.end annotation


# static fields
.field private static final y:Ljava/util/concurrent/Executor;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroidx/media3/common/util/o0;

.field private final c:Landroidx/media3/common/c0$a;

.field private final d:Landroid/util/SparseArray;

.field private final e:Ljava/util/List;

.field private final f:Landroidx/media3/common/j0;

.field private final g:Landroidx/media3/exoplayer/video/VideoSink;

.field private final h:Landroidx/media3/exoplayer/video/VideoSink$b;

.field private final i:Landroidx/media3/common/util/i;

.field private final j:Ljava/util/concurrent/CopyOnWriteArraySet;

.field private final k:Z

.field private l:Landroidx/media3/common/r;

.field private m:Landroidx/media3/common/util/p;

.field private n:J

.field private o:Landroid/util/Pair;

.field private p:I

.field private q:I

.field private r:Landroidx/media3/exoplayer/w3$a;

.field private s:J

.field private t:J

.field private u:Z

.field private v:J

.field private w:I

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/media3/exoplayer/video/p;

    invoke-direct {v0}, Landroidx/media3/exoplayer/video/p;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/video/q;->y:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>(Landroidx/media3/exoplayer/video/q$b;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/media3/exoplayer/video/q$b;->a(Landroidx/media3/exoplayer/video/q$b;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/q;->a:Landroid/content/Context;

    new-instance v0, Landroidx/media3/common/util/o0;

    invoke-direct {v0}, Landroidx/media3/common/util/o0;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/q;->b:Landroidx/media3/common/util/o0;

    invoke-static {p1}, Landroidx/media3/exoplayer/video/q$b;->b(Landroidx/media3/exoplayer/video/q$b;)Landroidx/media3/common/c0$a;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/c0$a;

    iput-object v0, p0, Landroidx/media3/exoplayer/video/q;->c:Landroidx/media3/common/c0$a;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/q;->d:Landroid/util/SparseArray;

    invoke-static {p1}, Landroidx/media3/exoplayer/video/q$b;->c(Landroidx/media3/exoplayer/video/q$b;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/q;->e:Ljava/util/List;

    invoke-static {p1}, Landroidx/media3/exoplayer/video/q$b;->d(Landroidx/media3/exoplayer/video/q$b;)Landroidx/media3/common/j0;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/q;->f:Landroidx/media3/common/j0;

    invoke-static {p1}, Landroidx/media3/exoplayer/video/q$b;->e(Landroidx/media3/exoplayer/video/q$b;)Landroidx/media3/common/util/i;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/q;->i:Landroidx/media3/common/util/i;

    new-instance v1, Landroidx/media3/exoplayer/video/e;

    invoke-static {p1}, Landroidx/media3/exoplayer/video/q$b;->f(Landroidx/media3/exoplayer/video/q$b;)Landroidx/media3/exoplayer/video/u;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroidx/media3/exoplayer/video/e;-><init>(Landroidx/media3/exoplayer/video/u;Landroidx/media3/common/util/i;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/video/q;->g:Landroidx/media3/exoplayer/video/VideoSink;

    new-instance v0, Landroidx/media3/exoplayer/video/q$a;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/video/q$a;-><init>(Landroidx/media3/exoplayer/video/q;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/q;->h:Landroidx/media3/exoplayer/video/VideoSink$b;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/q;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Landroidx/media3/exoplayer/video/q$b;->g(Landroidx/media3/exoplayer/video/q$b;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/q;->k:Z

    new-instance p1, Landroidx/media3/common/r$b;

    invoke-direct {p1}, Landroidx/media3/common/r$b;-><init>()V

    invoke-virtual {p1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/video/q;->l:Landroidx/media3/common/r;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/q;->s:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/q;->t:J

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/exoplayer/video/q;->w:I

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/video/q;->q:I

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/video/q$b;Landroidx/media3/exoplayer/video/q$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/q;-><init>(Landroidx/media3/exoplayer/video/q$b;)V

    return-void
.end method

.method private static A(Landroidx/media3/common/i;)Landroidx/media3/common/i;
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/common/i;->g()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Landroidx/media3/common/i;->h:Landroidx/media3/common/i;

    return-object p0
.end method

.method private C()Z
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/video/q;->p:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/q;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q;->g:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private D()Z
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/video/q;->q:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private E(Z)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q;->g:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz p1, :cond_0

    iget p1, p0, Landroidx/media3/exoplayer/video/q;->p:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->j(Z)Z

    move-result p1

    return p1
.end method

.method private synthetic F()V
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/video/q;->p:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/video/q;->p:I

    return-void
.end method

.method private static synthetic G(Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method private H(Landroid/view/Surface;II)V
    .locals 0

    return-void
.end method

.method private I(Landroidx/media3/common/r;I)Landroidx/media3/common/k0;
    .locals 11

    const/4 v0, 0x0

    if-nez p2, :cond_3

    iget p2, p0, Landroidx/media3/exoplayer/video/q;->q:I

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Landroidx/media3/common/util/a;->g(Z)V

    iget-object p2, p1, Landroidx/media3/common/r;->C:Landroidx/media3/common/i;

    invoke-static {p2}, Landroidx/media3/exoplayer/video/q;->A(Landroidx/media3/common/i;)Landroidx/media3/common/i;

    move-result-object p2

    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/q;->k:Z

    if-nez v1, :cond_2

    iget v1, p2, Landroidx/media3/common/i;->c:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    sget v1, Landroidx/media3/common/util/a1;->a:I

    const/16 v2, 0x22

    if-ge v1, v2, :cond_1

    invoke-virtual {p2}, Landroidx/media3/common/i;->a()Landroidx/media3/common/i$b;

    move-result-object p2

    const/4 v1, 0x6

    invoke-virtual {p2, v1}, Landroidx/media3/common/i$b;->e(I)Landroidx/media3/common/i$b;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/common/i$b;->a()Landroidx/media3/common/i;

    move-result-object p2

    :cond_1
    :goto_1
    move-object v3, p2

    goto :goto_2

    :cond_2
    sget-object p2, Landroidx/media3/common/i;->h:Landroidx/media3/common/i;

    goto :goto_1

    :goto_2
    iget-object p2, p0, Landroidx/media3/exoplayer/video/q;->i:Landroidx/media3/common/util/i;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-interface {p2, v1, v0}, Landroidx/media3/common/util/i;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/p;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/exoplayer/video/q;->m:Landroidx/media3/common/util/p;

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/video/q;->c:Landroidx/media3/common/c0$a;

    iget-object v2, p0, Landroidx/media3/exoplayer/video/q;->a:Landroid/content/Context;

    sget-object v4, Landroidx/media3/common/l;->a:Landroidx/media3/common/l;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Landroidx/media3/exoplayer/video/n;

    invoke-direct {v6, p2}, Landroidx/media3/exoplayer/video/n;-><init>(Landroidx/media3/common/util/p;)V

    iget-object v7, p0, Landroidx/media3/exoplayer/video/q;->f:Landroidx/media3/common/j0;

    iget-object v8, p0, Landroidx/media3/exoplayer/video/q;->e:Ljava/util/List;

    const-wide/16 v9, 0x0

    move-object v5, p0

    invoke-interface/range {v1 .. v10}, Landroidx/media3/common/c0$a;->b(Landroid/content/Context;Landroidx/media3/common/i;Landroidx/media3/common/l;Landroidx/media3/common/l0;Ljava/util/concurrent/Executor;Landroidx/media3/common/j0;Ljava/util/List;J)Landroidx/media3/common/c0;
    :try_end_0
    .catch Landroidx/media3/common/VideoFrameProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    throw v0

    :catch_0
    move-exception p2

    new-instance v0, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;

    invoke-direct {v0, p2, p1}, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;-><init>(Ljava/lang/Throwable;Landroidx/media3/common/r;)V

    throw v0

    :cond_3
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/q;->D()Z

    move-result p2

    if-nez p2, :cond_4

    return-object v0

    :cond_4
    :try_start_1
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Landroidx/media3/common/VideoFrameProcessingException; {:try_start_1 .. :try_end_1} :catch_1

    throw v0

    :catch_1
    move-exception p2

    new-instance v0, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;

    invoke-direct {v0, p2, p1}, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;-><init>(Ljava/lang/Throwable;Landroidx/media3/common/r;)V

    throw v0
.end method

.method private K(JJ)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q;->g:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/VideoSink;->render(JJ)V

    return-void
.end method

.method private L(J)V
    .locals 3

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/q;->v:J

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q;->g:Landroidx/media3/exoplayer/video/VideoSink;

    iget-wide v1, p0, Landroidx/media3/exoplayer/video/q;->n:J

    invoke-interface {v0, v1, v2, p1, p2}, Landroidx/media3/exoplayer/video/VideoSink;->f(JJ)V

    return-void
.end method

.method private N(F)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q;->g:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->a(F)V

    return-void
.end method

.method private P(Landroidx/media3/exoplayer/video/t;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q;->g:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->d(Landroidx/media3/exoplayer/video/t;)V

    return-void
.end method

.method private Q()Z
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/video/q;->w:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v1, p0, Landroidx/media3/exoplayer/video/q;->x:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic a(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/video/q;->G(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b(Landroidx/media3/exoplayer/video/q;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/video/q;->F()V

    return-void
.end method

.method static synthetic c()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/video/q;->y:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic d(Landroidx/media3/exoplayer/video/q;)Landroidx/media3/exoplayer/video/VideoSink;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/q;->g:Landroidx/media3/exoplayer/video/VideoSink;

    return-object p0
.end method

.method static synthetic e(Landroidx/media3/exoplayer/video/q;Landroidx/media3/common/r;I)Landroidx/media3/common/k0;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/video/q;->I(Landroidx/media3/common/r;I)Landroidx/media3/common/k0;

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic f(Landroidx/media3/exoplayer/video/q;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/q;->z(Z)V

    return-void
.end method

.method static synthetic g(Landroidx/media3/exoplayer/video/q;Z)Z
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/q;->E(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic h(Landroidx/media3/exoplayer/video/q;)J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/q;->t:J

    return-wide v0
.end method

.method static synthetic i(Landroidx/media3/exoplayer/video/q;J)J
    .locals 0

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/q;->t:J

    return-wide p1
.end method

.method static synthetic j(Landroidx/media3/exoplayer/video/q;)J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/q;->s:J

    return-wide v0
.end method

.method static synthetic k(Landroidx/media3/exoplayer/video/q;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/q;->u:Z

    return p1
.end method

.method static synthetic l(Landroidx/media3/exoplayer/video/q;)Z
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/video/q;->C()Z

    move-result p0

    return p0
.end method

.method static synthetic m(Landroidx/media3/exoplayer/video/q;Landroidx/media3/exoplayer/video/t;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/q;->P(Landroidx/media3/exoplayer/video/t;)V

    return-void
.end method

.method static synthetic n(Landroidx/media3/exoplayer/video/q;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/q;->N(F)V

    return-void
.end method

.method static synthetic o(Landroidx/media3/exoplayer/video/q;)Landroidx/media3/common/util/o0;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/q;->b:Landroidx/media3/common/util/o0;

    return-object p0
.end method

.method static synthetic p(Landroidx/media3/exoplayer/video/q;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/video/q;->L(J)V

    return-void
.end method

.method static synthetic q(Landroidx/media3/exoplayer/video/q;)Z
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/video/q;->Q()Z

    move-result p0

    return p0
.end method

.method static synthetic r(Landroidx/media3/exoplayer/video/q;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/q;->K(JJ)V

    return-void
.end method

.method static synthetic s(Landroidx/media3/exoplayer/video/q;Landroidx/media3/exoplayer/w3$a;)Landroidx/media3/exoplayer/w3$a;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/video/q;->r:Landroidx/media3/exoplayer/w3$a;

    return-object p1
.end method

.method static synthetic t(Landroidx/media3/exoplayer/video/q;)Landroidx/media3/common/c0$a;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/q;->c:Landroidx/media3/common/c0$a;

    return-object p0
.end method

.method static synthetic u(Landroidx/media3/exoplayer/video/q;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/q;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic v(Landroidx/media3/common/i;)Landroidx/media3/common/i;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/video/q;->A(Landroidx/media3/common/i;)Landroidx/media3/common/i;

    move-result-object p0

    return-object p0
.end method

.method static synthetic w(Landroidx/media3/exoplayer/video/q;)Landroidx/media3/common/c0;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method private z(Z)V
    .locals 4

    invoke-direct {p0}, Landroidx/media3/exoplayer/video/q;->D()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/video/q;->p:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/exoplayer/video/q;->p:I

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q;->g:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->t(Z)V

    :goto_0
    iget-object p1, p0, Landroidx/media3/exoplayer/video/q;->b:Landroidx/media3/common/util/o0;

    invoke-virtual {p1}, Landroidx/media3/common/util/o0;->l()I

    move-result p1

    if-le p1, v1, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/video/q;->b:Landroidx/media3/common/util/o0;

    invoke-virtual {p1}, Landroidx/media3/common/util/o0;->i()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/video/q;->b:Landroidx/media3/common/util/o0;

    invoke-virtual {p1}, Landroidx/media3/common/util/o0;->l()I

    move-result p1

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Landroidx/media3/exoplayer/video/q;->b:Landroidx/media3/common/util/o0;

    invoke-virtual {p1}, Landroidx/media3/common/util/o0;->i()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p1, p0, Landroidx/media3/exoplayer/video/q;->g:Landroidx/media3/exoplayer/video/VideoSink;

    iget-wide v2, p0, Landroidx/media3/exoplayer/video/q;->v:J

    invoke-interface {p1, v0, v1, v2, v3}, Landroidx/media3/exoplayer/video/VideoSink;->f(JJ)V

    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/q;->s:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/q;->t:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/q;->u:Z

    iget-object p1, p0, Landroidx/media3/exoplayer/video/q;->m:Landroidx/media3/common/util/p;

    invoke-static {p1}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/util/p;

    new-instance v0, Landroidx/media3/exoplayer/video/o;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/video/o;-><init>(Landroidx/media3/exoplayer/video/q;)V

    invoke-interface {p1, v0}, Landroidx/media3/common/util/p;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public B(I)Landroidx/media3/exoplayer/video/VideoSink;
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q;->d:Landroid/util/SparseArray;

    invoke-static {v0, p1}, Landroidx/media3/common/util/a1;->r(Landroid/util/SparseArray;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    new-instance v0, Landroidx/media3/exoplayer/video/q$c;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/q;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media3/exoplayer/video/q$c;-><init>(Landroidx/media3/exoplayer/video/q;Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/q;->x(Landroidx/media3/exoplayer/video/q$d;)V

    iget-object v1, p0, Landroidx/media3/exoplayer/video/q;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public J()V
    .locals 3

    iget v0, p0, Landroidx/media3/exoplayer/video/q;->q:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/q;->m:Landroidx/media3/common/util/p;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, v2}, Landroidx/media3/common/util/p;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    iput-object v2, p0, Landroidx/media3/exoplayer/video/q;->o:Landroid/util/Pair;

    iput v1, p0, Landroidx/media3/exoplayer/video/q;->q:I

    return-void
.end method

.method public M(Landroid/view/Surface;Landroidx/media3/common/util/l0;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q;->o:Landroid/util/Pair;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q;->o:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/l0;

    invoke-virtual {v0, p2}, Landroidx/media3/common/util/l0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/q;->o:Landroid/util/Pair;

    invoke-virtual {p2}, Landroidx/media3/common/util/l0;->b()I

    move-result v0

    invoke-virtual {p2}, Landroidx/media3/common/util/l0;->a()I

    move-result p2

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/video/q;->H(Landroid/view/Surface;II)V

    return-void
.end method

.method public O(I)V
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/video/q;->w:I

    return-void
.end method

.method public x(Landroidx/media3/exoplayer/video/q$d;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public y()V
    .locals 3

    sget-object v0, Landroidx/media3/common/util/l0;->c:Landroidx/media3/common/util/l0;

    invoke-virtual {v0}, Landroidx/media3/common/util/l0;->b()I

    move-result v1

    invoke-virtual {v0}, Landroidx/media3/common/util/l0;->a()I

    move-result v0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1, v0}, Landroidx/media3/exoplayer/video/q;->H(Landroid/view/Surface;II)V

    iput-object v2, p0, Landroidx/media3/exoplayer/video/q;->o:Landroid/util/Pair;

    return-void
.end method
