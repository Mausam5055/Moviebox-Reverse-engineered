.class public Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;
.super Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c$a;
    }
.end annotation


# instance fields
.field private final i:Landroid/media/MediaPlayer;

.field private final j:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c$a;

.field private k:Ld6/a;

.field private l:Landroid/view/Surface;

.field private final m:Ljava/lang/Object;

.field private volatile n:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/a;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-direct {p0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->s(Landroid/media/MediaPlayer;)V

    const/4 v0, 0x3

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    new-instance v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c$a;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c$a;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;)V

    iput-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->j:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c$a;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->v()V

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private s(Landroid/media/MediaPlayer;)V
    .locals 10

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v4, "android.media.MediaTimeProvider"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "android.media.SubtitleController"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "android.media.SubtitleController$Anchor"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "android.media.SubtitleController$Listener"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    new-array v8, v0, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v3

    aput-object v4, v8, v2

    aput-object v7, v8, v1

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-static {}, Lt5/b;->c()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v7, v0, v3

    aput-object v8, v0, v2

    aput-object v8, v0, v1

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v4, "mHandler"

    invoke-virtual {v5, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v4, v0, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v7, "setSubtitleAnchor"

    new-array v9, v1, [Ljava/lang/Class;

    aput-object v5, v9, v3

    aput-object v6, v9, v2

    invoke-virtual {v4, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    aput-object v8, v1, v2

    invoke-virtual {v4, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    invoke-virtual {v4, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return-void
.end method

.method private t()V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->k:Ld6/a;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ld6/a;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->k:Ld6/a;

    :cond_0
    return-void
.end method

.method private u()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->l:Landroid/view/Surface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->l:Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private v()V
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->j:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->j:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->j:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->j:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->j:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->j:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->j:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    return-void
.end method


# virtual methods
.method public Dq()V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    :cond_0
    return-void
.end method

.method public EjP(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method

.method public Fmk()I
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public HiB()V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public Jcg()V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    return-void
.end method

.method public Sj(JI)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_4

    if-eqz p3, :cond_3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    iget-object p3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    long-to-int p1, p1

    invoke-virtual {p3, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void

    :cond_0
    iget-object p3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    long-to-int p1, p1

    int-to-long p1, p1

    invoke-static {p3, p1, p2, v0}, Lcom/aliyun/player/externalplayer/a;->a(Landroid/media/MediaPlayer;JI)V

    return-void

    :cond_1
    iget-object p3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    long-to-int p1, p1

    int-to-long p1, p1

    invoke-static {p3, p1, p2, v0}, Lcom/aliyun/player/externalplayer/a;->a(Landroid/media/MediaPlayer;JI)V

    return-void

    :cond_2
    iget-object p3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    long-to-int p1, p1

    int-to-long p1, p1

    invoke-static {p3, p1, p2, v0}, Lcom/aliyun/player/externalplayer/a;->a(Landroid/media/MediaPlayer;JI)V

    return-void

    :cond_3
    iget-object p3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    long-to-int p1, p1

    int-to-long p1, p1

    const/4 v0, 0x0

    invoke-static {p3, p1, p2, v0}, Lcom/aliyun/player/externalplayer/a;->a(Landroid/media/MediaPlayer;JI)V

    return-void

    :cond_4
    iget-object p3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    long-to-int p1, p1

    invoke-virtual {p3, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public Sj(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->n:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/a;->h:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public declared-synchronized Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lt5/b;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ld6/a;->h(Landroid/content/Context;Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Ld6/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->k:Ld6/a;

    invoke-static {p1}, Le6/b;->b(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V

    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->k:Ld6/a;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/media/MediaDataSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    return-void
.end method

.method public TEQ()J
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v0

    return-wide v0

    :catchall_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public TKC(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method public Ym()V
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->n:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->n:Z

    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->u()V

    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->t()V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/a;->l()V

    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->v()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public aa()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->t()V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/a;->l()V

    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->v()V

    return-void
.end method

.method public d(Lt5/c;)V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0

    invoke-virtual {p1}, Lt5/c;->a()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object p1

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->u()V

    return-void
.end method

.method public g(Ljava/io/FileDescriptor;)V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public h(Landroid/view/Surface;)V
    .locals 1

    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->u()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->l:Landroid/view/Surface;

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public sP(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    return-void
.end method

.method public sef()I
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public uA()J
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v0

    return-wide v0

    :catchall_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public vS()V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    return-void
.end method
