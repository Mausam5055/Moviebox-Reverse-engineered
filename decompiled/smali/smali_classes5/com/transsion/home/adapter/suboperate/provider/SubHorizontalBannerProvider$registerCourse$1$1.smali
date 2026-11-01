.class final Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$registerCourse$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$registerCourse$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;


# direct methods
.method constructor <init>(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$registerCourse$1$1;->a:Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/edcation/bean/CourseBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$registerCourse$1$1$emit$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$registerCourse$1$1$emit$1;

    iget v1, v0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$registerCourse$1$1$emit$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$registerCourse$1$1$emit$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$registerCourse$1$1$emit$1;

    invoke-direct {v0, p0, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$registerCourse$1$1$emit$1;-><init>(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$registerCourse$1$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$registerCourse$1$1$emit$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$registerCourse$1$1$emit$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$registerCourse$1$1$emit$1;->I$0:I

    iget-object v2, v0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$registerCourse$1$1$emit$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v4, v0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$registerCourse$1$1$emit$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;

    iget-object v5, v0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$registerCourse$1$1$emit$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/transsion/edcation/bean/CourseBean;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$registerCourse$1$1;->a:Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;

    invoke-static {p2}, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->D(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;)Lcom/transsion/home/bean/OperateItem;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getBanner()Lcom/transsion/home/bean/BannerBean;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/transsion/home/bean/BannerBean;->getBanners()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_8

    check-cast p2, Ljava/lang/Iterable;

    iget-object v2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$registerCourse$1$1;->a:Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v4, 0x0

    move-object v9, v2

    move-object v2, p2

    move-object p2, v9

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_3
    check-cast v5, Lcom/transsion/home/bean/BannerData;

    invoke-virtual {p1}, Lcom/transsion/edcation/bean/CourseBean;->getSubjectId()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/transsion/home/bean/BannerData;->getSubjectId()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_4
    move-object v8, v7

    :goto_2
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v5, :cond_5

    invoke-virtual {p1}, Lcom/transsion/edcation/bean/CourseBean;->getSeenStatus()I

    move-result v4

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/transsion/home/bean/BannerData;->setSeenStatus(Ljava/lang/Integer;)V

    :cond_5
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v4

    new-instance v5, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$registerCourse$1$1$1$1;

    invoke-direct {v5, p2, v7}, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$registerCourse$1$1$1$1;-><init>(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$registerCourse$1$1$emit$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$registerCourse$1$1$emit$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$registerCourse$1$1$emit$1;->L$2:Ljava/lang/Object;

    iput v6, v0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$registerCourse$1$1$emit$1;->I$0:I

    iput v3, v0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$registerCourse$1$1$emit$1;->label:I

    invoke-static {v4, v5, v0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_6

    return-object v1

    :cond_6
    move-object v5, p1

    move-object v4, p2

    move p1, v6

    :goto_3
    move-object p2, v4

    move v4, p1

    move-object p1, v5

    goto :goto_1

    :cond_7
    move v4, v6

    goto :goto_1

    :cond_8
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsion/edcation/bean/CourseBean;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$registerCourse$1$1;->a(Lcom/transsion/edcation/bean/CourseBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
