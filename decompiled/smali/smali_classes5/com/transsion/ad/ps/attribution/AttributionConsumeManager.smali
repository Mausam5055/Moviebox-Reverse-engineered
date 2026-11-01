.class public final Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;
.super Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;


# static fields
.field public static final c:Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;

.field private static d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static e:Lcom/transsion/ad/db/pslink/AttributionPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;

    invoke-direct {v0}, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;-><init>()V

    sput-object v0, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->c:Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;-><init>()V

    return-void
.end method

.method public static final synthetic k(Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->o(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic l(Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->p()V

    return-void
.end method

.method public static final synthetic m(Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->q(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final o(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$doNetWork$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$doNetWork$1;

    iget v2, v1, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$doNetWork$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$doNetWork$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$doNetWork$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$doNetWork$1;-><init>(Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$doNetWork$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v3

    iget v4, v1, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$doNetWork$1;->label:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_12

    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v0, Lhi/f;->a:Lhi/f;

    invoke-virtual {v0}, Lhi/f;->b()Z

    move-result v4

    const-string v9, " --> url = "

    const-string v10, " --> psId = "

    const-string v11, " --> id = "

    if-eqz v4, :cond_a

    sget-object v12, Loi/a;->a:Loi/a;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;->e()Ljava/lang/String;

    move-result-object v4

    sget-object v13, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    if-eqz v13, :cond_5

    invoke-virtual {v13}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getType()Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    move-result-object v13

    goto :goto_2

    :cond_5
    const/4 v13, 0x0

    :goto_2
    sget-object v14, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    if-eqz v14, :cond_6

    invoke-virtual {v14}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getId()I

    move-result v14

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v14

    goto :goto_3

    :cond_6
    const/4 v14, 0x0

    :goto_3
    sget-object v15, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    if-eqz v15, :cond_7

    invoke-virtual {v15}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getFailCount()I

    move-result v15

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_4

    :cond_7
    const/4 v15, 0x0

    :goto_4
    sget-object v16, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    if-eqz v16, :cond_8

    invoke-virtual/range {v16 .. v16}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getPsId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v8, v16

    goto :goto_5

    :cond_8
    const/4 v8, 0x0

    :goto_5
    sget-object v16, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    if-eqz v16, :cond_9

    invoke-virtual/range {v16 .. v16}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getReportUrl()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v5, v16

    goto :goto_6

    :cond_9
    const/4 v5, 0x0

    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " --> consume() --> \u5f00\u59cb\u5f52\u56e0 --> type = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " --> failCount = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x6

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Loi/a;->k(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    :cond_a
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    sget-object v5, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getReportUrl()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_c

    :cond_b
    const-string v5, ""

    :cond_c
    invoke-virtual {v4, v5}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    sget-object v5, Lni/b;->a:Lni/b;

    invoke-virtual {v5}, Lni/b;->d()Lokhttp3/OkHttpClient;

    move-result-object v5

    invoke-virtual {v5, v4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->execute(Lokhttp3/Call;)Lokhttp3/Response;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Response;->isSuccessful()Z

    move-result v5

    const-string v6, " --> response = "

    if-eqz v5, :cond_15

    invoke-virtual {v0}, Lhi/f;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v12, Loi/a;->a:Loi/a;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;->e()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getType()Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    move-result-object v5

    goto :goto_7

    :cond_d
    const/4 v5, 0x0

    :goto_7
    sget-object v8, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    if-eqz v8, :cond_e

    invoke-virtual {v8}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getId()I

    move-result v8

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_8

    :cond_e
    const/4 v8, 0x0

    :goto_8
    sget-object v13, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    if-eqz v13, :cond_f

    invoke-virtual {v13}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getPsId()Ljava/lang/String;

    move-result-object v13

    goto :goto_9

    :cond_f
    const/4 v13, 0x0

    :goto_9
    sget-object v14, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    if-eqz v14, :cond_10

    invoke-virtual {v14}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getReportUrl()Ljava/lang/String;

    move-result-object v14

    goto :goto_a

    :cond_10
    const/4 v14, 0x0

    :goto_a
    invoke-virtual {v4}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v4

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> consume() --> \u5f52\u56e0\u6210\u529f --> type = "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x6

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Loi/a;->k(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    :cond_11
    sget-object v0, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    if-eqz v0, :cond_12

    sget-object v4, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->c:Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;

    iput v7, v1, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$doNetWork$1;->label:I

    invoke-virtual {v4, v0, v1}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;->c(Lcom/transsion/ad/db/pslink/AttributionPoint;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_12

    return-object v3

    :cond_12
    :goto_b
    sget-object v0, Lcom/transsion/ad/ps/PSReportUtil;->a:Lcom/transsion/ad/ps/PSReportUtil;

    sget-object v1, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getType()Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    move-result-object v1

    goto :goto_c

    :cond_13
    const/4 v1, 0x0

    :goto_c
    sget-object v3, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getPsId()Ljava/lang/String;

    move-result-object v8

    goto :goto_d

    :cond_14
    const/4 v8, 0x0

    :goto_d
    invoke-virtual {v0, v1, v8}, Lcom/transsion/ad/ps/PSReportUtil;->a(Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_15
    sget-object v9, Loi/a;->a:Loi/a;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;->e()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    if-eqz v5, :cond_16

    invoke-virtual {v5}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getType()Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    move-result-object v5

    goto :goto_e

    :cond_16
    const/4 v5, 0x0

    :goto_e
    sget-object v8, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    if-eqz v8, :cond_17

    invoke-virtual {v8}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getId()I

    move-result v8

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_f

    :cond_17
    const/4 v8, 0x0

    :goto_f
    sget-object v12, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    if-eqz v12, :cond_18

    invoke-virtual {v12}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getPsId()Ljava/lang/String;

    move-result-object v12

    goto :goto_10

    :cond_18
    const/4 v12, 0x0

    :goto_10
    sget-object v13, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    if-eqz v13, :cond_19

    invoke-virtual {v13}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getReportUrl()Ljava/lang/String;

    move-result-object v13

    goto :goto_11

    :cond_19
    const/4 v13, 0x0

    :goto_11
    invoke-virtual {v4}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v4

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> consume() --> \u5f52\u56e0\u5931\u8d25 --> type = "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "--> url = "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x6

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Loi/a;->k(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    sget-object v0, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getFailCount()I

    move-result v4

    add-int/2addr v4, v7

    invoke-virtual {v0, v4}, Lcom/transsion/ad/db/pslink/AttributionPoint;->setFailCount(I)V

    invoke-virtual {v0}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getFailCount()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_1a

    sget-object v4, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->c:Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;

    const/4 v5, 0x2

    iput v5, v1, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$doNetWork$1;->label:I

    invoke-virtual {v4, v0, v1}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;->c(Lcom/transsion/ad/db/pslink/AttributionPoint;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_1b

    return-object v3

    :cond_1a
    sget-object v4, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->c:Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;

    const/4 v5, 0x3

    iput v5, v1, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$doNetWork$1;->label:I

    invoke-virtual {v4, v0, v1}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;->j(Lcom/transsion/ad/db/pslink/AttributionPoint;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_1b

    return-object v3

    :cond_1b
    :goto_12
    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->p()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method private final p()V
    .locals 2

    sget-object v0, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->n()V

    return-void
.end method

.method private final q(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p1, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$safeCall$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$safeCall$1;

    iget v1, v0, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$safeCall$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$safeCall$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$safeCall$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$safeCall$1;-><init>(Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$safeCall$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$safeCall$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lnh/m;->a:Lnh/m;

    invoke-virtual {p1}, Lnh/m;->e()Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_5
    sget-object p1, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_6
    iput v6, v0, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$safeCall$1;->label:I

    invoke-virtual {p0, v0}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;->d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    :goto_1
    check-cast p1, Lcom/transsion/ad/db/pslink/AttributionPoint;

    sput-object p1, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    if-nez p1, :cond_8

    sget-object p1, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_8
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getReportUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_9
    const/4 p1, 0x0

    :goto_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    if-eqz p1, :cond_a

    sget-object v2, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->c:Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;

    iput v5, v0, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$safeCall$1;->label:I

    invoke-virtual {v2, p1, v0}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;->c(Lcom/transsion/ad/db/pslink/AttributionPoint;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    return-object v1

    :cond_a
    :goto_3
    invoke-direct {p0}, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->p()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_b
    iput v4, v0, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$safeCall$1;->label:I

    invoke-direct {p0, v0}, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->o(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_c

    return-object v1

    :cond_c
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public final n()V
    .locals 7

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$consume$1;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$consume$1;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
