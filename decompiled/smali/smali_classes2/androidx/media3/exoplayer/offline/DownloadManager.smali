.class public final Landroidx/media3/exoplayer/offline/DownloadManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/offline/DownloadManager$c;,
        Landroidx/media3/exoplayer/offline/DownloadManager$d;,
        Landroidx/media3/exoplayer/offline/DownloadManager$b;,
        Landroidx/media3/exoplayer/offline/DownloadManager$Task;
    }
.end annotation


# static fields
.field public static final q:Landroidx/media3/exoplayer/scheduler/Requirements;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroidx/media3/exoplayer/offline/t;

.field private final c:Landroid/os/Handler;

.field private final d:Landroidx/media3/exoplayer/offline/DownloadManager$c;

.field private final e:Lf2/c$c;

.field private final f:Ljava/util/concurrent/CopyOnWriteArraySet;

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Ljava/util/List;

.field private p:Lf2/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/exoplayer/scheduler/Requirements;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/scheduler/Requirements;-><init>(I)V

    sput-object v0, Landroidx/media3/exoplayer/offline/DownloadManager;->q:Landroidx/media3/exoplayer/scheduler/Requirements;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/offline/t;Landroidx/media3/exoplayer/offline/p;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->a:Landroid/content/Context;

    iput-object p2, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->b:Landroidx/media3/exoplayer/offline/t;

    const/4 v0, 0x3

    iput v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->k:I

    const/4 v0, 0x5

    iput v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->l:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->j:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->o:Ljava/util/List;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v1, Landroidx/media3/exoplayer/offline/g;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/offline/g;-><init>(Landroidx/media3/exoplayer/offline/DownloadManager;)V

    invoke-static {v1}, Landroidx/media3/common/util/a1;->D(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v6

    iput-object v6, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->c:Landroid/os/Handler;

    new-instance v3, Landroid/os/HandlerThread;

    const-string v1, "ExoPlayer:DownloadManager"

    invoke-direct {v3, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroidx/media3/exoplayer/offline/DownloadManager$c;

    iget v7, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->k:I

    iget v8, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->l:I

    iget-boolean v9, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->j:Z

    move-object v2, v1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v9}, Landroidx/media3/exoplayer/offline/DownloadManager$c;-><init>(Landroid/os/HandlerThread;Landroidx/media3/exoplayer/offline/t;Landroidx/media3/exoplayer/offline/p;Landroid/os/Handler;IIZ)V

    iput-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->d:Landroidx/media3/exoplayer/offline/DownloadManager$c;

    new-instance p2, Landroidx/media3/exoplayer/offline/h;

    invoke-direct {p2, p0}, Landroidx/media3/exoplayer/offline/h;-><init>(Landroidx/media3/exoplayer/offline/DownloadManager;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->e:Lf2/c$c;

    new-instance p3, Lf2/c;

    sget-object v2, Landroidx/media3/exoplayer/offline/DownloadManager;->q:Landroidx/media3/exoplayer/scheduler/Requirements;

    invoke-direct {p3, p1, p2, v2}, Lf2/c;-><init>(Landroid/content/Context;Lf2/c$c;Landroidx/media3/exoplayer/scheduler/Requirements;)V

    iput-object p3, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->p:Lf2/c;

    invoke-virtual {p3}, Lf2/c;->i()I

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->m:I

    iput v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->g:I

    const/4 p2, 0x0

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private B()Z
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->j:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->m:I

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->o:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/offline/c;

    iget v3, v3, Landroidx/media3/exoplayer/offline/c;->b:I

    if-nez v3, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    iget-boolean v3, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->n:Z

    if-eq v3, v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->n:Z

    return v1
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/offline/DownloadManager;Lf2/c;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/offline/DownloadManager;->s(Lf2/c;I)V

    return-void
.end method

.method public static synthetic b(Landroidx/media3/exoplayer/offline/DownloadManager;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager;->j(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method private j(Landroid/os/Message;)Z
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/offline/DownloadManager$b;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager;->p(Landroidx/media3/exoplayer/offline/DownloadManager$b;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager;->r(II)V

    goto :goto_0

    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager;->q(Ljava/util/List;)V

    :goto_0
    return v1
.end method

.method static n(Landroidx/media3/exoplayer/offline/c;Landroidx/media3/exoplayer/offline/DownloadRequest;IJ)Landroidx/media3/exoplayer/offline/c;
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/media3/exoplayer/offline/c;->b:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/offline/c;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v3, v0, Landroidx/media3/exoplayer/offline/c;->c:J

    move-wide v8, v3

    goto :goto_1

    :cond_1
    :goto_0
    move-wide/from16 v8, p3

    :goto_1
    const/4 v3, 0x7

    if-eq v1, v2, :cond_4

    if-ne v1, v3, :cond_2

    goto :goto_3

    :cond_2
    if-eqz p2, :cond_3

    const/4 v1, 0x1

    :goto_2
    move v7, v1

    goto :goto_4

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    :goto_3
    move v7, v3

    :goto_4
    new-instance v1, Landroidx/media3/exoplayer/offline/c;

    iget-object v0, v0, Landroidx/media3/exoplayer/offline/c;->a:Landroidx/media3/exoplayer/offline/DownloadRequest;

    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/offline/DownloadRequest;->copyWithMergedRequest(Landroidx/media3/exoplayer/offline/DownloadRequest;)Landroidx/media3/exoplayer/offline/DownloadRequest;

    move-result-object v6

    const-wide/16 v12, -0x1

    const/4 v15, 0x0

    move-object v5, v1

    move-wide/from16 v10, p3

    move/from16 v14, p2

    invoke-direct/range {v5 .. v15}, Landroidx/media3/exoplayer/offline/c;-><init>(Landroidx/media3/exoplayer/offline/DownloadRequest;IJJJII)V

    return-object v1
.end method

.method private o()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/offline/DownloadManager$d;

    iget-boolean v2, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->n:Z

    invoke-interface {v1, p0, v2}, Landroidx/media3/exoplayer/offline/DownloadManager$d;->a(Landroidx/media3/exoplayer/offline/DownloadManager;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private p(Landroidx/media3/exoplayer/offline/DownloadManager$b;)V
    .locals 5

    iget-object v0, p1, Landroidx/media3/exoplayer/offline/DownloadManager$b;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->o:Ljava/util/List;

    iget-object v0, p1, Landroidx/media3/exoplayer/offline/DownloadManager$b;->a:Landroidx/media3/exoplayer/offline/c;

    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager;->B()Z

    move-result v1

    iget-boolean v2, p1, Landroidx/media3/exoplayer/offline/DownloadManager$b;->b:Z

    if-eqz v2, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/offline/DownloadManager$d;

    invoke-interface {v2, p0, v0}, Landroidx/media3/exoplayer/offline/DownloadManager$d;->b(Landroidx/media3/exoplayer/offline/DownloadManager;Landroidx/media3/exoplayer/offline/c;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/offline/DownloadManager$d;

    iget-object v4, p1, Landroidx/media3/exoplayer/offline/DownloadManager$b;->d:Ljava/lang/Exception;

    invoke-interface {v3, p0, v0, v4}, Landroidx/media3/exoplayer/offline/DownloadManager$d;->f(Landroidx/media3/exoplayer/offline/DownloadManager;Landroidx/media3/exoplayer/offline/c;Ljava/lang/Exception;)V

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager;->o()V

    :cond_2
    return-void
.end method

.method private q(Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->i:Z

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->o:Ljava/util/List;

    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager;->B()Z

    move-result p1

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/offline/DownloadManager$d;

    invoke-interface {v1, p0}, Landroidx/media3/exoplayer/offline/DownloadManager$d;->g(Landroidx/media3/exoplayer/offline/DownloadManager;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager;->o()V

    :cond_1
    return-void
.end method

.method private r(II)V
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->g:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->g:I

    iput p2, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->h:I

    invoke-virtual {p0}, Landroidx/media3/exoplayer/offline/DownloadManager;->k()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/exoplayer/offline/DownloadManager$d;

    invoke-interface {p2, p0}, Landroidx/media3/exoplayer/offline/DownloadManager$d;->d(Landroidx/media3/exoplayer/offline/DownloadManager;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private s(Lf2/c;I)V
    .locals 3

    invoke-virtual {p1}, Lf2/c;->f()Landroidx/media3/exoplayer/scheduler/Requirements;

    move-result-object p1

    iget v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->m:I

    if-eq v0, p2, :cond_0

    iput p2, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->m:I

    iget v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->g:I

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->d:Landroidx/media3/exoplayer/offline/DownloadManager$c;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager;->B()Z

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/offline/DownloadManager$d;

    invoke-interface {v2, p0, p1, p2}, Landroidx/media3/exoplayer/offline/DownloadManager$d;->e(Landroidx/media3/exoplayer/offline/DownloadManager;Landroidx/media3/exoplayer/scheduler/Requirements;I)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager;->o()V

    :cond_2
    return-void
.end method

.method private y(Z)V
    .locals 3

    iget-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->j:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->j:Z

    iget v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->g:I

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->d:Landroidx/media3/exoplayer/offline/DownloadManager$c;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager;->B()Z

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/offline/DownloadManager$d;

    invoke-interface {v2, p0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager$d;->c(Landroidx/media3/exoplayer/offline/DownloadManager;Z)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager;->o()V

    :cond_2
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;I)V
    .locals 3

    iget v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->g:I

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->d:Landroidx/media3/exoplayer/offline/DownloadManager$c;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public c(Landroidx/media3/exoplayer/offline/DownloadRequest;I)V
    .locals 3

    iget v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->g:I

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->d:Landroidx/media3/exoplayer/offline/DownloadManager$c;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public d(Landroidx/media3/exoplayer/offline/DownloadManager$d;)V
    .locals 1

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->o:Ljava/util/List;

    return-object v0
.end method

.method public f()Landroidx/media3/exoplayer/offline/f;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->b:Landroidx/media3/exoplayer/offline/t;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->j:Z

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->m:I

    return v0
.end method

.method public i()Landroidx/media3/exoplayer/scheduler/Requirements;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->p:Lf2/c;

    invoke-virtual {v0}, Lf2/c;->f()Landroidx/media3/exoplayer/scheduler/Requirements;

    move-result-object v0

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->h:I

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->g:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->i:Z

    return v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->n:Z

    return v0
.end method

.method public t()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/offline/DownloadManager;->y(Z)V

    return-void
.end method

.method public u()V
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->g:I

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->d:Landroidx/media3/exoplayer/offline/DownloadManager$c;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->g:I

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->d:Landroidx/media3/exoplayer/offline/DownloadManager$c;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public w(Landroidx/media3/exoplayer/offline/DownloadManager$d;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public x()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/offline/DownloadManager;->y(Z)V

    return-void
.end method

.method public z(Landroidx/media3/exoplayer/scheduler/Requirements;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->p:Lf2/c;

    invoke-virtual {v0}, Lf2/c;->f()Landroidx/media3/exoplayer/scheduler/Requirements;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/scheduler/Requirements;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->p:Lf2/c;

    invoke-virtual {v0}, Lf2/c;->j()V

    new-instance v0, Lf2/c;

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->a:Landroid/content/Context;

    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->e:Lf2/c$c;

    invoke-direct {v0, v1, v2, p1}, Lf2/c;-><init>(Landroid/content/Context;Lf2/c$c;Landroidx/media3/exoplayer/scheduler/Requirements;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->p:Lf2/c;

    invoke-virtual {v0}, Lf2/c;->i()I

    move-result p1

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager;->p:Lf2/c;

    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager;->s(Lf2/c;I)V

    return-void
.end method
