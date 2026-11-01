.class public Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/sP/Sj/sP;


# instance fields
.field Sj:Lcom/bytedance/sdk/component/sP/Sj/Fmk;

.field private TKC:Ljava/util/concurrent/atomic/AtomicBoolean;

.field sP:Lcom/bytedance/sdk/component/sP/Sj/EjP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/sP/Sj/Fmk;Lcom/bytedance/sdk/component/sP/Sj/EjP;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->TKC:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    iput-object p2, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->sP:Lcom/bytedance/sdk/component/sP/Sj/EjP;

    return-void
.end method

.method private HiB()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->EjP()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->EjP()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static Sj(Ljava/net/HttpURLConnection;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "delegate"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "client"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setRetryOnConnectionFailure"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v0

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/component/sP/Sj/sef;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "POST"

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->TKC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p1, Lcom/bytedance/sdk/component/sP/Sj/sef;->vS:Lcom/bytedance/sdk/component/sP/Sj/sef$Sj;

    sget-object v2, Lcom/bytedance/sdk/component/sP/Sj/sef$Sj;->sP:Lcom/bytedance/sdk/component/sP/Sj/sef$Sj;

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    iget-object p1, p1, Lcom/bytedance/sdk/component/sP/Sj/sef;->HiB:[B

    if-eqz p1, :cond_4

    array-length p1, p1

    if-gtz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method private sP(Lcom/bytedance/sdk/component/sP/Sj/sef;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "POST"

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->TKC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p1, Lcom/bytedance/sdk/component/sP/Sj/sef;->vS:Lcom/bytedance/sdk/component/sP/Sj/sef$Sj;

    sget-object v2, Lcom/bytedance/sdk/component/sP/Sj/sef$Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/sef$Sj;

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    iget-object p1, p1, Lcom/bytedance/sdk/component/sP/Sj/sef;->EjP:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v0
.end method


# virtual methods
.method public EjP()Lcom/bytedance/sdk/component/sP/Sj/sP;
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;

    iget-object v1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    iget-object v2, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->sP:Lcom/bytedance/sdk/component/sP/Sj/EjP;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;-><init>(Lcom/bytedance/sdk/component/sP/Sj/Fmk;Lcom/bytedance/sdk/component/sP/Sj/EjP;)V

    return-object v0
.end method

.method public Sj()Lcom/bytedance/sdk/component/sP/Sj/Fmk;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    return-object v0
.end method

.method public Sj(Lcom/bytedance/sdk/component/sP/Sj/Fmk;)Lcom/bytedance/sdk/component/sP/Sj/Zq;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget v0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->Sj:I

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->sP()Lcom/bytedance/sdk/component/sP/Sj/Jcg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->Sj()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URLConnection;

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->EjP()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->EjP()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->EjP()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "_disable_retry"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v2}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->Sj(Ljava/net/HttpURLConnection;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :catch_0
    move-exception v1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v2, v4, v5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Ym;

    if-eqz v1, :cond_4

    iget-object v3, v1, Lcom/bytedance/sdk/component/sP/Sj/Ym;->TKC:Ljava/util/concurrent/TimeUnit;

    if-eqz v3, :cond_3

    iget-wide v4, v1, Lcom/bytedance/sdk/component/sP/Sj/Ym;->sP:J

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    long-to-int v1, v3

    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    :cond_3
    iget-object v1, p1, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Ym;

    iget-object v3, v1, Lcom/bytedance/sdk/component/sP/Sj/Ym;->TKC:Ljava/util/concurrent/TimeUnit;

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/bytedance/sdk/component/sP/Sj/Ym;->HiB:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, v1, Lcom/bytedance/sdk/component/sP/Sj/Ym;->EjP:J

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    long-to-int v1, v3

    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    :cond_4
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->Dq()Lcom/bytedance/sdk/component/sP/Sj/sef;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v1, "GET"

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->HiB()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->Dq()Lcom/bytedance/sdk/component/sP/Sj/sef;

    move-result-object v1

    iget-object v1, v1, Lcom/bytedance/sdk/component/sP/Sj/sef;->TKC:Lcom/bytedance/sdk/component/sP/Sj/uA;

    if-eqz v1, :cond_6

    const-string v1, "Content-Type"

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->Dq()Lcom/bytedance/sdk/component/sP/Sj/sef;

    move-result-object v3

    iget-object v3, v3, Lcom/bytedance/sdk/component/sP/Sj/sef;->TKC:Lcom/bytedance/sdk/component/sP/Sj/uA;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/sP/Sj/uA;->Sj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->TKC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "POST"

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->TKC()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->Dq()Lcom/bytedance/sdk/component/sP/Sj/sef;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->Sj(Lcom/bytedance/sdk/component/sP/Sj/sef;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->Dq()Lcom/bytedance/sdk/component/sP/Sj/sef;

    move-result-object v3

    iget-object v3, v3, Lcom/bytedance/sdk/component/sP/Sj/sef;->HiB:[B

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->Dq()Lcom/bytedance/sdk/component/sP/Sj/sef;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->sP(Lcom/bytedance/sdk/component/sP/Sj/sef;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->Dq()Lcom/bytedance/sdk/component/sP/Sj/sef;

    move-result-object v3

    iget-object v3, v3, Lcom/bytedance/sdk/component/sP/Sj/sef;->EjP:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    :cond_8
    :goto_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_9
    :goto_2
    iget-object v1, p1, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->sP:Lcom/bytedance/sdk/component/TKC/Sj/Sj;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->sP()V

    :cond_a
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    iget-object v1, p1, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->sP:Lcom/bytedance/sdk/component/TKC/Sj/Sj;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->TKC()V

    :cond_b
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iget-object v1, p1, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->sP:Lcom/bytedance/sdk/component/TKC/Sj/Sj;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->HiB()V

    :cond_c
    iget-object v1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->TKC:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->sP:Lcom/bytedance/sdk/component/sP/Sj/EjP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/sP/Sj/EjP;->EjP()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v1, "internal error"

    goto :goto_5

    :cond_d
    :try_start_2
    new-instance v1, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;

    invoke-direct {v1, v2, p1}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;-><init>(Ljava/net/HttpURLConnection;Lcom/bytedance/sdk/component/sP/Sj/Fmk;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->sP:Lcom/bytedance/sdk/component/sP/Sj/EjP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/EjP;->EjP()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object v1

    :catch_1
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    :goto_3
    :try_start_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_4
    iget-object v2, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->sP:Lcom/bytedance/sdk/component/sP/Sj/EjP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/sP/Sj/EjP;->EjP()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_5
    new-instance v2, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;

    invoke-direct {v2, v0, v1, p1}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/component/sP/Sj/Fmk;)V

    return-object v2

    :goto_6
    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->sP:Lcom/bytedance/sdk/component/sP/Sj/EjP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/EjP;->EjP()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    throw p1
.end method

.method public Sj(Lcom/bytedance/sdk/component/sP/Sj/TKC;)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->sP:Lcom/bytedance/sdk/component/TKC/Sj/Sj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->Zq()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->sP:Lcom/bytedance/sdk/component/sP/Sj/EjP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/EjP;->sP()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP$2;

    iget-object v2, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->Jcg()I

    move-result v2

    iget-object v3, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->vS()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP$2;-><init>(Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;ILjava/lang/String;Lcom/bytedance/sdk/component/sP/Sj/TKC;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public TKC()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->TKC:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->EjP()Lcom/bytedance/sdk/component/sP/Sj/sP;

    move-result-object v0

    return-object v0
.end method

.method public sP()Lcom/bytedance/sdk/component/sP/Sj/Zq;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->sP:Lcom/bytedance/sdk/component/TKC/Sj/Sj;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->sef()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    iget-object v0, v0, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->sP:Lcom/bytedance/sdk/component/TKC/Sj/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->Zq()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    iget-object v0, v0, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->sP:Lcom/bytedance/sdk/component/TKC/Sj/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->Sj()V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->sP:Lcom/bytedance/sdk/component/sP/Sj/EjP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/EjP;->TKC()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->sP:Lcom/bytedance/sdk/component/sP/Sj/EjP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/EjP;->EjP()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->sP:Lcom/bytedance/sdk/component/sP/Sj/EjP;

    instance-of v1, v0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/HiB;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/EjP;->TKC()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->sP:Lcom/bytedance/sdk/component/sP/Sj/EjP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/sP/Sj/EjP;->EjP()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->sP:Lcom/bytedance/sdk/component/sP/Sj/EjP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/sP/Sj/EjP;->Sj()I

    move-result v1

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->TKC:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->sP:Lcom/bytedance/sdk/component/sP/Sj/EjP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/EjP;->EjP()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;

    sget v1, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->Sj:I

    const-string v2, "Maximum number of requests exceeded"

    iget-object v3, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/component/sP/Sj/Fmk;)V

    return-object v0

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    iget-object v0, v0, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Ym;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/bytedance/sdk/component/sP/Sj/Ym;->Sj:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    iget-object v1, v1, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Ym;

    iget-object v1, v1, Lcom/bytedance/sdk/component/sP/Sj/Ym;->Sj:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP$1;-><init>(Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/sP/Sj/Dq;

    new-instance v2, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/TKC;

    iget-object v3, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    invoke-direct {v2, v0, v3}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/TKC;-><init>(Ljava/util/List;Lcom/bytedance/sdk/component/sP/Sj/Fmk;)V

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/sP/Sj/Dq;->Sj(Lcom/bytedance/sdk/component/sP/Sj/Dq$Sj;)Lcom/bytedance/sdk/component/sP/Sj/Zq;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->Sj(Lcom/bytedance/sdk/component/sP/Sj/Fmk;)Lcom/bytedance/sdk/component/sP/Sj/Zq;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :goto_0
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
