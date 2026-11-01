.class final Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->x(Ljava/lang/String;IIII)V
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
    c = "com.transsion.moviedetail.viewmodel.MovieDetailViewModel$getDownloadList$1"
    f = "MovieDetailViewModel.kt"
    l = {
        0xa6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $epFrom:I

.field final synthetic $epTo:I

.field final synthetic $resolution:I

.field final synthetic $se:I

.field final synthetic $subjectId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;Ljava/lang/String;IIIILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;",
            "Ljava/lang/String;",
            "IIII",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1;->this$0:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    iput-object p2, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1;->$subjectId:Ljava/lang/String;

    iput p3, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1;->$resolution:I

    iput p4, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1;->$se:I

    iput p5, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1;->$epFrom:I

    iput p6, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1;->$epTo:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1;

    iget-object v1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1;->this$0:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    iget-object v2, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1;->$subjectId:Ljava/lang/String;

    iget v3, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1;->$resolution:I

    iget v4, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1;->$se:I

    iget v5, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1;->$epFrom:I

    iget v6, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1;->$epTo:I

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1;-><init>(Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;Ljava/lang/String;IIIILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1;->label:I

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

    new-instance p1, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$1;

    iget-object v4, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1;->this$0:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    iget-object v5, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1;->$subjectId:Ljava/lang/String;

    iget v6, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1;->$resolution:I

    iget v7, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1;->$se:I

    iget v8, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1;->$epFrom:I

    iget v9, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1;->$epTo:I

    const/4 v10, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$1;-><init>(Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;Ljava/lang/String;IIIILkotlin/coroutines/Continuation;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/d;->s(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/b;

    move-result-object p1

    new-instance v1, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$2;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/d;->f(Lkotlinx/coroutines/flow/b;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/b;

    move-result-object p1

    new-instance v1, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$a;

    iget-object v3, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1;->this$0:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    invoke-direct {v1, v3}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$a;-><init>(Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;)V

    iput v2, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/b;->a(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
