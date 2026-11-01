.class public final Lcom/wecloud/load/lib/StProbeIntegration;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wecloud/load/lib/StProbeIntegration$Group1ResultItem;,
        Lcom/wecloud/load/lib/StProbeIntegration$Group1ResultWrapper;,
        Lcom/wecloud/load/lib/StProbeIntegration$ProbeLinkDto;,
        Lcom/wecloud/load/lib/StProbeIntegration$StProbeConfigs;
    }
.end annotation


# static fields
.field public static final a:Lcom/wecloud/load/lib/StProbeIntegration;

.field private static volatile b:Z

.field private static volatile c:Z

.field private static final d:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/wecloud/load/lib/StProbeIntegration;

    invoke-direct {v0}, Lcom/wecloud/load/lib/StProbeIntegration;-><init>()V

    sput-object v0, Lcom/wecloud/load/lib/StProbeIntegration;->a:Lcom/wecloud/load/lib/StProbeIntegration;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/wecloud/load/lib/StProbeIntegration;->b:Z

    new-instance v0, Lcom/wecloud/load/lib/q;

    invoke-direct {v0}, Lcom/wecloud/load/lib/q;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/wecloud/load/lib/StProbeIntegration;->d:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/google/gson/Gson;
    .locals 1

    invoke-static {}, Lcom/wecloud/load/lib/StProbeIntegration;->e()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic b()Z
    .locals 1

    sget-boolean v0, Lcom/wecloud/load/lib/StProbeIntegration;->c:Z

    return v0
.end method

.method private final d()Lcom/google/gson/Gson;
    .locals 1

    sget-object v0, Lcom/wecloud/load/lib/StProbeIntegration;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    return-object v0
.end method

.method private static final e()Lcom/google/gson/Gson;
    .locals 1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    return-object v0
.end method

.method public static synthetic g(Lcom/wecloud/load/lib/StProbeIntegration;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/wecloud/load/lib/StProbeIntegration;->f(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/wecloud/load/lib/StProbeIntegration;ZILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/wecloud/load/lib/StProbeIntegration;->j(ZILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c(Lcom/wecloud/load/lib/StProbeIntegration$StProbeConfigs;I)Ljava/lang/String;
    .locals 15

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/wecloud/load/lib/StProbeIntegration$StProbeConfigs;->getProberLinks()Ljava/util/List;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    if-nez v4, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v4

    :cond_1
    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/wecloud/load/lib/StProbeIntegration$ProbeLinkDto;

    invoke-virtual {v7}, Lcom/wecloud/load/lib/StProbeIntegration$ProbeLinkDto;->getUrl()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    move v7, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v7, v2

    :goto_3
    if-nez v7, :cond_2

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz p1, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/wecloud/load/lib/StProbeIntegration$StProbeConfigs;->getProberLinks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildGroup1InitPayloadFromStProbe(): no valid proberLinks, rawSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StProbeIntegration"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v5, v4}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wecloud/load/lib/StProbeIntegration$ProbeLinkDto;

    invoke-virtual {v5}, Lcom/wecloud/load/lib/StProbeIntegration$ProbeLinkDto;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "id"

    invoke-static {v7, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const-string v7, "url"

    invoke-virtual {v5}, Lcom/wecloud/load/lib/StProbeIntegration$ProbeLinkDto;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const-string v8, "method"

    invoke-virtual {v5}, Lcom/wecloud/load/lib/StProbeIntegration$ProbeLinkDto;->getMethod()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const-string v9, "headers"

    invoke-virtual {v5}, Lcom/wecloud/load/lib/StProbeIntegration$ProbeLinkDto;->getHeaders()Ljava/util/Map;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const-string v10, "body"

    invoke-virtual {v5}, Lcom/wecloud/load/lib/StProbeIntegration$ProbeLinkDto;->getBody()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    const-string v11, "expectedStatusCode"

    invoke-virtual {v5}, Lcom/wecloud/load/lib/StProbeIntegration$ProbeLinkDto;->getExpectedStatusCode()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    invoke-virtual {v5}, Lcom/wecloud/load/lib/StProbeIntegration$ProbeLinkDto;->getTimeoutMilliseconds()Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_8

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto :goto_5

    :cond_8
    move v12, v1

    :goto_5
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "timeoutMilliseconds"

    invoke-static {v13, v12}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    invoke-virtual {v5}, Lcom/wecloud/load/lib/StProbeIntegration$ProbeLinkDto;->getRetryCount()Ljava/lang/Integer;

    move-result-object v13

    if-eqz v13, :cond_9

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    goto :goto_6

    :cond_9
    move v13, v1

    :goto_6
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "retryCount"

    invoke-static {v14, v13}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    const-string v14, "name"

    invoke-virtual {v5}, Lcom/wecloud/load/lib/StProbeIntegration$ProbeLinkDto;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    const/16 v14, 0x9

    new-array v14, v14, [Lkotlin/Pair;

    aput-object v6, v14, v1

    aput-object v7, v14, v2

    aput-object v8, v14, v0

    const/4 v6, 0x3

    aput-object v9, v14, v6

    const/4 v6, 0x4

    aput-object v10, v14, v6

    const/4 v6, 0x5

    aput-object v11, v14, v6

    const/4 v6, 0x6

    aput-object v12, v14, v6

    const/4 v6, 0x7

    aput-object v13, v14, v6

    const/16 v6, 0x8

    aput-object v5, v14, v6

    invoke-static {v14}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "version"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const-string v5, "proberLinks"

    invoke-static {v5, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    new-array v0, v0, [Lkotlin/Pair;

    aput-object v4, v0, v1

    aput-object v3, v0, v2

    invoke-static {v0}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    if-lez p2, :cond_b

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "maxConcurrency"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    invoke-direct {p0}, Lcom/wecloud/load/lib/StProbeIntegration;->d()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lcom/wecloud/load/lib/l;->a:Lcom/wecloud/load/lib/l;

    invoke-virtual {v0}, Lcom/wecloud/load/lib/l;->d()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_0
    sget-boolean v0, Lcom/wecloud/load/lib/StProbeIntegration;->c:Z

    if-eqz v0, :cond_1

    const-string v0, "https://i-api-test.aoneroom.com"

    goto :goto_0

    :cond_1
    const-string v0, "https://i-api.aoneroom.com"

    :goto_0
    sget-boolean v1, Lcom/wecloud/load/lib/StProbeIntegration;->c:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initStProbeConfig(globalVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isDebugMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", baseUrl="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v2, Lcom/wecloud/load/lib/StProbeIntegration$initStProbeConfig$2;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v0, v3}, Lcom/wecloud/load/lib/StProbeIntegration$initStProbeConfig$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v2, p2}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    return-object p1

    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final h()Lcom/wecloud/load/lib/StProbeIntegration$StProbeConfigs;
    .locals 10

    const/4 v0, 0x1

    sget-object v1, Lcom/transsion/base/infras_config/InfraInitManager;->a:Lcom/transsion/base/infras_config/InfraInitManager;

    sget-object v2, Lcom/transsion/base/infras_config/model/InfrasSourceType;->ST_PROBER:Lcom/transsion/base/infras_config/model/InfrasSourceType;

    invoke-virtual {v1, v2}, Lcom/transsion/base/infras_config/InfraInitManager;->d(Lcom/transsion/base/infras_config/model/InfrasSourceType;)Lcom/transsion/base/infras_config/model/ConfigInitDataItem;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "StProbeIntegration"

    if-nez v1, :cond_0

    const-string v0, "loadStProberConfigsFromCache: no cached item for ST_PROBER"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    invoke-virtual {v1}, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;->getConfigs()Lcom/google/gson/JsonElement;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "loadStProberConfigsFromCache: cached item has null configs"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    :try_start_0
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    const-class v5, Lcom/wecloud/load/lib/StProbeIntegration$StProbeConfigs;

    invoke-virtual {v4, v1, v5}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wecloud/load/lib/StProbeIntegration$StProbeConfigs;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object v4, v1

    check-cast v4, Lcom/wecloud/load/lib/StProbeIntegration$StProbeConfigs;

    invoke-virtual {v4}, Lcom/wecloud/load/lib/StProbeIntegration$StProbeConfigs;->getProberLinks()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    invoke-virtual {v4}, Lcom/wecloud/load/lib/StProbeIntegration$StProbeConfigs;->getProberLinks()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_8

    check-cast v7, Ljava/lang/Iterable;

    instance-of v8, v7, Ljava/util/Collection;

    if-eqz v8, :cond_3

    move-object v8, v7

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_5

    :cond_3
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v6

    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/wecloud/load/lib/StProbeIntegration$ProbeLinkDto;

    invoke-virtual {v9}, Lcom/wecloud/load/lib/StProbeIntegration$ProbeLinkDto;->getUrl()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-static {v9}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_3

    :cond_5
    move v9, v6

    goto :goto_4

    :cond_6
    :goto_3
    move v9, v0

    :goto_4
    if-nez v9, :cond_4

    add-int/2addr v8, v0

    if-gez v8, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->t()V

    goto :goto_2

    :cond_7
    move v6, v8

    :cond_8
    :goto_5
    invoke-virtual {v4}, Lcom/wecloud/load/lib/StProbeIntegration$StProbeConfigs;->getVersion()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadStProberConfigsFromCache: loaded configs, version="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", linksTotal="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", linksWithUrl="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_9
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parse ST_PROBER.configs failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_6

    :cond_b
    move-object v2, v1

    :goto_6
    check-cast v2, Lcom/wecloud/load/lib/StProbeIntegration$StProbeConfigs;

    return-object v2
.end method

.method public final i(ZILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    new-instance v1, Lcom/wecloud/load/lib/StProbeIntegration$probeAllFromStProbe$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/wecloud/load/lib/StProbeIntegration$probeAllFromStProbe$2;-><init>(ZILkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j(ZILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Lcom/wecloud/load/lib/StProbeIntegration$probeAllFromStProbeAndReport$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/wecloud/load/lib/StProbeIntegration$probeAllFromStProbeAndReport$1;

    iget v1, v0, Lcom/wecloud/load/lib/StProbeIntegration$probeAllFromStProbeAndReport$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/wecloud/load/lib/StProbeIntegration$probeAllFromStProbeAndReport$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/wecloud/load/lib/StProbeIntegration$probeAllFromStProbeAndReport$1;

    invoke-direct {v0, p0, p3}, Lcom/wecloud/load/lib/StProbeIntegration$probeAllFromStProbeAndReport$1;-><init>(Lcom/wecloud/load/lib/StProbeIntegration;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/wecloud/load/lib/StProbeIntegration$probeAllFromStProbeAndReport$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/wecloud/load/lib/StProbeIntegration$probeAllFromStProbeAndReport$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v3, v0, Lcom/wecloud/load/lib/StProbeIntegration$probeAllFromStProbeAndReport$1;->label:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/wecloud/load/lib/StProbeIntegration;->i(ZILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Ljava/util/List;

    sget-object p1, Lcom/wecloud/load/lib/j;->a:Lcom/wecloud/load/lib/j;

    invoke-virtual {p1, p3}, Lcom/wecloud/load/lib/j;->a(Ljava/util/List;)V

    return-object p3
.end method

.method public final l(Z)V
    .locals 0

    sput-boolean p1, Lcom/wecloud/load/lib/StProbeIntegration;->c:Z

    return-void
.end method
