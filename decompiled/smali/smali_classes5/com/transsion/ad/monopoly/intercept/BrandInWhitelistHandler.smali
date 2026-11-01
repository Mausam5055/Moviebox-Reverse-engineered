.class public final Lcom/transsion/ad/monopoly/intercept/BrandInWhitelistHandler;
.super Lcom/transsion/ad/monopoly/intercept/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/monopoly/intercept/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p4, Lcom/transsion/ad/monopoly/intercept/BrandInWhitelistHandler$doHandle$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/transsion/ad/monopoly/intercept/BrandInWhitelistHandler$doHandle$1;

    iget v1, v0, Lcom/transsion/ad/monopoly/intercept/BrandInWhitelistHandler$doHandle$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/ad/monopoly/intercept/BrandInWhitelistHandler$doHandle$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/ad/monopoly/intercept/BrandInWhitelistHandler$doHandle$1;

    invoke-direct {v0, p0, p4}, Lcom/transsion/ad/monopoly/intercept/BrandInWhitelistHandler$doHandle$1;-><init>(Lcom/transsion/ad/monopoly/intercept/BrandInWhitelistHandler;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/transsion/ad/monopoly/intercept/BrandInWhitelistHandler$doHandle$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/ad/monopoly/intercept/BrandInWhitelistHandler$doHandle$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const/4 p4, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getBrand()Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object v2, p4

    :goto_1
    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    if-eqz v5, :cond_d

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    goto/16 :goto_5

    :cond_5
    sget-object v3, Lih/b;->a:Lih/b;

    invoke-virtual {v3}, Lih/b;->d()Ljava/lang/String;

    move-result-object v3

    check-cast v2, Ljava/lang/Iterable;

    instance-of v5, v2, Ljava/util/Collection;

    const/4 v6, 0x0

    if-eqz v5, :cond_6

    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "toLowerCase(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v10, v6, v4, p4}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v3, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v5, v6, v4, p4}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_8
    invoke-virtual {p0}, Lcom/transsion/ad/monopoly/intercept/a;->c()Lcom/transsion/ad/monopoly/intercept/a;

    move-result-object p4

    if-eqz p4, :cond_a

    iput v4, v0, Lcom/transsion/ad/monopoly/intercept/BrandInWhitelistHandler$doHandle$1;->label:I

    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/transsion/ad/monopoly/intercept/a;->b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_9

    return-object v1

    :cond_9
    :goto_2
    check-cast p4, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    if-nez p4, :cond_c

    :cond_a
    invoke-virtual {p0}, Lcom/transsion/ad/monopoly/intercept/a;->e()Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    move-result-object p4

    goto :goto_4

    :cond_b
    :goto_3
    new-instance p4, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    const-string p1, "\u5f53\u524d\u624b\u673a\u54c1\u724c\u4e0d\u5728\u767d\u540d\u5355\u4e2d"

    invoke-direct {p4, v6, p1}, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;-><init>(ZLjava/lang/String;)V

    :cond_c
    :goto_4
    return-object p4

    :cond_d
    :goto_5
    invoke-virtual {p0}, Lcom/transsion/ad/monopoly/intercept/a;->c()Lcom/transsion/ad/monopoly/intercept/a;

    move-result-object p4

    if-eqz p4, :cond_f

    iput v3, v0, Lcom/transsion/ad/monopoly/intercept/BrandInWhitelistHandler$doHandle$1;->label:I

    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/transsion/ad/monopoly/intercept/a;->b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_e

    return-object v1

    :cond_e
    :goto_6
    check-cast p4, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    if-nez p4, :cond_10

    :cond_f
    invoke-virtual {p0}, Lcom/transsion/ad/monopoly/intercept/a;->e()Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    move-result-object p4

    :cond_10
    return-object p4
.end method
