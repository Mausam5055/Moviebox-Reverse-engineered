.class public final Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/cloud/hisavana/protocol/okhttptransport/a;

.field private final b:Lw6/a;

.field private c:Ljava/util/Map;

.field private d:Lbi/g;

.field private e:Lw6/b;


# direct methods
.method public constructor <init>(Lorg/chromium/net/CronetEngine;)V
    .locals 1

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/cloud/hisavana/protocol/okhttptransport/a;->i(Lorg/chromium/net/CronetEngine;)Lcom/cloud/hisavana/protocol/okhttptransport/a$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/protocol/okhttptransport/a$b;->a()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "build(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/cloud/hisavana/protocol/okhttptransport/a;

    iput-object p1, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->a:Lcom/cloud/hisavana/protocol/okhttptransport/a;

    new-instance p1, Lw6/a;

    invoke-direct {p1}, Lw6/a;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->b:Lw6/a;

    return-void
.end method


# virtual methods
.method public final a()Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;
    .locals 2

    new-instance v0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;-><init>(Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final b(Lbi/g;)Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lbi/g;->b(Z)V

    iput-object p1, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->d:Lbi/g;

    return-object p0
.end method

.method public final c()Lcom/cloud/hisavana/protocol/okhttptransport/a;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->a:Lcom/cloud/hisavana/protocol/okhttptransport/a;

    return-object v0
.end method

.method public final d()Lw6/a;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->b:Lw6/a;

    return-object v0
.end method

.method public final e()Lw6/b;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->e:Lw6/b;

    return-object v0
.end method

.method public final f()Lbi/g;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->d:Lbi/g;

    return-object v0
.end method

.method public final g()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->c:Ljava/util/Map;

    return-object v0
.end method

.method public final h(Lw6/b;)Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;
    .locals 1

    const-string v0, "policy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->e:Lw6/b;

    return-object p0
.end method

.method public final i(Ljava/util/Map;)Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->c:Ljava/util/Map;

    return-object p0
.end method
