.class final Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;


# direct methods
.method constructor <init>(Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1;->a:Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/edcation/bean/CourseBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p2, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;

    iget v1, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;

    invoke-direct {v0, p0, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;-><init>(Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;->I$1:I

    iget v2, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;->I$0:I

    iget-object v4, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v5, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v6, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;

    iget-object v7, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/transsion/edcation/bean/CourseBean;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1;->a:Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;

    invoke-static {p2}, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->B(Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;)Lcom/transsion/home/bean/OperateItem;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getRankingListData()Lcom/transsion/home/bean/RankingListData;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/transsion/home/bean/RankingListData;->getItems()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_7

    check-cast p2, Ljava/lang/Iterable;

    iget-object v2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1;->a:Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v4, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_3
    check-cast v5, Lcom/transsion/home/bean/RankingListItem;

    invoke-virtual {v5}, Lcom/transsion/home/bean/RankingListItem;->getSubjects()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_6

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v7, p1

    move p1, v4

    move-object v4, v5

    move-object v5, p2

    move v11, v6

    move-object v6, v2

    move v2, v11

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-virtual {v7}, Lcom/transsion/edcation/bean/CourseBean;->getSubjectId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Lcom/transsion/edcation/bean/CourseBean;->getSeenStatus()I

    move-result v8

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v8}, Lcom/transsion/moviedetailapi/bean/Subject;->setSeenStatus(Ljava/lang/Integer;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v8

    new-instance v9, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$1$1$1;

    const/4 v10, 0x0

    invoke-direct {v9, v6, p1, p2, v10}, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$1$1$1;-><init>(Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;ILcom/transsion/moviedetailapi/bean/Subject;Lkotlin/coroutines/Continuation;)V

    iput-object v7, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;->L$3:Ljava/lang/Object;

    iput v2, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;->I$0:I

    iput p1, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;->I$1:I

    iput v3, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1$emit$1;->label:I

    invoke-static {v8, v9, v0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_5
    move v4, v2

    move-object p2, v5

    move-object v2, v6

    move-object p1, v7

    goto :goto_1

    :cond_6
    move v4, v6

    goto :goto_1

    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsion/edcation/bean/CourseBean;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1$1;->a(Lcom/transsion/edcation/bean/CourseBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
