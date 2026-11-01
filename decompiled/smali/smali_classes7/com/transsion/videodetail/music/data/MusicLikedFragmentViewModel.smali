.class public final Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;
.super Landroidx/lifecycle/t0;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Ljava/util/List;

.field private final c:Lkotlin/Lazy;

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;

.field private final f:Landroidx/lifecycle/b0;

.field private final g:Landroidx/lifecycle/b0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->b:Ljava/util/List;

    new-instance v0, Lcom/transsion/videodetail/music/data/b;

    invoke-direct {v0}, Lcom/transsion/videodetail/music/data/b;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->c:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/videodetail/music/data/c;

    invoke-direct {v0}, Lcom/transsion/videodetail/music/data/c;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->d:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/videodetail/music/data/d;

    invoke-direct {v0}, Lcom/transsion/videodetail/music/data/d;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->e:Lkotlin/Lazy;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->f:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->g:Landroidx/lifecycle/b0;

    return-void
.end method

.method private final A()Loj/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loj/a;

    return-object v0
.end method

.method private final D(Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->A()Loj/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->q(Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;)Lcom/transsion/baselib/db/music/MusicLikedDbBean;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Loj/a;->f(Lcom/transsion/baselib/db/music/MusicLikedDbBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private final H(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadLocalData$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadLocalData$1;

    iget v1, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadLocalData$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadLocalData$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadLocalData$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadLocalData$1;-><init>(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadLocalData$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadLocalData$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadLocalData$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/baselib/db/music/MusicLikedDbBean;

    iget-object v4, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadLocalData$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lcom/transsion/baselib/db/music/MusicLikedDbBean;

    iget-object v5, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadLocalData$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v6, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadLocalData$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v10, v5

    move-object v11, v6

    move-object v5, v4

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->A()Loj/a;

    move-result-object p1

    iput v4, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadLocalData$1;->label:I

    invoke-interface {p1, v0}, Loj/a;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p1, Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v5, p1

    move-object v6, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/transsion/baselib/db/music/MusicLikedDbBean;

    invoke-direct {p0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->u()Llj/c;

    move-result-object p1

    invoke-virtual {v2}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;->getSubjectId()Ljava/lang/String;

    move-result-object v4

    iput-object v6, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadLocalData$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadLocalData$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadLocalData$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadLocalData$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadLocalData$1;->label:I

    invoke-interface {p1, v4, v0}, Llj/c;->E(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v10, v5

    move-object v11, v6

    move-object v5, v2

    :goto_3
    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    :goto_4
    invoke-virtual {v2, p1}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;->setPath(Ljava/lang/String;)V

    new-instance p1, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;-><init>(Lcom/transsion/baselib/db/music/MusicLikedDbBean;ILcom/transsion/videodetail/music/bean/MusicLikedItemStateEnum;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v11, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v5, v10

    move-object v6, v11

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->g:Landroidx/lifecycle/b0;

    invoke-virtual {p1, v6}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private final I(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14

    instance-of v0, p1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadNetData$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadNetData$1;

    iget v1, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadNetData$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadNetData$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadNetData$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadNetData$1;-><init>(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadNetData$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v8

    iget v1, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadNetData$1;->label:I

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v1, :cond_5

    if-eq v1, v12, :cond_4

    if-eq v1, v11, :cond_1

    if-eq v1, v10, :cond_3

    if-ne v1, v9, :cond_2

    :cond_1
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-object v1, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadNetData$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p1, Lkx/a;->a:Lkx/a;

    invoke-direct {p0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->t()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> loadNetData() --> \u83b7\u53d6\u670d\u52a1\u7aef\u7684\u6570\u636e --> page = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lkx/a;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->z()Lcom/transsion/videodetail/music/data/a;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->a:Ljava/lang/String;

    iput v12, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadNetData$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v5, v0

    invoke-static/range {v1 .. v7}, Lcom/transsion/videodetail/music/data/a$a;->a(Lcom/transsion/videodetail/music/data/a;Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v8, :cond_6

    return-object v8

    :cond_6
    :goto_1
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteBean;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteBean;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->b:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    :cond_7
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteBean;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteBean;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteBean;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteBean;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getNextPage()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_9
    move-object p1, v13

    :goto_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->a:Ljava/lang/String;

    iput v11, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadNetData$1;->label:I

    invoke-direct {p0, v0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->I(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v8, :cond_e

    return-object v8

    :cond_a
    iget-object p1, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->b:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;

    invoke-direct {p0, v2}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->q(Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;)Lcom/transsion/baselib/db/music/MusicLikedDbBean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d

    invoke-direct {p0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->A()Loj/a;

    move-result-object p1

    iput-object v1, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadNetData$1;->L$0:Ljava/lang/Object;

    iput v10, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadNetData$1;->label:I

    invoke-interface {p1, v1, v0}, Loj/a;->b(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v8, :cond_c

    return-object v8

    :cond_c
    :goto_5
    sget-object p1, Lkx/a;->a:Lkx/a;

    invoke-direct {p0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->t()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> loadNetData() --> \u6570\u636e\u5e93\u5199\u5165\u6210\u529f --> size = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lkx/a;->a(Ljava/lang/String;)V

    iput-object v13, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadNetData$1;->L$0:Ljava/lang/Object;

    iput v9, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadNetData$1;->label:I

    invoke-direct {p0, v0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->H(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v8, :cond_e

    return-object v8

    :cond_d
    sget-object p1, Lkx/a;->a:Lkx/a;

    invoke-direct {p0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->t()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> loadNetData() --> \u672c\u5730\u548c\u670d\u52a1\u7aef\u90fd\u6ca1\u6570\u636e"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkx/a;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->g:Landroidx/lifecycle/b0;

    invoke-virtual {p1, v13}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    :cond_e
    :goto_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    :goto_7
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_8
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_f

    goto :goto_9

    :cond_f
    sget-object v0, Lkx/a;->a:Lkx/a;

    invoke-direct {p0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> loadNetData() --> \u7f51\u7edc\u8bf7\u6c42\u5f02\u5e38 --> "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkx/a;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->g:Landroidx/lifecycle/b0;

    invoke-virtual {p1, v13}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    :goto_9
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private static final J()Lcom/transsion/videodetail/music/data/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lcom/transsion/videodetail/music/data/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/videodetail/music/data/a;

    return-object v0
.end method

.method private static final K()Loj/a;
    .locals 3

    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->t1()Loj/a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()Loj/a;
    .locals 1

    invoke-static {}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->K()Loj/a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Lcom/transsion/videodetail/music/data/a;
    .locals 1

    invoke-static {}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->J()Lcom/transsion/videodetail/music/data/a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d()Llj/c;
    .locals 1

    invoke-static {}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->s()Llj/c;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic e(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->r(Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->t()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;)Llj/c;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->u()Llj/c;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->f:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->x()V

    return-void
.end method

.method public static final synthetic j(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;)Lcom/transsion/videodetail/music/data/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->z()Lcom/transsion/videodetail/music/data/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic k(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;)Loj/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->A()Loj/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic l(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->b:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic m(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->D(Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic n(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->H(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic o(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->I(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final q(Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;)Lcom/transsion/baselib/db/music/MusicLikedDbBean;
    .locals 14

    new-instance v13, Lcom/transsion/baselib/db/music/MusicLikedDbBean;

    invoke-virtual {p1}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    move-object v1, v0

    invoke-virtual {p1}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->getCountryName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->getGenre()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->getReleaseDate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    move v7, v0

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :goto_3
    invoke-virtual {p1}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->getSingerName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->getSingerAvatar()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->getLikeTime()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    :goto_4
    move-wide v11, v10

    goto :goto_5

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    goto :goto_4

    :goto_5
    const-string v10, ""

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v13
.end method

.method private final r(Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->A()Loj/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->getSubjectId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-interface {v0, p1, p2}, Loj/a;->d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private static final s()Llj/c;
    .locals 3

    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->p1()Llj/c;

    move-result-object v0

    return-object v0
.end method

.method private final t()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final u()Llj/c;
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llj/c;

    return-object v0
.end method

.method private final x()V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v3, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$getLocalMusicLiked$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$getLocalMusicLiked$1;-><init>(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final z()Lcom/transsion/videodetail/music/data/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/videodetail/music/data/a;

    return-object v0
.end method


# virtual methods
.method public final B(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 7

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$getMusicLikedEntity$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$getMusicLikedEntity$1;-><init>(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final C()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->g:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final E(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 7

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$isDownload$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$isDownload$1;-><init>(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final F(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 7

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$isLiked$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$isLiked$1;-><init>(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final G(Ljava/lang/String;Lcom/transsion/videodetail/music/bean/LikeListActionEnum;)V
    .locals 7

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$likedMusic$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p2, p0, v0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$likedMusic$1;-><init>(Ljava/lang/String;Lcom/transsion/videodetail/music/bean/LikeListActionEnum;Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final p(Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 7

    const-string v0, "subject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;-><init>(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final v(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 7

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$getDownloadEntity$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$getDownloadEntity$1;-><init>(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final w()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->f:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final y(Ljava/lang/String;)V
    .locals 7

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$getMusicLiked$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$getMusicLiked$1;-><init>(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
