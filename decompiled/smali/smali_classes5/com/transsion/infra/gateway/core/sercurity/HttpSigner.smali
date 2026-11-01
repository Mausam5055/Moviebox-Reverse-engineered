.class public Lcom/transsion/infra/gateway/core/sercurity/HttpSigner;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/transsion/infra/gateway/core/sercurity/c;


# direct methods
.method public constructor <init>(Lcom/transsion/infra/gateway/core/sercurity/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/infra/gateway/core/sercurity/HttpSigner;->a:Lcom/transsion/infra/gateway/core/sercurity/c;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/infra/gateway/core/sercurity/HttpSigner;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method

.method public static b(Lcom/transsion/infra/gateway/core/bean/RequestBean;)Ljava/lang/String;
    .locals 13

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lcom/transsion/infra/gateway/core/utils/c;->a:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    const-string v1, "request bean is null"

    invoke-virtual {p0, v1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->g(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->getMethod()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object p0, Lcom/transsion/infra/gateway/core/utils/c;->a:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    const-string v1, "request method is null"

    invoke-virtual {p0, v1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->g(Ljava/lang/Object;)V

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p0, Lcom/transsion/infra/gateway/core/utils/c;->a:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    const-string v1, "request url is null"

    invoke-virtual {p0, v1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->g(Ljava/lang/Object;)V

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->getKey()Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;

    move-result-object v1

    const-string v2, "request key is null"

    if-nez v1, :cond_3

    sget-object p0, Lcom/transsion/infra/gateway/core/utils/c;->a:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    invoke-virtual {p0, v2}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->g(Ljava/lang/Object;)V

    return-object v0

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->getKey()Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    sget-object p0, Lcom/transsion/infra/gateway/core/utils/c;->a:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    invoke-virtual {p0, v2}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->g(Ljava/lang/Object;)V

    return-object v0

    :cond_4
    invoke-static {}, Lcom/transsion/infra/gateway/core/utils/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/infra/gateway/core/utils/d;->a(Landroid/content/Context;)Lcom/transsion/infra/gateway/core/utils/d;

    move-result-object v0

    const-string v1, "time_offset"

    invoke-virtual {v0, v1}, Lcom/transsion/infra/gateway/core/utils/d;->b(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->getKey()Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;->getKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/transsion/infra/gateway/core/sercurity/a;

    invoke-direct {v1, v0}, Lcom/transsion/infra/gateway/core/sercurity/a;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/transsion/infra/gateway/core/sercurity/HttpSigner;

    invoke-direct {v4, v1}, Lcom/transsion/infra/gateway/core/sercurity/HttpSigner;-><init>(Lcom/transsion/infra/gateway/core/sercurity/c;)V

    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->getAccept()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->getBody()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->getKey()Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;->getAlgorithm()Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;

    move-result-object v12

    move-wide v10, v2

    invoke-virtual/range {v4 .. v12}, Lcom/transsion/infra/gateway/core/sercurity/HttpSigner;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->getKey()Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;->getKeyVersion()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/transsion/infra/gateway/core/utils/c;->a:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x-tr-signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->g(Ljava/lang/Object;)V

    return-object p0
.end method

.method private c(Ljava/util/Map;)Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Lcom/transsion/infra/gateway/core/sercurity/HttpSigner$1;

    invoke-direct {p1, p0}, Lcom/transsion/infra/gateway/core/sercurity/HttpSigner$1;-><init>(Lcom/transsion/infra/gateway/core/sercurity/HttpSigner;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string v2, ""

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, ""

    const-wide/16 v3, 0x0

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    int-to-long v5, v0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    const v7, 0x19000

    if-le v0, v7, :cond_0

    const/4 v0, 0x0

    move-object v8, p5

    invoke-virtual {p5, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/infra/gateway/core/utils/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    move-object v8, p5

    invoke-static {p5}, Lcom/transsion/infra/gateway/core/utils/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_1
    move-exception v0

    move-wide v5, v3

    :goto_0
    sget-object v7, Lcom/transsion/infra/gateway/core/utils/c;->a:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateContent exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->i(Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/transsion/infra/gateway/core/utils/c;->a:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    const-string v5, "request body is null"

    invoke-virtual {v0, v5}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->g(Ljava/lang/Object;)V

    move-object v0, v2

    move-wide v5, v3

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_2

    move-object v8, v2

    goto :goto_2

    :cond_2
    move-object v8, p2

    :goto_2
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_3

    move-object v8, v2

    goto :goto_3

    :cond_3
    move-object v8, p3

    :goto_3
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v3, v5, v3

    if-nez v3, :cond_4

    move-object v3, v2

    goto :goto_4

    :cond_4
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, p6

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_5

    :cond_5
    move-object v2, v0

    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p0

    move-object v3, p4

    invoke-direct {p0, p4}, Lcom/transsion/infra/gateway/core/sercurity/HttpSigner;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/transsion/infra/gateway/core/utils/c;->a:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->g(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "UTF-8"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "&"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, p1, v4

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    :try_start_0
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/transsion/infra/gateway/core/sercurity/HttpSigner;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;)Ljava/lang/String;
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/transsion/infra/gateway/core/sercurity/HttpSigner;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/infra/gateway/core/sercurity/HttpSigner;->a:Lcom/transsion/infra/gateway/core/sercurity/c;

    invoke-virtual {p2, p8, p1}, Lcom/transsion/infra/gateway/core/sercurity/c;->a(Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
