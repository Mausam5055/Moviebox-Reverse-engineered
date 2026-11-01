.class public final Lcom/transsion/mpush/core/fcm/FCMPushHelper;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Lkotlin/Lazy;

.field private h:Landroid/app/Application;

.field private i:Lkotlinx/coroutines/t1;

.field private final j:Lkotlinx/coroutines/n0;

.field private volatile k:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PushRegisterManager"

    iput-object v0, p0, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->a:Ljava/lang/String;

    const-string v0, "topic_appid_"

    iput-object v0, p0, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->b:Ljava/lang/String;

    const-string v0, "topic_zone_"

    iput-object v0, p0, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->c:Ljava/lang/String;

    const-string v0, "topic_country_"

    iput-object v0, p0, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->d:Ljava/lang/String;

    const-string v0, "topic_language_"

    iput-object v0, p0, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->e:Ljava/lang/String;

    const-string v0, "_test"

    iput-object v0, p0, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->f:Ljava/lang/String;

    new-instance v0, Lcom/transsion/mpush/core/fcm/a;

    invoke-direct {v0}, Lcom/transsion/mpush/core/fcm/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->g:Lkotlin/Lazy;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/l2;->b(Lkotlinx/coroutines/t1;ILjava/lang/Object;)Lkotlinx/coroutines/z;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->j:Lkotlinx/coroutines/n0;

    return-void
.end method

.method private static final A(Landroid/app/Application;Ljava/lang/String;Z)Lkotlin/Unit;
    .locals 0

    if-eqz p2, :cond_0

    sget-object p2, Lcom/transsion/mpush/core/utils/PushPreference;->a:Lcom/transsion/mpush/core/utils/PushPreference;

    invoke-virtual {p2, p0, p1}, Lcom/transsion/mpush/core/utils/PushPreference;->v(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final B(Landroid/app/Application;Ljava/lang/String;Z)Lkotlin/Unit;
    .locals 0

    if-eqz p2, :cond_0

    sget-object p2, Lcom/transsion/mpush/core/utils/PushPreference;->a:Lcom/transsion/mpush/core/utils/PushPreference;

    invoke-virtual {p2, p0, p1}, Lcom/transsion/mpush/core/utils/PushPreference;->t(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final C()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->k:Z

    invoke-virtual {p0}, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->D()V

    :cond_0
    return-void
.end method

.method private static final E(Lcom/transsion/mpush/core/fcm/FCMPushHelper;Lorg/json/JSONObject;Ljava/lang/String;)Lkotlin/Unit;
    .locals 9

    const-string v0, "regHash"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->i:Lkotlinx/coroutines/t1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    iget-object v3, p0, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->j:Lkotlinx/coroutines/n0;

    new-instance v6, Lcom/transsion/mpush/core/fcm/FCMPushHelper$sendToServer$1$1;

    invoke-direct {v6, p0, p1, p2, v1}, Lcom/transsion/mpush/core/fcm/FCMPushHelper$sendToServer$1$1;-><init>(Lcom/transsion/mpush/core/fcm/FCMPushHelper;Lorg/json/JSONObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->i:Lkotlinx/coroutines/t1;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic a(Landroid/app/Application;Ljava/lang/String;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->y(Landroid/app/Application;Ljava/lang/String;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroid/app/Application;Ljava/lang/String;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->A(Landroid/app/Application;Ljava/lang/String;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroid/app/Application;Ljava/lang/String;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->B(Landroid/app/Application;Ljava/lang/String;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/mpush/core/fcm/FCMPushHelper;Lorg/json/JSONObject;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->E(Lcom/transsion/mpush/core/fcm/FCMPushHelper;Lorg/json/JSONObject;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroid/app/Application;Ljava/lang/String;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->z(Landroid/app/Application;Ljava/lang/String;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f()Lcom/transsion/mpush/core/net/PushNetworkApi;
    .locals 1

    invoke-static {}, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->u()Lcom/transsion/mpush/core/net/PushNetworkApi;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic g(Lcom/transsion/mpush/core/fcm/FCMPushHelper;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->q(Lcom/transsion/mpush/core/fcm/FCMPushHelper;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/mpush/core/fcm/FCMPushHelper;)Landroid/app/Application;
    .locals 0

    iget-object p0, p0, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->h:Landroid/app/Application;

    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/mpush/core/fcm/FCMPushHelper;)Lcom/transsion/mpush/core/net/PushNetworkApi;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->r()Lcom/transsion/mpush/core/net/PushNetworkApi;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic j(Lcom/transsion/mpush/core/fcm/FCMPushHelper;Ljava/lang/String;)Lokhttp3/RequestBody;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->s(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic k(Lcom/transsion/mpush/core/fcm/FCMPushHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->k:Z

    return p0
.end method

.method public static final synthetic l(Lcom/transsion/mpush/core/fcm/FCMPushHelper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic m(Lcom/transsion/mpush/core/fcm/FCMPushHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->C()V

    return-void
.end method

.method private final n()Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/t;->d(Landroid/content/Context;)Landroidx/core/app/t;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/t;->a()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private final o(Lkotlin/jvm/functions/Function1;)V
    .locals 10

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/transsion/mpush/core/fcm/m;->a:Lcom/transsion/mpush/core/fcm/m;

    invoke-virtual {v1}, Lcom/transsion/mpush/core/fcm/m;->p()Lkotlin/jvm/functions/Function0;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, ""

    if-nez v2, :cond_1

    move-object v2, v3

    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/c;->f()I

    move-result v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/transsion/mpush/core/fcm/m;->o()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/transsion/mpush/core/fcm/m;->l()Ljava/lang/String;

    move-result-object v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->h:Landroid/app/Application;

    if-eqz v1, :cond_3

    sget-object v2, Lcom/transsion/mpush/core/utils/PushPreference;->a:Lcom/transsion/mpush/core/utils/PushPreference;

    invoke-virtual {v2, v1}, Lcom/transsion/mpush/core/utils/PushPreference;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v1

    :cond_3
    :goto_1
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final q(Lcom/transsion/mpush/core/fcm/FCMPushHelper;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->D()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final r()Lcom/transsion/mpush/core/net/PushNetworkApi;
    .locals 1

    iget-object v0, p0, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/mpush/core/net/PushNetworkApi;

    return-object v0
.end method

.method private final s(Ljava/lang/String;)Lokhttp3/RequestBody;
    .locals 3

    sget-object v0, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v1, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v2, "application/json"

    invoke-virtual {v1, v2}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    return-object p1
.end method

.method private static final u()Lcom/transsion/mpush/core/net/PushNetworkApi;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lcom/transsion/mpush/core/net/PushNetworkApi;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/mpush/core/net/PushNetworkApi;

    return-object v0
.end method

.method private final x()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->h:Landroid/app/Application;

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v2, Lcom/tn/lib/net/dns/or/CacheIpPool;->a:Lcom/tn/lib/net/dns/or/CacheIpPool;

    invoke-virtual {v2}, Lcom/tn/lib/net/dns/or/CacheIpPool;->l()Ljava/lang/String;

    move-result-object v2

    const-string v3, "test-mse-api.aoneroom.com"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    sget-object v3, Lcom/transsion/mpush/core/utils/PushPreference;->a:Lcom/transsion/mpush/core/utils/PushPreference;

    invoke-virtual {v3, v1}, Lcom/transsion/mpush/core/utils/PushPreference;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1}, Lcom/transsion/mpush/core/utils/PushPreference;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1}, Lcom/transsion/mpush/core/utils/PushPreference;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1}, Lcom/transsion/mpush/core/utils/PushPreference;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, v0, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->d:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    if-eqz v2, :cond_1

    iget-object v10, v0, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->f:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v10, v9

    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->c:Ljava/lang/String;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    const-string v10, "getID(...)"

    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/16 v12, 0x2f

    const/16 v13, 0x5f

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    if-eqz v2, :cond_2

    iget-object v11, v0, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->f:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v11, v9

    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, v0, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->e:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    if-eqz v2, :cond_3

    iget-object v12, v0, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->f:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v12, v9

    :goto_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->b:Ljava/lang/String;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    if-eqz v2, :cond_4

    iget-object v9, v0, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->f:Ljava/lang/String;

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_5

    sget-object v9, Lcom/transsion/mpush/core/fcm/m;->a:Lcom/transsion/mpush/core/fcm/m;

    invoke-virtual {v9, v4}, Lcom/transsion/mpush/core/fcm/m;->x(Ljava/lang/String;)V

    :cond_5
    sget-object v4, Lcom/transsion/mpush/core/fcm/m;->a:Lcom/transsion/mpush/core/fcm/m;

    new-instance v9, Lcom/transsion/mpush/core/fcm/d;

    invoke-direct {v9, v1, v7}, Lcom/transsion/mpush/core/fcm/d;-><init>(Landroid/app/Application;Ljava/lang/String;)V

    invoke-virtual {v4, v7, v9}, Lcom/transsion/mpush/core/fcm/m;->s(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    :cond_6
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_7

    sget-object v4, Lcom/transsion/mpush/core/fcm/m;->a:Lcom/transsion/mpush/core/fcm/m;

    invoke-virtual {v4, v5}, Lcom/transsion/mpush/core/fcm/m;->x(Ljava/lang/String;)V

    :cond_7
    sget-object v4, Lcom/transsion/mpush/core/fcm/m;->a:Lcom/transsion/mpush/core/fcm/m;

    new-instance v5, Lcom/transsion/mpush/core/fcm/e;

    invoke-direct {v5, v1, v8}, Lcom/transsion/mpush/core/fcm/e;-><init>(Landroid/app/Application;Ljava/lang/String;)V

    invoke-virtual {v4, v8, v5}, Lcom/transsion/mpush/core/fcm/m;->s(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    :cond_8
    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_9

    sget-object v4, Lcom/transsion/mpush/core/fcm/m;->a:Lcom/transsion/mpush/core/fcm/m;

    invoke-virtual {v4, v6}, Lcom/transsion/mpush/core/fcm/m;->x(Ljava/lang/String;)V

    :cond_9
    sget-object v4, Lcom/transsion/mpush/core/fcm/m;->a:Lcom/transsion/mpush/core/fcm/m;

    new-instance v5, Lcom/transsion/mpush/core/fcm/f;

    invoke-direct {v5, v1, v10}, Lcom/transsion/mpush/core/fcm/f;-><init>(Landroid/app/Application;Ljava/lang/String;)V

    invoke-virtual {v4, v10, v5}, Lcom/transsion/mpush/core/fcm/m;->s(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    :cond_a
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_b

    sget-object v4, Lcom/transsion/mpush/core/fcm/m;->a:Lcom/transsion/mpush/core/fcm/m;

    invoke-virtual {v4, v3}, Lcom/transsion/mpush/core/fcm/m;->x(Ljava/lang/String;)V

    :cond_b
    sget-object v3, Lcom/transsion/mpush/core/fcm/m;->a:Lcom/transsion/mpush/core/fcm/m;

    new-instance v4, Lcom/transsion/mpush/core/fcm/g;

    invoke-direct {v4, v1, v2}, Lcom/transsion/mpush/core/fcm/g;-><init>(Landroid/app/Application;Ljava/lang/String;)V

    invoke-virtual {v3, v2, v4}, Lcom/transsion/mpush/core/fcm/m;->s(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    :cond_c
    return-void
.end method

.method private static final y(Landroid/app/Application;Ljava/lang/String;Z)Lkotlin/Unit;
    .locals 0

    if-eqz p2, :cond_0

    sget-object p2, Lcom/transsion/mpush/core/utils/PushPreference;->a:Lcom/transsion/mpush/core/utils/PushPreference;

    invoke-virtual {p2, p0, p1}, Lcom/transsion/mpush/core/utils/PushPreference;->u(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final z(Landroid/app/Application;Ljava/lang/String;Z)Lkotlin/Unit;
    .locals 0

    if-eqz p2, :cond_0

    sget-object p2, Lcom/transsion/mpush/core/utils/PushPreference;->a:Lcom/transsion/mpush/core/utils/PushPreference;

    invoke-virtual {p2, p0, p1}, Lcom/transsion/mpush/core/utils/PushPreference;->w(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final D()V
    .locals 5

    sget-object v0, Lcom/transsion/mpush/core/fcm/m;->a:Lcom/transsion/mpush/core/fcm/m;

    invoke-virtual {v0}, Lcom/transsion/mpush/core/fcm/m;->o()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/mpush/core/fcm/m;->l()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->n()Z

    move-result v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "firebaseToken"

    invoke-virtual {v0}, Lcom/transsion/mpush/core/fcm/m;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "twibidaClientId"

    invoke-virtual {v0}, Lcom/transsion/mpush/core/fcm/m;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    xor-int/lit8 v0, v1, 0x1

    const-string v1, "notifySwitchOff"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    new-instance v0, Lcom/transsion/mpush/core/fcm/c;

    invoke-direct {v0, p0, v2}, Lcom/transsion/mpush/core/fcm/c;-><init>(Lcom/transsion/mpush/core/fcm/FCMPushHelper;Lorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->o(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final p()V
    .locals 1

    new-instance v0, Lcom/transsion/mpush/core/fcm/b;

    invoke-direct {v0, p0}, Lcom/transsion/mpush/core/fcm/b;-><init>(Lcom/transsion/mpush/core/fcm/FCMPushHelper;)V

    invoke-direct {p0, v0}, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->o(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final t(Landroid/app/Application;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->h:Landroid/app/Application;

    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->k:Z

    invoke-direct {p0}, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->x()V

    invoke-virtual {p0}, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->D()V

    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->k:Z

    invoke-direct {p0}, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->x()V

    invoke-virtual {p0}, Lcom/transsion/mpush/core/fcm/FCMPushHelper;->D()V

    return-void
.end method
