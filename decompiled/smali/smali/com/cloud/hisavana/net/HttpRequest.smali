.class public final Lcom/cloud/hisavana/net/HttpRequest;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J-\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ-\u0010\r\u001a\u00020\n2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000cJ+\u0010\u000e\u001a\u00020\n2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u000e\u0010\u000cJ\u0017\u0010\u0011\u001a\u00020\n2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u001d\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00138\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\"\u0010\u001e\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\"\u0010\"\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010\u0019\u001a\u0004\u0008 \u0010\u001b\"\u0004\u0008!\u0010\u001dR\"\u0010%\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u0019\u001a\u0004\u0008#\u0010\u001b\"\u0004\u0008$\u0010\u001d\u00a8\u0006&"
    }
    d2 = {
        "Lcom/cloud/hisavana/net/HttpRequest;",
        "",
        "<init>",
        "()V",
        "",
        "url",
        "Lcom/cloud/hisavana/net/RequestParams;",
        "params",
        "Lcom/cloud/hisavana/net/impl/IHttpCallback;",
        "callback",
        "",
        "j",
        "(Ljava/lang/String;Lcom/cloud/hisavana/net/RequestParams;Lcom/cloud/hisavana/net/impl/IHttpCallback;)V",
        "c",
        "h",
        "Lcom/cloud/hisavana/net/disklrucache/listener/LruCleanCallBack;",
        "lruCleanCallBack",
        "b",
        "(Lcom/cloud/hisavana/net/disklrucache/listener/LruCleanCallBack;)V",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "g",
        "()Ljava/util/concurrent/CopyOnWriteArrayList;",
        "lruCleanCallBacks",
        "",
        "I",
        "e",
        "()I",
        "setCacheSize",
        "(I)V",
        "cacheSize",
        "d",
        "i",
        "setVideoCacheSize",
        "videoCacheSize",
        "f",
        "k",
        "defaultCacheSize",
        "adnetwork_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcom/cloud/hisavana/net/HttpRequest;

.field private static final b:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private static c:I

.field private static d:I

.field private static e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/net/HttpRequest;

    invoke-direct {v0}, Lcom/cloud/hisavana/net/HttpRequest;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/net/HttpRequest;->a:Lcom/cloud/hisavana/net/HttpRequest;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/net/HttpRequest;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/internal/Ref$ObjectRef;Lokhttp3/Request;Lcom/cloud/hisavana/net/impl/IHttpCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/hisavana/net/HttpRequest;->d(Lkotlin/jvm/internal/Ref$ObjectRef;Lokhttp3/Request;Lcom/cloud/hisavana/net/impl/IHttpCallback;)V

    return-void
.end method

.method public static final c(Ljava/lang/String;Lcom/cloud/hisavana/net/RequestParams;Lcom/cloud/hisavana/net/impl/IHttpCallback;)V
    .locals 3

    :try_start_0
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez p1, :cond_0

    new-instance p1, Lcom/cloud/hisavana/net/RequestParams;

    invoke-direct {p1}, Lcom/cloud/hisavana/net/RequestParams;-><init>()V

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_0
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/cloud/hisavana/net/RequestParams;

    const-string v1, "isDownload"

    const-string v2, "true"

    invoke-virtual {p1, v1, v2}, Lcom/cloud/hisavana/net/RequestParams;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/cloud/hisavana/net/RequestParams;

    invoke-static {p0, p1, p2}, Lcom/cloud/hisavana/net/CommonRequest;->a(Ljava/lang/String;Lcom/cloud/hisavana/net/RequestParams;Lcom/cloud/hisavana/net/impl/IHttpCallback;)Lokhttp3/Request;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p1, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lcom/cloud/hisavana/net/a;

    invoke-direct {v1, v0, p0, p2}, Lcom/cloud/hisavana/net/a;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lokhttp3/Request;Lcom/cloud/hisavana/net/impl/IHttpCallback;)V

    invoke-virtual {p1, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->g(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const-string p0, "getRequest:  create request is null"

    invoke-static {p0}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "downloadImage:  post request is error"

    invoke-static {p0}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final d(Lkotlin/jvm/internal/Ref$ObjectRef;Lokhttp3/Request;Lcom/cloud/hisavana/net/impl/IHttpCallback;)V
    .locals 1

    const-string v0, "$tempParams"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/cloud/hisavana/net/RequestParams;

    invoke-static {p0, p1, p2}, Lcom/cloud/hisavana/net/CommonOkHttpClient;->i(Lcom/cloud/hisavana/net/RequestParams;Lokhttp3/Request;Lcom/cloud/hisavana/net/impl/IHttpCallback;)Lokhttp3/Call;

    return-void
.end method

.method public static final j(Ljava/lang/String;Lcom/cloud/hisavana/net/RequestParams;Lcom/cloud/hisavana/net/impl/IHttpCallback;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Lcom/cloud/hisavana/net/RequestParams;

    invoke-direct {p1}, Lcom/cloud/hisavana/net/RequestParams;-><init>()V

    :cond_0
    const-string v0, "isDownload"

    const-string v1, "false"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/hisavana/net/RequestParams;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/cloud/hisavana/net/CommonRequest;->b(Ljava/lang/String;Lcom/cloud/hisavana/net/RequestParams;Lcom/cloud/hisavana/net/impl/IHttpCallback;)Lokhttp3/Request;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0, p2}, Lcom/cloud/hisavana/net/CommonOkHttpClient;->n(Lokhttp3/Request;Lcom/cloud/hisavana/net/impl/IHttpCallback;)Lokhttp3/Call;

    goto :goto_0

    :cond_1
    const-string p0, "postRequest:  create request is null"

    invoke-static {p0}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "postRequest:  post request is error"

    invoke-static {p0}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final b(Lcom/cloud/hisavana/net/disklrucache/listener/LruCleanCallBack;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/cloud/hisavana/net/HttpRequest;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e()I
    .locals 1

    sget v0, Lcom/cloud/hisavana/net/HttpRequest;->c:I

    return v0
.end method

.method public final f()I
    .locals 1

    sget v0, Lcom/cloud/hisavana/net/HttpRequest;->e:I

    return v0
.end method

.method public final g()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/net/HttpRequest;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public final h(Ljava/lang/String;Lcom/cloud/hisavana/net/RequestParams;Lcom/cloud/hisavana/net/impl/IHttpCallback;)V
    .locals 2

    if-nez p2, :cond_0

    :try_start_0
    new-instance p2, Lcom/cloud/hisavana/net/RequestParams;

    invoke-direct {p2}, Lcom/cloud/hisavana/net/RequestParams;-><init>()V

    :cond_0
    const-string v0, "isDownload"

    const-string v1, "false"

    invoke-virtual {p2, v0, v1}, Lcom/cloud/hisavana/net/RequestParams;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lcom/cloud/hisavana/net/CommonRequest;->a(Ljava/lang/String;Lcom/cloud/hisavana/net/RequestParams;Lcom/cloud/hisavana/net/impl/IHttpCallback;)Lokhttp3/Request;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1, p3}, Lcom/cloud/hisavana/net/CommonOkHttpClient;->j(Lokhttp3/Request;Lcom/cloud/hisavana/net/impl/IHttpCallback;)Lokhttp3/Call;

    goto :goto_0

    :cond_1
    const-string p1, "getRequest:  create request is null"

    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "postRequest:  post request is error"

    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final i()I
    .locals 1

    sget v0, Lcom/cloud/hisavana/net/HttpRequest;->d:I

    return v0
.end method

.method public final k(I)V
    .locals 0

    sput p1, Lcom/cloud/hisavana/net/HttpRequest;->e:I

    return-void
.end method
