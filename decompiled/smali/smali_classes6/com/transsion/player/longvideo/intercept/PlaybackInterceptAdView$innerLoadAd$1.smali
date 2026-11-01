.class final Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$innerLoadAd$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->k(Ljava/lang/String;Lcom/transsion/baselib/db/video/PlaybackRecordTable;Lcom/transsion/player/longvideo/intercept/d;)V
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
    c = "com.transsion.player.longvideo.intercept.PlaybackInterceptAdView$innerLoadAd$1"
    f = "PlaybackInterceptAdView.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lcom/transsion/player/longvideo/intercept/d;

.field final synthetic $playbackRecord:Lcom/transsion/baselib/db/video/PlaybackRecordTable;

.field final synthetic $sceneId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;


# direct methods
.method constructor <init>(Lcom/transsion/baselib/db/video/PlaybackRecordTable;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;Ljava/lang/String;Lcom/transsion/player/longvideo/intercept/d;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/baselib/db/video/PlaybackRecordTable;",
            "Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;",
            "Ljava/lang/String;",
            "Lcom/transsion/player/longvideo/intercept/d;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$innerLoadAd$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$innerLoadAd$1;->$playbackRecord:Lcom/transsion/baselib/db/video/PlaybackRecordTable;

    iput-object p2, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$innerLoadAd$1;->this$0:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    iput-object p3, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$innerLoadAd$1;->$sceneId:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$innerLoadAd$1;->$callback:Lcom/transsion/player/longvideo/intercept/d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/player/longvideo/intercept/d;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$innerLoadAd$1;->d(Lcom/transsion/player/longvideo/intercept/d;)V

    return-void
.end method

.method private static final d(Lcom/transsion/player/longvideo/intercept/d;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/player/longvideo/intercept/d;->onComplete()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$innerLoadAd$1;

    iget-object v1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$innerLoadAd$1;->$playbackRecord:Lcom/transsion/baselib/db/video/PlaybackRecordTable;

    iget-object v2, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$innerLoadAd$1;->this$0:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    iget-object v3, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$innerLoadAd$1;->$sceneId:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$innerLoadAd$1;->$callback:Lcom/transsion/player/longvideo/intercept/d;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$innerLoadAd$1;-><init>(Lcom/transsion/baselib/db/video/PlaybackRecordTable;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;Ljava/lang/String;Lcom/transsion/player/longvideo/intercept/d;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$innerLoadAd$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$innerLoadAd$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$innerLoadAd$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$innerLoadAd$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$innerLoadAd$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$innerLoadAd$1;->$playbackRecord:Lcom/transsion/baselib/db/video/PlaybackRecordTable;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->getLastAdStartTimeStamp()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iget-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$innerLoadAd$1;->this$0:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    invoke-static {p1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->access$getStartAdConfigT(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;)I

    move-result p1

    iget-object v2, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$innerLoadAd$1;->this$0:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    invoke-static {v2, p1, v0, v1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->access$isMoreThanThreshold(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;IJ)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$innerLoadAd$1;->this$0:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->access$getClassTag(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$innerLoadAd$1;->$sceneId:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> loadNativeAd() --> \u5f53\u524d\u4e0d\u7b26\u5408\u5c55\u793a\u6761\u4ef6 --> sceneId = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> startAdConfigT = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "premium_p"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$innerLoadAd$1;->this$0:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$innerLoadAd$1;->$callback:Lcom/transsion/player/longvideo/intercept/d;

    new-instance v1, Lcom/transsion/player/longvideo/intercept/j;

    invoke-direct {v1, v0}, Lcom/transsion/player/longvideo/intercept/j;-><init>(Lcom/transsion/player/longvideo/intercept/d;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
