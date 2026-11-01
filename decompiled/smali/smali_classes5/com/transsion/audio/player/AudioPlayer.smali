.class public final Lcom/transsion/audio/player/AudioPlayer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audio/player/AudioPlayer$a;
    }
.end annotation


# static fields
.field public static final i:Lcom/transsion/audio/player/AudioPlayer$a;

.field private static final j:Lkotlin/Lazy;


# instance fields
.field private a:J

.field private b:Lcom/transsion/player/orplayer/g;

.field private c:Lcom/transsion/audio/player/a;

.field private d:J

.field private e:Lcom/transsion/baselib/db/audio/AudioBean;

.field private f:Lcom/transsion/baselib/db/audio/AudioBean;

.field private g:Ljava/util/List;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/audio/player/AudioPlayer$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/audio/player/AudioPlayer$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/audio/player/AudioPlayer;->i:Lcom/transsion/audio/player/AudioPlayer$a;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/transsion/audio/player/b;

    invoke-direct {v1}, Lcom/transsion/audio/player/b;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/audio/player/AudioPlayer;->j:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/transsion/audio/player/AudioPlayer;->a:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->g:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->h:Ljava/lang/String;

    return-void
.end method

.method private final A(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/f;->onIsPlayingChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final B(Lao/e;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/f;->onLoadingBegin(Lao/e;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/player/AudioPlayer;->c:Lcom/transsion/audio/player/a;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/audio/player/a;->c()V

    :cond_2
    return-void
.end method

.method private final C(Lao/e;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/f;->onLoadingEnd(Lao/e;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/player/AudioPlayer;->c:Lcom/transsion/audio/player/a;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/audio/player/a;->d()V

    :cond_2
    return-void
.end method

.method private final D(IFLao/e;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3}, Lcom/transsion/player/orplayer/f;->onLoadingProgress(IFLao/e;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final E(Lao/e;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getStatus()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/audio/view/d;->k()Lcom/transsion/audio/view/d;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/transsion/audio/view/d;->q(I)Lcom/transsion/audio/view/d;

    invoke-direct {p0, v1}, Lcom/transsion/audio/player/AudioPlayer;->n(I)V

    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/f;->onVideoPause(Lao/e;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/audio/player/AudioPlayer;->c:Lcom/transsion/audio/player/a;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/audio/player/a;->h()V

    :cond_3
    return-void
.end method

.method private final F(Lao/e;)V
    .locals 2

    invoke-static {}, Lcom/transsion/audio/view/d;->k()Lcom/transsion/audio/view/d;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/transsion/audio/view/d;->q(I)Lcom/transsion/audio/view/d;

    invoke-direct {p0, v1}, Lcom/transsion/audio/player/AudioPlayer;->n(I)V

    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/f;->onVideoStart(Lao/e;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/player/AudioPlayer;->c:Lcom/transsion/audio/player/a;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/audio/player/a;->i()V

    :cond_2
    return-void
.end method

.method private final H(Lcom/transsion/player/orplayer/PlayError;Lao/e;)V
    .locals 2

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/transsion/audio/player/AudioPlayer;->n(I)V

    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/transsion/player/orplayer/f;->onPlayError(Lcom/transsion/player/orplayer/PlayError;Lao/e;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/transsion/audio/player/AudioPlayer;->c:Lcom/transsion/audio/player/a;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lcom/transsion/audio/player/a;->e(Lcom/transsion/player/orplayer/PlayError;)V

    :cond_2
    return-void
.end method

.method private final I(Lao/e;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/audio/player/AudioPlayer;->n(I)V

    invoke-static {}, Lcom/transsion/audio/view/d;->k()Lcom/transsion/audio/view/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/audio/view/d;->q(I)Lcom/transsion/audio/view/d;

    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/f;->onPlayerRelease(Lao/e;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/player/AudioPlayer;->c:Lcom/transsion/audio/player/a;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/audio/player/a;->b()V

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/audio/player/AudioPlayer;->c:Lcom/transsion/audio/player/a;

    return-void
.end method

.method private final M(JLao/e;)V
    .locals 4

    invoke-static {}, Lcom/transsion/audio/view/d;->k()Lcom/transsion/audio/view/d;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/transsion/audio/player/AudioPlayer;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/audio/view/d;->p(Ljava/lang/Long;Ljava/lang/Long;)Lcom/transsion/audio/view/d;

    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/audio/AudioBean;->setReadProcess(Ljava/lang/Long;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/audio/player/AudioPlayer;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, p2, p3}, Lcom/transsion/player/orplayer/f;->onProgress(JLao/e;)V

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/transsion/audio/player/AudioPlayer;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    if-eqz p3, :cond_3

    sget-object v0, Lcom/transsion/audio/viewmodel/HistoryListManager;->e:Lcom/transsion/audio/viewmodel/HistoryListManager$a;

    invoke-virtual {v0}, Lcom/transsion/audio/viewmodel/HistoryListManager$a;->b()Lcom/transsion/audio/viewmodel/HistoryListManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/transsion/audio/viewmodel/HistoryListManager;->w(Lcom/transsion/baselib/db/audio/AudioBean;)V

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/audio/player/AudioPlayer;->d:J

    iget-object p3, p0, Lcom/transsion/audio/player/AudioPlayer;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getAudioUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6

    iget-object p3, p0, Lcom/transsion/audio/player/AudioPlayer;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lcom/transsion/baselib/db/audio/AudioBean;->getAudioUrl()Ljava/lang/String;

    move-result-object v1

    :cond_5
    iput-object v1, p0, Lcom/transsion/audio/player/AudioPlayer;->h:Ljava/lang/String;

    :cond_6
    iget-object p3, p0, Lcom/transsion/audio/player/AudioPlayer;->c:Lcom/transsion/audio/player/a;

    if-eqz p3, :cond_7

    invoke-virtual {p3, p1, p2}, Lcom/transsion/audio/player/a;->f(J)V

    :cond_7
    return-void
.end method

.method public static synthetic a()Lcom/transsion/audio/player/AudioPlayer;
    .locals 1

    invoke-static {}, Lcom/transsion/audio/player/AudioPlayer;->x()Lcom/transsion/audio/player/AudioPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic b(Lcom/transsion/audio/player/AudioPlayer;Lao/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/player/AudioPlayer;->o(Lao/e;)V

    return-void
.end method

.method public static final synthetic c()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/transsion/audio/player/AudioPlayer;->j:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic d(Lcom/transsion/audio/player/AudioPlayer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/player/AudioPlayer;->A(Z)V

    return-void
.end method

.method public static final synthetic e(Lcom/transsion/audio/player/AudioPlayer;Lao/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/player/AudioPlayer;->B(Lao/e;)V

    return-void
.end method

.method public static final synthetic f(Lcom/transsion/audio/player/AudioPlayer;Lao/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/player/AudioPlayer;->C(Lao/e;)V

    return-void
.end method

.method public static final synthetic g(Lcom/transsion/audio/player/AudioPlayer;IFLao/e;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/audio/player/AudioPlayer;->D(IFLao/e;)V

    return-void
.end method

.method public static final synthetic h(Lcom/transsion/audio/player/AudioPlayer;Lao/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/player/AudioPlayer;->E(Lao/e;)V

    return-void
.end method

.method public static final synthetic i(Lcom/transsion/audio/player/AudioPlayer;Lao/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/player/AudioPlayer;->F(Lao/e;)V

    return-void
.end method

.method public static final synthetic j(Lcom/transsion/audio/player/AudioPlayer;Lcom/transsion/player/orplayer/PlayError;Lao/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/audio/player/AudioPlayer;->H(Lcom/transsion/player/orplayer/PlayError;Lao/e;)V

    return-void
.end method

.method public static final synthetic k(Lcom/transsion/audio/player/AudioPlayer;Lao/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/player/AudioPlayer;->I(Lao/e;)V

    return-void
.end method

.method public static final synthetic l(Lcom/transsion/audio/player/AudioPlayer;JLao/e;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/audio/player/AudioPlayer;->M(JLao/e;)V

    return-void
.end method

.method private final n(I)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getStatus()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x4

    const/4 v2, 0x6

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x7

    goto :goto_1

    :pswitch_1
    move v0, v2

    goto :goto_1

    :pswitch_2
    move v0, v1

    goto :goto_1

    :pswitch_3
    const/4 v0, 0x3

    :goto_1
    iget-object p1, p0, Lcom/transsion/audio/player/AudioPlayer;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getStatus()I

    move-result p1

    if-ne p1, v2, :cond_1

    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/player/AudioPlayer;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Lcom/transsion/baselib/db/audio/AudioBean;->setStatus(I)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/audio/player/AudioPlayer;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    if-eqz p1, :cond_3

    sget-object v0, Lcom/transsion/audio/viewmodel/HistoryListManager;->e:Lcom/transsion/audio/viewmodel/HistoryListManager$a;

    invoke-virtual {v0}, Lcom/transsion/audio/viewmodel/HistoryListManager$a;->b()Lcom/transsion/audio/viewmodel/HistoryListManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/audio/viewmodel/HistoryListManager;->k(Lcom/transsion/baselib/db/audio/AudioBean;)V

    :cond_3
    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object p1, p0, Lcom/transsion/audio/player/AudioPlayer;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    :cond_4
    move-object p1, v0

    :goto_2
    iget-object v2, p0, Lcom/transsion/audio/player/AudioPlayer;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/transsion/baselib/db/audio/AudioBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStateChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ..title.. "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "audio_log"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final o(Lao/e;)V
    .locals 2

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/transsion/audio/player/AudioPlayer;->n(I)V

    invoke-static {}, Lcom/transsion/audio/view/d;->k()Lcom/transsion/audio/view/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/audio/view/d;->q(I)Lcom/transsion/audio/view/d;

    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/f;->onCompletion(Lao/e;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/player/AudioPlayer;->c:Lcom/transsion/audio/player/a;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/audio/player/a;->b()V

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/audio/player/AudioPlayer;->c:Lcom/transsion/audio/player/a;

    return-void
.end method

.method private final w()V
    .locals 2

    new-instance v0, Lcom/transsion/audio/player/l;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/audio/player/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->b:Lcom/transsion/player/orplayer/g;

    new-instance v1, Lcom/transsion/audio/player/AudioPlayer$initPlayer$1;

    invoke-direct {v1, p0}, Lcom/transsion/audio/player/AudioPlayer$initPlayer$1;-><init>(Lcom/transsion/audio/player/AudioPlayer;)V

    invoke-interface {v0, v1}, Lcom/transsion/player/orplayer/g;->setPlayerListener(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method private static final x()Lcom/transsion/audio/player/AudioPlayer;
    .locals 1

    new-instance v0, Lcom/transsion/audio/player/AudioPlayer;

    invoke-direct {v0}, Lcom/transsion/audio/player/AudioPlayer;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final G()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->pause()V

    :cond_0
    return-void
.end method

.method public final J()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->isPlaying()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final K()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->prepare()V

    :cond_0
    return-void
.end method

.method public final L(Lcom/transsion/baselib/db/audio/AudioBean;)V
    .locals 11

    const-string v0, "audio"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->b:Lcom/transsion/player/orplayer/g;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/audio/player/AudioPlayer;->w()V

    :cond_0
    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioPlayer --> prepare --> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "audio_log"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/audio/player/AudioPlayer;->f:Lcom/transsion/baselib/db/audio/AudioBean;

    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->c:Lcom/transsion/audio/player/a;

    if-eqz v0, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/audio/player/a;->b()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->c:Lcom/transsion/audio/player/a;

    :cond_2
    new-instance v0, Lcom/transsion/audio/player/a;

    invoke-direct {v0, p1}, Lcom/transsion/audio/player/a;-><init>(Lcom/transsion/baselib/db/audio/AudioBean;)V

    iput-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->c:Lcom/transsion/audio/player/a;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->stop()V

    :cond_3
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_4

    new-instance v9, Lao/e;

    const/16 v7, 0x1c

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    move-object v2, v3

    invoke-direct/range {v1 .. v8}, Lao/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v9}, Lcom/transsion/player/orplayer/g;->setDataSource(Lao/e;)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->prepare()V

    :cond_5
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->g:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    if-eqz v1, :cond_6

    new-instance v10, Lao/e;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getAudioUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getAudioUrl()Ljava/lang/String;

    move-result-object v4

    const/16 v8, 0x1c

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lao/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v10}, Lcom/transsion/player/orplayer/f;->onPrepare(Lao/e;)V

    goto :goto_0

    :cond_7
    return-void
.end method

.method public final N()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->b:Lcom/transsion/player/orplayer/g;

    iput-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    iget-object v1, p0, Lcom/transsion/audio/player/AudioPlayer;->c:Lcom/transsion/audio/player/a;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/audio/player/a;->b()V

    :cond_1
    iput-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->c:Lcom/transsion/audio/player/a;

    return-void
.end method

.method public final O(Lcom/transsion/player/orplayer/f;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final P(J)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/transsion/player/orplayer/g;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public final Q(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/audio/player/AudioPlayer;->a:J

    return-void
.end method

.method public final R(Lcom/transsion/baselib/db/audio/AudioBean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/player/AudioPlayer;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    return-void
.end method

.method public final S()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_0
    return-void
.end method

.method public final T()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->stop()V

    :cond_0
    return-void
.end method

.method public final m(Lcom/transsion/player/orplayer/f;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final p()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->b:Lcom/transsion/player/orplayer/g;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final q()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->stop()V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audio/player/AudioPlayer;->N()V

    return-void
.end method

.method public final r()Lcom/transsion/audio/player/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->c:Lcom/transsion/audio/player/a;

    return-object v0
.end method

.method public final s()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/audio/player/AudioPlayer;->a:J

    return-wide v0
.end method

.method public final t()Lcom/transsion/baselib/db/audio/AudioBean;
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    return-object v0
.end method

.method public final u()Lcom/transsion/baselib/db/audio/AudioBean;
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->f:Lcom/transsion/baselib/db/audio/AudioBean;

    return-object v0
.end method

.method public final v()Lcom/transsion/player/orplayer/g;
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->b:Lcom/transsion/player/orplayer/g;

    return-object v0
.end method

.method public final y(Lcom/transsion/baselib/db/audio/AudioBean;)Z
    .locals 1

    const-string v0, "audio"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getAudioUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getAudioUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public final z(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "audioUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getAudioUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
