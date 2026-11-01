.class public final Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/cloud/hisavana/protocol/okhttptransport/a;

.field private final b:Lw6/a;

.field private final c:Ljava/util/Map;

.field private d:Lbi/g;

.field private e:Lw6/b;


# direct methods
.method private constructor <init>(Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->c()Lcom/cloud/hisavana/protocol/okhttptransport/a;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->a:Lcom/cloud/hisavana/protocol/okhttptransport/a;

    invoke-virtual {p1}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->d()Lw6/a;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->b:Lw6/a;

    invoke-virtual {p1}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->g()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->f()Lbi/g;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->d:Lbi/g;

    invoke-virtual {p1}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->e()Lw6/b;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->e:Lw6/b;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;-><init>(Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;)V

    return-void
.end method

.method public static final synthetic a(Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;)Lbi/g;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->d:Lbi/g;

    return-object p0
.end method

.method private final b(Lokhttp3/Request;)Lokhttp3/Request;
    .locals 3

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->c:Ljava/util/Map;

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    :cond_1
    return-object p1
.end method

.method private final c(Lokhttp3/Response;ILokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 1

    invoke-static {p1}, Lx6/a;->a(Lokhttp3/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->h()V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-direct {p0, p3, p2}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->f(Lokhttp3/Interceptor$Chain;I)Lokhttp3/Response;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private final d(Lokhttp3/Response;Lokhttp3/Interceptor$Chain;ILw6/b;)Lokhttp3/Response;
    .locals 1

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p4, p3}, Lw6/b;->a(I)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-direct {p0}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->h()V

    invoke-direct {p0, p2, p3}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->f(Lokhttp3/Interceptor$Chain;I)Lokhttp3/Response;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private final e(Lokhttp3/Interceptor$Chain;I)Lokhttp3/Response;
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->h()V

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->f(Lokhttp3/Interceptor$Chain;I)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method private final f(Lokhttp3/Interceptor$Chain;I)Lokhttp3/Response;
    .locals 2

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    const-string v1, "request(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->b(Lokhttp3/Request;)Lokhttp3/Request;

    move-result-object v0

    sget-object v1, Lbi/h;->a:Lbi/h;

    invoke-virtual {v1, p1, v0, p2}, Lbi/h;->a(Lokhttp3/Interceptor$Chain;Lokhttp3/Request;I)V

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    const-string p2, "proceed(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final g()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->b:Lw6/a;

    invoke-virtual {v0}, Lw6/a;->b()V

    return-void
.end method

.method private final h()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->b:Lw6/a;

    new-instance v1, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$triggerDownCount$1;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$triggerDownCount$1;-><init>(Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;)V

    invoke-virtual {v0, v1}, Lw6/a;->c(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 4

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->b:Lw6/a;

    invoke-virtual {v0}, Lw6/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request downgrade, cause failed count exceed limit, failed url is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    const-string v1, "request(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->b(Lokhttp3/Request;)Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    const-string v0, "proceed(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->a:Lcom/cloud/hisavana/protocol/okhttptransport/a;

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/protocol/okhttptransport/a;->intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->g()V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request downgrade, cause domain failed1, failed url is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {v0}, Lx6/a;->c(Lokhttp3/Response;)I

    move-result v1

    iget-object v2, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->e:Lw6/b;

    if-eqz v2, :cond_2

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->d(Lokhttp3/Response;Lokhttp3/Interceptor$Chain;ILw6/b;)Lokhttp3/Response;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0, v1, p1}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->c(Lokhttp3/Response;ILokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :goto_1
    invoke-static {v0}, Lx6/a;->b(Ljava/lang/Exception;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request downgrade, cause domain failed, failed url is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->e:Lw6/b;

    if-eqz v2, :cond_4

    invoke-interface {v2, v1}, Lw6/b;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1, v1}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->e(Lokhttp3/Interceptor$Chain;I)Lokhttp3/Response;

    move-result-object p1

    goto :goto_2

    :cond_3
    throw v0

    :cond_4
    invoke-direct {p0, p1, v1}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->e(Lokhttp3/Interceptor$Chain;I)Lokhttp3/Response;

    move-result-object p1

    :goto_2
    return-object p1

    :cond_5
    throw v0
.end method
