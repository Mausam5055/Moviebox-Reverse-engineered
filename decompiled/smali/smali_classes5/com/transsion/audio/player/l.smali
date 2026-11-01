.class public final Lcom/transsion/audio/player/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/player/orplayer/g;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/aliyun/player/AliPlayer;

.field private c:Lcom/transsion/player/orplayer/c;

.field private d:Lcom/transsion/player/orplayer/f;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "OrAudioPlayer"

    iput-object v0, p0, Lcom/transsion/audio/player/l;->a:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/audio/player/l;->o(Landroid/content/Context;)V

    return-void
.end method

.method private final A()V
    .locals 4

    sget-object v0, Lbo/b;->a:Lbo/b;

    invoke-virtual {v0}, Lbo/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/aliyun/player/nativeclass/CacheConfig;

    invoke-direct {v0}, Lcom/aliyun/player/nativeclass/CacheConfig;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/aliyun/player/nativeclass/CacheConfig;->mEnable:Z

    const-wide/16 v1, 0x4b0

    iput-wide v1, v0, Lcom/aliyun/player/nativeclass/CacheConfig;->mMaxDurationS:J

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "video_cache"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/aliyun/player/nativeclass/CacheConfig;->mDir:Ljava/lang/String;

    const/16 v1, 0x32

    iput v1, v0, Lcom/aliyun/player/nativeclass/CacheConfig;->mMaxSizeMB:I

    iget-object v1, p0, Lcom/transsion/audio/player/l;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/aliyun/player/IPlayer;->setCacheConfig(Lcom/aliyun/player/nativeclass/CacheConfig;)V

    :cond_1
    return-void
.end method

.method public static synthetic c(Lcom/transsion/audio/player/l;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/player/l;->w(Lcom/transsion/audio/player/l;)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/audio/player/l;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/audio/player/l;->v(Lcom/transsion/audio/player/l;II)V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/audio/player/l;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/player/l;->z(Lcom/transsion/audio/player/l;I)V

    return-void
.end method

.method public static synthetic f(Lcom/transsion/audio/player/l;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/player/l;->q(Lcom/transsion/audio/player/l;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g()V
    .locals 0

    invoke-static {}, Lcom/transsion/audio/player/l;->s()V

    return-void
.end method

.method public static synthetic h(Lcom/transsion/audio/player/l;Lcom/aliyun/player/bean/ErrorInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/player/l;->t(Lcom/transsion/audio/player/l;Lcom/aliyun/player/bean/ErrorInfo;)V

    return-void
.end method

.method public static synthetic i(Lcom/transsion/audio/player/l;Lcom/aliyun/player/bean/InfoBean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/player/l;->x(Lcom/transsion/audio/player/l;Lcom/aliyun/player/bean/InfoBean;)V

    return-void
.end method

.method public static synthetic j(Lcom/transsion/audio/player/l;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/player/l;->u(Lcom/transsion/audio/player/l;)V

    return-void
.end method

.method public static synthetic k()V
    .locals 0

    invoke-static {}, Lcom/transsion/audio/player/l;->y()V

    return-void
.end method

.method public static final synthetic l(Lcom/transsion/audio/player/l;)Lcom/aliyun/player/AliPlayer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/player/l;->b:Lcom/aliyun/player/AliPlayer;

    return-object p0
.end method

.method public static final synthetic m(Lcom/transsion/audio/player/l;)Lcom/transsion/player/orplayer/f;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/player/l;->d:Lcom/transsion/player/orplayer/f;

    return-object p0
.end method

.method public static final synthetic n(Lcom/transsion/audio/player/l;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/player/l;->a:Ljava/lang/String;

    return-object p0
.end method

.method private final o(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/player/l;->b:Lcom/aliyun/player/AliPlayer;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/aliyun/player/AliPlayerFactory;->createAliPlayer(Landroid/content/Context;)Lcom/aliyun/player/AliPlayer;

    move-result-object p1

    sget-object v0, Lih/b;->a:Lih/b;

    invoke-virtual {v0}, Lih/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/aliyun/player/IPlayer;->setTraceId(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/audio/player/l;->b:Lcom/aliyun/player/AliPlayer;

    invoke-direct {p0}, Lcom/transsion/audio/player/l;->p()V

    invoke-direct {p0}, Lcom/transsion/audio/player/l;->A()V

    invoke-direct {p0}, Lcom/transsion/audio/player/l;->r()V

    :cond_0
    return-void
.end method

.method private final p()V
    .locals 3

    new-instance v0, Lcom/transsion/audio/player/l$a;

    invoke-direct {v0, p0}, Lcom/transsion/audio/player/l$a;-><init>(Lcom/transsion/audio/player/l;)V

    new-instance v1, Lcom/transsion/player/orplayer/c;

    new-instance v2, Lcom/transsion/audio/player/c;

    invoke-direct {v2, p0}, Lcom/transsion/audio/player/c;-><init>(Lcom/transsion/audio/player/l;)V

    invoke-direct {v1, v0, v2}, Lcom/transsion/player/orplayer/c;-><init>(Lcom/transsion/player/orplayer/d;Lkotlin/jvm/functions/Function1;)V

    iput-object v1, p0, Lcom/transsion/audio/player/l;->c:Lcom/transsion/player/orplayer/c;

    return-void
.end method

.method private static final q(Lcom/transsion/audio/player/l;Z)Lkotlin/Unit;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/player/l;->d:Lcom/transsion/player/orplayer/f;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/player/orplayer/f;->onFocusChange(Z)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final r()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/player/l;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/audio/player/d;

    invoke-direct {v1}, Lcom/transsion/audio/player/d;-><init>()V

    invoke-interface {v0, v1}, Lcom/aliyun/player/IPlayer;->setOnCompletionListener(Lcom/aliyun/player/IPlayer$OnCompletionListener;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/player/l;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/transsion/audio/player/e;

    invoke-direct {v1, p0}, Lcom/transsion/audio/player/e;-><init>(Lcom/transsion/audio/player/l;)V

    invoke-interface {v0, v1}, Lcom/aliyun/player/IPlayer;->setOnErrorListener(Lcom/aliyun/player/IPlayer$OnErrorListener;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/audio/player/l;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/transsion/audio/player/f;

    invoke-direct {v1, p0}, Lcom/transsion/audio/player/f;-><init>(Lcom/transsion/audio/player/l;)V

    invoke-interface {v0, v1}, Lcom/aliyun/player/IPlayer;->setOnPreparedListener(Lcom/aliyun/player/IPlayer$OnPreparedListener;)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/audio/player/l;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/transsion/audio/player/g;

    invoke-direct {v1, p0}, Lcom/transsion/audio/player/g;-><init>(Lcom/transsion/audio/player/l;)V

    invoke-interface {v0, v1}, Lcom/aliyun/player/IPlayer;->setOnVideoSizeChangedListener(Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/audio/player/l;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/transsion/audio/player/h;

    invoke-direct {v1, p0}, Lcom/transsion/audio/player/h;-><init>(Lcom/transsion/audio/player/l;)V

    invoke-interface {v0, v1}, Lcom/aliyun/player/IPlayer;->setOnRenderingStartListener(Lcom/aliyun/player/IPlayer$OnRenderingStartListener;)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/audio/player/l;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_5

    new-instance v1, Lcom/transsion/audio/player/i;

    invoke-direct {v1, p0}, Lcom/transsion/audio/player/i;-><init>(Lcom/transsion/audio/player/l;)V

    invoke-interface {v0, v1}, Lcom/aliyun/player/IPlayer;->setOnInfoListener(Lcom/aliyun/player/IPlayer$OnInfoListener;)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/audio/player/l;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_6

    new-instance v1, Lcom/transsion/audio/player/l$b;

    invoke-direct {v1, p0}, Lcom/transsion/audio/player/l$b;-><init>(Lcom/transsion/audio/player/l;)V

    invoke-interface {v0, v1}, Lcom/aliyun/player/IPlayer;->setOnLoadingStatusListener(Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;)V

    :cond_6
    iget-object v0, p0, Lcom/transsion/audio/player/l;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_7

    new-instance v1, Lcom/transsion/audio/player/j;

    invoke-direct {v1}, Lcom/transsion/audio/player/j;-><init>()V

    invoke-interface {v0, v1}, Lcom/aliyun/player/IPlayer;->setOnSeekCompleteListener(Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;)V

    :cond_7
    iget-object v0, p0, Lcom/transsion/audio/player/l;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_8

    new-instance v1, Lcom/transsion/audio/player/l$c;

    invoke-direct {v1}, Lcom/transsion/audio/player/l$c;-><init>()V

    invoke-interface {v0, v1}, Lcom/aliyun/player/IPlayer;->setOnTrackChangedListener(Lcom/aliyun/player/IPlayer$OnTrackChangedListener;)V

    :cond_8
    iget-object v0, p0, Lcom/transsion/audio/player/l;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_9

    new-instance v1, Lcom/transsion/audio/player/k;

    invoke-direct {v1, p0}, Lcom/transsion/audio/player/k;-><init>(Lcom/transsion/audio/player/l;)V

    invoke-interface {v0, v1}, Lcom/aliyun/player/IPlayer;->setOnStateChangedListener(Lcom/aliyun/player/IPlayer$OnStateChangedListener;)V

    :cond_9
    return-void
.end method

.method private static final s()V
    .locals 0

    return-void
.end method

.method private static final t(Lcom/transsion/audio/player/l;Lcom/aliyun/player/bean/ErrorInfo;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/audio/player/l;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/aliyun/player/bean/ErrorInfo;->getCode()Lcom/aliyun/player/bean/ErrorCode;

    move-result-object v2

    invoke-virtual {p1}, Lcom/aliyun/player/bean/ErrorInfo;->getMsg()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onError code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",msg:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v0, Lcom/transsion/player/orplayer/PlayError;

    invoke-virtual {p1}, Lcom/aliyun/player/bean/ErrorInfo;->getCode()Lcom/aliyun/player/bean/ErrorCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aliyun/player/bean/ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/aliyun/player/bean/ErrorInfo;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/transsion/player/orplayer/PlayError;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/audio/player/l;->d:Lcom/transsion/player/orplayer/f;

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2, v3}, Lcom/transsion/player/orplayer/f$a;->r(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/orplayer/PlayError;Lao/e;ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lcom/aliyun/player/bean/ErrorInfo;->getCode()Lcom/aliyun/player/bean/ErrorCode;

    move-result-object p1

    sget-object v0, Lcom/aliyun/player/bean/ErrorCode;->ERROR_DECODE_AUDIO:Lcom/aliyun/player/bean/ErrorCode;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audio/player/l;->prepare()V

    invoke-virtual {p0}, Lcom/transsion/audio/player/l;->play()V

    :cond_1
    return-void
.end method

.method private static final u(Lcom/transsion/audio/player/l;)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/audio/player/l;->d:Lcom/transsion/player/orplayer/f;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lcom/transsion/player/orplayer/f$a;->x(Lcom/transsion/player/orplayer/f;Lao/e;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static final v(Lcom/transsion/audio/player/l;II)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/player/l;->d:Lcom/transsion/player/orplayer/f;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/player/orplayer/f;->onVideoSizeChanged(II)V

    :cond_0
    return-void
.end method

.method private static final w(Lcom/transsion/audio/player/l;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/player/l;->d:Lcom/transsion/player/orplayer/f;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/player/orplayer/f;->onRenderFirstFrame()V

    :cond_0
    return-void
.end method

.method private static final x(Lcom/transsion/audio/player/l;Lcom/aliyun/player/bean/InfoBean;)V
    .locals 8

    invoke-virtual {p1}, Lcom/aliyun/player/bean/InfoBean;->getCode()Lcom/aliyun/player/bean/InfoCode;

    move-result-object v0

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->CurrentPosition:Lcom/aliyun/player/bean/InfoCode;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/aliyun/player/bean/InfoBean;->getExtraValue()J

    move-result-wide v3

    iget-object v2, p0, Lcom/transsion/audio/player/l;->d:Lcom/transsion/player/orplayer/f;

    if-eqz v2, :cond_0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/transsion/player/orplayer/f$a;->z(Lcom/transsion/player/orplayer/f;JLao/e;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static final y()V
    .locals 0

    return-void
.end method

.method private static final z(Lcom/transsion/audio/player/l;I)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/audio/player/l;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOnStateChangedListener status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    iput-boolean v3, p0, Lcom/transsion/audio/player/l;->e:Z

    iget-object v4, p0, Lcom/transsion/audio/player/l;->d:Lcom/transsion/player/orplayer/f;

    if-eqz v4, :cond_1

    invoke-interface {v4, v3}, Lcom/transsion/player/orplayer/f;->onIsPlayingChanged(Z)V

    :cond_1
    const/4 v3, 0x6

    if-ne p1, v3, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/transsion/audio/player/l;->f:Z

    iget-object v0, p0, Lcom/transsion/audio/player/l;->c:Lcom/transsion/player/orplayer/c;

    if-eqz v0, :cond_3

    iget-boolean v4, p0, Lcom/transsion/audio/player/l;->e:Z

    invoke-virtual {v0, v4}, Lcom/transsion/player/orplayer/c;->f(Z)V

    :cond_3
    const/4 v0, 0x0

    if-eq p1, v2, :cond_6

    const/4 v2, 0x4

    if-eq p1, v2, :cond_5

    const/4 v2, 0x5

    if-eq p1, v2, :cond_5

    if-eq p1, v3, :cond_4

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/transsion/audio/player/l;->d:Lcom/transsion/player/orplayer/f;

    if-eqz p0, :cond_7

    invoke-static {p0, v0, v1, v0}, Lcom/transsion/player/orplayer/f$a;->f(Lcom/transsion/player/orplayer/f;Lao/e;ILjava/lang/Object;)V

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/transsion/audio/player/l;->d:Lcom/transsion/player/orplayer/f;

    if-eqz p0, :cond_7

    invoke-static {p0, v0, v1, v0}, Lcom/transsion/player/orplayer/f$a;->G(Lcom/transsion/player/orplayer/f;Lao/e;ILjava/lang/Object;)V

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lcom/transsion/audio/player/l;->d:Lcom/transsion/player/orplayer/f;

    if-eqz p0, :cond_7

    invoke-static {p0, v0, v1, v0}, Lcom/transsion/player/orplayer/f$a;->J(Lcom/transsion/player/orplayer/f;Lao/e;ILjava/lang/Object;)V

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public addDataSource(Lao/e;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/g$b;->a(Lcom/transsion/player/orplayer/g;Lao/e;)Z

    move-result p1

    return p1
.end method

.method public addPlayerListener(Lcom/transsion/player/orplayer/f;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/g$b;->b(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public changeTrackSelection(Lmo/d;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/player/orplayer/g$b;->c(Lcom/transsion/player/orplayer/g;Lmo/d;I)V

    return-void
.end method

.method public clearScreen()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/g$b;->d(Lcom/transsion/player/orplayer/g;)V

    return-void
.end method

.method public clearSurfaceOnly()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/g$b;->e(Lcom/transsion/player/orplayer/g;)V

    return-void
.end method

.method public currentMediaSource()Lao/e;
    .locals 1

    invoke-static {p0}, Lcom/transsion/player/orplayer/g$b;->f(Lcom/transsion/player/orplayer/g;)Lao/e;

    move-result-object v0

    return-object v0
.end method

.method public enableHardwareDecoder(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/player/l;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->enableHardwareDecoder(Z)V

    :cond_0
    return-void
.end method

.method public getBitrate()Lkotlin/Pair;
    .locals 2

    new-instance v0, Lkotlin/Pair;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    invoke-static {p0}, Lcom/transsion/player/orplayer/g$b;->g(Lcom/transsion/player/orplayer/g;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTracks()Lmo/c;
    .locals 1

    invoke-static {p0}, Lcom/transsion/player/orplayer/g$b;->h(Lcom/transsion/player/orplayer/g;)Lmo/c;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentVideoFormat()Lmo/b;
    .locals 1

    invoke-static {p0}, Lcom/transsion/player/orplayer/g$b;->i(Lcom/transsion/player/orplayer/g;)Lmo/b;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadBitrate()Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lcom/transsion/player/orplayer/g$b;->j(Lcom/transsion/player/orplayer/g;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/player/l;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->getDuration()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getVideoHeight()I
    .locals 1

    invoke-static {p0}, Lcom/transsion/player/orplayer/g$b;->k(Lcom/transsion/player/orplayer/g;)I

    move-result v0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    invoke-static {p0}, Lcom/transsion/player/orplayer/g$b;->l(Lcom/transsion/player/orplayer/g;)I

    move-result v0

    return v0
.end method

.method public getVolume()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/player/l;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->getVolume()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/audio/player/l;->f:Z

    return v0
.end method

.method public isLoading()Z
    .locals 1

    invoke-static {p0}, Lcom/transsion/player/orplayer/g$b;->m(Lcom/transsion/player/orplayer/g;)Z

    move-result v0

    return v0
.end method

.method public isMute()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/player/l;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->isMute()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/audio/player/l;->e:Z

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    invoke-static {p0}, Lcom/transsion/player/orplayer/g$b;->n(Lcom/transsion/player/orplayer/g;)Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/player/l;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/player/l;->c:Lcom/transsion/player/orplayer/c;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/player/orplayer/c;->g(Z)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/audio/player/l;->c:Lcom/transsion/player/orplayer/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/player/orplayer/c;->b()V

    :cond_2
    return-void
.end method

.method public play()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/player/l;->d:Lcom/transsion/player/orplayer/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->initPlayer()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/player/l;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->start()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/audio/player/l;->c:Lcom/transsion/player/orplayer/c;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/player/orplayer/c;->g(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/audio/player/l;->isMute()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/audio/player/l;->c:Lcom/transsion/player/orplayer/c;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/player/orplayer/c;->e()V

    :cond_3
    return-void
.end method

.method public prepare()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/player/l;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->prepare()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/player/l;->d:Lcom/transsion/player/orplayer/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/transsion/player/orplayer/f$a;->u(Lcom/transsion/player/orplayer/f;Lao/e;ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/player/l;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->release()V

    :cond_1
    iput-object v1, p0, Lcom/transsion/audio/player/l;->b:Lcom/aliyun/player/AliPlayer;

    iget-object v0, p0, Lcom/transsion/audio/player/l;->c:Lcom/transsion/player/orplayer/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/player/orplayer/c;->b()V

    :cond_2
    iput-object v1, p0, Lcom/transsion/audio/player/l;->c:Lcom/transsion/player/orplayer/c;

    return-void
.end method

.method public release(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/g$b;->o(Lcom/transsion/player/orplayer/g;Ljava/lang/String;)V

    return-void
.end method

.method public removeDataSource(Lao/e;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/g$b;->p(Lcom/transsion/player/orplayer/g;Lao/e;)Z

    move-result p1

    return p1
.end method

.method public removePlayerListener(Lcom/transsion/player/orplayer/f;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/g$b;->q(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public requestForce()Z
    .locals 1

    invoke-static {p0}, Lcom/transsion/player/orplayer/g$b;->r(Lcom/transsion/player/orplayer/g;)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/player/l;->d:Lcom/transsion/player/orplayer/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->onPlayerReset()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/player/l;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->reset()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/audio/player/l;->c:Lcom/transsion/player/orplayer/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/player/orplayer/c;->b()V

    :cond_2
    return-void
.end method

.method public seekTo(J)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/player/l;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_0

    const v1, 0x249f0

    invoke-interface {v0, v1}, Lcom/aliyun/player/IPlayer;->setMaxAccurateSeekDelta(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/player/l;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/aliyun/player/IPlayer$SeekMode;->Accurate:Lcom/aliyun/player/IPlayer$SeekMode;

    invoke-interface {v0, p1, p2, v1}, Lcom/aliyun/player/IPlayer;->seekTo(JLcom/aliyun/player/IPlayer$SeekMode;)V

    :cond_1
    return-void
.end method

.method public seekTo(Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/g$b;->s(Lcom/transsion/player/orplayer/g;Ljava/lang/String;J)V

    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/player/l;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setAutoPlay(Z)V

    :cond_0
    return-void
.end method

.method public setDataSource(Lao/e;)V
    .locals 1

    const-string v0, "mediaSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/aliyun/player/source/UrlSource;

    invoke-direct {v0}, Lcom/aliyun/player/source/UrlSource;-><init>()V

    invoke-virtual {p1}, Lao/e;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/aliyun/player/source/UrlSource;->setUri(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/audio/player/l;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/aliyun/player/UrlPlayer;->setDataSource(Lcom/aliyun/player/source/UrlSource;)V

    :cond_0
    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/player/l;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setLoop(Z)V

    :cond_0
    return-void
.end method

.method public setMute(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/g$b;->v(Lcom/transsion/player/orplayer/g;Z)V

    return-void
.end method

.method public setPlayerConfig(Lbo/d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/g$b;->w(Lcom/transsion/player/orplayer/g;Lbo/d;)V

    return-void
.end method

.method public setPlayerListener(Lcom/transsion/player/orplayer/f;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/audio/player/l;->d:Lcom/transsion/player/orplayer/f;

    return-void
.end method

.method public setScaleMode(Lcom/transsion/player/enum/ScaleMode;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/g$b;->x(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/enum/ScaleMode;)V

    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/player/l;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setSpeed(F)V

    :cond_0
    return-void
.end method

.method public setSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0

    return-void
.end method

.method public setTextureView(Landroid/view/TextureView;)V
    .locals 0

    return-void
.end method

.method public setVipResolution(ZI)V
    .locals 0

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/player/l;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setVolume(F)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/player/l;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/player/l;->c:Lcom/transsion/player/orplayer/c;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/player/orplayer/c;->g(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/audio/player/l;->isMute()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/audio/player/l;->c:Lcom/transsion/player/orplayer/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/player/orplayer/c;->b()V

    :cond_2
    return-void
.end method
