.class public final Lcom/tn/lib/net/dns/or/CacheIpPool;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/tn/lib/net/dns/or/CacheIpPool;

.field private static b:Ljava/util/ArrayList;

.field private static final c:Ljava/util/concurrent/ConcurrentHashMap;

.field private static volatile d:Ljava/lang/String;

.field private static volatile e:Ljava/lang/String;

.field private static volatile f:Ljava/lang/String;

.field private static volatile g:Ljava/lang/String;

.field private static final h:Lkotlin/Lazy;

.field private static final i:Lkotlin/Lazy;

.field private static final j:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tn/lib/net/dns/or/CacheIpPool;

    invoke-direct {v0}, Lcom/tn/lib/net/dns/or/CacheIpPool;-><init>()V

    sput-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->a:Lcom/tn/lib/net/dns/or/CacheIpPool;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->c:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v0, ""

    sput-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->d:Ljava/lang/String;

    const-string v0, "api6.aoneroom.com"

    sput-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->e:Ljava/lang/String;

    const-string v0, "test-mse-api.aoneroom.com"

    sput-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->f:Ljava/lang/String;

    const-string v0, "https"

    sput-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->g:Ljava/lang/String;

    new-instance v0, Lcom/tn/lib/net/dns/or/a;

    invoke-direct {v0}, Lcom/tn/lib/net/dns/or/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->h:Lkotlin/Lazy;

    new-instance v0, Lcom/tn/lib/net/dns/or/b;

    invoke-direct {v0}, Lcom/tn/lib/net/dns/or/b;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->i:Lkotlin/Lazy;

    new-instance v0, Lcom/tn/lib/net/dns/or/c;

    invoke-direct {v0}, Lcom/tn/lib/net/dns/or/c;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->j:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/tn/lib/net/dns/or/CacheIpPool;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/tn/lib/net/dns/or/CacheIpPool;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/tn/lib/net/dns/or/CacheIpPool;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final d()Ljava/lang/String;
    .locals 3

    sget-object v0, Lpg/a;->a:Lpg/a$a;

    invoke-virtual {v0}, Lpg/a$a;->d()Z

    move-result v0

    const-string v1, "https://"

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static final e()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[\n{\n\"host\": \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\n\"ip\": \"\",\n\"scheme\": \"https\"\n}\n]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final f()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[{\n    \"host\": \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\n    \"ip\": \"8.219.92.106\",\n    \"scheme\": \"https\"\n}]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->j:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final j()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->h:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final k()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->i:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tn/lib/net/dns/or/CacheIpPool;->i()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->d:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final h()V
    .locals 5

    :try_start_0
    new-instance v0, Lcom/tn/lib/net/dns/or/CacheIpPool$getCacheUrlList$type$1;

    invoke-direct {v0}, Lcom/tn/lib/net/dns/or/CacheIpPool$getCacheUrlList$type$1;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    sget-object v1, Lpg/c;->a:Lpg/c;

    const-string v2, "key_ip_list"

    sget-object v3, Lpg/a;->a:Lpg/a$a;

    invoke-virtual {v3}, Lpg/a$a;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/tn/lib/net/dns/or/CacheIpPool;->k()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    invoke-direct {p0}, Lcom/tn/lib/net/dns/or/CacheIpPool;->j()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v2, v3}, Lpg/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    sput-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->b:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tn/lib/net/dns/or/AddressItem;

    invoke-virtual {v2}, Lcom/tn/lib/net/dns/or/AddressItem;->getHost()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v2, v1}, Lcom/tn/lib/net/dns/or/AddressItem;->setIpEnable(Z)V

    sget-object v3, Lcom/tn/lib/net/dns/or/CacheIpPool;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/tn/lib/net/dns/or/AddressItem;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    sget-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tn/lib/net/dns/or/AddressItem;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/tn/lib/net/dns/or/AddressItem;->getScheme()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->g:Ljava/lang/String;

    sget-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tn/lib/net/dns/or/AddressItem;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/tn/lib/net/dns/or/AddressItem;->getHost()Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->e:Ljava/lang/String;

    sget-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->g:Ljava/lang/String;

    sget-object v1, Lcom/tn/lib/net/dns/or/CacheIpPool;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    sget-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->d:Ljava/lang/String;

    :goto_3
    sput-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    return-void
.end method

.method public final l()Ljava/lang/String;
    .locals 3

    sget-object v0, Lbh/a;->a:Lbh/a$a;

    invoke-virtual {v0}, Lbh/a$a;->c()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "mock_host_key"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->e:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final n(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lpg/c;->a:Lpg/c;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "key_ip_list"

    invoke-virtual {v0, v1, p1}, Lpg/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/tn/lib/net/dns/or/CacheIpPool;->h()V

    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/tn/lib/net/dns/or/CacheIpPool;->e:Ljava/lang/String;

    return-void
.end method
