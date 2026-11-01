.class public final Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;

.field private static final b:Lkotlin/Lazy;

.field public static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;

    invoke-direct {v0}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;-><init>()V

    sput-object v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->a:Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;

    new-instance v0, Lcom/transsion/rewardscenter/utils/g;

    invoke-direct {v0}, Lcom/transsion/rewardscenter/utils/g;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->b:Lkotlin/Lazy;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->c:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lorg/json/JSONObject;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->m(Ljava/lang/String;Lorg/json/JSONObject;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;Lorg/json/JSONObject;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->v(Ljava/lang/String;Lorg/json/JSONObject;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;Lorg/json/JSONObject;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->r(Ljava/lang/String;Lorg/json/JSONObject;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;Lorg/json/JSONObject;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->x(Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;Lorg/json/JSONObject;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/lang/String;Lorg/json/JSONObject;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->t(Ljava/lang/String;Lorg/json/JSONObject;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f()Lup/a;
    .locals 1

    invoke-static {}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->h()Lup/a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic g(Lorg/json/JSONObject;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->k(Lorg/json/JSONObject;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final h()Lup/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lup/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lup/a;

    return-object v0
.end method

.method private final i(Lkotlin/jvm/functions/Function1;)Lokhttp3/RequestBody;
    .locals 3

    sget-object v0, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "toString(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v2, "application/json"

    invoke-virtual {v1, v2}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    return-object p1
.end method

.method private static final k(Lorg/json/JSONObject;)Lkotlin/Unit;
    .locals 2

    const-string v0, "$this$buildBody"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lih/b;->a:Lih/b;

    invoke-virtual {v0}, Lih/b;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gaid"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final m(Ljava/lang/String;Lorg/json/JSONObject;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$buildBody"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "drawResultId"

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic o(Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->n(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final p()Lup/a;
    .locals 1

    sget-object v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lup/a;

    return-object v0
.end method

.method private static final r(Ljava/lang/String;Lorg/json/JSONObject;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$buildBody"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityId"

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "num"

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final t(Ljava/lang/String;Lorg/json/JSONObject;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$buildBody"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "skuId"

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "clientOrderId"

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final v(Ljava/lang/String;Lorg/json/JSONObject;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$buildBody"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    const-string v0, "taskId"

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lih/b;->a:Lih/b;

    invoke-virtual {p0}, Lih/b;->i()Ljava/lang/String;

    move-result-object p0

    const-string v0, "gaid"

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final x(Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;Lorg/json/JSONObject;)Lkotlin/Unit;
    .locals 7

    const-string v0, "$this$buildBody"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;->getDrawResultId()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    const-string v2, "drawResultId"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;->getReceiverName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    const-string v2, "receiverName"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;->getPhone()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/rewardscenterapi/PhoneInfo;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3}, Lcom/transsion/rewardscenterapi/PhoneInfo;->getCountryNo()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    move-object v5, v1

    :cond_2
    const-string v6, "countryNo"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/transsion/rewardscenterapi/PhoneInfo;->getNumber()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    move-object v5, v1

    :cond_3
    const-string v6, "number"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/transsion/rewardscenterapi/PhoneInfo;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    move-object v3, v1

    :cond_4
    const-string v5, "countryCode"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v2, "phone"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    move-object v1, v0

    :goto_1
    const-string v0, "address"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;->getEmail()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {v0}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    const-string v0, "email"

    invoke-virtual {p0}, Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;->getPostCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {v0}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    const-string v0, "postCode"

    invoke-virtual {p0}, Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;->getPostCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final j(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p3, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$checkDadaSetDefault$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$checkDadaSetDefault$1;

    iget v1, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$checkDadaSetDefault$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$checkDadaSetDefault$1;->label:I

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$checkDadaSetDefault$1;

    invoke-direct {v0, p0, p3}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$checkDadaSetDefault$1;-><init>(Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object p3, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$checkDadaSetDefault$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$checkDadaSetDefault$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$checkDadaSetDefault$1;->L$1:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lkotlin/jvm/functions/Function1;

    iget-object p1, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$checkDadaSetDefault$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p3

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p3, Lcom/transsion/rewardscenter/utils/i;

    invoke-direct {p3}, Lcom/transsion/rewardscenter/utils/i;-><init>()V

    invoke-direct {p0, p3}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->i(Lkotlin/jvm/functions/Function1;)Lokhttp3/RequestBody;

    move-result-object v3

    :try_start_1
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct {p0}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->p()Lup/a;

    move-result-object v1

    iput-object p1, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$checkDadaSetDefault$1;->L$0:Ljava/lang/Object;

    iput-object p2, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$checkDadaSetDefault$1;->L$1:Ljava/lang/Object;

    iput v2, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$checkDadaSetDefault$1;->label:I

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lup/a$a;->a(Lup/a;Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_3

    return-object v0

    :cond_3
    :goto_2
    check-cast p3, Lcom/tn/lib/net/bean/BaseDto;

    invoke-static {p3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p3}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :goto_4
    invoke-static {p3}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p3

    check-cast v0, Lcom/tn/lib/net/bean/BaseDto;

    invoke-static {v0}, Lcom/transsion/rewardscenter/utils/n;->a(Lcom/tn/lib/net/bean/BaseDto;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_5
    invoke-static {p3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    const/4 p3, 0x0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final l(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$claimReward$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$claimReward$1;

    iget v1, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$claimReward$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$claimReward$1;->label:I

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$claimReward$1;

    invoke-direct {v0, p0, p4}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$claimReward$1;-><init>(Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object p4, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$claimReward$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$claimReward$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$claimReward$1;->L$1:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Lkotlin/jvm/functions/Function1;

    iget-object p1, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$claimReward$1;->L$0:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lkotlin/jvm/functions/Function2;

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p4, Lcom/transsion/rewardscenter/utils/k;

    invoke-direct {p4, p1}, Lcom/transsion/rewardscenter/utils/k;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->i(Lkotlin/jvm/functions/Function1;)Lokhttp3/RequestBody;

    move-result-object v3

    :try_start_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct {p0}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->p()Lup/a;

    move-result-object v1

    iput-object p2, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$claimReward$1;->L$0:Ljava/lang/Object;

    iput-object p3, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$claimReward$1;->L$1:Ljava/lang/Object;

    iput v2, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$claimReward$1;->label:I

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lup/a$a;->b(Lup/a;Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v0, :cond_3

    return-object v0

    :cond_3
    :goto_2
    check-cast p4, Lcom/tn/lib/net/bean/BaseDto;

    invoke-static {p4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    sget-object p4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_4
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    move-object p4, p1

    check-cast p4, Lcom/tn/lib/net/bean/BaseDto;

    invoke-static {p4}, Lcom/transsion/rewardscenter/utils/n;->a(Lcom/tn/lib/net/bean/BaseDto;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p4}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p3, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p4}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, p3, p4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_5
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    const/4 p3, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final n(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$fetchAdTaskInfo$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$fetchAdTaskInfo$1;

    iget v1, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$fetchAdTaskInfo$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$fetchAdTaskInfo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$fetchAdTaskInfo$1;

    invoke-direct {v0, p0, p3}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$fetchAdTaskInfo$1;-><init>(Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$fetchAdTaskInfo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$fetchAdTaskInfo$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$fetchAdTaskInfo$1;->L$1:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lkotlin/jvm/functions/Function1;

    iget-object p1, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$fetchAdTaskInfo$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p3

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct {p0}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->p()Lup/a;

    move-result-object p3

    iput-object p1, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$fetchAdTaskInfo$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$fetchAdTaskInfo$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$fetchAdTaskInfo$1;->label:I

    invoke-static {p3, v3, v0, v4, v3}, Lup/a$a;->c(Lup/a;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Lcom/tn/lib/net/bean/BaseDto;

    invoke-static {p3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p3}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :goto_3
    invoke-static {p3}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p3

    check-cast v0, Lcom/tn/lib/net/bean/BaseDto;

    invoke-static {v0}, Lcom/transsion/rewardscenter/utils/n;->a(Lcom/tn/lib/net/bean/BaseDto;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_4
    invoke-static {p3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v3, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final q(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemLottery$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemLottery$1;

    iget v1, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemLottery$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemLottery$1;->label:I

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemLottery$1;

    invoke-direct {v0, p0, p4}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemLottery$1;-><init>(Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object p4, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemLottery$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemLottery$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemLottery$1;->L$1:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Lkotlin/jvm/functions/Function1;

    iget-object p1, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemLottery$1;->L$0:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lkotlin/jvm/functions/Function2;

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p4, Lcom/transsion/rewardscenter/utils/m;

    invoke-direct {p4, p1}, Lcom/transsion/rewardscenter/utils/m;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->i(Lkotlin/jvm/functions/Function1;)Lokhttp3/RequestBody;

    move-result-object v3

    :try_start_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct {p0}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->p()Lup/a;

    move-result-object v1

    iput-object p2, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemLottery$1;->L$0:Ljava/lang/Object;

    iput-object p3, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemLottery$1;->L$1:Ljava/lang/Object;

    iput v2, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemLottery$1;->label:I

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lup/a$a;->g(Lup/a;Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v0, :cond_3

    return-object v0

    :cond_3
    :goto_2
    check-cast p4, Lcom/tn/lib/net/bean/BaseDto;

    invoke-static {p4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    sget-object p4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_4
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    move-object p4, p1

    check-cast p4, Lcom/tn/lib/net/bean/BaseDto;

    invoke-static {p4}, Lcom/transsion/rewardscenter/utils/n;->a(Lcom/tn/lib/net/bean/BaseDto;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p4}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p3, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p4}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, p3, p4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_5
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    const/4 p3, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final s(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemProduct$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemProduct$1;

    iget v1, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemProduct$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemProduct$1;->label:I

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemProduct$1;

    invoke-direct {v0, p0, p4}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemProduct$1;-><init>(Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object p4, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemProduct$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemProduct$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemProduct$1;->L$1:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Lkotlin/jvm/functions/Function1;

    iget-object p1, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemProduct$1;->L$0:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lkotlin/jvm/functions/Function2;

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p4, Lcom/transsion/rewardscenter/utils/h;

    invoke-direct {p4, p1}, Lcom/transsion/rewardscenter/utils/h;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->i(Lkotlin/jvm/functions/Function1;)Lokhttp3/RequestBody;

    move-result-object v3

    :try_start_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct {p0}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->p()Lup/a;

    move-result-object v1

    iput-object p2, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemProduct$1;->L$0:Ljava/lang/Object;

    iput-object p3, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemProduct$1;->L$1:Ljava/lang/Object;

    iput v2, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$redeemProduct$1;->label:I

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lup/a$a;->h(Lup/a;Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v0, :cond_3

    return-object v0

    :cond_3
    :goto_2
    check-cast p4, Lcom/tn/lib/net/bean/BaseDto;

    invoke-static {p4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    sget-object p4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_4
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    move-object p4, p1

    check-cast p4, Lcom/tn/lib/net/bean/BaseDto;

    invoke-static {p4}, Lcom/transsion/rewardscenter/utils/n;->a(Lcom/tn/lib/net/bean/BaseDto;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p4}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p3, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p4}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, p3, p4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_5
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    const/4 p3, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final u(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$startClaim$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$startClaim$1;

    iget v1, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$startClaim$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$startClaim$1;->label:I

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$startClaim$1;

    invoke-direct {v0, p0, p4}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$startClaim$1;-><init>(Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object p4, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$startClaim$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$startClaim$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$startClaim$1;->L$1:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Lkotlin/jvm/functions/Function1;

    iget-object p1, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$startClaim$1;->L$0:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lkotlin/jvm/functions/Function2;

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p4, Lcom/transsion/rewardscenter/utils/j;

    invoke-direct {p4, p1}, Lcom/transsion/rewardscenter/utils/j;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->i(Lkotlin/jvm/functions/Function1;)Lokhttp3/RequestBody;

    move-result-object v3

    :try_start_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct {p0}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->p()Lup/a;

    move-result-object v1

    iput-object p2, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$startClaim$1;->L$0:Ljava/lang/Object;

    iput-object p3, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$startClaim$1;->L$1:Ljava/lang/Object;

    iput v2, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$startClaim$1;->label:I

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lup/a$a;->f(Lup/a;Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v0, :cond_3

    return-object v0

    :cond_3
    :goto_2
    check-cast p4, Lcom/tn/lib/net/bean/BaseDto;

    invoke-static {p4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    sget-object p4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_4
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    move-object p4, p1

    check-cast p4, Lcom/tn/lib/net/bean/BaseDto;

    invoke-static {p4}, Lcom/transsion/rewardscenter/utils/n;->a(Lcom/tn/lib/net/bean/BaseDto;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p4}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p3, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_4
    invoke-virtual {p4}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, p3, p4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_5
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    const/4 p3, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final w(Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$submitClaimReceiverInfo$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$submitClaimReceiverInfo$1;

    iget v1, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$submitClaimReceiverInfo$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$submitClaimReceiverInfo$1;->label:I

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$submitClaimReceiverInfo$1;

    invoke-direct {v0, p0, p4}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$submitClaimReceiverInfo$1;-><init>(Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object p4, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$submitClaimReceiverInfo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$submitClaimReceiverInfo$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$submitClaimReceiverInfo$1;->L$1:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Lkotlin/jvm/functions/Function1;

    iget-object p1, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$submitClaimReceiverInfo$1;->L$0:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lkotlin/jvm/functions/Function2;

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p4, Lcom/transsion/rewardscenter/utils/l;

    invoke-direct {p4, p1}, Lcom/transsion/rewardscenter/utils/l;-><init>(Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;)V

    invoke-direct {p0, p4}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->i(Lkotlin/jvm/functions/Function1;)Lokhttp3/RequestBody;

    move-result-object v3

    :try_start_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct {p0}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->p()Lup/a;

    move-result-object v1

    iput-object p2, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$submitClaimReceiverInfo$1;->L$0:Ljava/lang/Object;

    iput-object p3, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$submitClaimReceiverInfo$1;->L$1:Ljava/lang/Object;

    iput v2, v4, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper$submitClaimReceiverInfo$1;->label:I

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lup/a$a;->i(Lup/a;Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v0, :cond_3

    return-object v0

    :cond_3
    :goto_2
    check-cast p4, Lcom/tn/lib/net/bean/BaseDto;

    invoke-static {p4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    sget-object p4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_4
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    move-object p4, p1

    check-cast p4, Lcom/tn/lib/net/bean/BaseDto;

    invoke-static {p4}, Lcom/transsion/rewardscenter/utils/n;->a(Lcom/tn/lib/net/bean/BaseDto;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p4}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p3, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p4}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, p3, p4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_5
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    const/4 p3, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
