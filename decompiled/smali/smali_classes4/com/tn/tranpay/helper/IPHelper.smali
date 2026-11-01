.class public final Lcom/tn/tranpay/helper/IPHelper;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/tn/tranpay/helper/IPHelper;

.field private static b:Ljava/lang/String;

.field private static c:J

.field private static final d:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/tn/tranpay/helper/IPHelper;

    invoke-direct {v0}, Lcom/tn/tranpay/helper/IPHelper;-><init>()V

    sput-object v0, Lcom/tn/tranpay/helper/IPHelper;->a:Lcom/tn/tranpay/helper/IPHelper;

    const-string v0, "https://icanhazip.com"

    const-string v1, "https://ipinfo.io/ip"

    const-string v2, "https://api.ipify.org"

    const-string v3, "https://ifconfig.me/ip"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/tn/tranpay/helper/IPHelper;->d:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/tn/tranpay/helper/IPHelper;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tn/tranpay/helper/IPHelper;->h(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tn/tranpay/helper/IPHelper;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic c()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/tn/tranpay/helper/IPHelper;->d:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic d()J
    .locals 2

    sget-wide v0, Lcom/tn/tranpay/helper/IPHelper;->c:J

    return-wide v0
.end method

.method public static final synthetic e(Lcom/tn/tranpay/helper/IPHelper;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/tn/tranpay/helper/IPHelper;->k(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic f(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/tn/tranpay/helper/IPHelper;->b:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic g(J)V
    .locals 0

    sput-wide p0, Lcom/tn/tranpay/helper/IPHelper;->c:J

    return-void
.end method

.method private final h(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    new-instance v1, Lcom/tn/tranpay/helper/IPHelper$fetchIPFromService$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/tn/tranpay/helper/IPHelper$fetchIPFromService$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic j(Lcom/tn/tranpay/helper/IPHelper;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    move p1, p4

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/tn/tranpay/helper/IPHelper;->i(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final k(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v0, :cond_3

    const/16 v3, 0x100

    if-ge v0, v3, :cond_3

    goto :goto_0

    :catch_0
    :cond_3
    :goto_1
    return v2
.end method


# virtual methods
.method public final i(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    new-instance v1, Lcom/tn/tranpay/helper/IPHelper$getCurrentIP$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/tn/tranpay/helper/IPHelper$getCurrentIP$2;-><init>(ZLkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
