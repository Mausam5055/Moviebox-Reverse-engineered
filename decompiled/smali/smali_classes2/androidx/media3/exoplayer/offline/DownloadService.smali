.class public abstract Landroidx/media3/exoplayer/offline/DownloadService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/offline/DownloadService$b;,
        Landroidx/media3/exoplayer/offline/DownloadService$c;
    }
.end annotation


# static fields
.field private static final k:Ljava/util/HashMap;


# instance fields
.field private final a:Landroidx/media3/exoplayer/offline/DownloadService$c;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:I

.field private e:Landroidx/media3/exoplayer/offline/DownloadService$b;

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/offline/DownloadService;->k:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>(IJLjava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->a:Landroidx/media3/exoplayer/offline/DownloadService$c;

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->b:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->c:I

    iput p1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/offline/DownloadService$c;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/media3/exoplayer/offline/DownloadService$c;-><init>(Landroidx/media3/exoplayer/offline/DownloadService;IJ)V

    iput-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->a:Landroidx/media3/exoplayer/offline/DownloadService$c;

    iput-object p4, p0, Landroidx/media3/exoplayer/offline/DownloadService;->b:Ljava/lang/String;

    iput p5, p0, Landroidx/media3/exoplayer/offline/DownloadService;->c:I

    iput p6, p0, Landroidx/media3/exoplayer/offline/DownloadService;->d:I

    :goto_0
    return-void
.end method

.method private static A(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Landroidx/media3/common/util/a1;->r1(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method static synthetic a(Landroidx/media3/exoplayer/offline/DownloadService;)Landroidx/media3/exoplayer/offline/DownloadService$b;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->e:Landroidx/media3/exoplayer/offline/DownloadService$b;

    return-object p0
.end method

.method static synthetic b(Landroidx/media3/exoplayer/offline/DownloadService;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadService;->v(Ljava/util/List;)V

    return-void
.end method

.method static synthetic c(Landroidx/media3/exoplayer/offline/DownloadService;Landroidx/media3/exoplayer/offline/c;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadService;->t(Landroidx/media3/exoplayer/offline/c;)V

    return-void
.end method

.method static synthetic d(I)Z
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/offline/DownloadService;->s(I)Z

    move-result p0

    return p0
.end method

.method static synthetic e(Landroidx/media3/exoplayer/offline/DownloadService;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadService;->u()V

    return-void
.end method

.method static synthetic f(Landroidx/media3/exoplayer/offline/DownloadService;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadService;->w()V

    return-void
.end method

.method static synthetic g(Landroidx/media3/exoplayer/offline/DownloadService;)Z
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadService;->r()Z

    move-result p0

    return p0
.end method

.method static synthetic h(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/offline/DownloadService;->o(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static i(Landroid/content/Context;Ljava/lang/Class;Landroidx/media3/exoplayer/offline/DownloadRequest;IZ)Landroid/content/Intent;
    .locals 1

    const-string v0, "androidx.media3.exoplayer.downloadService.action.ADD_DOWNLOAD"

    invoke-static {p0, p1, v0, p4}, Landroidx/media3/exoplayer/offline/DownloadService;->p(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "download_request"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "stop_reason"

    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static j(Landroid/content/Context;Ljava/lang/Class;Landroidx/media3/exoplayer/offline/DownloadRequest;Z)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Landroidx/media3/exoplayer/offline/DownloadService;->i(Landroid/content/Context;Ljava/lang/Class;Landroidx/media3/exoplayer/offline/DownloadRequest;IZ)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static k(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 1

    const-string v0, "androidx.media3.exoplayer.downloadService.action.REMOVE_DOWNLOAD"

    invoke-static {p0, p1, v0, p3}, Landroidx/media3/exoplayer/offline/DownloadService;->p(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "content_id"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static l(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;IZ)Landroid/content/Intent;
    .locals 1

    const-string v0, "androidx.media3.exoplayer.downloadService.action.SET_STOP_REASON"

    invoke-static {p0, p1, v0, p4}, Landroidx/media3/exoplayer/offline/DownloadService;->p(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "content_id"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "stop_reason"

    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static o(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static p(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/offline/DownloadService;->o(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "foreground"

    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private r()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->i:Z

    return v0
.end method

.method private static s(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private t(Landroidx/media3/exoplayer/offline/c;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->a:Landroidx/media3/exoplayer/offline/DownloadService$c;

    if-eqz v0, :cond_1

    iget p1, p1, Landroidx/media3/exoplayer/offline/c;->b:I

    invoke-static {p1}, Landroidx/media3/exoplayer/offline/DownloadService;->s(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->a:Landroidx/media3/exoplayer/offline/DownloadService$c;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/offline/DownloadService$c;->d()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->a:Landroidx/media3/exoplayer/offline/DownloadService$c;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/offline/DownloadService$c;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method private u()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->a:Landroidx/media3/exoplayer/offline/DownloadService$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/DownloadService$c;->b()V

    :cond_0
    return-void
.end method

.method private v(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->a:Landroidx/media3/exoplayer/offline/DownloadService$c;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/offline/c;

    iget v1, v1, Landroidx/media3/exoplayer/offline/c;->b:I

    invoke-static {v1}, Landroidx/media3/exoplayer/offline/DownloadService;->s(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->a:Landroidx/media3/exoplayer/offline/DownloadService$c;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/offline/DownloadService$c;->d()V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private w()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->a:Landroidx/media3/exoplayer/offline/DownloadService$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/DownloadService$c;->e()V

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->e:Landroidx/media3/exoplayer/offline/DownloadService$b;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/offline/DownloadService$b;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/DownloadService$b;->q()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->h:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->i:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->i:Z

    iget v1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->f:I

    invoke-virtual {p0, v1}, Landroid/app/Service;->stopSelfResult(I)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->i:Z

    :goto_0
    return-void
.end method

.method public static x(Landroid/content/Context;Ljava/lang/Class;Landroidx/media3/exoplayer/offline/DownloadRequest;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/media3/exoplayer/offline/DownloadService;->j(Landroid/content/Context;Ljava/lang/Class;Landroidx/media3/exoplayer/offline/DownloadRequest;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1, p3}, Landroidx/media3/exoplayer/offline/DownloadService;->A(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-void
.end method

.method public static y(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/media3/exoplayer/offline/DownloadService;->k(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1, p3}, Landroidx/media3/exoplayer/offline/DownloadService;->A(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-void
.end method

.method public static z(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;IZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/offline/DownloadService;->l(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;IZ)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1, p4}, Landroidx/media3/exoplayer/offline/DownloadService;->A(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-void
.end method


# virtual methods
.method protected abstract m()Landroidx/media3/exoplayer/offline/DownloadManager;
.end method

.method protected abstract n(Ljava/util/List;I)Landroid/app/Notification;
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public onCreate()V
    .locals 11

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->c:I

    iget v2, p0, Landroidx/media3/exoplayer/offline/DownloadService;->d:I

    const/4 v3, 0x2

    invoke-static {p0, v0, v1, v2, v3}, Landroidx/media3/common/util/h0;->a(Landroid/content/Context;Ljava/lang/String;III)V

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Landroidx/media3/exoplayer/offline/DownloadService;->k:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/offline/DownloadService$b;

    if-nez v2, :cond_4

    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadService;->a:Landroidx/media3/exoplayer/offline/DownloadService$c;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    move v7, v4

    goto :goto_0

    :cond_1
    move v7, v3

    :goto_0
    sget v2, Landroidx/media3/common/util/a1;->a:I

    const/16 v5, 0x1f

    if-ge v2, v5, :cond_2

    move v3, v4

    :cond_2
    if-eqz v7, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/offline/DownloadService;->q()Lf2/f;

    move-result-object v2

    :goto_1
    move-object v8, v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/offline/DownloadService;->m()Landroidx/media3/exoplayer/offline/DownloadManager;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/media3/exoplayer/offline/DownloadManager;->x()V

    new-instance v2, Landroidx/media3/exoplayer/offline/DownloadService$b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v10, 0x0

    move-object v4, v2

    move-object v9, v0

    invoke-direct/range {v4 .. v10}, Landroidx/media3/exoplayer/offline/DownloadService$b;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/offline/DownloadManager;ZLf2/f;Ljava/lang/Class;Landroidx/media3/exoplayer/offline/DownloadService$a;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iput-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadService;->e:Landroidx/media3/exoplayer/offline/DownloadService$b;

    invoke-virtual {v2, p0}, Landroidx/media3/exoplayer/offline/DownloadService$b;->j(Landroidx/media3/exoplayer/offline/DownloadService;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->j:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->e:Landroidx/media3/exoplayer/offline/DownloadService$b;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/offline/DownloadService$b;

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/offline/DownloadService$b;->l(Landroidx/media3/exoplayer/offline/DownloadService;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->a:Landroidx/media3/exoplayer/offline/DownloadService$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/DownloadService$c;->e()V

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9

    const-string p2, "androidx.media3.exoplayer.downloadService.action.INIT"

    const-string v0, "androidx.media3.exoplayer.downloadService.action.RESTART"

    iput p3, p0, Landroidx/media3/exoplayer/offline/DownloadService;->f:I

    const/4 p3, 0x0

    iput-boolean p3, p0, Landroidx/media3/exoplayer/offline/DownloadService;->h:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content_id"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Landroidx/media3/exoplayer/offline/DownloadService;->g:Z

    const-string v5, "foreground"

    invoke-virtual {p1, v5, p3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, p3

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v1

    :goto_1
    or-int/2addr v4, v5

    iput-boolean v4, p0, Landroidx/media3/exoplayer/offline/DownloadService;->g:Z

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    move-object v3, v2

    :goto_2
    if-nez v2, :cond_3

    move-object v2, p2

    :cond_3
    iget-object v4, p0, Landroidx/media3/exoplayer/offline/DownloadService;->e:Landroidx/media3/exoplayer/offline/DownloadService$b;

    invoke-static {v4}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/offline/DownloadService$b;

    invoke-static {v4}, Landroidx/media3/exoplayer/offline/DownloadService$b;->i(Landroidx/media3/exoplayer/offline/DownloadService$b;)Landroidx/media3/exoplayer/offline/DownloadManager;

    move-result-object v4

    const-string v5, "stop_reason"

    const-string v6, "DownloadService"

    const/4 v7, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string p2, "androidx.media3.exoplayer.downloadService.action.PAUSE_DOWNLOADS"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto/16 :goto_3

    :cond_4
    const/16 v7, 0x8

    goto/16 :goto_3

    :sswitch_1
    const-string p2, "androidx.media3.exoplayer.downloadService.action.SET_REQUIREMENTS"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v7, 0x7

    goto :goto_3

    :sswitch_2
    const-string p2, "androidx.media3.exoplayer.downloadService.action.ADD_DOWNLOAD"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    const/4 v7, 0x6

    goto :goto_3

    :sswitch_3
    const-string p2, "androidx.media3.exoplayer.downloadService.action.REMOVE_ALL_DOWNLOADS"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_3

    :cond_7
    const/4 v7, 0x5

    goto :goto_3

    :sswitch_4
    const-string p2, "androidx.media3.exoplayer.downloadService.action.RESUME_DOWNLOADS"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_3

    :cond_8
    const/4 v7, 0x4

    goto :goto_3

    :sswitch_5
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_3

    :cond_9
    const/4 v7, 0x3

    goto :goto_3

    :sswitch_6
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_3

    :cond_a
    const/4 v7, 0x2

    goto :goto_3

    :sswitch_7
    const-string p2, "androidx.media3.exoplayer.downloadService.action.REMOVE_DOWNLOAD"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_3

    :cond_b
    move v7, v1

    goto :goto_3

    :sswitch_8
    const-string p2, "androidx.media3.exoplayer.downloadService.action.SET_STOP_REASON"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    goto :goto_3

    :cond_c
    move v7, p3

    :goto_3
    packed-switch v7, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignored unrecognized action: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroidx/media3/common/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {v4}, Landroidx/media3/exoplayer/offline/DownloadManager;->t()V

    goto :goto_4

    :pswitch_1
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    const-string p2, "requirements"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/scheduler/Requirements;

    if-nez p1, :cond_d

    const-string p1, "Ignored SET_REQUIREMENTS: Missing requirements extra"

    invoke-static {v6, p1}, Landroidx/media3/common/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    invoke-virtual {v4, p1}, Landroidx/media3/exoplayer/offline/DownloadManager;->z(Landroidx/media3/exoplayer/scheduler/Requirements;)V

    goto :goto_4

    :pswitch_2
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    const-string v0, "download_request"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroidx/media3/exoplayer/offline/DownloadRequest;

    if-nez p2, :cond_e

    const-string p1, "Ignored ADD_DOWNLOAD: Missing download_request extra"

    invoke-static {v6, p1}, Landroidx/media3/common/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    invoke-virtual {p1, v5, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v4, p2, p1}, Landroidx/media3/exoplayer/offline/DownloadManager;->c(Landroidx/media3/exoplayer/offline/DownloadRequest;I)V

    goto :goto_4

    :pswitch_3
    invoke-virtual {v4}, Landroidx/media3/exoplayer/offline/DownloadManager;->u()V

    goto :goto_4

    :pswitch_4
    invoke-virtual {v4}, Landroidx/media3/exoplayer/offline/DownloadManager;->x()V

    goto :goto_4

    :pswitch_5
    if-nez v3, :cond_f

    const-string p1, "Ignored REMOVE_DOWNLOAD: Missing content_id extra"

    invoke-static {v6, p1}, Landroidx/media3/common/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_f
    invoke-virtual {v4, v3}, Landroidx/media3/exoplayer/offline/DownloadManager;->v(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_6
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_10

    const-string p1, "Ignored SET_STOP_REASON: Missing stop_reason extra"

    invoke-static {v6, p1}, Landroidx/media3/common/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_10
    invoke-virtual {p1, v5, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v4, v3, p1}, Landroidx/media3/exoplayer/offline/DownloadManager;->A(Ljava/lang/String;I)V

    :goto_4
    :pswitch_7
    sget p1, Landroidx/media3/common/util/a1;->a:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_11

    iget-boolean p1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->g:Z

    if-eqz p1, :cond_11

    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->a:Landroidx/media3/exoplayer/offline/DownloadService$c;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroidx/media3/exoplayer/offline/DownloadService$c;->c()V

    :cond_11
    iput-boolean p3, p0, Landroidx/media3/exoplayer/offline/DownloadService;->i:Z

    invoke-virtual {v4}, Landroidx/media3/exoplayer/offline/DownloadManager;->k()Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadService;->w()V

    :cond_12
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b47cdc8 -> :sswitch_8
        -0x47112489 -> :sswitch_7
        -0x274df87d -> :sswitch_6
        -0xe367804 -> :sswitch_5
        0x1f2a425 -> :sswitch_4
        0x1bab7dfe -> :sswitch_3
        0x3175ed72 -> :sswitch_2
        0x3267e259 -> :sswitch_1
        0x6815b736 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->h:Z

    return-void
.end method

.method protected abstract q()Lf2/f;
.end method
