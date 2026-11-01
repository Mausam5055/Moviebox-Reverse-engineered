.class final Landroidx/media3/exoplayer/k4;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/k4$c;,
        Landroidx/media3/exoplayer/k4$d;,
        Landroidx/media3/exoplayer/k4$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroidx/media3/exoplayer/k4$b;

.field private final c:Landroidx/media3/common/util/g;

.field private d:Landroid/media/AudioManager;

.field private e:Landroidx/media3/exoplayer/k4$d;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/k4$b;ILandroid/os/Looper;Landroid/os/Looper;Landroidx/media3/common/util/i;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/k4;->a:Landroid/content/Context;

    iput-object p2, p0, Landroidx/media3/exoplayer/k4;->b:Landroidx/media3/exoplayer/k4$b;

    new-instance p1, Landroidx/media3/exoplayer/k4$c;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move v1, p3

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/k4$c;-><init>(IIZII)V

    new-instance p2, Landroidx/media3/common/util/g;

    new-instance v5, Landroidx/media3/exoplayer/e4;

    invoke-direct {v5, p0}, Landroidx/media3/exoplayer/e4;-><init>(Landroidx/media3/exoplayer/k4;)V

    move-object v0, p2

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Landroidx/media3/common/util/g;-><init>(Ljava/lang/Object;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/common/util/i;Landroidx/media3/common/util/g$a;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/k4;->c:Landroidx/media3/common/util/g;

    new-instance p1, Landroidx/media3/exoplayer/f4;

    invoke-direct {p1, p0, p3}, Landroidx/media3/exoplayer/f4;-><init>(Landroidx/media3/exoplayer/k4;I)V

    invoke-virtual {p2, p1}, Landroidx/media3/common/util/g;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/k4;ZLandroidx/media3/exoplayer/k4$c;)Landroidx/media3/exoplayer/k4$c;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/k4;->r(ZLandroidx/media3/exoplayer/k4$c;)Landroidx/media3/exoplayer/k4$c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/media3/exoplayer/k4$c;)Landroidx/media3/exoplayer/k4$c;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/k4;->o(Landroidx/media3/exoplayer/k4$c;)Landroidx/media3/exoplayer/k4$c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/media3/exoplayer/k4;Landroidx/media3/exoplayer/k4$c;)Landroidx/media3/exoplayer/k4$c;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/k4;->p(Landroidx/media3/exoplayer/k4$c;)Landroidx/media3/exoplayer/k4$c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroidx/media3/exoplayer/k4;ZILandroidx/media3/exoplayer/k4$c;)Landroidx/media3/exoplayer/k4$c;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/k4;->q(ZILandroidx/media3/exoplayer/k4$c;)Landroidx/media3/exoplayer/k4$c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroidx/media3/exoplayer/k4;Landroidx/media3/exoplayer/k4$c;Landroidx/media3/exoplayer/k4$c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/k4;->s(Landroidx/media3/exoplayer/k4$c;Landroidx/media3/exoplayer/k4$c;)V

    return-void
.end method

.method public static synthetic f(Landroidx/media3/exoplayer/k4;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/k4;->n(I)V

    return-void
.end method

.method static synthetic g(Landroidx/media3/exoplayer/k4;)Landroidx/media3/common/util/g;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/k4;->c:Landroidx/media3/common/util/g;

    return-object p0
.end method

.method static synthetic h(Landroidx/media3/exoplayer/k4;)Landroidx/media3/exoplayer/k4$d;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/k4;->e:Landroidx/media3/exoplayer/k4$d;

    return-object p0
.end method

.method static synthetic i(Landroidx/media3/exoplayer/k4;I)Landroidx/media3/exoplayer/k4$c;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/k4;->j(I)Landroidx/media3/exoplayer/k4$c;

    move-result-object p0

    return-object p0
.end method

.method private j(I)Landroidx/media3/exoplayer/k4$c;
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/k4;->d:Landroid/media/AudioManager;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/exoplayer/k4;->d:Landroid/media/AudioManager;

    invoke-static {v0, p1}, Lt1/m;->f(Landroid/media/AudioManager;I)I

    move-result v3

    iget-object v0, p0, Landroidx/media3/exoplayer/k4;->d:Landroid/media/AudioManager;

    invoke-static {v0, p1}, Lt1/m;->g(Landroid/media/AudioManager;I)Z

    move-result v4

    iget-object v0, p0, Landroidx/media3/exoplayer/k4;->d:Landroid/media/AudioManager;

    invoke-static {v0, p1}, Lt1/m;->e(Landroid/media/AudioManager;I)I

    move-result v5

    iget-object v0, p0, Landroidx/media3/exoplayer/k4;->d:Landroid/media/AudioManager;

    invoke-static {v0, p1}, Lt1/m;->d(Landroid/media/AudioManager;I)I

    move-result v6

    new-instance v0, Landroidx/media3/exoplayer/k4$c;

    move-object v1, v0

    move v2, p1

    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/k4$c;-><init>(IIZII)V

    return-object v0
.end method

.method private synthetic n(I)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/k4;->a:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroidx/media3/exoplayer/k4;->d:Landroid/media/AudioManager;

    new-instance v0, Landroidx/media3/exoplayer/k4$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/k4$d;-><init>(Landroidx/media3/exoplayer/k4;Landroidx/media3/exoplayer/k4$a;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Landroidx/media3/exoplayer/k4;->a:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-object v0, p0, Landroidx/media3/exoplayer/k4;->e:Landroidx/media3/exoplayer/k4$d;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StreamVolumeManager"

    const-string v2, "Error registering stream volume receiver"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/u;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/k4;->c:Landroidx/media3/common/util/g;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/k4;->j(I)Landroidx/media3/exoplayer/k4$c;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/g;->i(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic o(Landroidx/media3/exoplayer/k4$c;)Landroidx/media3/exoplayer/k4$c;
    .locals 0

    return-object p0
.end method

.method private synthetic p(Landroidx/media3/exoplayer/k4$c;)Landroidx/media3/exoplayer/k4$c;
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/k4;->e:Landroidx/media3/exoplayer/k4$d;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/k4;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StreamVolumeManager"

    const-string v2, "Error unregistering stream volume receiver"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/u;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/k4;->e:Landroidx/media3/exoplayer/k4$d;

    :cond_0
    return-object p1
.end method

.method private synthetic q(ZILandroidx/media3/exoplayer/k4$c;)Landroidx/media3/exoplayer/k4$c;
    .locals 2

    iget-boolean v0, p3, Landroidx/media3/exoplayer/k4$c;->c:Z

    if-ne v0, p1, :cond_0

    return-object p3

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/k4;->d:Landroid/media/AudioManager;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/k4;->d:Landroid/media/AudioManager;

    iget v1, p3, Landroidx/media3/exoplayer/k4$c;->a:I

    if-eqz p1, :cond_1

    const/16 p1, -0x64

    goto :goto_0

    :cond_1
    const/16 p1, 0x64

    :goto_0
    invoke-virtual {v0, v1, p1, p2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Landroidx/media3/exoplayer/k4;->d:Landroid/media/AudioManager;

    iget v0, p3, Landroidx/media3/exoplayer/k4$c;->a:I

    invoke-virtual {p2, v0, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    :goto_1
    iget p1, p3, Landroidx/media3/exoplayer/k4$c;->a:I

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/k4;->j(I)Landroidx/media3/exoplayer/k4$c;

    move-result-object p1

    return-object p1
.end method

.method private synthetic r(ZLandroidx/media3/exoplayer/k4$c;)Landroidx/media3/exoplayer/k4$c;
    .locals 7

    new-instance v6, Landroidx/media3/exoplayer/k4$c;

    iget v1, p2, Landroidx/media3/exoplayer/k4$c;->a:I

    iget-boolean v0, p2, Landroidx/media3/exoplayer/k4$c;->c:Z

    if-ne v0, p1, :cond_0

    iget v0, p2, Landroidx/media3/exoplayer/k4$c;->b:I

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Landroidx/media3/exoplayer/k4;->f:I

    goto :goto_0

    :goto_1
    iget v4, p2, Landroidx/media3/exoplayer/k4$c;->d:I

    iget v5, p2, Landroidx/media3/exoplayer/k4$c;->e:I

    move-object v0, v6

    move v3, p1

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/k4$c;-><init>(IIZII)V

    return-object v6
.end method

.method private s(Landroidx/media3/exoplayer/k4$c;Landroidx/media3/exoplayer/k4$c;)V
    .locals 3

    iget-boolean v0, p1, Landroidx/media3/exoplayer/k4$c;->c:Z

    if-nez v0, :cond_0

    iget-boolean v1, p2, Landroidx/media3/exoplayer/k4$c;->c:Z

    if-eqz v1, :cond_0

    iget v1, p1, Landroidx/media3/exoplayer/k4$c;->b:I

    iput v1, p0, Landroidx/media3/exoplayer/k4;->f:I

    :cond_0
    iget v1, p1, Landroidx/media3/exoplayer/k4$c;->b:I

    iget v2, p2, Landroidx/media3/exoplayer/k4$c;->b:I

    if-ne v1, v2, :cond_1

    iget-boolean v1, p2, Landroidx/media3/exoplayer/k4$c;->c:Z

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/k4;->b:Landroidx/media3/exoplayer/k4$b;

    iget-boolean v1, p2, Landroidx/media3/exoplayer/k4$c;->c:Z

    invoke-interface {v0, v2, v1}, Landroidx/media3/exoplayer/k4$b;->r(IZ)V

    :cond_2
    iget v0, p1, Landroidx/media3/exoplayer/k4$c;->a:I

    iget v1, p2, Landroidx/media3/exoplayer/k4$c;->a:I

    if-ne v0, v1, :cond_3

    iget v0, p1, Landroidx/media3/exoplayer/k4$c;->d:I

    iget v2, p2, Landroidx/media3/exoplayer/k4$c;->d:I

    if-ne v0, v2, :cond_3

    iget p1, p1, Landroidx/media3/exoplayer/k4$c;->e:I

    iget p2, p2, Landroidx/media3/exoplayer/k4$c;->e:I

    if-eq p1, p2, :cond_4

    :cond_3
    iget-object p1, p0, Landroidx/media3/exoplayer/k4;->b:Landroidx/media3/exoplayer/k4$b;

    invoke-interface {p1, v1}, Landroidx/media3/exoplayer/k4$b;->l(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public k()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/k4;->c:Landroidx/media3/common/util/g;

    invoke-virtual {v0}, Landroidx/media3/common/util/g;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/k4$c;

    iget v0, v0, Landroidx/media3/exoplayer/k4$c;->e:I

    return v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/k4;->c:Landroidx/media3/common/util/g;

    invoke-virtual {v0}, Landroidx/media3/common/util/g;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/k4$c;

    iget v0, v0, Landroidx/media3/exoplayer/k4$c;->d:I

    return v0
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/k4;->c:Landroidx/media3/common/util/g;

    invoke-virtual {v0}, Landroidx/media3/common/util/g;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/k4$c;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/k4$c;->c:Z

    return v0
.end method

.method public t()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/k4;->c:Landroidx/media3/common/util/g;

    new-instance v1, Landroidx/media3/exoplayer/i4;

    invoke-direct {v1}, Landroidx/media3/exoplayer/i4;-><init>()V

    new-instance v2, Landroidx/media3/exoplayer/j4;

    invoke-direct {v2, p0}, Landroidx/media3/exoplayer/j4;-><init>(Landroidx/media3/exoplayer/k4;)V

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/util/g;->j(Lcom/google/common/base/f;Lcom/google/common/base/f;)V

    return-void
.end method

.method public u(ZI)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/k4;->c:Landroidx/media3/common/util/g;

    new-instance v1, Landroidx/media3/exoplayer/g4;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/g4;-><init>(Landroidx/media3/exoplayer/k4;Z)V

    new-instance v2, Landroidx/media3/exoplayer/h4;

    invoke-direct {v2, p0, p1, p2}, Landroidx/media3/exoplayer/h4;-><init>(Landroidx/media3/exoplayer/k4;ZI)V

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/util/g;->j(Lcom/google/common/base/f;Lcom/google/common/base/f;)V

    return-void
.end method
