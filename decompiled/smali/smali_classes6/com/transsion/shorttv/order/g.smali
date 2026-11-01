.class public final Lcom/transsion/shorttv/order/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/shorttv/order/g;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/shorttv/order/g;

    invoke-direct {v0}, Lcom/transsion/shorttv/order/g;-><init>()V

    sput-object v0, Lcom/transsion/shorttv/order/g;->a:Lcom/transsion/shorttv/order/g;

    new-instance v0, Lcom/transsion/shorttv/order/f;

    invoke-direct {v0}, Lcom/transsion/shorttv/order/f;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/shorttv/order/g;->b:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/transsion/shorttv/order/a;
    .locals 1

    invoke-static {}, Lcom/transsion/shorttv/order/g;->e()Lcom/transsion/shorttv/order/a;

    move-result-object v0

    return-object v0
.end method

.method private final d()Lcom/transsion/shorttv/order/a;
    .locals 1

    sget-object v0, Lcom/transsion/shorttv/order/g;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv/order/a;

    return-object v0
.end method

.method private static final e()Lcom/transsion/shorttv/order/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lcom/transsion/shorttv/order/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv/order/a;

    return-object v0
.end method


# virtual methods
.method public final b(Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->getProjectName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const-string v3, "project_name"

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->getSkuId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    const-string v3, "sku_id"

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    const-string v3, "user_id"

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->getCpFrontPage()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v1

    :goto_3
    const-string v3, "cp_front_page"

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "toString(...)"

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->getExtStrJson()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_4

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "ext"

    invoke-virtual {v0, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    sget-object v3, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v4, "application/json"

    invoke-virtual {v2, v4}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v6

    invoke-direct {p0}, Lcom/transsion/shorttv/order/g;->d()Lcom/transsion/shorttv/order/a;

    move-result-object v4

    sget-object v0, Lcom/transsion/shorttv/order/e;->a:Lcom/transsion/shorttv/order/e;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->isDebug()Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_5
    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/order/e;->a(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    move-object v8, p2

    invoke-static/range {v4 .. v10}, Lcom/transsion/shorttv/order/a$a;->a(Lcom/transsion/shorttv/order/a;Ljava/lang/String;Lokhttp3/RequestBody;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    invoke-direct {p0}, Lcom/transsion/shorttv/order/g;->d()Lcom/transsion/shorttv/order/a;

    move-result-object v0

    const-string v1, ""

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    if-nez p2, :cond_1

    move-object v3, v1

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    sget-object p1, Lcom/transsion/shorttv/order/e;->a:Lcom/transsion/shorttv/order/e;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/order/e;->a(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object v5, p4

    invoke-static/range {v0 .. v7}, Lcom/transsion/shorttv/order/a$a;->b(Lcom/transsion/shorttv/order/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
