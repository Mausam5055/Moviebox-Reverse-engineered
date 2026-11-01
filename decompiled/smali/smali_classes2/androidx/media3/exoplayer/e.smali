.class final Landroidx/media3/exoplayer/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/e$a;,
        Landroidx/media3/exoplayer/e$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroidx/media3/exoplayer/e$a;

.field private final c:Landroidx/media3/common/util/p;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/exoplayer/e$b;Landroidx/media3/common/util/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/e;->a:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-interface {p5, p2, p1}, Landroidx/media3/common/util/i;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/p;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/exoplayer/e;->c:Landroidx/media3/common/util/p;

    new-instance p2, Landroidx/media3/exoplayer/e$a;

    invoke-interface {p5, p3, p1}, Landroidx/media3/common/util/i;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/p;

    move-result-object p1

    invoke-direct {p2, p0, p1, p4}, Landroidx/media3/exoplayer/e$a;-><init>(Landroidx/media3/exoplayer/e;Landroidx/media3/common/util/p;Landroidx/media3/exoplayer/e$b;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/e;->b:Landroidx/media3/exoplayer/e$a;

    return-void
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/e;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/e;->d()V

    return-void
.end method

.method public static synthetic b(Landroidx/media3/exoplayer/e;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/e;->e()V

    return-void
.end method

.method static synthetic c(Landroidx/media3/exoplayer/e;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/e;->d:Z

    return p0
.end method

.method private synthetic d()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/e;->a:Landroid/content/Context;

    iget-object v1, p0, Landroidx/media3/exoplayer/e;->b:Landroidx/media3/exoplayer/e$a;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private synthetic e()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/e;->a:Landroid/content/Context;

    iget-object v1, p0, Landroidx/media3/exoplayer/e;->b:Landroidx/media3/exoplayer/e$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public f(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/e;->d:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/e;->c:Landroidx/media3/common/util/p;

    new-instance v0, Landroidx/media3/exoplayer/b;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/b;-><init>(Landroidx/media3/exoplayer/e;)V

    invoke-interface {p1, v0}, Landroidx/media3/common/util/p;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/e;->d:Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/e;->c:Landroidx/media3/common/util/p;

    new-instance v0, Landroidx/media3/exoplayer/c;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/c;-><init>(Landroidx/media3/exoplayer/e;)V

    invoke-interface {p1, v0}, Landroidx/media3/common/util/p;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/e;->d:Z

    :goto_0
    return-void
.end method
