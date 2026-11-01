.class public abstract Lt1/m;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/media/AudioManager;

.field private static b:Landroid/content/Context;


# direct methods
.method public static synthetic a(Landroid/content/Context;Landroidx/media3/common/util/l;)V
    .locals 0

    invoke-static {p0, p1}, Lt1/m;->h(Landroid/content/Context;Landroidx/media3/common/util/l;)V

    return-void
.end method

.method public static b(Landroid/media/AudioManager;Lt1/g;)I
    .locals 2

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lt1/g;->c()Landroid/media/AudioFocusRequest;

    move-result-object p1

    invoke-static {p0, p1}, Lt1/j;->a(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Lt1/g;->f()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result p0

    return p0
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Landroid/media/AudioManager;
    .locals 4

    const-class v0, Lt1/m;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lt1/m;->b:Landroid/content/Context;

    if-eq v1, p0, :cond_0

    const/4 v1, 0x0

    sput-object v1, Lt1/m;->a:Landroid/media/AudioManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    sget-object v1, Lt1/m;->a:Landroid/media/AudioManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit v0

    return-object v1

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Landroidx/media3/common/util/l;

    invoke-direct {v1}, Landroidx/media3/common/util/l;-><init>()V

    invoke-static {}, Landroidx/media3/common/util/c;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lt1/l;

    invoke-direct {v3, p0, v1}, Lt1/l;-><init>(Landroid/content/Context;Landroidx/media3/common/util/l;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Landroidx/media3/common/util/l;->c()V

    sget-object p0, Lt1/m;->a:Landroid/media/AudioManager;

    invoke-static {p0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_3
    :goto_1
    :try_start_2
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    sput-object p0, Lt1/m;->a:Landroid/media/AudioManager;

    invoke-static {p0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static d(Landroid/media/AudioManager;I)I
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    return p0
.end method

.method public static e(Landroid/media/AudioManager;I)I
    .locals 2

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Lt1/i;->a(Landroid/media/AudioManager;I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f(Landroid/media/AudioManager;I)I
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not retrieve stream volume for stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioManagerCompat"

    invoke-static {v2, v1, v0}, Landroidx/media3/common/util/u;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    return p0
.end method

.method public static g(Landroid/media/AudioManager;I)Z
    .locals 2

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p0, p1}, Lt1/m;->f(Landroid/media/AudioManager;I)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic h(Landroid/content/Context;Landroidx/media3/common/util/l;)V
    .locals 1

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    sput-object p0, Lt1/m;->a:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroidx/media3/common/util/l;->f()Z

    return-void
.end method

.method public static i(Landroid/media/AudioManager;Lt1/g;)I
    .locals 2

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lt1/g;->c()Landroid/media/AudioFocusRequest;

    move-result-object p1

    invoke-static {p0, p1}, Lt1/k;->a(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Lt1/g;->f()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    invoke-virtual {p1}, Lt1/g;->b()Landroidx/media3/common/c;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/c;->b()I

    move-result v1

    invoke-virtual {p1}, Lt1/g;->e()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p0

    return p0
.end method
