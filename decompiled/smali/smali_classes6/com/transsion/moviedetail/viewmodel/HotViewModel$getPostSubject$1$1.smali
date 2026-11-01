.class final Lcom/transsion/moviedetail/viewmodel/HotViewModel$getPostSubject$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/moviedetail/viewmodel/HotViewModel$getPostSubject$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/c;",
        "Lcom/transsion/moviedetailapi/bean/PostSubjectBean;",
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
    c = "com.transsion.moviedetail.viewmodel.HotViewModel$getPostSubject$1$1"
    f = "HotViewModel.kt"
    l = {
        0x64,
        0x67
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $page:Ljava/lang/String;

.field final synthetic $perPage:I

.field final synthetic $sortType:Ljava/lang/String;

.field final synthetic $subjectId:Ljava/lang/String;

.field final synthetic $with:Z

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/moviedetail/viewmodel/HotViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetail/viewmodel/HotViewModel;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/moviedetail/viewmodel/HotViewModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/moviedetail/viewmodel/HotViewModel$getPostSubject$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel$getPostSubject$1$1;->this$0:Lcom/transsion/moviedetail/viewmodel/HotViewModel;

    iput-object p2, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel$getPostSubject$1$1;->$subjectId:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel$getPostSubject$1$1;->$page:Ljava/lang/String;

    iput p4, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel$getPostSubject$1$1;->$perPage:I

    iput-object p5, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel$getPostSubject$1$1;->$sortType:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel$getPostSubject$1$1;->$with:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v8, Lcom/transsion/moviedetail/viewmodel/HotViewModel$getPostSubject$1$1;

    iget-object v1, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel$getPostSubject$1$1;->this$0:Lcom/transsion/moviedetail/viewmodel/HotViewModel;

    iget-object v2, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel$getPostSubject$1$1;->$subjectId:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel$getPostSubject$1$1;->$page:Ljava/lang/String;

    iget v4, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel$getPostSubject$1$1;->$perPage:I

    iget-object v5, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel$getPostSubject$1$1;->$sortType:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel$getPostSubject$1$1;->$with:Z

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/transsion/moviedetail/viewmodel/HotViewModel$getPostSubject$1$1;-><init>(Lcom/transsion/moviedetail/viewmodel/HotViewModel;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLkotlin/coroutines/Continuation;)V

    iput-object p1, v8, Lcom/transsion/moviedetail/viewmodel/HotViewModel$getPostSubject$1$1;->L$0:Ljava/lang/Object;

    return-object v8
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/c;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/moviedetail/viewmodel/HotViewModel$getPostSubject$1$1;->invoke(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/moviedetail/viewmodel/HotViewModel$getPostSubject$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/moviedetail/viewmodel/HotViewModel$getPostSubject$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/moviedetail/viewmodel/HotViewModel$getPostSubject$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel$getPostSubject$1$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel$getPostSubject$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/c;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel$getPostSubject$1$1;->L$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/flow/c;

    iget-object p1, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel$getPostSubject$1$1;->this$0:Lcom/transsion/moviedetail/viewmodel/HotViewModel;

    invoke-static {p1}, Lcom/transsion/moviedetail/viewmodel/HotViewModel;->V(Lcom/transsion/moviedetail/viewmodel/HotViewModel;)Lfn/a;

    move-result-object v4

    sget-object p1, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {p1}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel$getPostSubject$1$1;->$subjectId:Ljava/lang/String;

    if-nez p1, :cond_3

    const-string p1, ""

    :cond_3
    move-object v6, p1

    iget-object v7, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel$getPostSubject$1$1;->$page:Ljava/lang/String;

    iget v8, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel$getPostSubject$1$1;->$perPage:I

    iget-object v9, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel$getPostSubject$1$1;->$sortType:Ljava/lang/String;

    iget-boolean v10, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel$getPostSubject$1$1;->$with:Z

    iput-object v1, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel$getPostSubject$1$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel$getPostSubject$1$1;->label:I

    move-object v11, p0

    invoke-interface/range {v4 .. v11}, Lfn/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p1

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel$getPostSubject$1$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel$getPostSubject$1$1;->label:I

    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/c;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
