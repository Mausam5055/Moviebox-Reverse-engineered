.class public Lcom/cloud/hisavana/net/CommonOkHttpClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/net/CommonOkHttpClient$GeneralOkHttpClient;
    }
.end annotation


# static fields
.field public static a:Z

.field private static b:Lokhttp3/Dispatcher;

.field private static c:Lokhttp3/EventListener$Factory;

.field private static d:Ljava/lang/Exception;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "http response body is empty"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/cloud/hisavana/net/CommonOkHttpClient;->d:Ljava/lang/Exception;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Utility class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a()Lokhttp3/EventListener$Factory;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/net/CommonOkHttpClient;->c:Lokhttp3/EventListener$Factory;

    return-object v0
.end method

.method static synthetic b()Lokhttp3/Dispatcher;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/net/CommonOkHttpClient;->b:Lokhttp3/Dispatcher;

    return-object v0
.end method

.method static synthetic c(I)I
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/net/CommonOkHttpClient;->k(I)I

    move-result p0

    return p0
.end method

.method static synthetic d(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/net/CommonOkHttpClient;->o(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic e()Ljava/lang/Exception;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/net/CommonOkHttpClient;->d:Ljava/lang/Exception;

    return-object v0
.end method

.method static synthetic f(Lcom/cloud/hisavana/net/RequestParams;Ljava/lang/String;Lokhttp3/Response;[B)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/cloud/hisavana/net/CommonOkHttpClient;->h(Lcom/cloud/hisavana/net/RequestParams;Ljava/lang/String;Lokhttp3/Response;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/net/CommonOkHttpClient;->m(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static h(Lcom/cloud/hisavana/net/RequestParams;Ljava/lang/String;Lokhttp3/Response;[B)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/net/RequestParams;->b()I

    move-result v1

    invoke-static {v1}, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->g(I)Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cloud/hisavana/net/RequestParams;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v2

    const/16 v3, 0x12c

    if-ge v2, v3, :cond_1

    new-instance v2, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;

    invoke-direct {v2, p1}, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/net/RequestParams;->f()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v1, v2, p2}, Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;->d(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object v0, p0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-interface {v1, v2, p3}, Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;->b(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;[B)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :goto_1
    const-string p0, "ADSDK"

    const/4 p2, 0x3

    invoke-static {p0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "url :"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , write cache finish.  filePath = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cacheToDisk is failure, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V

    :cond_1
    :goto_3
    return-object v0
.end method

.method public static i(Lcom/cloud/hisavana/net/RequestParams;Lokhttp3/Request;Lcom/cloud/hisavana/net/impl/IHttpCallback;)Lokhttp3/Call;
    .locals 9

    const-string v0, "ADSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downLoadImg okhttp------> run Current Looper:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v3, v4, :cond_0

    const-string v3, "Main Looper"

    goto :goto_0

    :cond_0
    const-string v3, "thread Looper"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/net/RequestParams;->h()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/cloud/hisavana/net/RequestParams;->b()I

    move-result v4

    invoke-static {v4}, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->g(I)Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    move-result-object v4

    if-eqz v4, :cond_5

    new-instance v5, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;->c(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_4

    const/4 v3, 0x1

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "image url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "image path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_1
    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/cloud/hisavana/net/RequestParams;->g()Z

    move-result v0

    const/16 v1, 0xfa

    if-eqz v0, :cond_3

    invoke-static {v4}, Lcom/cloud/hisavana/net/utils/ByteBufferUtil;->a(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/hisavana/net/utils/ByteBufferUtil;->c(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v1, v0, v4}, Lcom/cloud/hisavana/net/impl/IHttpCallback;->e(I[BLjava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-static {v4}, Lcom/cloud/hisavana/net/utils/ByteBufferUtil;->a(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/hisavana/net/utils/ByteBufferUtil;->c(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lcom/cloud/hisavana/net/impl/IHttpCallback;->c(I[B)V

    :goto_2
    return-object v2

    :cond_4
    invoke-static {p0, p1, p2}, Lcom/cloud/hisavana/net/CommonOkHttpClient;->p(Lcom/cloud/hisavana/net/RequestParams;Lokhttp3/Request;Lcom/cloud/hisavana/net/impl/IHttpCallback;)Lokhttp3/Call;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downLoadImg: --> "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V

    if-eqz p2, :cond_5

    if-eqz v3, :cond_5

    const/16 v1, 0x100

    invoke-interface {p2, v1, v2, v0}, Lcom/cloud/hisavana/net/impl/IHttpCallback;->d(I[BLjava/lang/Throwable;)V

    :cond_5
    invoke-static {p0, p1, p2}, Lcom/cloud/hisavana/net/CommonOkHttpClient;->p(Lcom/cloud/hisavana/net/RequestParams;Lokhttp3/Request;Lcom/cloud/hisavana/net/impl/IHttpCallback;)Lokhttp3/Call;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lokhttp3/Request;Lcom/cloud/hisavana/net/impl/IHttpCallback;)Lokhttp3/Call;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/cloud/hisavana/net/CommonOkHttpClient;->l()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    new-instance v0, Lcom/cloud/hisavana/net/CommonOkHttpClient$1;

    invoke-direct {v0, p1}, Lcom/cloud/hisavana/net/CommonOkHttpClient$1;-><init>(Lcom/cloud/hisavana/net/impl/IHttpCallback;)V

    invoke-static {p0, v0}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lokhttp3/Call;Lokhttp3/Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 v1, 0x1e0

    invoke-interface {p1, v1, v0, p0}, Lcom/cloud/hisavana/net/impl/IHttpCallback;->d(I[BLjava/lang/Throwable;)V

    :cond_0
    invoke-static {p0}, Lcom/cloud/hisavana/net/CommonOkHttpClient;->o(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static k(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/16 p0, 0x44d

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/16 p0, 0x44e

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const/16 p0, 0x44f

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const/16 p0, 0x450

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    const/16 p0, 0x451

    goto :goto_0

    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    const/16 p0, 0x452

    goto :goto_0

    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    const/16 p0, 0x453

    goto :goto_0

    :cond_6
    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    const/16 p0, 0x454

    goto :goto_0

    :cond_7
    const/16 v0, 0x9

    if-ne p0, v0, :cond_8

    const/16 p0, 0x455

    goto :goto_0

    :cond_8
    const/16 v0, 0xa

    if-ne p0, v0, :cond_9

    const/16 p0, 0x456

    goto :goto_0

    :cond_9
    const/16 v0, 0xb

    if-ne p0, v0, :cond_a

    const/16 p0, 0x457

    goto :goto_0

    :cond_a
    const/16 p0, 0x1e0

    :goto_0
    return p0
.end method

.method public static l()Lokhttp3/OkHttpClient;
    .locals 1

    invoke-static {}, Lcom/cloud/hisavana/net/CommonOkHttpClient$GeneralOkHttpClient;->a()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method private static m(Ljava/lang/String;)Z
    .locals 6

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-lez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static n(Lokhttp3/Request;Lcom/cloud/hisavana/net/impl/IHttpCallback;)Lokhttp3/Call;
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/hisavana/net/impl/IHttpCallback;->a()V

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/cloud/hisavana/net/CommonOkHttpClient;->l()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    new-instance v0, Lcom/cloud/hisavana/net/CommonOkHttpClient$2;

    invoke-direct {v0, p1}, Lcom/cloud/hisavana/net/CommonOkHttpClient$2;-><init>(Lcom/cloud/hisavana/net/impl/IHttpCallback;)V

    invoke-static {p0, v0}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lokhttp3/Call;Lokhttp3/Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/16 v1, 0x1e0

    invoke-interface {p1, v1, v0, p0}, Lcom/cloud/hisavana/net/impl/IHttpCallback;->d(I[BLjava/lang/Throwable;)V

    :cond_1
    invoke-static {p0}, Lcom/cloud/hisavana/net/CommonOkHttpClient;->o(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static o(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "ADSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailure:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static p(Lcom/cloud/hisavana/net/RequestParams;Lokhttp3/Request;Lcom/cloud/hisavana/net/impl/IHttpCallback;)Lokhttp3/Call;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/cloud/hisavana/net/CommonOkHttpClient;->l()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/cloud/hisavana/net/CommonOkHttpClient$3;

    invoke-direct {v1, p2, p0, p1}, Lcom/cloud/hisavana/net/CommonOkHttpClient$3;-><init>(Lcom/cloud/hisavana/net/impl/IHttpCallback;Lcom/cloud/hisavana/net/RequestParams;Lokhttp3/Request;)V

    invoke-static {v0, v1}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lokhttp3/Call;Lokhttp3/Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    const/16 v0, 0x1e0

    invoke-interface {p2, v0, p1, p0}, Lcom/cloud/hisavana/net/impl/IHttpCallback;->d(I[BLjava/lang/Throwable;)V

    :cond_0
    invoke-static {p0}, Lcom/cloud/hisavana/net/CommonOkHttpClient;->o(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static q(Lokhttp3/Dispatcher;Lokhttp3/EventListener$Factory;)V
    .locals 0

    sput-object p0, Lcom/cloud/hisavana/net/CommonOkHttpClient;->b:Lokhttp3/Dispatcher;

    sput-object p1, Lcom/cloud/hisavana/net/CommonOkHttpClient;->c:Lokhttp3/EventListener$Factory;

    return-void
.end method

.method public static r(Lokhttp3/Dispatcher;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/cloud/hisavana/net/CommonOkHttpClient;->q(Lokhttp3/Dispatcher;Lokhttp3/EventListener$Factory;)V

    return-void
.end method
