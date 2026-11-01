.class final Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel$getCommentList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
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
    c = "com.transsion.postdetail.viewmodel.PostDetailCommentsFragmentViewModel$getCommentList$1"
    f = "PostDetailCommentsFragmentViewModel.kt"
    l = {
        0x31
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $page:Ljava/lang/String;

.field final synthetic $perPage:I

.field final synthetic $postId:Ljava/lang/String;

.field final synthetic $rootCommentId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel$getCommentList$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel$getCommentList$1;->this$0:Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel;

    iput-object p2, p0, Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel$getCommentList$1;->$postId:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel$getCommentList$1;->$rootCommentId:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel$getCommentList$1;->$page:Ljava/lang/String;

    iput p5, p0, Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel$getCommentList$1;->$perPage:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance p1, Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel$getCommentList$1;

    iget-object v1, p0, Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel$getCommentList$1;->this$0:Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel;

    iget-object v2, p0, Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel$getCommentList$1;->$postId:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel$getCommentList$1;->$rootCommentId:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel$getCommentList$1;->$page:Ljava/lang/String;

    iget v5, p0, Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel$getCommentList$1;->$perPage:I

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel$getCommentList$1;-><init>(Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel$getCommentList$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel$getCommentList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel$getCommentList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel$getCommentList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel$getCommentList$1;->label:I

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

    new-instance p1, Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel$getCommentList$1$1;

    iget-object v4, p0, Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel$getCommentList$1;->this$0:Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel;

    iget-object v5, p0, Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel$getCommentList$1;->$postId:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel$getCommentList$1;->$rootCommentId:Ljava/lang/String;

    iget-object v7, p0, Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel$getCommentList$1;->$page:Ljava/lang/String;

    iget v8, p0, Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel$getCommentList$1;->$perPage:I

    const/4 v9, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel$getCommentList$1$1;-><init>(Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/d;->s(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/b;

    move-result-object p1

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/d;->u(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/b;

    move-result-object p1

    new-instance v1, Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel$getCommentList$1$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel$getCommentList$1$2;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/d;->f(Lkotlinx/coroutines/flow/b;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/b;

    move-result-object p1

    new-instance v1, Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel$getCommentList$1$a;

    iget-object v3, p0, Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel$getCommentList$1;->this$0:Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel;

    invoke-direct {v1, v3}, Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel$getCommentList$1$a;-><init>(Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel;)V

    iput v2, p0, Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel$getCommentList$1;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/b;->a(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
