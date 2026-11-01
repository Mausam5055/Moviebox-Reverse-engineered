.class public final Lcom/wecloud/load/lib/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wecloud/load/lib/j$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/wecloud/load/lib/j;

.field private static final b:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/wecloud/load/lib/j;

    invoke-direct {v0}, Lcom/wecloud/load/lib/j;-><init>()V

    sput-object v0, Lcom/wecloud/load/lib/j;->a:Lcom/wecloud/load/lib/j;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/wecloud/load/lib/j;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 3

    const-string v0, "results"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/wecloud/load/lib/j;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wecloud/load/lib/j$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wecloud/load/lib/n;

    const-string v2, "network_probe"

    invoke-virtual {p0, v1}, Lcom/wecloud/load/lib/j;->c(Lcom/wecloud/load/lib/n;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/wecloud/load/lib/j$a;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b(Lcom/wecloud/load/lib/j$a;)V
    .locals 1

    sget-object v0, Lcom/wecloud/load/lib/j;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Lcom/wecloud/load/lib/n;)Ljava/util/Map;
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "result"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/wecloud/load/lib/n;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    invoke-virtual {p1}, Lcom/wecloud/load/lib/n;->l()I

    move-result v3

    const/16 v5, 0xc8

    if-eq v3, v5, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/wecloud/load/lib/n;->g()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    move-object v5, v4

    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/wecloud/load/lib/n;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    move-object v4, v3

    :cond_3
    const-string v3, "url"

    invoke-virtual {p1}, Lcom/wecloud/load/lib/n;->n()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const-string v6, "method"

    invoke-virtual {p1}, Lcom/wecloud/load/lib/n;->i()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    invoke-virtual {p1}, Lcom/wecloud/load/lib/n;->m()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "success"

    invoke-static {v8, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    invoke-virtual {p1}, Lcom/wecloud/load/lib/n;->l()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "status_code"

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    invoke-virtual {p1}, Lcom/wecloud/load/lib/n;->c()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v10, "duration"

    invoke-static {v10, v9}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    invoke-virtual {p1}, Lcom/wecloud/load/lib/n;->j()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v11, "request_time"

    invoke-static {v11, v10}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    invoke-virtual {p1}, Lcom/wecloud/load/lib/n;->d()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "error_code"

    invoke-static {v12, v11}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const-string v12, "error_message"

    invoke-virtual {p1}, Lcom/wecloud/load/lib/n;->e()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    const-string v13, "server_ip"

    invoke-static {v13, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const-string v13, "http_headers"

    invoke-static {v13, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    const-string v13, "http_body"

    invoke-static {v13, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const-string v13, "http_protocol"

    invoke-virtual {p1}, Lcom/wecloud/load/lib/n;->h()Ljava/lang/String;

    move-result-object p1

    invoke-static {v13, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/16 v13, 0xc

    new-array v13, v13, [Lkotlin/Pair;

    aput-object v3, v13, v0

    aput-object v6, v13, v1

    const/4 v0, 0x2

    aput-object v7, v13, v0

    const/4 v0, 0x3

    aput-object v8, v13, v0

    const/4 v0, 0x4

    aput-object v9, v13, v0

    const/4 v0, 0x5

    aput-object v10, v13, v0

    const/4 v0, 0x6

    aput-object v11, v13, v0

    const/4 v0, 0x7

    aput-object v12, v13, v0

    const/16 v0, 0x8

    aput-object v2, v13, v0

    const/16 v0, 0x9

    aput-object v5, v13, v0

    const/16 v0, 0xa

    aput-object v4, v13, v0

    const/16 v0, 0xb

    aput-object p1, v13, v0

    invoke-static {v13}, Lkotlin/collections/MapsKt;->k([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object p1

    return-object p1
.end method
