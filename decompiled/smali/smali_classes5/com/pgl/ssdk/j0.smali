.class public abstract Lcom/pgl/ssdk/j0;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/net/HttpURLConnection;

.field private c:Landroid/content/Context;

.field private d:I

.field private e:I

.field private f:[B

.field private g:I

.field private h:[B

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    const/4 v1, -0x1

    iput v1, p0, Lcom/pgl/ssdk/j0;->g:I

    iput-object v0, p0, Lcom/pgl/ssdk/j0;->h:[B

    const/16 v0, 0x2710

    iput v0, p0, Lcom/pgl/ssdk/j0;->i:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/pgl/ssdk/j0;->j:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/pgl/ssdk/j0;->k:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pgl/ssdk/j0;->l:Z

    new-instance v0, Lcom/pgl/ssdk/j0$a;

    invoke-direct {v0, p0}, Lcom/pgl/ssdk/j0$a;-><init>(Lcom/pgl/ssdk/j0;)V

    iput-object v0, p0, Lcom/pgl/ssdk/j0;->m:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/pgl/ssdk/j0;->c:Landroid/content/Context;

    return-void
.end method

.method private a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const-string p1, "GET"

    goto :goto_0

    :cond_0
    const-string p1, "TRACE"

    goto :goto_0

    :cond_1
    const-string p1, "HEAD"

    goto :goto_0

    :cond_2
    const-string p1, "DELETE"

    goto :goto_0

    :cond_3
    const-string p1, "PUT"

    goto :goto_0

    :cond_4
    const-string p1, "POST"

    :goto_0
    iget-object v0, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/pgl/ssdk/j0;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/pgl/ssdk/j0;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sput-object p0, Lcom/pgl/ssdk/j0;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic a(Lcom/pgl/ssdk/j0;)Z
    .locals 0

    invoke-direct {p0}, Lcom/pgl/ssdk/j0;->c()Z

    move-result p0

    return p0
.end method

.method private a(Ljava/io/InputStream;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v2, v1, [B

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/pgl/ssdk/j0;)I
    .locals 0

    iget p0, p0, Lcom/pgl/ssdk/j0;->j:I

    return p0
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    sget-object v1, Lcom/pgl/ssdk/j0;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    const-string v1, "ipv6"

    :try_start_1
    sget-object v2, Lcom/pgl/ssdk/j0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-static {}, Lcom/pgl/ssdk/ces/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v1, :cond_2

    const-string v1, "gaid"

    :try_start_2
    invoke-static {}, Lcom/pgl/ssdk/ces/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    const-string v1, "region"

    :try_start_3
    invoke-static {}, Lcom/pgl/ssdk/k0;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pgl/ssdk/n0;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v3, "cypher"

    :try_start_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v2, "transfer-param"

    :try_start_5
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method private b(I)V
    .locals 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "application/octet-stream"

    goto :goto_0

    :cond_1
    const-string p1, "application/json; charset=utf-8"

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/pgl/ssdk/k0;->b()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    const-string v1, "x-pangle-target-idc"

    invoke-virtual {v0, v1, p1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/pgl/ssdk/j0;->b()V

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "zh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, ","

    const-string v2, "Accept-Language"

    if-eqz v0, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";q=0.9"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";q=0.9,en-US;q=0.6,en;q=0.4"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-void
.end method

.method private b(II[B)V
    .locals 0

    iput p1, p0, Lcom/pgl/ssdk/j0;->d:I

    iput p2, p0, Lcom/pgl/ssdk/j0;->e:I

    iput-object p3, p0, Lcom/pgl/ssdk/j0;->f:[B

    return-void
.end method

.method static synthetic c(Lcom/pgl/ssdk/j0;)I
    .locals 2

    iget v0, p0, Lcom/pgl/ssdk/j0;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/pgl/ssdk/j0;->j:I

    return v0
.end method

.method private c()Z
    .locals 5

    const-string v0, "https://"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/pgl/ssdk/j0;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/pgl/ssdk/k0;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/pgl/ssdk/j0;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/pgl/ssdk/k0;->b(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v0, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    iput-object v2, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    :cond_0
    return v1

    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/pgl/ssdk/j0;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/pgl/ssdk/j0;->l:Z

    if-eqz v3, :cond_3

    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v0, v3}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    :goto_0
    iget-object v0, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    iget v3, p0, Lcom/pgl/ssdk/j0;->i:I

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    iget v3, p0, Lcom/pgl/ssdk/j0;->i:I

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    iget v0, p0, Lcom/pgl/ssdk/j0;->d:I

    invoke-direct {p0, v0}, Lcom/pgl/ssdk/j0;->a(I)V

    iget v0, p0, Lcom/pgl/ssdk/j0;->e:I

    invoke-direct {p0, v0}, Lcom/pgl/ssdk/j0;->b(I)V

    iget-object v0, p0, Lcom/pgl/ssdk/j0;->f:[B

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    iget-object v0, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v4, p0, Lcom/pgl/ssdk/j0;->f:[B

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_4
    iget-object v0, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v0, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/pgl/ssdk/j0;->g:I

    iget-object v0, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-direct {p0, v0}, Lcom/pgl/ssdk/j0;->a(Ljava/io/InputStream;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/pgl/ssdk/j0;->h:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_6

    goto :goto_1

    :catchall_0
    move-object v0, v2

    :catchall_1
    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_6
    :goto_2
    iget v0, p0, Lcom/pgl/ssdk/j0;->g:I

    iget-object v4, p0, Lcom/pgl/ssdk/j0;->h:[B

    invoke-virtual {p0, v0, v4}, Lcom/pgl/ssdk/j0;->a(I[B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v0, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    iput-object v2, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    :cond_7
    return v3

    :catchall_2
    iget-object v0, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    iput-object v2, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    :cond_8
    iget-object v0, p0, Lcom/pgl/ssdk/j0;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/pgl/ssdk/k0;->b(Landroid/content/Context;)V

    return v1
.end method

.method static synthetic d(Lcom/pgl/ssdk/j0;)I
    .locals 0

    iget p0, p0, Lcom/pgl/ssdk/j0;->k:I

    return p0
.end method


# virtual methods
.method abstract a()Ljava/lang/String;
.end method

.method public a(II[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/pgl/ssdk/j0;->b(II[B)V

    iget-object p1, p0, Lcom/pgl/ssdk/j0;->m:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/pgl/ssdk/o0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method abstract a(I[B)V
.end method
