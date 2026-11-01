.class public final Lcom/transsion/ad/monopoly/intercept/InDenyBrandHandler;
.super Lcom/transsion/ad/monopoly/intercept/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/monopoly/intercept/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 15

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    instance-of v2, v1, Lcom/transsion/ad/monopoly/intercept/InDenyBrandHandler$doHandle$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/transsion/ad/monopoly/intercept/InDenyBrandHandler$doHandle$1;

    iget v3, v2, Lcom/transsion/ad/monopoly/intercept/InDenyBrandHandler$doHandle$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/transsion/ad/monopoly/intercept/InDenyBrandHandler$doHandle$1;->label:I

    move-object v3, p0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/transsion/ad/monopoly/intercept/InDenyBrandHandler$doHandle$1;

    move-object v3, p0

    invoke-direct {v2, p0, v1}, Lcom/transsion/ad/monopoly/intercept/InDenyBrandHandler$doHandle$1;-><init>(Lcom/transsion/ad/monopoly/intercept/InDenyBrandHandler;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/transsion/ad/monopoly/intercept/InDenyBrandHandler$doHandle$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v4

    iget v5, v2, Lcom/transsion/ad/monopoly/intercept/InDenyBrandHandler$doHandle$1;->label:I

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v6, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getDenyBrand()Ljava/util/List;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v1

    :goto_1
    move-object v7, v5

    check-cast v7, Ljava/util/Collection;

    if-eqz v7, :cond_b

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    goto/16 :goto_3

    :cond_4
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v8, Lbh/a;->a:Lbh/a$a;

    invoke-virtual {v8}, Lbh/a$a;->c()Lcom/tencent/mmkv/MMKV;

    move-result-object v8

    const-string v9, ""

    if-eqz v8, :cond_6

    const-string v10, "phone_brand"

    invoke-virtual {v8, v10, v9}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5

    goto :goto_2

    :cond_5
    move-object v9, v8

    :cond_6
    :goto_2
    iput-object v9, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    sget-object v8, Lih/b;->a:Lih/b;

    invoke-virtual {v8}, Lih/b;->d()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_7
    check-cast v5, Ljava/lang/Iterable;

    instance-of v8, v5, Ljava/util/Collection;

    if-eqz v8, :cond_8

    move-object v8, v5

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_3

    :cond_8
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "toLowerCase(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v12, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-static {v10, v12, v13, v14, v1}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    iget-object v10, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v8, v13, v14, v1}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_a
    new-instance v0, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    const-string v1, "\u5f53\u524d\u624b\u673a\u54c1\u724c\u5728\u9ed1\u540d\u5355\u4e2d"

    invoke-direct {v0, v13, v1}, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;-><init>(ZLjava/lang/String;)V

    goto :goto_5

    :cond_b
    :goto_3
    invoke-virtual {p0}, Lcom/transsion/ad/monopoly/intercept/a;->c()Lcom/transsion/ad/monopoly/intercept/a;

    move-result-object v1

    if-eqz v1, :cond_d

    iput v6, v2, Lcom/transsion/ad/monopoly/intercept/InDenyBrandHandler$doHandle$1;->label:I

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    invoke-virtual {v1, v5, v0, v6, v2}, Lcom/transsion/ad/monopoly/intercept/a;->b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_c

    return-object v4

    :cond_c
    :goto_4
    move-object v0, v1

    check-cast v0, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    if-nez v0, :cond_e

    :cond_d
    invoke-virtual {p0}, Lcom/transsion/ad/monopoly/intercept/a;->e()Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    move-result-object v0

    :cond_e
    :goto_5
    return-object v0
.end method
