.class final Landroidx/media3/exoplayer/offline/DownloadService$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/offline/DownloadManager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/offline/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroidx/media3/exoplayer/offline/DownloadManager;

.field private final c:Z

.field private final d:Lf2/f;

.field private final e:Ljava/lang/Class;

.field private f:Landroidx/media3/exoplayer/offline/DownloadService;

.field private g:Landroidx/media3/exoplayer/scheduler/Requirements;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/offline/DownloadManager;ZLf2/f;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadService$b;->a:Landroid/content/Context;

    iput-object p2, p0, Landroidx/media3/exoplayer/offline/DownloadService$b;->b:Landroidx/media3/exoplayer/offline/DownloadManager;

    iput-boolean p3, p0, Landroidx/media3/exoplayer/offline/DownloadService$b;->c:Z

    iput-object p4, p0, Landroidx/media3/exoplayer/offline/DownloadService$b;->d:Lf2/f;

    iput-object p5, p0, Landroidx/media3/exoplayer/offline/DownloadService$b;->e:Ljava/lang/Class;

    invoke-virtual {p2, p0}, Landroidx/media3/exoplayer/offline/DownloadManager;->d(Landroidx/media3/exoplayer/offline/DownloadManager$d;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/offline/DownloadService$b;->q()Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/offline/DownloadManager;ZLf2/f;Ljava/lang/Class;Landroidx/media3/exoplayer/offline/DownloadService$a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/media3/exoplayer/offline/DownloadService$b;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/offline/DownloadManager;ZLf2/f;Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic h(Landroidx/media3/exoplayer/offline/DownloadService$b;Landroidx/media3/exoplayer/offline/DownloadService;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadService$b;->m(Landroidx/media3/exoplayer/offline/DownloadService;)V

    return-void
.end method

.method static synthetic i(Landroidx/media3/exoplayer/offline/DownloadService$b;)Landroidx/media3/exoplayer/offline/DownloadManager;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DownloadService$b;->b:Landroidx/media3/exoplayer/offline/DownloadManager;

    return-object p0
.end method

.method private k()V
    .locals 2

    new-instance v0, Landroidx/media3/exoplayer/scheduler/Requirements;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/scheduler/Requirements;-><init>(I)V

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/offline/DownloadService$b;->o(Landroidx/media3/exoplayer/scheduler/Requirements;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadService$b;->d:Lf2/f;

    invoke-interface {v1}, Lf2/f;->cancel()Z

    iput-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService$b;->g:Landroidx/media3/exoplayer/scheduler/Requirements;

    :cond_0
    return-void
.end method

.method private synthetic m(Landroidx/media3/exoplayer/offline/DownloadService;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService$b;->b:Landroidx/media3/exoplayer/offline/DownloadManager;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/DownloadManager;->e()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/offline/DownloadService;->b(Landroidx/media3/exoplayer/offline/DownloadService;Ljava/util/List;)V

    return-void
.end method

.method private n()V
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadService$b;->c:Z

    const-string v1, "DownloadService"

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService$b;->a:Landroid/content/Context;

    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadService$b;->e:Ljava/lang/Class;

    const-string v3, "androidx.media3.exoplayer.downloadService.action.RESTART"

    invoke-static {v0, v2, v3}, Landroidx/media3/exoplayer/offline/DownloadService;->h(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadService$b;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Landroidx/media3/common/util/a1;->r1(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Failed to restart (foreground launch restriction)"

    invoke-static {v1, v0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService$b;->a:Landroid/content/Context;

    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadService$b;->e:Ljava/lang/Class;

    const-string v3, "androidx.media3.exoplayer.downloadService.action.INIT"

    invoke-static {v0, v2, v3}, Landroidx/media3/exoplayer/offline/DownloadService;->h(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadService$b;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const-string v0, "Failed to restart (process is idle)"

    invoke-static {v1, v0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private o(Landroidx/media3/exoplayer/scheduler/Requirements;)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService$b;->g:Landroidx/media3/exoplayer/scheduler/Requirements;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private p()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService$b;->f:Landroidx/media3/exoplayer/offline/DownloadService;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/media3/exoplayer/offline/DownloadService;->g(Landroidx/media3/exoplayer/offline/DownloadService;)Z

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


# virtual methods
.method public a(Landroidx/media3/exoplayer/offline/DownloadManager;Z)V
    .locals 1

    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroidx/media3/exoplayer/offline/DownloadManager;->g()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadService$b;->p()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroidx/media3/exoplayer/offline/DownloadManager;->e()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/offline/c;

    iget v0, v0, Landroidx/media3/exoplayer/offline/c;->b:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadService$b;->n()V

    return-void

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Landroidx/media3/exoplayer/offline/DownloadManager;Landroidx/media3/exoplayer/offline/c;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadService$b;->f:Landroidx/media3/exoplayer/offline/DownloadService;

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroidx/media3/exoplayer/offline/DownloadService;->e(Landroidx/media3/exoplayer/offline/DownloadService;)V

    :cond_0
    return-void
.end method

.method public synthetic c(Landroidx/media3/exoplayer/offline/DownloadManager;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/offline/j;->a(Landroidx/media3/exoplayer/offline/DownloadManager$d;Landroidx/media3/exoplayer/offline/DownloadManager;Z)V

    return-void
.end method

.method public final d(Landroidx/media3/exoplayer/offline/DownloadManager;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadService$b;->f:Landroidx/media3/exoplayer/offline/DownloadService;

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroidx/media3/exoplayer/offline/DownloadService;->f(Landroidx/media3/exoplayer/offline/DownloadService;)V

    :cond_0
    return-void
.end method

.method public e(Landroidx/media3/exoplayer/offline/DownloadManager;Landroidx/media3/exoplayer/scheduler/Requirements;I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/offline/DownloadService$b;->q()Z

    return-void
.end method

.method public f(Landroidx/media3/exoplayer/offline/DownloadManager;Landroidx/media3/exoplayer/offline/c;Ljava/lang/Exception;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadService$b;->f:Landroidx/media3/exoplayer/offline/DownloadService;

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Landroidx/media3/exoplayer/offline/DownloadService;->c(Landroidx/media3/exoplayer/offline/DownloadService;Landroidx/media3/exoplayer/offline/c;)V

    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadService$b;->p()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p2, Landroidx/media3/exoplayer/offline/c;->b:I

    invoke-static {p1}, Landroidx/media3/exoplayer/offline/DownloadService;->d(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "DownloadService"

    const-string p2, "DownloadService wasn\'t running. Restarting."

    invoke-static {p1, p2}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadService$b;->n()V

    :cond_1
    return-void
.end method

.method public g(Landroidx/media3/exoplayer/offline/DownloadManager;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService$b;->f:Landroidx/media3/exoplayer/offline/DownloadService;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/media3/exoplayer/offline/DownloadManager;->e()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/offline/DownloadService;->b(Landroidx/media3/exoplayer/offline/DownloadService;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public j(Landroidx/media3/exoplayer/offline/DownloadService;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService$b;->f:Landroidx/media3/exoplayer/offline/DownloadService;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadService$b;->f:Landroidx/media3/exoplayer/offline/DownloadService;

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService$b;->b:Landroidx/media3/exoplayer/offline/DownloadManager;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/DownloadManager;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/media3/common/util/a1;->C()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/offline/m;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/offline/m;-><init>(Landroidx/media3/exoplayer/offline/DownloadService$b;Landroidx/media3/exoplayer/offline/DownloadService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public l(Landroidx/media3/exoplayer/offline/DownloadService;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService$b;->f:Landroidx/media3/exoplayer/offline/DownloadService;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroidx/media3/common/util/a;->g(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadService$b;->f:Landroidx/media3/exoplayer/offline/DownloadService;

    return-void
.end method

.method public q()Z
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService$b;->b:Landroidx/media3/exoplayer/offline/DownloadManager;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/DownloadManager;->m()Z

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadService$b;->d:Lf2/f;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    xor-int/2addr v0, v2

    return v0

    :cond_0
    if-nez v0, :cond_1

    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadService$b;->k()V

    return v2

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService$b;->b:Landroidx/media3/exoplayer/offline/DownloadManager;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/DownloadManager;->i()Landroidx/media3/exoplayer/scheduler/Requirements;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadService$b;->d:Lf2/f;

    invoke-interface {v1, v0}, Lf2/f;->b(Landroidx/media3/exoplayer/scheduler/Requirements;)Landroidx/media3/exoplayer/scheduler/Requirements;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/scheduler/Requirements;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadService$b;->k()V

    return v3

    :cond_2
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/offline/DownloadService$b;->o(Landroidx/media3/exoplayer/scheduler/Requirements;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadService$b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Landroidx/media3/exoplayer/offline/DownloadService$b;->d:Lf2/f;

    const-string v5, "androidx.media3.exoplayer.downloadService.action.RESTART"

    invoke-interface {v4, v0, v1, v5}, Lf2/f;->a(Landroidx/media3/exoplayer/scheduler/Requirements;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService$b;->g:Landroidx/media3/exoplayer/scheduler/Requirements;

    return v2

    :cond_4
    const-string v0, "DownloadService"

    const-string v1, "Failed to schedule restart"

    invoke-static {v0, v1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadService$b;->k()V

    return v3
.end method
