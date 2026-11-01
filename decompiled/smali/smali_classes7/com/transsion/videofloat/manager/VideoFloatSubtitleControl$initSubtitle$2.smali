.class final Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->o()V
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
    c = "com.transsion.videofloat.manager.VideoFloatSubtitleControl$initSubtitle$2"
    f = "VideoFloatSubtitleControl.kt"
    l = {
        0x4b,
        0x4e,
        0x52,
        0x54
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;


# direct methods
.method constructor <init>(Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->this$0:Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;

    iget-object v0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->this$0:Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;

    invoke-direct {p1, v0, p2}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;-><init>(Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->label:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->this$0:Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;

    invoke-static {p1}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->d(Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;)Lpx/a;

    move-result-object p1

    invoke-virtual {p1}, Lpx/a;->i()Lcom/transsion/videofloat/bean/FloatPlayType;

    move-result-object p1

    sget-object v1, Lcom/transsion/videofloat/bean/FloatPlayType;->STREAM:Lcom/transsion/videofloat/bean/FloatPlayType;

    if-ne p1, v1, :cond_7

    iget-object p1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->this$0:Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;

    invoke-static {p1}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->f(Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;)Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->this$0:Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;

    invoke-static {v1}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->d(Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;)Lpx/a;

    move-result-object v1

    invoke-virtual {v1}, Lpx/a;->r()Ljava/lang/String;

    move-result-object v1

    iput v5, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->label:I

    invoke-interface {p1, v1, p0}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_0
    check-cast p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubtitleSelectId()Ljava/lang/String;

    move-result-object p1

    :goto_1
    move-object v1, p1

    goto :goto_4

    :cond_6
    move-object v1, v6

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->this$0:Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;

    invoke-static {p1}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->d(Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;)Lpx/a;

    move-result-object p1

    invoke-virtual {p1}, Lpx/a;->p()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->this$0:Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;

    invoke-static {v1}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->c(Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;)Llj/c;

    move-result-object v1

    iput v4, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->label:I

    invoke-interface {v1, p1, p0}, Llj/c;->f(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    :goto_2
    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleSelectId()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_9
    move-object p1, v6

    :goto_3
    if-eqz p1, :cond_6

    const-string p1, ""

    goto :goto_1

    :goto_4
    sget-object p1, Lcom/transsion/subtitle/h;->a:Lcom/transsion/subtitle/h$a;

    invoke-virtual {p1}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    move-result-object p1

    iget-object v4, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->this$0:Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;

    invoke-static {v4}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->d(Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;)Lpx/a;

    move-result-object v4

    invoke-virtual {v4}, Lpx/a;->t()Ljava/lang/String;

    move-result-object v4

    iput-object v1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->label:I

    invoke-interface {p1, v4, p0}, Lcom/transsion/subtitle/h;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    :cond_a
    :goto_5
    check-cast p1, Ljava/util/List;

    sget-object v3, Llg/a;->a:Llg/a$a;

    iget-object v4, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->this$0:Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;

    invoke-static {v4}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->e(Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->this$0:Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;

    invoke-static {v7}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->d(Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;)Lpx/a;

    move-result-object v7

    invoke-virtual {v7}, Lpx/a;->t()Ljava/lang/String;

    move-result-object v7

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_6

    :cond_b
    move-object v8, v6

    :goto_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "float subtitle----loadFromDB id:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", size:"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v7, v5}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v3

    new-instance v4, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2$1;

    iget-object v5, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->this$0:Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;

    invoke-direct {v4, p1, v5, v1, v6}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2$1;-><init>(Ljava/util/List;Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object v6, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_c

    return-object v0

    :cond_c
    :goto_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
