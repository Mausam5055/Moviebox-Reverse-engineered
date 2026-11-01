.class public abstract Lcom/transsion/ad/db/scene/AdSceneLimitDao$DefaultImpls;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ad/db/scene/AdSceneLimitDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static a(Lcom/transsion/ad/db/scene/AdSceneLimitDao;Ljava/lang/String;Ljava/lang/String;JJILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p8, Lcom/transsion/ad/db/scene/AdSceneLimitDao$canDisplayAd$1;

    if-eqz v0, :cond_0

    move-object v0, p8

    check-cast v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$canDisplayAd$1;

    iget v1, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$canDisplayAd$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$canDisplayAd$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$canDisplayAd$1;

    invoke-direct {v0, p8}, Lcom/transsion/ad/db/scene/AdSceneLimitDao$canDisplayAd$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p8, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$canDisplayAd$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$canDisplayAd$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p8}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget p7, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$canDisplayAd$1;->I$0:I

    iget-wide p5, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$canDisplayAd$1;->J$1:J

    iget-wide p3, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$canDisplayAd$1;->J$0:J

    iget-object p0, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$canDisplayAd$1;->L$1:Ljava/lang/Object;

    move-object p2, p0

    check-cast p2, Ljava/lang/String;

    iget-object p0, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$canDisplayAd$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/transsion/ad/db/scene/AdSceneLimitDao;

    invoke-static {p8}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p8}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object p0, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$canDisplayAd$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$canDisplayAd$1;->L$1:Ljava/lang/Object;

    iput-wide p3, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$canDisplayAd$1;->J$0:J

    iput-wide p5, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$canDisplayAd$1;->J$1:J

    iput p7, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$canDisplayAd$1;->I$0:I

    iput v4, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$canDisplayAd$1;->label:I

    invoke-interface {p0, p1, p2, v0}, Lcom/transsion/ad/db/scene/AdSceneLimitDao;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p8

    if-ne p8, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p8, Lcom/transsion/ad/db/scene/AdSceneLimit;

    invoke-virtual {p8}, Lcom/transsion/ad/db/scene/AdSceneLimit;->getLastDisplayAdDate()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_6

    invoke-virtual {p8, p2}, Lcom/transsion/ad/db/scene/AdSceneLimit;->setLastDisplayAdDate(Ljava/lang/String;)V

    invoke-virtual {p8, v2}, Lcom/transsion/ad/db/scene/AdSceneLimit;->setDisplayTimes(I)V

    invoke-virtual {p8, v5, v6}, Lcom/transsion/ad/db/scene/AdSceneLimit;->setLastDisplayAdTimestamp(J)V

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$canDisplayAd$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$canDisplayAd$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$canDisplayAd$1;->label:I

    invoke-interface {p0, p8, v0}, Lcom/transsion/ad/db/scene/AdSceneLimitDao;->f(Lcom/transsion/ad/db/scene/AdSceneLimit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    new-instance p0, Lkotlin/Pair;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "\u6ee1\u8db3\u6761\u4ef6\u5c55\u793a\u5e7f\u544a"

    invoke-direct {p0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_6
    if-lez p7, :cond_7

    invoke-virtual {p8}, Lcom/transsion/ad/db/scene/AdSceneLimit;->getDisplayTimes()I

    move-result p0

    if-lt p0, p7, :cond_7

    new-instance p0, Lkotlin/Pair;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p8}, Lcom/transsion/ad/db/scene/AdSceneLimit;->getDisplayTimes()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\u8d85\u8fc7\u6700\u5927\u5c55\u793a\u6b21\u6570\uff0c\u4eca\u65e5\u5df2\u5c55\u793a"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",\u9650\u5236\u4e3a"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_7
    cmp-long p0, p5, v5

    if-lez p0, :cond_8

    invoke-virtual {p8}, Lcom/transsion/ad/db/scene/AdSceneLimit;->getLastDisplayAdTimestamp()J

    move-result-wide p0

    sub-long/2addr p3, p0

    cmp-long p0, v5, p3

    if-gtz p0, :cond_8

    cmp-long p0, p3, p5

    if-gez p0, :cond_8

    new-instance p0, Lkotlin/Pair;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 p2, 0x3e8

    int-to-long p7, p2

    div-long/2addr p3, p7

    div-long/2addr p5, p7

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "\u5c55\u793a\u95f4\u9694\u9650\u5236\uff0c\u95f4\u9694\u4e3a"

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "\u79d2,\u9650\u5236\u4e3a"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "\u79d2"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_8
    new-instance p0, Lkotlin/Pair;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "\u6ee1\u8db3\u5c55\u793a\u6761\u4ef6"

    invoke-direct {p0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static b(Lcom/transsion/ad/db/scene/AdSceneLimitDao;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p3, Lcom/transsion/ad/db/scene/AdSceneLimitDao$getOrCreateSceneLimit$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$getOrCreateSceneLimit$1;

    iget v1, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$getOrCreateSceneLimit$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$getOrCreateSceneLimit$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$getOrCreateSceneLimit$1;

    invoke-direct {v0, p3}, Lcom/transsion/ad/db/scene/AdSceneLimitDao$getOrCreateSceneLimit$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$getOrCreateSceneLimit$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$getOrCreateSceneLimit$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$getOrCreateSceneLimit$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/transsion/ad/db/scene/AdSceneLimit;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$getOrCreateSceneLimit$1;->L$2:Ljava/lang/Object;

    move-object p2, p0

    check-cast p2, Ljava/lang/String;

    iget-object p0, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$getOrCreateSceneLimit$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    iget-object p0, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$getOrCreateSceneLimit$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/transsion/ad/db/scene/AdSceneLimitDao;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :cond_3
    move-object v5, p1

    move-object v6, p2

    goto :goto_1

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object p0, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$getOrCreateSceneLimit$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$getOrCreateSceneLimit$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$getOrCreateSceneLimit$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$getOrCreateSceneLimit$1;->label:I

    invoke-interface {p0, p1, v0}, Lcom/transsion/ad/db/scene/AdSceneLimitDao;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :goto_1
    check-cast p3, Lcom/transsion/ad/db/scene/AdSceneLimit;

    if-nez p3, :cond_6

    new-instance p1, Lcom/transsion/ad/db/scene/AdSceneLimit;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/transsion/ad/db/scene/AdSceneLimit;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    iput-object p1, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$getOrCreateSceneLimit$1;->L$0:Ljava/lang/Object;

    const/4 p2, 0x0

    iput-object p2, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$getOrCreateSceneLimit$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$getOrCreateSceneLimit$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$getOrCreateSceneLimit$1;->label:I

    invoke-interface {p0, p1, v0}, Lcom/transsion/ad/db/scene/AdSceneLimitDao;->e(Lcom/transsion/ad/db/scene/AdSceneLimit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    move-object p0, p1

    :goto_2
    move-object p3, p0

    :cond_6
    return-object p3
.end method

.method public static c(Lcom/transsion/ad/db/scene/AdSceneLimitDao;Ljava/lang/String;Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p5, Lcom/transsion/ad/db/scene/AdSceneLimitDao$recordAdDisplayed$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$recordAdDisplayed$1;

    iget v1, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$recordAdDisplayed$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$recordAdDisplayed$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$recordAdDisplayed$1;

    invoke-direct {v0, p5}, Lcom/transsion/ad/db/scene/AdSceneLimitDao$recordAdDisplayed$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p5, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$recordAdDisplayed$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$recordAdDisplayed$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-wide p3, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$recordAdDisplayed$1;->J$0:J

    iget-object p0, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$recordAdDisplayed$1;->L$1:Ljava/lang/Object;

    move-object p2, p0

    check-cast p2, Ljava/lang/String;

    iget-object p0, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$recordAdDisplayed$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/transsion/ad/db/scene/AdSceneLimitDao;

    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object p0, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$recordAdDisplayed$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$recordAdDisplayed$1;->L$1:Ljava/lang/Object;

    iput-wide p3, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$recordAdDisplayed$1;->J$0:J

    iput v4, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$recordAdDisplayed$1;->label:I

    invoke-interface {p0, p1, p2, v0}, Lcom/transsion/ad/db/scene/AdSceneLimitDao;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p5, Lcom/transsion/ad/db/scene/AdSceneLimit;

    invoke-virtual {p5}, Lcom/transsion/ad/db/scene/AdSceneLimit;->getLastDisplayAdDate()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p5, v4}, Lcom/transsion/ad/db/scene/AdSceneLimit;->setDisplayTimes(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p5}, Lcom/transsion/ad/db/scene/AdSceneLimit;->getDisplayTimes()I

    move-result p1

    add-int/2addr p1, v4

    invoke-virtual {p5, p1}, Lcom/transsion/ad/db/scene/AdSceneLimit;->setDisplayTimes(I)V

    :goto_2
    invoke-virtual {p5, p2}, Lcom/transsion/ad/db/scene/AdSceneLimit;->setLastDisplayAdDate(Ljava/lang/String;)V

    invoke-virtual {p5, p3, p4}, Lcom/transsion/ad/db/scene/AdSceneLimit;->setLastDisplayAdTimestamp(J)V

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$recordAdDisplayed$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$recordAdDisplayed$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/transsion/ad/db/scene/AdSceneLimitDao$recordAdDisplayed$1;->label:I

    invoke-interface {p0, p5, v0}, Lcom/transsion/ad/db/scene/AdSceneLimitDao;->f(Lcom/transsion/ad/db/scene/AdSceneLimit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    return-object v1

    :cond_6
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
