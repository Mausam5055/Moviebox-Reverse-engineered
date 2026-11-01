.class public final Landroidx/media3/exoplayer/audio/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/i$f;,
        Landroidx/media3/exoplayer/audio/i$c;,
        Landroidx/media3/exoplayer/audio/i$e;,
        Landroidx/media3/exoplayer/audio/i$d;,
        Landroidx/media3/exoplayer/audio/i$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroidx/media3/exoplayer/audio/i$f;

.field private final c:Landroid/os/Handler;

.field private final d:Landroidx/media3/exoplayer/audio/i$c;

.field private final e:Landroid/content/BroadcastReceiver;

.field private final f:Landroidx/media3/exoplayer/audio/i$d;

.field private g:Landroidx/media3/exoplayer/audio/e;

.field private h:Landroidx/media3/exoplayer/audio/j;

.field private i:Landroidx/media3/common/c;

.field private j:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/audio/i$f;Landroidx/media3/common/c;Landroidx/media3/exoplayer/audio/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/i;->a:Landroid/content/Context;

    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/exoplayer/audio/i$f;

    iput-object p2, p0, Landroidx/media3/exoplayer/audio/i;->b:Landroidx/media3/exoplayer/audio/i$f;

    iput-object p3, p0, Landroidx/media3/exoplayer/audio/i;->i:Landroidx/media3/common/c;

    iput-object p4, p0, Landroidx/media3/exoplayer/audio/i;->h:Landroidx/media3/exoplayer/audio/j;

    invoke-static {}, Landroidx/media3/common/util/a1;->C()Landroid/os/Handler;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/exoplayer/audio/i;->c:Landroid/os/Handler;

    sget p3, Landroidx/media3/common/util/a1;->a:I

    const/16 p4, 0x17

    const/4 v0, 0x0

    if-lt p3, p4, :cond_0

    new-instance p3, Landroidx/media3/exoplayer/audio/i$c;

    invoke-direct {p3, p0, v0}, Landroidx/media3/exoplayer/audio/i$c;-><init>(Landroidx/media3/exoplayer/audio/i;Landroidx/media3/exoplayer/audio/i$a;)V

    goto :goto_0

    :cond_0
    move-object p3, v0

    :goto_0
    iput-object p3, p0, Landroidx/media3/exoplayer/audio/i;->d:Landroidx/media3/exoplayer/audio/i$c;

    new-instance p3, Landroidx/media3/exoplayer/audio/i$e;

    invoke-direct {p3, p0, v0}, Landroidx/media3/exoplayer/audio/i$e;-><init>(Landroidx/media3/exoplayer/audio/i;Landroidx/media3/exoplayer/audio/i$a;)V

    iput-object p3, p0, Landroidx/media3/exoplayer/audio/i;->e:Landroid/content/BroadcastReceiver;

    invoke-static {}, Landroidx/media3/exoplayer/audio/e;->i()Landroid/net/Uri;

    move-result-object p3

    if-eqz p3, :cond_1

    new-instance v0, Landroidx/media3/exoplayer/audio/i$d;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {v0, p0, p2, p1, p3}, Landroidx/media3/exoplayer/audio/i$d;-><init>(Landroidx/media3/exoplayer/audio/i;Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_1
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/i;->f:Landroidx/media3/exoplayer/audio/i$d;

    return-void
.end method

.method static synthetic a(Landroidx/media3/exoplayer/audio/i;)Landroidx/media3/common/c;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/i;->i:Landroidx/media3/common/c;

    return-object p0
.end method

.method static synthetic b(Landroidx/media3/exoplayer/audio/i;)Landroidx/media3/exoplayer/audio/j;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/i;->h:Landroidx/media3/exoplayer/audio/j;

    return-object p0
.end method

.method static synthetic c(Landroidx/media3/exoplayer/audio/i;Landroidx/media3/exoplayer/audio/j;)Landroidx/media3/exoplayer/audio/j;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/i;->h:Landroidx/media3/exoplayer/audio/j;

    return-object p1
.end method

.method static synthetic d(Landroidx/media3/exoplayer/audio/i;Landroidx/media3/exoplayer/audio/e;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/i;->f(Landroidx/media3/exoplayer/audio/e;)V

    return-void
.end method

.method static synthetic e(Landroidx/media3/exoplayer/audio/i;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/i;->a:Landroid/content/Context;

    return-object p0
.end method

.method private f(Landroidx/media3/exoplayer/audio/e;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/i;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/i;->g:Landroidx/media3/exoplayer/audio/e;

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/audio/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/i;->g:Landroidx/media3/exoplayer/audio/e;

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/i;->b:Landroidx/media3/exoplayer/audio/i$f;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/i$f;->a(Landroidx/media3/exoplayer/audio/e;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public g()Landroidx/media3/exoplayer/audio/e;
    .locals 5

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/i;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/i;->g:Landroidx/media3/exoplayer/audio/e;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/audio/e;

    return-object v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/i;->j:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/i;->f:Landroidx/media3/exoplayer/audio/i$d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/i$d;->a()V

    :cond_1
    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/i;->d:Landroidx/media3/exoplayer/audio/i$c;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/i;->a:Landroid/content/Context;

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/i;->c:Landroid/os/Handler;

    invoke-static {v1, v0, v2}, Landroidx/media3/exoplayer/audio/i$b;->a(Landroid/content/Context;Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/i;->a:Landroid/content/Context;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/i;->e:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/media3/exoplayer/audio/i;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/i;->a:Landroid/content/Context;

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/i;->i:Landroidx/media3/common/c;

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/i;->h:Landroidx/media3/exoplayer/audio/j;

    invoke-static {v1, v0, v2, v3}, Landroidx/media3/exoplayer/audio/e;->e(Landroid/content/Context;Landroid/content/Intent;Landroidx/media3/common/c;Landroidx/media3/exoplayer/audio/j;)Landroidx/media3/exoplayer/audio/e;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/i;->g:Landroidx/media3/exoplayer/audio/e;

    return-object v0
.end method

.method public h(Landroidx/media3/common/c;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/i;->i:Landroidx/media3/common/c;

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/i;->a:Landroid/content/Context;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/i;->h:Landroidx/media3/exoplayer/audio/j;

    invoke-static {v0, p1, v1}, Landroidx/media3/exoplayer/audio/e;->f(Landroid/content/Context;Landroidx/media3/common/c;Landroidx/media3/exoplayer/audio/j;)Landroidx/media3/exoplayer/audio/e;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/i;->f(Landroidx/media3/exoplayer/audio/e;)V

    return-void
.end method

.method public i(Landroid/media/AudioDeviceInfo;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/i;->h:Landroidx/media3/exoplayer/audio/j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroidx/media3/exoplayer/audio/j;->a:Landroid/media/AudioDeviceInfo;

    :goto_0
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    new-instance v1, Landroidx/media3/exoplayer/audio/j;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/audio/j;-><init>(Landroid/media/AudioDeviceInfo;)V

    :cond_2
    iput-object v1, p0, Landroidx/media3/exoplayer/audio/i;->h:Landroidx/media3/exoplayer/audio/j;

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/i;->a:Landroid/content/Context;

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/i;->i:Landroidx/media3/common/c;

    invoke-static {p1, v0, v1}, Landroidx/media3/exoplayer/audio/e;->f(Landroid/content/Context;Landroidx/media3/common/c;Landroidx/media3/exoplayer/audio/j;)Landroidx/media3/exoplayer/audio/e;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/i;->f(Landroidx/media3/exoplayer/audio/e;)V

    return-void
.end method

.method public j()V
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/i;->j:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/i;->g:Landroidx/media3/exoplayer/audio/e;

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/i;->d:Landroidx/media3/exoplayer/audio/i$c;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/i;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Landroidx/media3/exoplayer/audio/i$b;->b(Landroid/content/Context;Landroid/media/AudioDeviceCallback;)V

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/i;->a:Landroid/content/Context;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/i;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/i;->f:Landroidx/media3/exoplayer/audio/i$d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/i$d;->b()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/i;->j:Z

    return-void
.end method
