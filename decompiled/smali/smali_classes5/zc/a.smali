.class public Lzc/a;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/google/firebase/remoteconfig/internal/e;

.field b:Lcom/google/firebase/remoteconfig/internal/e;


# direct methods
.method constructor <init>(Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzc/a;->a:Lcom/google/firebase/remoteconfig/internal/e;

    iput-object p2, p0, Lzc/a;->b:Lcom/google/firebase/remoteconfig/internal/e;

    return-void
.end method

.method public static a(Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/e;)Lzc/a;
    .locals 1

    new-instance v0, Lzc/a;

    invoke-direct {v0, p0, p1}, Lzc/a;-><init>(Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/e;)V

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzc/a;->a:Lcom/google/firebase/remoteconfig/internal/e;

    invoke-static {v0, p1}, Lzc/a;->d(Lcom/google/firebase/remoteconfig/internal/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lzc/a;->b:Lcom/google/firebase/remoteconfig/internal/e;

    invoke-static {v0, p1}, Lzc/a;->d(Lcom/google/firebase/remoteconfig/internal/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method private static d(Lcom/google/firebase/remoteconfig/internal/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/e;->f()Lcom/google/firebase/remoteconfig/internal/f;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/f;->g()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method


# virtual methods
.method b(Lcom/google/firebase/remoteconfig/internal/f;)Lbd/e;
    .locals 12

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/f;->j()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/f;->k()J

    move-result-wide v2

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    :try_start_0
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "rolloutId"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "affectedParameterKeys"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-le v9, v0, :cond_0

    const-string v9, "FirebaseRemoteConfig"

    const-string v10, "Rollout has multiple affected parameter keys.Only the first key will be included in RolloutsState. rolloutId: %s, affectedParameterKeys: %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v7, v11, v4

    aput-object v8, v11, v0

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    const-string v9, ""

    invoke-virtual {v8, v4, v9}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lzc/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lbd/d;->a()Lbd/d$a;

    move-result-object v10

    invoke-virtual {v10, v7}, Lbd/d$a;->d(Ljava/lang/String;)Lbd/d$a;

    move-result-object v7

    const-string v10, "variantId"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lbd/d$a;->f(Ljava/lang/String;)Lbd/d$a;

    move-result-object v6

    invoke-virtual {v6, v8}, Lbd/d$a;->b(Ljava/lang/String;)Lbd/d$a;

    move-result-object v6

    invoke-virtual {v6, v9}, Lbd/d$a;->c(Ljava/lang/String;)Lbd/d$a;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Lbd/d$a;->e(J)Lbd/d$a;

    move-result-object v6

    invoke-virtual {v6}, Lbd/d$a;->a()Lbd/d;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v5, v0

    goto :goto_0

    :goto_2
    new-instance v0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;

    const-string v1, "Exception parsing rollouts metadata to create RolloutsState."

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    invoke-static {p1}, Lbd/e;->a(Ljava/util/Set;)Lbd/e;

    move-result-object p1

    return-object p1
.end method
