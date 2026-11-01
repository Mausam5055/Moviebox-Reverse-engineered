.class public Lcom/aliyun/utils/HttpClientHelper;
.super Ljava/lang/Object;


# static fields
.field private static final CONNECTION_TIMEOUT:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "HttpClientHelper"

.field private static sThreadCachePool:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private mCustomHeaders:[Ljava/lang/String;

.field private mHttpProxy:Ljava/lang/String;

.field private mNetworkTimeout:I

.field private mReferer:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;

.field private urlConnection:Ljava/net/URLConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/aliyun/utils/HttpClientHelper;->sThreadCachePool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    iput-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->mReferer:Ljava/lang/String;

    const/16 v1, 0x2710

    iput v1, p0, Lcom/aliyun/utils/HttpClientHelper;->mNetworkTimeout:I

    iput-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->mHttpProxy:Ljava/lang/String;

    iput-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->mUserAgent:Ljava/lang/String;

    iput-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->mCustomHeaders:[Ljava/lang/String;

    iput-object p1, p0, Lcom/aliyun/utils/HttpClientHelper;->mUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/aliyun/utils/HttpClientHelper;)Ljava/net/URLConnection;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/aliyun/utils/HttpClientHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getErrorStream()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getHttpUrlConnection(Ljava/lang/String;)Ljava/net/URLConnection;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/aliyun/utils/HttpClientHelper;->mHttpProxy:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_0

    :try_start_1
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/aliyun/utils/HttpClientHelper;->mHttpProxy:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v1

    invoke-direct {v2, v3, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    new-instance v1, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v1, v3, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object v1, v0

    :goto_0
    :try_start_2
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URLConnection;

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URLConnection;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    :try_start_3
    instance-of v1, p1, Ljava/net/HttpURLConnection;

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget v1, p0, Lcom/aliyun/utils/HttpClientHelper;->mNetworkTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget v1, p0, Lcom/aliyun/utils/HttpClientHelper;->mNetworkTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-object v0, p1

    :catch_2
    move-object p1, v0

    :goto_2
    return-object p1
.end method

.method private getHttpsUrlConnection(Ljava/lang/String;)Ljava/net/URLConnection;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/aliyun/utils/HttpClientHelper;->mHttpProxy:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_0

    :try_start_1
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/aliyun/utils/HttpClientHelper;->mHttpProxy:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v1

    invoke-direct {v2, v3, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    new-instance v1, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v1, v3, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object v1, v0

    :goto_0
    :try_start_2
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URLConnection;

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URLConnection;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    :try_start_3
    instance-of v1, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget v1, p0, Lcom/aliyun/utils/HttpClientHelper;->mNetworkTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget v1, p0, Lcom/aliyun/utils/HttpClientHelper;->mNetworkTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-object v0, p1

    :catch_2
    move-object p1, v0

    :goto_2
    return-object p1
.end method

.method private getResponseCode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static post(Ljava/lang/String;[B)[B
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/URLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    move-object v1, p0

    check-cast v1, Ljava/net/HttpURLConnection;

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->setDoInput(Z)V

    const/16 v3, 0x2710

    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    if-eqz p1, :cond_1

    array-length v3, p1

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v3, v0

    goto/16 :goto_5

    :catch_0
    move-object p1, v0

    :goto_1
    move-object v3, p1

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    :goto_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 v3, 0xc8

    if-ne p1, v3, :cond_4

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0x1000

    :try_start_2
    new-array v1, v1, [B

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_3
    :try_start_3
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    invoke-virtual {v3, v1, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    goto :goto_5

    :cond_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    if-eqz p0, :cond_3

    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    return-object v0

    :catchall_2
    move-exception v1

    move-object v3, v0

    move-object v0, p1

    move-object p1, v1

    goto :goto_5

    :catch_2
    move-object v3, v0

    goto :goto_6

    :cond_4
    if-eqz p0, :cond_a

    :goto_4
    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_7

    :catchall_3
    move-exception p1

    move-object p0, v0

    move-object v3, p0

    goto :goto_5

    :catch_3
    move-object p0, v0

    move-object p1, p0

    goto :goto_1

    :goto_5
    if-eqz v0, :cond_5

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_6
    if-eqz p0, :cond_7

    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    throw p1

    :catch_5
    :goto_6
    if-eqz p1, :cond_8

    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :cond_9
    if-eqz p0, :cond_a

    goto :goto_4

    :cond_a
    :goto_7
    return-object v0
.end method


# virtual methods
.method public doGet()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->mUrl:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/aliyun/utils/HttpClientHelper;->getHttpsUrlConnection(Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->mUrl:Ljava/lang/String;

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/aliyun/utils/HttpClientHelper;->getHttpUrlConnection(Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    :goto_0
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    iget-object v2, p0, Lcom/aliyun/utils/HttpClientHelper;->mReferer:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string v3, "Referer"

    invoke-virtual {v0, v3, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->mUserAgent:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    const-string v3, "User-Agent"

    invoke-virtual {v2, v3, v0}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->mCustomHeaders:[Ljava/lang/String;

    if-eqz v0, :cond_6

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_6

    aget-object v5, v0, v4

    if-eqz v5, :cond_5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    iget-object v6, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    aget-object v7, v5, v3

    const/4 v8, 0x1

    aget-object v5, v5, v8

    invoke-virtual {v6, v7, v5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    :try_start_0
    invoke-direct {p0}, Lcom/aliyun/utils/HttpClientHelper;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_b

    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v4, v3

    :goto_3
    move-object v3, v2

    :goto_4
    move-object v2, v0

    goto/16 :goto_e

    :catch_0
    move-exception v4

    goto/16 :goto_c

    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_8

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_8
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    if-eqz v0, :cond_a

    instance-of v2, v0, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_9

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_5

    :cond_9
    instance-of v2, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_a

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    :goto_5
    return-object v1

    :catchall_1
    move-exception v3

    move-object v4, v1

    move-object v1, v3

    goto :goto_3

    :catch_2
    move-exception v4

    :goto_6
    move-object v3, v1

    goto/16 :goto_c

    :catchall_2
    move-exception v2

    move-object v3, v1

    move-object v4, v3

    move-object v1, v2

    goto :goto_4

    :catch_3
    move-exception v4

    move-object v2, v1

    :goto_7
    move-object v3, v2

    goto/16 :goto_c

    :catchall_3
    move-exception v0

    move-object v2, v1

    move-object v3, v2

    :goto_8
    move-object v4, v3

    :goto_9
    move-object v1, v0

    goto/16 :goto_e

    :catch_4
    move-exception v4

    move-object v0, v1

    move-object v2, v0

    goto :goto_7

    :cond_b
    :try_start_5
    invoke-direct {p0}, Lcom/aliyun/utils/HttpClientHelper;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :try_start_7
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :try_start_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :catchall_4
    move-exception v1

    goto/16 :goto_e

    :catch_5
    move-exception v0

    move-object v9, v4

    move-object v4, v0

    move-object v0, v2

    move-object v2, v3

    move-object v3, v9

    goto :goto_c

    :cond_c
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "StatusCode"

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "ResponseStr"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v2, :cond_d

    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_d
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :catch_6
    iget-object v1, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    if-eqz v1, :cond_f

    instance-of v2, v1, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_e

    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_b

    :cond_e
    instance-of v2, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_f

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_f
    :goto_b
    return-object v0

    :catchall_5
    move-exception v0

    move-object v4, v1

    goto :goto_9

    :catch_7
    move-exception v4

    move-object v0, v2

    move-object v2, v3

    goto :goto_6

    :catchall_6
    move-exception v0

    move-object v3, v1

    goto :goto_8

    :catch_8
    move-exception v4

    move-object v3, v1

    move-object v0, v2

    move-object v2, v3

    :goto_c
    :try_start_a
    const-string v5, "HttpClientUtil"

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v0, :cond_10

    :try_start_b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_10
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    :cond_11
    if-eqz v3, :cond_12

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    :catch_9
    :cond_12
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    if-eqz v0, :cond_14

    instance-of v2, v0, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_13

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_d

    :cond_13
    instance-of v2, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_14

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_14
    :goto_d
    return-object v1

    :goto_e
    if-eqz v2, :cond_15

    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_15
    if-eqz v3, :cond_16

    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    :cond_16
    if-eqz v4, :cond_17

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    :catch_a
    :cond_17
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    if-eqz v0, :cond_19

    instance-of v2, v0, Ljava/net/HttpURLConnection;

    if-nez v2, :cond_18

    instance-of v2, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_19

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_f

    :cond_18
    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_19
    :goto_f
    throw v1
.end method

.method public setCustomHeaders([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/utils/HttpClientHelper;->mCustomHeaders:[Ljava/lang/String;

    return-void
.end method

.method public setHttpProxy(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/utils/HttpClientHelper;->mHttpProxy:Ljava/lang/String;

    return-void
.end method

.method public setRefer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/utils/HttpClientHelper;->mReferer:Ljava/lang/String;

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/aliyun/utils/HttpClientHelper;->mNetworkTimeout:I

    return-void
.end method

.method public setUerAgent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/utils/HttpClientHelper;->mUserAgent:Ljava/lang/String;

    return-void
.end method

.method public stop()V
    .locals 3

    sget-object v0, Lcom/aliyun/utils/HttpClientHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HttpClientHelper stop().... urlConnection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/aliyun/utils/HttpClientHelper;->sThreadCachePool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/aliyun/utils/HttpClientHelper$1;

    invoke-direct {v1, p0}, Lcom/aliyun/utils/HttpClientHelper$1;-><init>(Lcom/aliyun/utils/HttpClientHelper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
