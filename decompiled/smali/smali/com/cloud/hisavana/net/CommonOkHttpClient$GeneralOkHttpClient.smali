.class Lcom/cloud/hisavana/net/CommonOkHttpClient$GeneralOkHttpClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/net/CommonOkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GeneralOkHttpClient"
.end annotation


# static fields
.field private static final a:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/cloud/hisavana/net/CommonOkHttpClient$GeneralOkHttpClient;->b()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/cloud/hisavana/net/CommonOkHttpClient$GeneralOkHttpClient;->a:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lokhttp3/OkHttpClient;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/net/CommonOkHttpClient$GeneralOkHttpClient;->a:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method private static b()Lokhttp3/OkHttpClient$Builder;
    .locals 6

    new-instance v0, Lbi/g;

    invoke-static {}, Lcom/cloud/hisavana/net/CommonOkHttpClient;->a()Lokhttp3/EventListener$Factory;

    move-result-object v1

    const/4 v2, 0x0

    sget-boolean v3, Lcom/cloud/hisavana/net/CommonOkHttpClient;->a:Z

    invoke-direct {v0, v1, v2, v3}, Lbi/g;-><init>(Lokhttp3/EventListener$Factory;IZ)V

    sget-boolean v1, Lcom/cloud/hisavana/net/CommonOkHttpClient;->a:Z

    const-wide/16 v2, 0x1e

    if-eqz v1, :cond_1

    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-static {}, Lcom/cloud/hisavana/net/ssl/HttpsTrustManager;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    new-instance v5, Lcom/cloud/hisavana/net/ssl/HttpsTrustManager;

    invoke-direct {v5}, Lcom/cloud/hisavana/net/ssl/HttpsTrustManager;-><init>()V

    invoke-virtual {v1, v4, v5}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    new-instance v4, Lcom/cloud/hisavana/net/ssl/HttpsTrustManager$TrustAllHostnameVerifier;

    invoke-direct {v4}, Lcom/cloud/hisavana/net/ssl/HttpsTrustManager$TrustAllHostnameVerifier;-><init>()V

    invoke-virtual {v1, v4}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    invoke-static {}, Lcom/cloud/hisavana/net/CommonOkHttpClient;->b()Lokhttp3/Dispatcher;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/net/CommonOkHttpClient;->b()Lokhttp3/Dispatcher;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Lokhttp3/Dispatcher;

    invoke-direct {v2}, Lokhttp3/Dispatcher;-><init>()V

    :goto_0
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->eventListenerFactory(Lokhttp3/EventListener$Factory;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    goto :goto_2

    :cond_1
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    invoke-static {}, Lcom/cloud/hisavana/net/CommonOkHttpClient;->b()Lokhttp3/Dispatcher;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/cloud/hisavana/net/CommonOkHttpClient;->b()Lokhttp3/Dispatcher;

    move-result-object v2

    goto :goto_1

    :cond_2
    new-instance v2, Lokhttp3/Dispatcher;

    invoke-direct {v2}, Lokhttp3/Dispatcher;-><init>()V

    :goto_1
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->eventListenerFactory(Lokhttp3/EventListener$Factory;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBuilder: isTestRequest = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/cloud/hisavana/net/CommonOkHttpClient;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/hisavana/net/NetGroup;->e()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/cloud/hisavana/net/NetGroup;->f(Lokhttp3/OkHttpClient$Builder;Lbi/g;I)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    return-object v0
.end method
