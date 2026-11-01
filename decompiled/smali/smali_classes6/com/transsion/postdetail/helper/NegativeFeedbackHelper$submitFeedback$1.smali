.class final Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$submitFeedback$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/n0;Lkotlin/jvm/functions/Function0;)V
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
    c = "com.transsion.postdetail.helper.NegativeFeedbackHelper$submitFeedback$1"
    f = "NegativeFeedbackHelper.kt"
    l = {
        0x85
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $actionType:Ljava/lang/String;

.field final synthetic $authorId:Ljava/lang/String;

.field final synthetic $onSuccess:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $postId:Ljava/lang/String;

.field final synthetic $submitToastText:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$submitFeedback$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$submitFeedback$1;->$postId:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$submitFeedback$1;->$authorId:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$submitFeedback$1;->$actionType:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$submitFeedback$1;->$submitToastText:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$submitFeedback$1;->$onSuccess:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance v7, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$submitFeedback$1;

    iget-object v1, p0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$submitFeedback$1;->$postId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$submitFeedback$1;->$authorId:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$submitFeedback$1;->$actionType:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$submitFeedback$1;->$submitToastText:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$submitFeedback$1;->$onSuccess:Lkotlin/jvm/functions/Function0;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$submitFeedback$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v7, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$submitFeedback$1;->L$0:Ljava/lang/Object;

    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$submitFeedback$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$submitFeedback$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$submitFeedback$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$submitFeedback$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$submitFeedback$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$submitFeedback$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/n0;

    iget-object v4, p0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$submitFeedback$1;->$postId:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$submitFeedback$1;->$authorId:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$submitFeedback$1;->$actionType:Ljava/lang/String;

    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v1, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;->a:Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;

    invoke-static {v1}, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;->b(Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;)Lxo/b;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_2

    move-object v5, p1

    goto :goto_0

    :cond_2
    move-object v5, v3

    :goto_0
    new-instance p1, Lcom/transsion/postdetail/bean/NegativeFeedbackRequest;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x78

    const/4 v12, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v12}, Lcom/transsion/postdetail/bean/NegativeFeedbackRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput v2, p0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$submitFeedback$1;->label:I

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v7, v1

    move-object v9, p1

    move-object v10, p0

    invoke-static/range {v7 .. v12}, Lxo/b$a;->b(Lxo/b;Ljava/lang/String;Lcom/transsion/postdetail/bean/NegativeFeedbackRequest;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    iget-object v0, p0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$submitFeedback$1;->$submitToastText:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$submitFeedback$1;->$onSuccess:Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v3, p1

    check-cast v3, Lcom/tn/lib/net/bean/BaseDto;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/transsion/baseui/util/m;->d(Ljava/lang/String;)V

    :cond_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_5
    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-static {}, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "postNegativeFeedback success: code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", msg="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_6
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-static {}, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "postNegativeFeedback error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1, v2}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    sget p1, Lcom/transsion/postdetail/R$string;->post_feedback_fail:I

    invoke-static {p1}, Lcom/transsion/baseui/util/m;->e(I)V

    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
