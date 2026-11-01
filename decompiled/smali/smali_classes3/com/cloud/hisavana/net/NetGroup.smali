.class public final Lcom/cloud/hisavana/net/NetGroup;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J-\u0010\u000c\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000b\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0019\u0010\u0017\u001a\u00020\u00162\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0010H\u0007\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R(\u0010\u001e\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0018\n\u0004\u0008\u0013\u0010\u0019\u0012\u0004\u0008\u001d\u0010\u0003\u001a\u0004\u0008\u001a\u0010\u0006\"\u0004\u0008\u001b\u0010\u001cR(\u0010&\u001a\u00020\u001f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0018\n\u0004\u0008 \u0010!\u0012\u0004\u0008%\u0010\u0003\u001a\u0004\u0008 \u0010\"\"\u0004\u0008#\u0010$\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/cloud/hisavana/net/NetGroup;",
        "",
        "<init>",
        "()V",
        "",
        "e",
        "()I",
        "Lokhttp3/OkHttpClient$Builder;",
        "builder",
        "Lbi/g;",
        "factory",
        "testChannel",
        "f",
        "(Lokhttp3/OkHttpClient$Builder;Lbi/g;I)Lokhttp3/OkHttpClient$Builder;",
        "Landroid/content/Context;",
        "context",
        "",
        "group",
        "Lorg/chromium/net/CronetEngine;",
        "b",
        "(Landroid/content/Context;Ljava/lang/String;)Lorg/chromium/net/CronetEngine;",
        "url",
        "",
        "a",
        "(Ljava/lang/String;)Z",
        "I",
        "d",
        "setGroupBucketId",
        "(I)V",
        "getGroupBucketId$annotations",
        "groupBucketId",
        "",
        "c",
        "J",
        "()J",
        "setAbtestVarId",
        "(J)V",
        "getAbtestVarId$annotations",
        "abtestVarId",
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
.field public static final a:Lcom/cloud/hisavana/net/NetGroup;

.field private static b:I

.field private static c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/net/NetGroup;

    invoke-direct {v0}, Lcom/cloud/hisavana/net/NetGroup;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/net/NetGroup;->a:Lcom/cloud/hisavana/net/NetGroup;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-static {p0}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v1, Lcom/cloud/hisavana/net/CommonOkHttpClient;->a:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const-string v1, "api.hisavana.com"

    invoke-static {p0, v1, v2}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "fra-api.hisavana.com"

    invoke-static {p0, v1, v2}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ind-api.hisavana.com"

    invoke-static {p0, v1, v2}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "fast-api.hisavana.com"

    invoke-static {p0, v1, v2}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v0, v2

    :cond_2
    :goto_0
    return v0
.end method

.method private final b(Landroid/content/Context;Ljava/lang/String;)Lorg/chromium/net/CronetEngine;
    .locals 2

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v0, Lorg/chromium/net/CronetEngine$Builder;

    invoke-direct {v0, p1}, Lorg/chromium/net/CronetEngine$Builder;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lorg/chromium/net/CronetEngine$Builder;->enableHttp2(Z)Lorg/chromium/net/CronetEngine$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/net/CronetEngine$Builder;->enableQuic(Z)Lorg/chromium/net/CronetEngine$Builder;

    move-result-object p1

    const-string v0, "api.hisavana.com"

    const/16 v1, 0x1bb

    invoke-virtual {p1, v0, v1, v1}, Lorg/chromium/net/CronetEngine$Builder;->addQuicHint(Ljava/lang/String;II)Lorg/chromium/net/CronetEngine$Builder;

    move-result-object p1

    const-string v0, "creative.eagllwin.com"

    invoke-virtual {p1, v0, v1, v1}, Lorg/chromium/net/CronetEngine$Builder;->addQuicHint(Ljava/lang/String;II)Lorg/chromium/net/CronetEngine$Builder;

    move-result-object p1

    const-string v0, "hisavana-adx.transacme.com"

    invoke-virtual {p1, v0, v1, v1}, Lorg/chromium/net/CronetEngine$Builder;->addQuicHint(Ljava/lang/String;II)Lorg/chromium/net/CronetEngine$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/net/CronetEngine$Builder;->build()Lorg/chromium/net/CronetEngine;

    move-result-object p1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/cloud/hisavana/net/NetGroup$buildCronetEngine$1$1$1;

    invoke-direct {v1, p2, v0}, Lcom/cloud/hisavana/net/NetGroup$buildCronetEngine$1$1$1;-><init>(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {p1, v1}, Lorg/chromium/net/CronetEngine;->addRequestFinishedListener(Lorg/chromium/net/RequestFinishedInfo$Listener;)V

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lorg/chromium/net/CronetEngine;

    return-object p1
.end method

.method public static final c()J
    .locals 2

    sget-wide v0, Lcom/cloud/hisavana/net/NetGroup;->c:J

    return-wide v0
.end method

.method public static final d()I
    .locals 1

    sget v0, Lcom/cloud/hisavana/net/NetGroup;->b:I

    return v0
.end method

.method public static final e()I
    .locals 2

    :try_start_0
    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    const-string v1, "bucketV2"

    invoke-virtual {v0, v1}, Lj7/a;->f(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/cloud/hisavana/net/NetGroup;->b:I

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    const-string v1, "bucketVarId"

    invoke-virtual {v0, v1}, Lj7/a;->h(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/cloud/hisavana/net/NetGroup;->c:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetGroup Net Init\uff1agroupBucketId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/cloud/hisavana/net/NetGroup;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V

    sget v0, Lcom/cloud/hisavana/net/NetGroup;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final f(Lokhttp3/OkHttpClient$Builder;Lbi/g;I)Lokhttp3/OkHttpClient$Builder;
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "2013"

    invoke-virtual {p1, v0}, Lbi/g;->a(Ljava/lang/String;)V

    :cond_0
    const-string v0, "getContext(...)"

    const/4 v1, 0x0

    const-string v2, "api.hisavana.com"

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    sget-object p2, Lcom/cloud/hisavana/net/NetGroup;->a:Lcom/cloud/hisavana/net/NetGroup;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "2016"

    invoke-direct {p2, v3, v0}, Lcom/cloud/hisavana/net/NetGroup;->b(Landroid/content/Context;Ljava/lang/String;)Lorg/chromium/net/CronetEngine;

    move-result-object p2

    if-nez p2, :cond_1

    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Lbi/g;->a(Ljava/lang/String;)V

    :cond_2
    if-eqz p0, :cond_3

    new-instance v0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;

    invoke-direct {v0, p2}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;-><init>(Lorg/chromium/net/CronetEngine;)V

    new-instance p2, Lkotlin/Pair;

    invoke-direct {p2, v2, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p2}, Lkotlin/collections/MapsKt;->f(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->i(Ljava/util/Map;)Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;

    move-result-object p2

    new-instance v0, Lcom/cloud/hisavana/net/NetGroup$getWrapBuilder$1;

    invoke-direct {v0}, Lcom/cloud/hisavana/net/NetGroup$getWrapBuilder$1;-><init>()V

    invoke-virtual {p2, v0}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->h(Lw6/b;)Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->b(Lbi/g;)Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->a()Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    goto :goto_0

    :cond_3
    move-object p0, v1

    goto :goto_0

    :pswitch_1
    sget-object p2, Lcom/cloud/hisavana/net/NetGroup;->a:Lcom/cloud/hisavana/net/NetGroup;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "2015"

    invoke-direct {p2, v2, v0}, Lcom/cloud/hisavana/net/NetGroup;->b(Landroid/content/Context;Ljava/lang/String;)Lorg/chromium/net/CronetEngine;

    move-result-object p2

    if-nez p2, :cond_4

    return-object p0

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1, v0}, Lbi/g;->a(Ljava/lang/String;)V

    :cond_5
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lbi/g;->b(Z)V

    :cond_6
    if-eqz p0, :cond_3

    invoke-static {p2}, Lcom/cloud/hisavana/protocol/okhttptransport/a;->i(Lorg/chromium/net/CronetEngine;)Lcom/cloud/hisavana/protocol/okhttptransport/a$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/protocol/okhttptransport/a$b;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/Interceptor;

    invoke-virtual {p0, p1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    goto :goto_0

    :pswitch_2
    if-eqz p1, :cond_7

    const-string p2, "2014"

    invoke-virtual {p1, p2}, Lbi/g;->a(Ljava/lang/String;)V

    :cond_7
    if-eqz p0, :cond_3

    new-instance p1, Lcom/cloud/hisavana/protocol/intercept/a;

    new-instance p2, Lkotlin/Pair;

    invoke-direct {p2, v2, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p2}, Lkotlin/collections/MapsKt;->f(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/cloud/hisavana/protocol/intercept/a;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x7de
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
