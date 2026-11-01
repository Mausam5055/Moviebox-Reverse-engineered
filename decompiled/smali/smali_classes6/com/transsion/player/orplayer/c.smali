.class public final Lcom/transsion/player/orplayer/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field private final a:Lcom/transsion/player/orplayer/d;

.field private final b:Lkotlin/jvm/functions/Function1;

.field private c:Ljava/lang/String;

.field private final d:Landroid/media/AudioManager;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Landroid/media/AudioFocusRequest;


# direct methods
.method public constructor <init>(Lcom/transsion/player/orplayer/d;Lkotlin/jvm/functions/Function1;)V
    .locals 6

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/player/orplayer/c;->a:Lcom/transsion/player/orplayer/d;

    iput-object p2, p0, Lcom/transsion/player/orplayer/c;->b:Lkotlin/jvm/functions/Function1;

    const-string p1, "AudioFocusHelper"

    iput-object p1, p0, Lcom/transsion/player/orplayer/c;->c:Ljava/lang/String;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/transsion/player/orplayer/c;->d:Landroid/media/AudioManager;

    sget-object v0, Loo/e;->a:Loo/e;

    iget-object v1, p0, Lcom/transsion/player/orplayer/c;->c:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AudioFocusHelper orPlayer "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Loo/e;->b(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    invoke-static {p1}, Lt1/a;->a(I)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p2

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-static {p2, v0}, Lt1/b;->a(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    invoke-static {p2, p1}, Lcom/transsion/player/orplayer/a;->a(Landroid/media/AudioFocusRequest$Builder;Z)Landroid/media/AudioFocusRequest$Builder;

    invoke-static {p2, p0}, Lcom/google/android/exoplayer2/d;->a(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    invoke-static {p2}, Lt1/e;->a(Landroid/media/AudioFocusRequest$Builder;)Landroid/media/AudioFocusRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/player/orplayer/c;->h:Landroid/media/AudioFocusRequest;

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/transsion/player/orplayer/c;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/c;->d(Lcom/transsion/player/orplayer/c;I)V

    return-void
.end method

.method private final c(I)V
    .locals 8

    sget-object v6, Loo/e;->a:Loo/e;

    iget-object v1, p0, Lcom/transsion/player/orplayer/c;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAudioFocusChange ------------ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", focusChange = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Loo/e;->b(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v0, -0x3

    const/high16 v7, 0x3f800000    # 1.0f

    if-eq p1, v0, :cond_3

    const/4 v0, -0x2

    const-string v1, ", isUserPause = "

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v2, p0, Lcom/transsion/player/orplayer/c;->c:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/transsion/player/orplayer/c;->e:Z

    iget-boolean v3, p0, Lcom/transsion/player/orplayer/c;->f:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleAudioFocusChange GAIN, focusChange = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\uff0c mStartRequested = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, v2

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Loo/e;->b(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/player/orplayer/c;->b:Lkotlin/jvm/functions/Function1;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p1, p0, Lcom/transsion/player/orplayer/c;->e:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/player/orplayer/c;->f:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/player/orplayer/c;->a:Lcom/transsion/player/orplayer/d;

    invoke-interface {p1}, Lcom/transsion/player/orplayer/d;->play()V

    :cond_1
    iget-object p1, p0, Lcom/transsion/player/orplayer/c;->a:Lcom/transsion/player/orplayer/d;

    invoke-interface {p1}, Lcom/transsion/player/orplayer/d;->isMute()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/transsion/player/orplayer/c;->a:Lcom/transsion/player/orplayer/d;

    invoke-interface {p1, v7}, Lcom/transsion/player/orplayer/d;->setVolume(F)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/transsion/player/orplayer/c;->c:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/transsion/player/orplayer/c;->f:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleAudioFocusChange LOSS, focusChange = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, v2

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Loo/e;->i(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/player/orplayer/c;->b:Lkotlin/jvm/functions/Function1;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p1, p0, Lcom/transsion/player/orplayer/c;->g:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/player/orplayer/c;->a:Lcom/transsion/player/orplayer/d;

    invoke-interface {p1}, Lcom/transsion/player/orplayer/d;->pause()V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/transsion/player/orplayer/c;->g:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/player/orplayer/c;->a:Lcom/transsion/player/orplayer/d;

    invoke-interface {v0}, Lcom/transsion/player/orplayer/d;->isMute()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/transsion/player/orplayer/c;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAudioFocusChange AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK, focusChange = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Loo/e;->b(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/player/orplayer/c;->a:Lcom/transsion/player/orplayer/d;

    invoke-interface {p1, v7}, Lcom/transsion/player/orplayer/d;->setVolume(F)V

    :cond_4
    :goto_0
    return-void
.end method

.method private static final d(Lcom/transsion/player/orplayer/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/player/orplayer/c;->c(I)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 6

    sget-object v0, Loo/e;->a:Loo/e;

    iget-object v1, p0, Lcom/transsion/player/orplayer/c;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "abandonFocus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Loo/e;->b(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/player/orplayer/c;->h:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/player/orplayer/c;->d:Landroid/media/AudioManager;

    invoke-static {v1, v0}, Lt1/j;->a(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/player/orplayer/c;->d:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/player/orplayer/c;->e:Z

    return-void
.end method

.method public final e()V
    .locals 8

    sget-object v6, Loo/e;->a:Loo/e;

    iget-object v1, p0, Lcom/transsion/player/orplayer/c;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestFocus "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Loo/e;->b(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v7, 0x1

    const-string v2, "requestFocus, result:"

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/player/orplayer/c;->h:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/player/orplayer/c;->d:Landroid/media/AudioManager;

    invoke-static {v1, v0}, Lt1/k;->a(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/player/orplayer/c;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Loo/e;->b(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/player/orplayer/c;->d:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v7}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/player/orplayer/c;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Loo/e;->b(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_1
    :goto_0
    iput-boolean v7, p0, Lcom/transsion/player/orplayer/c;->e:Z

    return-void
.end method

.method public final f(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/player/orplayer/c;->g:Z

    return-void
.end method

.method public final g(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/player/orplayer/c;->f:Z

    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 1

    new-instance v0, Lcom/transsion/player/orplayer/b;

    invoke-direct {v0, p0, p1}, Lcom/transsion/player/orplayer/b;-><init>(Lcom/transsion/player/orplayer/c;I)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->k(Ljava/lang/Runnable;)V

    return-void
.end method
