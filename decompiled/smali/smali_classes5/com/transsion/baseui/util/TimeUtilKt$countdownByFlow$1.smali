.class final Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/baseui/util/TimeUtilKt;->b(ILkotlinx/coroutines/n0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/flow/c;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u0002*\u0008\u0012\u0004\u0012\u00020\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/c;",
        "",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/flow/c;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.baseui.util.TimeUtilKt$countdownByFlow$1"
    f = "TimeUtil.kt"
    l = {
        0x146,
        0x147
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $max:I

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;->$max:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;

    iget v1, p0, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;->$max:I

    invoke-direct {v0, v1, p2}, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;-><init>(ILkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/c;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;->invoke(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/c;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;->label:I

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget v1, p0, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;->I$0:I

    iget-object v5, p0, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/flow/c;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget v1, p0, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;->I$0:I

    iget-object v5, p0, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/flow/c;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/c;

    iget v1, p0, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;->$max:I

    :goto_0
    if-ge v2, v1, :cond_5

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object p1, p0, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;->L$0:Ljava/lang/Object;

    iput v1, p0, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;->I$0:I

    iput v4, p0, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;->label:I

    invoke-interface {p1, v5, p0}, Lkotlinx/coroutines/flow/c;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_3

    return-object v0

    :cond_3
    move-object v5, p1

    :goto_1
    if-eqz v1, :cond_4

    iput-object v5, p0, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;->L$0:Ljava/lang/Object;

    iput v1, p0, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;->I$0:I

    iput v3, p0, Lcom/transsion/baseui/util/TimeUtilKt$countdownByFlow$1;->label:I

    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7, p0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_2
    move-object p1, v5

    add-int/2addr v1, v2

    goto :goto_0

    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
