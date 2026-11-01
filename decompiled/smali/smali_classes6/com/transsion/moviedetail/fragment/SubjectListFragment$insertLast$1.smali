.class final Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/moviedetail/fragment/SubjectListFragment;->insertLast()V
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
    c = "com.transsion.moviedetail.fragment.SubjectListFragment$insertLast$1"
    f = "SubjectListFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/transsion/moviedetail/fragment/SubjectListFragment;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/moviedetail/fragment/SubjectListFragment;",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;->this$0:Lcom/transsion/moviedetail/fragment/SubjectListFragment;

    iput-object p2, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;->$dataList:Ljava/util/List;

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

    new-instance p1, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;->this$0:Lcom/transsion/moviedetail/fragment/SubjectListFragment;

    iget-object v1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;->$dataList:Ljava/util/List;

    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;-><init>(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;->this$0:Lcom/transsion/moviedetail/fragment/SubjectListFragment;

    new-instance v0, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    invoke-direct {v0}, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;-><init>()V

    invoke-static {p1, v0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->access$setNativeManager$p(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V

    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;->this$0:Lcom/transsion/moviedetail/fragment/SubjectListFragment;

    invoke-static {p1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->access$getNativeManager$p(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "SubjectDetailRecommendScene"

    invoke-virtual {p1, v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->O0(Ljava/lang/String;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    :cond_0
    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;->this$0:Lcom/transsion/moviedetail/fragment/SubjectListFragment;

    invoke-static {p1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->access$getNativeManager$p(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1$a;

    iget-object v1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;->this$0:Lcom/transsion/moviedetail/fragment/SubjectListFragment;

    iget-object v2, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;->$dataList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1$a;-><init>(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->N0(Ldi/a;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    :cond_1
    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;->this$0:Lcom/transsion/moviedetail/fragment/SubjectListFragment;

    invoke-static {p1}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1$2;

    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;->this$0:Lcom/transsion/moviedetail/fragment/SubjectListFragment;

    const/4 v1, 0x0

    invoke-direct {v3, p1, v1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1$2;-><init>(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
