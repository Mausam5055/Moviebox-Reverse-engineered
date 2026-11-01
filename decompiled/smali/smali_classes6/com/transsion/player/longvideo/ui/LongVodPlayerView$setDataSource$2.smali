.class final Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->setDataSource(Lgo/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.player.longvideo.ui.LongVodPlayerView$setDataSource$2"
    f = "LongVodPlayerView.kt"
    l = {
        0xa84
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $bean:Lgo/a;

.field label:I

.field final synthetic this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Lgo/a;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/player/longvideo/ui/LongVodPlayerView;",
            "Lgo/a;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$2;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    iput-object p2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$2;->$bean:Lgo/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$2;

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$2;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$2;->$bean:Lgo/a;

    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$2;-><init>(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Lgo/a;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$2;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getResolutionHelper$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/longvideo/helper/w;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$2;->$bean:Lgo/a;

    iput v2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$2;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/transsion/player/longvideo/helper/w;->a(Lgo/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lgo/c;

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$2;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$2;->$bean:Lgo/a;

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$isNewPlayer$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Z

    move-result v3

    invoke-static {v0, v3}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$showVideoLoading(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getSubtitleHelper$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3, v1, p1}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->T(Lgo/a;Lgo/c;)V

    :cond_3
    invoke-virtual {v1}, Lgo/a;->w()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v0, v1, p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$initMp4Resolution(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Lgo/a;Lgo/c;)V

    :cond_4
    invoke-static {v0, p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setCurPlayStream$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Lgo/c;)V

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlaybackInterceptionManager$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lgo/c;->e()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mp4"

    invoke-virtual {v3, v4, v5}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->S(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlayerCallback$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lfo/a$b;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lgo/c;->e()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lfo/a$b;->h(Ljava/lang/String;)V

    :cond_6
    invoke-static {v0, v1, p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$reportSetData(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Lgo/a;Lgo/c;)V

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$isNewPlayer$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v0, p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setPlayerDataSourceAdPrepare(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Lgo/c;)V

    goto :goto_1

    :cond_7
    invoke-static {v0, v2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setPauseViewStatus(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlayerControl$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/ui/longvideo/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->play()V

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getSubtitleHelper$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1, v2}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->e0(Z)V

    :cond_8
    :goto_1
    sget-object v3, Llg/a;->a:Llg/a$a;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "LongVodPlayerView"

    const-string v5, "setDataSource, reset isNewPlayer"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {v0, v2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setNewPlayer$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    :cond_9
    sget-object p1, Lcom/transsion/baseui/music/MusicFloatManager;->h:Lcom/transsion/baseui/music/MusicFloatManager$a;

    invoke-virtual {p1}, Lcom/transsion/baseui/music/MusicFloatManager$a;->b()Lcom/transsion/baseui/music/MusicFloatManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/baseui/music/MusicFloatManager;->q()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$setDataSource$2;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPageName$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/player/mediasession/MediaItem;->setPageName(Ljava/lang/String;)V

    :cond_a
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
