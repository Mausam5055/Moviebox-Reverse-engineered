.class final Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchRec$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->t(Ljava/lang/String;Ljava/lang/Integer;IZ)V
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
    c = "com.transsion.moviedetail.viewmodel.MovieDetailViewModel$fetchRec$1"
    f = "MovieDetailViewModel.kt"
    l = {
        0xc1
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $isTablet:Z

.field final synthetic $page:I

.field final synthetic $subjectId:Ljava/lang/String;

.field final synthetic $subjectType:Ljava/lang/Integer;

.field label:I

.field final synthetic this$0:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Integer;IZLcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "IZ",
            "Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchRec$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchRec$1;->$subjectId:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchRec$1;->$subjectType:Ljava/lang/Integer;

    iput p3, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchRec$1;->$page:I

    iput-boolean p4, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchRec$1;->$isTablet:Z

    iput-object p5, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchRec$1;->this$0:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

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

    new-instance p1, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchRec$1;

    iget-object v1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchRec$1;->$subjectId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchRec$1;->$subjectType:Ljava/lang/Integer;

    iget v3, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchRec$1;->$page:I

    iget-boolean v4, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchRec$1;->$isTablet:Z

    iget-object v5, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchRec$1;->this$0:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchRec$1;-><init>(Ljava/lang/String;Ljava/lang/Integer;IZLcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchRec$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchRec$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchRec$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchRec$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchRec$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object v4, Llg/a;->a:Llg/a$a;

    const-string v5, "MovieDetailViewModel"

    iget-object p1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchRec$1;->$subjectId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchRec$1;->$subjectType:Ljava/lang/Integer;

    iget v6, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchRec$1;->$page:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fetchRec,subjectId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", subjectType:"

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",page: "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    iget-object v1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchRec$1;->$subjectType:Ljava/lang/Integer;

    sget-object v4, Lcom/transsion/moviedetailapi/SubjectType;->MUSIC:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v4

    const/16 v5, 0x8

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v4, :cond_6

    :goto_0
    iget-object v1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchRec$1;->$subjectType:Ljava/lang/Integer;

    sget-object v4, Lcom/transsion/moviedetailapi/SubjectType;->EDUCATION:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v4

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    iget-boolean v1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchRec$1;->$isTablet:Z

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, 0x6

    :cond_6
    :goto_2
    const-string v1, "subjectId"

    iget-object v4, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchRec$1;->$subjectId:Ljava/lang/String;

    invoke-virtual {p1, v1, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "perPage"

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "page"

    iget v4, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchRec$1;->$page:I

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    sget-object v1, Lbh/b;->a:Lbh/b$a;

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "toString(...)"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lbh/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object v1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchRec$1;->this$0:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    invoke-static {v1}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->n(Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;)Lfn/a;

    move-result-object v1

    sget-object v4, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v4}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v4

    iput v2, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchRec$1;->label:I

    invoke-interface {v1, v4, p1, p0}, Lfn/a;->d(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    :goto_3
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/bean/ForYouBean;

    goto :goto_4

    :cond_8
    move-object p1, v3

    :goto_4
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/transsion/postdetail/bean/ForYouBean;->getItems()Ljava/util/List;

    move-result-object p1

    goto :goto_5

    :cond_9
    move-object p1, v3

    :goto_5
    iget-object v0, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchRec$1;->this$0:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    invoke-static {v0}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->m(Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;)Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    iget-object p1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchRec$1;->this$0:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    invoke-static {p1}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->m(Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;)Landroidx/lifecycle/b0;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    :goto_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
