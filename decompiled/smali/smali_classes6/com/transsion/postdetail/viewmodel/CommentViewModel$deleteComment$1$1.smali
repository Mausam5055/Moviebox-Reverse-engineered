.class final Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0004\u001a\u00020\u0003*\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/c;",
        "Lcom/tn/lib/net/bean/BaseDto;",
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
    c = "com.transsion.postdetail.viewmodel.CommentViewModel$deleteComment$1$1"
    f = "CommentViewModel.kt"
    l = {
        0x86,
        0x88,
        0x8b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $commentId:Ljava/lang/String;

.field final synthetic $topicType:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/postdetail/viewmodel/CommentViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/transsion/postdetail/viewmodel/CommentViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/postdetail/viewmodel/CommentViewModel;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->$topicType:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->this$0:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    iput-object p3, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->$commentId:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;

    iget-object v1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->$topicType:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->this$0:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    iget-object v3, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->$commentId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;-><init>(Ljava/lang/String;Lcom/transsion/postdetail/viewmodel/CommentViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/c;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->invoke(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/c;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/c;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->L$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/flow/c;

    iget-object p1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->$topicType:Ljava/lang/String;

    sget-object v5, Lcom/transsion/postdetailapi/CommentTopicType;->POST:Lcom/transsion/postdetailapi/CommentTopicType;

    invoke-virtual {v5}, Lcom/transsion/postdetailapi/CommentTopicType;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->this$0:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    invoke-static {p1}, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->d(Lcom/transsion/postdetail/viewmodel/CommentViewModel;)Lxo/a;

    move-result-object p1

    sget-object v3, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v3}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->$commentId:Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->label:I

    invoke-interface {p1, v3, v5, p0}, Lxo/a;->c(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->this$0:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    invoke-static {p1}, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->d(Lcom/transsion/postdetail/viewmodel/CommentViewModel;)Lxo/a;

    move-result-object p1

    sget-object v4, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v4}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->$commentId:Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->label:I

    invoke-interface {p1, v4, v5, p0}, Lxo/a;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_1
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    :goto_2
    if-eqz p1, :cond_7

    iget-object v3, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->$commentId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/tn/lib/net/bean/BaseDto;->setData(Ljava/lang/Object;)V

    :cond_7
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->label:I

    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/c;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
