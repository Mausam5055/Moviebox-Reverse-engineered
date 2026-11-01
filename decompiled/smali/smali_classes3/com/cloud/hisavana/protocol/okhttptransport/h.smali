.class abstract Lcom/cloud/hisavana/protocol/okhttptransport/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lorg/chromium/net/CronetEngine;

.field private b:I

.field private c:Lcom/cloud/hisavana/protocol/okhttptransport/c;

.field private final d:Lcom/cloud/hisavana/protocol/okhttptransport/h;


# direct methods
.method constructor <init>(Lorg/chromium/net/CronetEngine;Ljava/lang/Class;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/h;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/h;->c:Lcom/cloud/hisavana/protocol/okhttptransport/c;

    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/net/CronetEngine;

    iput-object p1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/h;->a:Lorg/chromium/net/CronetEngine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/google/common/base/m;->d(Z)V

    iput-object p0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/h;->d:Lcom/cloud/hisavana/protocol/okhttptransport/h;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/h;->c:Lcom/cloud/hisavana/protocol/okhttptransport/c;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/protocol/okhttptransport/c;->a()Lcom/cloud/hisavana/protocol/okhttptransport/c;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/h;->c:Lcom/cloud/hisavana/protocol/okhttptransport/c;

    :cond_0
    new-instance v0, Lcom/cloud/hisavana/protocol/okhttptransport/g;

    iget-object v2, p0, Lcom/cloud/hisavana/protocol/okhttptransport/h;->a:Lorg/chromium/net/CronetEngine;

    iget v1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/h;->b:I

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {v1}, Lcom/cloud/hisavana/protocol/okhttptransport/e;->b(Ljava/util/concurrent/ExecutorService;)Lcom/cloud/hisavana/protocol/okhttptransport/e;

    move-result-object v4

    new-instance v5, Lcom/cloud/hisavana/protocol/okhttptransport/i;

    invoke-direct {v5}, Lcom/cloud/hisavana/protocol/okhttptransport/i;-><init>()V

    iget-object v6, p0, Lcom/cloud/hisavana/protocol/okhttptransport/h;->c:Lcom/cloud/hisavana/protocol/okhttptransport/c;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/cloud/hisavana/protocol/okhttptransport/g;-><init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/Executor;Lcom/cloud/hisavana/protocol/okhttptransport/d;Lcom/cloud/hisavana/protocol/okhttptransport/i;Lcom/cloud/hisavana/protocol/okhttptransport/c;)V

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/protocol/okhttptransport/h;->b(Lcom/cloud/hisavana/protocol/okhttptransport/g;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method abstract b(Lcom/cloud/hisavana/protocol/okhttptransport/g;)Ljava/lang/Object;
.end method
