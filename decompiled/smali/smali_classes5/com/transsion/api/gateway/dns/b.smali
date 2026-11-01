.class public Lcom/transsion/api/gateway/dns/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>(Lcom/transsion/api/gateway/dns/b;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/api/gateway/dns/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, p1, Lcom/transsion/api/gateway/dns/b;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/api/gateway/dns/b;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/api/gateway/dns/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/api/gateway/dns/d;

    iget-object v1, p0, Lcom/transsion/api/gateway/dns/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Lcom/transsion/api/gateway/dns/d;

    invoke-direct {v2, v0}, Lcom/transsion/api/gateway/dns/d;-><init>(Lcom/transsion/api/gateway/dns/d;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/api/gateway/dns/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, p0, Lcom/transsion/api/gateway/dns/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 4

    const-class v0, Lcom/transsion/api/gateway/dns/b;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/api/gateway/dns/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/api/gateway/dns/d;

    iget-object v3, v2, Lcom/transsion/api/gateway/dns/d;->b:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    const-class v1, Lcom/transsion/api/gateway/dns/b;

    monitor-enter v1

    if-nez v2, :cond_2

    :try_start_1
    new-instance v0, Lcom/transsion/api/gateway/dns/d;

    invoke-direct {v0, p1, p2}, Lcom/transsion/api/gateway/dns/d;-><init>(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/transsion/api/gateway/dns/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
