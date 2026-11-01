.class final Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.transsion.home.viewmodel.SubTabViewModel$fetchOperateData$1$1"
    f = "SubTabViewModel.kt"
    l = {
        0x4c
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $grade:Ljava/lang/String;

.field final synthetic $isRefresh:Z

.field final synthetic $operateData:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/transsion/home/bean/SubOperateData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $tabId:I

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/home/viewmodel/SubTabViewModel;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/home/viewmodel/SubTabViewModel;IZLjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/transsion/home/bean/SubOperateData;",
            ">;",
            "Lcom/transsion/home/viewmodel/SubTabViewModel;",
            "IZ",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;->$operateData:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;->this$0:Lcom/transsion/home/viewmodel/SubTabViewModel;

    iput p3, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;->$tabId:I

    iput-boolean p4, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;->$isRefresh:Z

    iput-object p5, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;->$grade:Ljava/lang/String;

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

    new-instance v7, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;

    iget-object v1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;->$operateData:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;->this$0:Lcom/transsion/home/viewmodel/SubTabViewModel;

    iget v3, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;->$tabId:I

    iget-boolean v4, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;->$isRefresh:Z

    iget-object v5, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;->$grade:Ljava/lang/String;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/home/viewmodel/SubTabViewModel;IZLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v7, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;->L$0:Ljava/lang/Object;

    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;->L$0:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lkotlinx/coroutines/n0;

    new-instance v7, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1$operationTask$1;

    iget-object p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;->this$0:Lcom/transsion/home/viewmodel/SubTabViewModel;

    iget v1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;->$tabId:I

    iget-object v5, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;->$grade:Ljava/lang/String;

    invoke-direct {v7, p1, v1, v5, v2}, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1$operationTask$1;-><init>(Lcom/transsion/home/viewmodel/SubTabViewModel;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->b(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r0;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;->$operateData:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;->label:I

    invoke-interface {p1, p0}, Lkotlinx/coroutines/r0;->i(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, v1

    :goto_0
    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;->$operateData:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/transsion/home/bean/SubOperateData;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/transsion/home/bean/SubOperateData;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/home/bean/SubOperateData;->getItems()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1$invokeSuspend$$inlined$sortedBy$1;

    invoke-direct {v1}, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1$invokeSuspend$$inlined$sortedBy$1;-><init>()V

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->I0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    :cond_3
    invoke-virtual {v0, v2}, Lcom/transsion/home/bean/SubOperateData;->setItems(Ljava/util/List;)V

    :cond_4
    iget-object p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;->this$0:Lcom/transsion/home/viewmodel/SubTabViewModel;

    iget-object v0, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;->$operateData:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/home/bean/SubOperateData;

    invoke-static {p1, v0}, Lcom/transsion/home/viewmodel/SubTabViewModel;->h(Lcom/transsion/home/viewmodel/SubTabViewModel;Lcom/transsion/home/bean/SubOperateData;)V

    iget-object p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;->this$0:Lcom/transsion/home/viewmodel/SubTabViewModel;

    iget v0, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;->$tabId:I

    iget-object v1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;->$operateData:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/home/bean/SubOperateData;

    invoke-static {p1, v0, v1}, Lcom/transsion/home/viewmodel/SubTabViewModel;->i(Lcom/transsion/home/viewmodel/SubTabViewModel;ILcom/transsion/home/bean/SubOperateData;)V

    iget-boolean p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;->$isRefresh:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;->this$0:Lcom/transsion/home/viewmodel/SubTabViewModel;

    invoke-virtual {p1}, Lcom/transsion/home/viewmodel/SubTabViewModel;->q()Landroidx/lifecycle/b0;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;->$operateData:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;->this$0:Lcom/transsion/home/viewmodel/SubTabViewModel;

    invoke-static {p1, v3}, Lcom/transsion/home/viewmodel/SubTabViewModel;->k(Lcom/transsion/home/viewmodel/SubTabViewModel;I)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;->this$0:Lcom/transsion/home/viewmodel/SubTabViewModel;

    invoke-virtual {p1}, Lcom/transsion/home/viewmodel/SubTabViewModel;->p()Landroidx/lifecycle/b0;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;->$operateData:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
