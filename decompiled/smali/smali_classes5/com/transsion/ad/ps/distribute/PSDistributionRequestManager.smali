.class public final Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager;

    invoke-direct {v0}, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager;-><init>()V

    sput-object v0, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager;->a:Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager;

    new-instance v0, Lcom/transsion/ad/ps/distribute/a;

    invoke-direct {v0}, Lcom/transsion/ad/ps/distribute/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager;->b:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lqi/a;
    .locals 1

    invoke-static {}, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager;->f()Lqi/a;

    move-result-object v0

    return-object v0
.end method

.method private final b()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final c(IILjava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "bu"

    const-string v2, "mb"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pageIndex"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "pageSize"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "recommendCode"

    const-string p2, "mb_apps"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "pushModel"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    sget-object p1, Lqi/a;->a:Lqi/a$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lqi/a$a;->a(J)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final e()Lqi/a;
    .locals 1

    sget-object v0, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqi/a;

    return-object v0
.end method

.method private static final f()Lqi/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lqi/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqi/a;

    return-object v0
.end method


# virtual methods
.method public final d(IILjava/lang/String;Ljava/lang/String;Ldi/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v8, p3

    move-object/from16 v0, p6

    instance-of v2, v0, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager$getPsLinkListV2$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager$getPsLinkListV2$1;

    iget v3, v2, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager$getPsLinkListV2$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager$getPsLinkListV2$1;->label:I

    :goto_0
    move-object v0, v2

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager$getPsLinkListV2$1;

    invoke-direct {v2, v1, v0}, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager$getPsLinkListV2$1;-><init>(Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object v2, v0, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager$getPsLinkListV2$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v9

    iget v3, v0, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager$getPsLinkListV2$1;->label:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v3, :cond_2

    if-ne v3, v10, :cond_1

    iget-object v3, v0, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager$getPsLinkListV2$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ldi/a;

    iget-object v0, v0, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager$getPsLinkListV2$1;->L$0:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p4

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager;->c(IILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    sget-object v2, Lhi/f;->a:Lhi/f;

    invoke-virtual {v2}, Lhi/f;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "https://feature-api.palmplaystore.com"

    :goto_2
    move-object v13, v3

    goto :goto_3

    :cond_3
    const-string v3, "https://test-feature-api.palmplaystore.com"

    goto :goto_2

    :goto_3
    invoke-virtual {v2}, Lhi/f;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v14, Loi/a;->a:Loi/a;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> getPsLinkListBySlot() --> scene = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> url = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> jsonObject = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x6

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Loi/a;->i(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    :cond_4
    sget-object v2, Lcom/transsion/ad/ps/PSReportUtil;->a:Lcom/transsion/ad/ps/PSReportUtil;

    sget-object v3, Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;->REQUEST_TRIGGER:Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;

    const-string v5, ""

    const-string v6, ""

    const/4 v4, 0x0

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/ad/ps/PSReportUtil;->d(Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager;->e()Lqi/a;

    move-result-object v2

    sget-object v3, Lbh/b;->a:Lbh/b$a;

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "toString(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lbh/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v3

    iput-object v8, v0, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager$getPsLinkListV2$1;->L$0:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v4, p5

    :try_start_2
    iput-object v4, v0, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager$getPsLinkListV2$1;->L$1:Ljava/lang/Object;

    iput v10, v0, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager$getPsLinkListV2$1;->label:I

    invoke-interface {v2, v3, v13, v0}, Lqi/a;->b(Lokhttp3/RequestBody;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v2, v9, :cond_5

    return-object v9

    :cond_5
    move-object v3, v4

    move-object v4, v8

    :goto_4
    :try_start_3
    check-cast v2, Lcom/transsion/ad/ps/model/PsLinkDto;

    sget-object v0, Lcom/transsion/ad/ps/PSReportUtil;->a:Lcom/transsion/ad/ps/PSReportUtil;

    sget-object v5, Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;->REQUEST_SUCCESS:Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/transsion/ad/ps/model/PsLinkDto;->getData()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_5

    :cond_6
    move-object v6, v11

    :goto_5
    const-string v7, ""

    const-string v8, ""

    move-object/from16 p1, v0

    move-object/from16 p2, v5

    move-object/from16 p3, v6

    move-object/from16 p4, v7

    move-object/from16 p5, v8

    move-object/from16 p6, v4

    invoke-virtual/range {p1 .. p6}, Lcom/transsion/ad/ps/PSReportUtil;->d(Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/transsion/ad/ps/model/PsLinkDto;->getData()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/ad/ps/model/RecommendInfo;

    sget-object v6, Lqi/b;->a:Lqi/b;

    invoke-virtual {v6}, Lqi/b;->n()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v5}, Lcom/transsion/ad/ps/model/RecommendInfo;->getGpLink()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_6

    :cond_7
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v3, v0}, Ldi/a;->v(Ljava/util/List;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_7

    :cond_9
    move-object v0, v11

    :goto_7
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_a

    :catchall_1
    move-exception v0

    :goto_8
    move-object v3, v4

    move-object v4, v8

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object/from16 v4, p5

    goto :goto_8

    :goto_9
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_a
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_b

    :cond_a
    sget-object v2, Lcom/transsion/ad/ps/PSReportUtil;->a:Lcom/transsion/ad/ps/PSReportUtil;

    sget-object v5, Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;->REQUEST_FAIL:Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const/4 v8, 0x0

    move-object/from16 p1, v2

    move-object/from16 p2, v5

    move-object/from16 p3, v8

    move-object/from16 p4, v6

    move-object/from16 p5, v7

    move-object/from16 p6, v4

    invoke-virtual/range {p1 .. p6}, Lcom/transsion/ad/ps/PSReportUtil;->d(Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_b

    new-instance v2, Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-direct {v2, v4, v0}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v2, v11}, Ldi/a;->e(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    :cond_b
    :goto_b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
