.class public final Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/player/orplayer/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->c(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->d(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final c(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->Y0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/player/orplayer/g;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final d(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lkotlin/Unit;
    .locals 5

    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->U0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/a;

    move-result-object v0

    sget-object v1, Lcom/transsion/postdetail/layer/listener/LayerFlag;->PLAYER_FOREGROUND:Lcom/transsion/postdetail/layer/listener/LayerFlag;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/transsion/postdetail/layer/a;->h(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->Y0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/player/orplayer/g;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public canNonSubscriberPlay(ZIILmo/d;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/player/orplayer/f$a;->a(Lcom/transsion/player/orplayer/f;ZIILmo/d;)V

    return-void
.end method

.method public initPlayer()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->b(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public onAliyunDecodeErrorChangeSoftwareDecoder(Lao/e;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->W0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/layer/local/c0;->z(Z)V

    :cond_0
    return-void
.end method

.method public onBufferedPosition(JLao/e;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/f$a;->d(Lcom/transsion/player/orplayer/f;JLao/e;)V

    return-void
.end method

.method public onCompletion(Lao/e;)V
    .locals 6

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->W0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/local/c0;->i()V

    :cond_0
    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->e1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "onCompletion"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->q1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->V0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/util/LocalVideoAdHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/postdetail/util/LocalVideoAdHelper;->o2()V

    return-void
.end method

.method public onFocusChange(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->g(Lcom/transsion/player/orplayer/f;Z)V

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->e1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onIsPlayingChanged\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->c1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/subtitle/VideoSubtitleControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->d0(Z)V

    :cond_0
    return-void
.end method

.method public onLoadingBegin(Lao/e;)V
    .locals 6

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->W0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/local/c0;->j()V

    :cond_0
    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->e1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "onLoadingBegin"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->U0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/a;

    move-result-object p1

    sget-object v0, Lcom/transsion/postdetail/layer/listener/LayerFlag;->LOADING_BEGIN:Lcom/transsion/postdetail/layer/listener/LayerFlag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Lcom/transsion/postdetail/layer/a;->g(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->l1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->M0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V

    :cond_1
    return-void
.end method

.method public onLoadingEnd(Lao/e;)V
    .locals 6

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->W0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/local/c0;->k()V

    :cond_0
    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->e1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "onLoadingEnd"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->T0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->U0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/a;

    move-result-object p1

    sget-object v0, Lcom/transsion/postdetail/layer/listener/LayerFlag;->LOADING_END:Lcom/transsion/postdetail/layer/listener/LayerFlag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Lcom/transsion/postdetail/layer/a;->g(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    return-void
.end method

.method public onLoadingProgress(IFLao/e;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/f$a;->m(Lcom/transsion/player/orplayer/f;IFLao/e;)V

    return-void
.end method

.method public onLoopingStart()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->e1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "onLoopingStart"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->U0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/a;

    move-result-object v0

    sget-object v1, Lcom/transsion/postdetail/layer/listener/LayerFlag;->LOOPING_START:Lcom/transsion/postdetail/layer/listener/LayerFlag;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/postdetail/layer/a;->g(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    return-void
.end method

.method public onMediaItemTransition(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->p(Lcom/transsion/player/orplayer/f;Ljava/lang/String;)V

    return-void
.end method

.method public onPlayError(Lcom/transsion/player/orplayer/PlayError;Lao/e;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "errorInfo"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v4}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->t1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V

    iget-object v4, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v4, v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->C1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Lcom/transsion/player/orplayer/PlayError;)V

    iget-object v4, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v4}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->W0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4, v1}, Lcom/transsion/postdetail/layer/local/c0;->m(Lcom/transsion/player/orplayer/PlayError;)V

    :cond_0
    sget-object v5, Llg/a;->a:Llg/a$a;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorCode()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorMessage()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v7}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->Z0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)J

    move-result-wide v7

    const/4 v9, 0x0

    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Lao/e;->k()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_1
    move-object v10, v9

    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onPlayError()  errorCode:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " errorMessage:"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  playProgress = "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " url:"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " --> \u957f\u64ad\u653e\u5931\u8d25\u4e86"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "long_video_play"

    invoke-virtual {v5, v6, v4, v3}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v4, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v4}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->U0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/a;

    move-result-object v4

    sget-object v7, Lcom/transsion/postdetail/layer/listener/LayerFlag;->PLAY_ERROR:Lcom/transsion/postdetail/layer/listener/LayerFlag;

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v1, v8, v2

    invoke-virtual {v4, v7, v8}, Lcom/transsion/postdetail/layer/a;->g(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorCode()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v7, 0x20030004

    if-ne v1, v7, :cond_3

    move v1, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v2

    :goto_2
    invoke-static {v4, v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->I1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Z)V

    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->Z0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)J

    move-result-wide v7

    const-wide/16 v11, 0x0

    cmp-long v1, v7, v11

    if-lez v1, :cond_4

    iget-object v13, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v13}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->Q0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v14

    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->Z0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)J

    move-result-wide v15

    const/16 v18, 0x4

    const/16 v19, 0x0

    const/16 v17, 0x0

    invoke-static/range {v13 .. v19}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->w3(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Lcom/transsion/baselib/db/download/DownloadBean;JZILjava/lang/Object;)V

    :cond_4
    sget-object v1, Lnh/m;->a:Lnh/m;

    invoke-virtual {v1}, Lnh/m;->e()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->e1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v7, "onPlayError\uff0c not net----"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->Q0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    move-result-wide v11

    :cond_5
    const-wide/32 v4, 0x100000

    cmp-long v1, v11, v4

    if-lez v1, :cond_7

    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->U0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/a;

    move-result-object v1

    sget-object v4, Lcom/transsion/postdetail/layer/listener/LayerFlag;->LOADING_END:Lcom/transsion/postdetail/layer/listener/LayerFlag;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Lcom/transsion/postdetail/layer/a;->g(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->U0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/a;

    move-result-object v1

    sget-object v4, Lcom/transsion/postdetail/layer/listener/LayerFlag;->NETWORK_CHANGE:Lcom/transsion/postdetail/layer/listener/LayerFlag;

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v5, v3, v2

    invoke-virtual {v1, v4, v3}, Lcom/transsion/postdetail/layer/a;->h(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->n1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "video error\uff0creload~~ from onPlayError"

    invoke-virtual {v5, v6, v1, v3}, Llg/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v1, v2, v3, v9}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->s3(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;ZILjava/lang/Object;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public onPlayerRelease(Lao/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->t(Lcom/transsion/player/orplayer/f;Lao/e;)V

    return-void
.end method

.method public onPlayerReset()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->e1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "onPlayerReset"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->U0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/a;

    move-result-object v0

    sget-object v1, Lcom/transsion/postdetail/layer/listener/LayerFlag;->PLAYER_RESET:Lcom/transsion/postdetail/layer/listener/LayerFlag;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/postdetail/layer/a;->g(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->V0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/util/LocalVideoAdHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/postdetail/util/LocalVideoAdHelper;->q2()V

    return-void
.end method

.method public onPrepare(Lao/e;)V
    .locals 7

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->t1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->I1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Z)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->K1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Z)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->e1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->Q0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepare, epse = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->Q0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v2

    new-instance v4, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1$onPrepare$1;

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-direct {v4, p1, v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1$onPrepare$1;-><init>(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v2

    new-instance v4, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1$onPrepare$2;

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-direct {v4, p1, v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1$onPrepare$2;-><init>(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :goto_1
    return-void
.end method

.method public onProgress(JLao/e;)V
    .locals 4

    iget-object p3, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p3}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->W0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3, p1, p2}, Lcom/transsion/postdetail/layer/local/c0;->n(J)V

    :cond_0
    iget-object p3, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p3, p1, p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->H1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;J)V

    iget-object p3, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p3}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->U0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/a;

    move-result-object p3

    sget-object v0, Lcom/transsion/postdetail/layer/listener/LayerFlag;->PROGRESS:Lcom/transsion/postdetail/layer/listener/LayerFlag;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p3, v0, v2}, Lcom/transsion/postdetail/layer/a;->g(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p3}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->V0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/util/LocalVideoAdHelper;

    move-result-object p3

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    new-instance v1, Lcom/transsion/postdetail/ui/fragment/s0;

    invoke-direct {v1, v0}, Lcom/transsion/postdetail/ui/fragment/s0;-><init>(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V

    invoke-virtual {p3, p1, p2, v1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->N(JLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public onRenderFirstFrame()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->W0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/local/c0;->o()V

    :cond_0
    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->e1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "onRenderFirstFrame"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->U0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/a;

    move-result-object v0

    sget-object v1, Lcom/transsion/postdetail/layer/listener/LayerFlag;->RENDER_FIRST_FRAME:Lcom/transsion/postdetail/layer/listener/LayerFlag;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/postdetail/layer/a;->g(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->Y0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->pause()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->V0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/util/LocalVideoAdHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    new-instance v2, Lcom/transsion/postdetail/ui/fragment/t0;

    invoke-direct {v2, v1}, Lcom/transsion/postdetail/ui/fragment/t0;-><init>(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V

    invoke-virtual {v0, v2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->S1(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public onSetDataSource()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->B(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public onTracksAudioBitrateChange(I)V
    .locals 1

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->C(Lcom/transsion/player/orplayer/f;I)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->W0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/layer/local/c0;->u(I)V

    :cond_0
    return-void
.end method

.method public onTracksChange(Lmo/c;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->D(Lcom/transsion/player/orplayer/f;Lmo/c;)V

    return-void
.end method

.method public onTracksVideoBitrateChange(I)V
    .locals 1

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->E(Lcom/transsion/player/orplayer/f;I)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->W0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/layer/local/c0;->v(I)V

    :cond_0
    return-void
.end method

.method public onVideoPause(Lao/e;)V
    .locals 6

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->D3(Z)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->W0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/local/c0;->w()V

    :cond_0
    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->e1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "onVideoPause"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    sget-object v1, Lcom/transsion/postdetail/util/t;->a:Lcom/transsion/postdetail/util/t;

    invoke-virtual {v1, p1, v0}, Lcom/transsion/postdetail/util/t;->b(Landroid/app/Activity;Z)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->U0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/a;

    move-result-object p1

    sget-object v1, Lcom/transsion/postdetail/layer/listener/LayerFlag;->VIDEO_PAUSE:Lcom/transsion/postdetail/layer/listener/LayerFlag;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Lcom/transsion/postdetail/layer/a;->g(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v0, p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->U1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;I)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v0, p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->T1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;I)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->e1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "onVideoSizeChanged"

    const/4 v4, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->e1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVideoSizeChanged width:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",height:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->U0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/a;

    move-result-object v0

    sget-object v1, Lcom/transsion/postdetail/layer/listener/LayerFlag;->VIDEO_SIZE_CHANGED:Lcom/transsion/postdetail/layer/listener/LayerFlag;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/postdetail/layer/a;->g(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    return-void
.end method

.method public onVideoStart(Lao/e;)V
    .locals 7

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->t1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->D3(Z)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->W0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/local/c0;->x()V

    :cond_0
    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->e1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "onVideoStart"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->a1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->X0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->U0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/a;

    move-result-object p1

    sget-object v1, Lcom/transsion/postdetail/layer/listener/LayerFlag;->VIDEO_START:Lcom/transsion/postdetail/layer/listener/LayerFlag;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lcom/transsion/postdetail/layer/a;->g(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->U0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/a;

    move-result-object p1

    sget-object v1, Lcom/transsion/postdetail/layer/listener/LayerFlag;->LOADING_END:Lcom/transsion/postdetail/layer/listener/LayerFlag;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Lcom/transsion/postdetail/layer/a;->g(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->O0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/room/api/IAudioApi;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/transsion/room/api/IAudioApi;->pause()V

    :cond_1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->V1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->V0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/util/LocalVideoAdHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/postdetail/util/LocalVideoAdHelper;->s2()V

    return-void
.end method

.method public setOnSeekCompleteListener()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->K(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method
