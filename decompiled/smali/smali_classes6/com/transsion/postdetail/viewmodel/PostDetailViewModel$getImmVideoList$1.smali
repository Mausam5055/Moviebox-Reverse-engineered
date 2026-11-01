.class final Lcom/transsion/postdetail/viewmodel/PostDetailViewModel$getImmVideoList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->u(Ljava/lang/String;ILjava/lang/String;IZI)V
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
    c = "com.transsion.postdetail.viewmodel.PostDetailViewModel$getImmVideoList$1"
    f = "PostDetailViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $postId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/postdetail/viewmodel/PostDetailViewModel$getImmVideoList$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel$getImmVideoList$1;->this$0:Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    iput-object p2, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel$getImmVideoList$1;->$postId:Ljava/lang/String;

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

    new-instance p1, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel$getImmVideoList$1;

    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel$getImmVideoList$1;->this$0:Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    iget-object v1, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel$getImmVideoList$1;->$postId:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel$getImmVideoList$1;-><init>(Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel$getImmVideoList$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel$getImmVideoList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel$getImmVideoList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel$getImmVideoList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel$getImmVideoList$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel$getImmVideoList$1;->this$0:Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    invoke-static {p1}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->o(Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;)Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel$getImmVideoList$1;->$postId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;->p(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel$getImmVideoList$1;->this$0:Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    invoke-static {p1}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->o(Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;)Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel$getImmVideoList$1;->this$0:Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    invoke-static {v0}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->k(Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;)Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lqm/b;->f(Landroidx/lifecycle/b0;)V

    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
