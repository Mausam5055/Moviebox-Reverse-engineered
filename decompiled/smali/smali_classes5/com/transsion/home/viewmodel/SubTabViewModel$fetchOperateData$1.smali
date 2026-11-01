.class final Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/viewmodel/SubTabViewModel;->n(IZLjava/lang/String;)V
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
    c = "com.transsion.home.viewmodel.SubTabViewModel$fetchOperateData$1"
    f = "SubTabViewModel.kt"
    l = {
        0x48
    }
    m = "invokeSuspend"
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

.field label:I

.field final synthetic this$0:Lcom/transsion/home/viewmodel/SubTabViewModel;


# direct methods
.method constructor <init>(ZLcom/transsion/home/viewmodel/SubTabViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/transsion/home/viewmodel/SubTabViewModel;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/transsion/home/bean/SubOperateData;",
            ">;I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->$isRefresh:Z

    iput-object p2, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->this$0:Lcom/transsion/home/viewmodel/SubTabViewModel;

    iput-object p3, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->$operateData:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput p4, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->$tabId:I

    iput-object p5, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->$grade:Ljava/lang/String;

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

    new-instance p1, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;

    iget-boolean v1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->$isRefresh:Z

    iget-object v2, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->this$0:Lcom/transsion/home/viewmodel/SubTabViewModel;

    iget-object v3, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->$operateData:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget v4, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->$tabId:I

    iget-object v5, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->$grade:Ljava/lang/String;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;-><init>(ZLcom/transsion/home/viewmodel/SubTabViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    new-instance p1, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;

    iget-object v4, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->$operateData:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->this$0:Lcom/transsion/home/viewmodel/SubTabViewModel;

    iget v6, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->$tabId:I

    iget-boolean v7, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->$isRefresh:Z

    iget-object v8, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->$grade:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/home/viewmodel/SubTabViewModel;IZLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->label:I

    invoke-static {p1, p0}, Lkotlinx/coroutines/l2;->c(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v0, :cond_5

    return-object v0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exceptionHandler "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SubTabFragment"

    invoke-virtual {v0, v1, p1, v2}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->$isRefresh:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->this$0:Lcom/transsion/home/viewmodel/SubTabViewModel;

    invoke-virtual {p1}, Lcom/transsion/home/viewmodel/SubTabViewModel;->q()Landroidx/lifecycle/b0;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->$operateData:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/home/bean/SubOperateData;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/home/bean/SubOperateData;->getItems()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->this$0:Lcom/transsion/home/viewmodel/SubTabViewModel;

    invoke-virtual {p1}, Lcom/transsion/home/viewmodel/SubTabViewModel;->p()Landroidx/lifecycle/b0;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->$operateData:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;->this$0:Lcom/transsion/home/viewmodel/SubTabViewModel;

    invoke-virtual {p1}, Lcom/transsion/home/viewmodel/SubTabViewModel;->p()Landroidx/lifecycle/b0;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
