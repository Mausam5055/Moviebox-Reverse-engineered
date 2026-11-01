.class final Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;->n(Lgo/a;Lho/j;Lcom/transsion/player/ui/longvideo/a;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lcom/transsion/player/longvideo/intercept/d;)V
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
    c = "com.transsion.player.longvideo.intercept.VideoContentInterceptManager$intercept$1$1"
    f = "VideoContentInterceptManager.kt"
    l = {
        0x35
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $bean:Lgo/a;

.field final synthetic $callback:Lcom/transsion/player/longvideo/intercept/d;

.field final synthetic $interceptionManager:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

.field final synthetic $longVdPlayerBean:Lgo/a;

.field final synthetic $playerControl:Lcom/transsion/player/ui/longvideo/a;

.field final synthetic $viewBinding:Lho/j;

.field label:I

.field final synthetic this$0:Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;Lgo/a;Lgo/a;Lho/j;Lcom/transsion/player/ui/longvideo/a;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lcom/transsion/player/longvideo/intercept/d;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;",
            "Lgo/a;",
            "Lgo/a;",
            "Lho/j;",
            "Lcom/transsion/player/ui/longvideo/a;",
            "Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;",
            "Lcom/transsion/player/longvideo/intercept/d;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;->this$0:Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;

    iput-object p2, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;->$bean:Lgo/a;

    iput-object p3, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;->$longVdPlayerBean:Lgo/a;

    iput-object p4, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;->$viewBinding:Lho/j;

    iput-object p5, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;->$playerControl:Lcom/transsion/player/ui/longvideo/a;

    iput-object p6, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;->$interceptionManager:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    iput-object p7, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;->$callback:Lcom/transsion/player/longvideo/intercept/d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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

    new-instance p1, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;

    iget-object v1, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;->this$0:Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;

    iget-object v2, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;->$bean:Lgo/a;

    iget-object v3, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;->$longVdPlayerBean:Lgo/a;

    iget-object v4, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;->$viewBinding:Lho/j;

    iget-object v5, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;->$playerControl:Lcom/transsion/player/ui/longvideo/a;

    iget-object v6, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;->$interceptionManager:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    iget-object v7, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;->$callback:Lcom/transsion/player/longvideo/intercept/d;

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;-><init>(Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;Lgo/a;Lgo/a;Lho/j;Lcom/transsion/player/ui/longvideo/a;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lcom/transsion/player/longvideo/intercept/d;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;->label:I

    const-string v2, ""

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;->this$0:Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;

    invoke-static {p1}, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;->f(Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;)Lcom/transsion/baselib/db/video/PlaybackRecordDao;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;->$bean:Lgo/a;

    invoke-virtual {v1}, Lgo/a;->m()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    move-object v1, v2

    :cond_3
    iget-object v4, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;->$longVdPlayerBean:Lgo/a;

    invoke-virtual {v4}, Lgo/a;->l()I

    move-result v4

    iget-object v5, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;->$longVdPlayerBean:Lgo/a;

    invoke-virtual {v5}, Lgo/a;->e()I

    move-result v5

    iput v3, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;->label:I

    invoke-interface {p1, v1, v4, v5, p0}, Lcom/transsion/baselib/db/video/PlaybackRecordDao;->a(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    move-object v5, p1

    check-cast v5, Lcom/transsion/baselib/db/video/PlaybackRecordTable;

    sget-object v6, Llg/a;->a:Llg/a$a;

    iget-object p1, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;->this$0:Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;

    invoke-static {p1}, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;->e(Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;->$bean:Lgo/a;

    invoke-virtual {v0}, Lgo/a;->m()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    move-object v2, v0

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;->$longVdPlayerBean:Lgo/a;

    invoke-virtual {v0}, Lgo/a;->l()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;->$longVdPlayerBean:Lgo/a;

    invoke-virtual {v1}, Lgo/a;->e()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> intercept() --> \u8d44\u6e90\u5185\u5bb9\u62e6\u622a --> subjectId = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> se = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " --> ep = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " --> playbackRecord = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "premium_p"

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v3, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;->this$0:Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;

    iget-object v4, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;->$bean:Lgo/a;

    iget-object v6, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;->$viewBinding:Lho/j;

    iget-object v7, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;->$playerControl:Lcom/transsion/player/ui/longvideo/a;

    iget-object v8, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;->$interceptionManager:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    iget-object v9, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;->$callback:Lcom/transsion/player/longvideo/intercept/d;

    invoke-static/range {v3 .. v9}, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;->g(Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;Lgo/a;Lcom/transsion/baselib/db/video/PlaybackRecordTable;Lho/j;Lcom/transsion/player/ui/longvideo/a;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lcom/transsion/player/longvideo/intercept/d;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
