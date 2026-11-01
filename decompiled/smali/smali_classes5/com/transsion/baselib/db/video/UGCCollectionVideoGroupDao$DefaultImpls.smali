.class public abstract Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$DefaultImpls;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static a(Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p3, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$addUgcVideoIds$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$addUgcVideoIds$1;

    iget v1, v0, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$addUgcVideoIds$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$addUgcVideoIds$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$addUgcVideoIds$1;

    invoke-direct {v0, p3}, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$addUgcVideoIds$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$addUgcVideoIds$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$addUgcVideoIds$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p0, v0, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$addUgcVideoIds$1;->L$2:Ljava/lang/Object;

    move-object p2, p0

    check-cast p2, Ljava/util/List;

    iget-object p0, v0, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$addUgcVideoIds$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    iget-object p0, v0, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$addUgcVideoIds$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_5

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_5
    iput-object p0, v0, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$addUgcVideoIds$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$addUgcVideoIds$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$addUgcVideoIds$1;->L$2:Ljava/lang/Object;

    iput v5, v0, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$addUgcVideoIds$1;->label:I

    invoke-interface {p0, p1, v0}, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;->d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6

    return-object v1

    :cond_6
    :goto_1
    check-cast p3, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroup;

    const/4 v2, 0x0

    if-nez p3, :cond_8

    new-instance p3, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroup;

    new-instance v3, Ljava/util/ArrayList;

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->c0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p3, p1, v3}, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroup;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v2, v0, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$addUgcVideoIds$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$addUgcVideoIds$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$addUgcVideoIds$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$addUgcVideoIds$1;->label:I

    invoke-interface {p0, p3, v0}, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;->b(Lcom/transsion/baselib/db/video/UGCCollectionVideoGroup;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    return-object v1

    :cond_7
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_8
    invoke-virtual {p3}, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroup;->getUgcVideoIds()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->W0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    check-cast p2, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    invoke-interface {p1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p3}, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroup;->getUgcVideoIds()Ljava/util/ArrayList;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {p3, v2, p1, v5, v2}, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroup;->copy$default(Lcom/transsion/baselib/db/video/UGCCollectionVideoGroup;Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/Object;)Lcom/transsion/baselib/db/video/UGCCollectionVideoGroup;

    move-result-object p1

    iput-object v2, v0, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$addUgcVideoIds$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$addUgcVideoIds$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$addUgcVideoIds$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$addUgcVideoIds$1;->label:I

    invoke-interface {p0, p1, v0}, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;->b(Lcom/transsion/baselib/db/video/UGCCollectionVideoGroup;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_b

    return-object v1

    :cond_b
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_c
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static b(Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$getCollectionIdByUgcVideoId$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$getCollectionIdByUgcVideoId$1;

    iget v1, v0, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$getCollectionIdByUgcVideoId$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$getCollectionIdByUgcVideoId$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$getCollectionIdByUgcVideoId$1;

    invoke-direct {v0, p2}, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$getCollectionIdByUgcVideoId$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$getCollectionIdByUgcVideoId$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$getCollectionIdByUgcVideoId$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$getCollectionIdByUgcVideoId$1;->L$0:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$getCollectionIdByUgcVideoId$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$getCollectionIdByUgcVideoId$1;->label:I

    invoke-interface {p0, v0}, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;->e(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/util/List;

    const/4 p0, 0x0

    if-nez p2, :cond_4

    return-object p0

    :cond_4
    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroup;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroup;->getUgcVideoIds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_6
    move-object v0, p0

    :goto_2
    check-cast v0, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroup;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroup;->getCollectionId()Ljava/lang/String;

    move-result-object p0

    :cond_7
    return-object p0
.end method
