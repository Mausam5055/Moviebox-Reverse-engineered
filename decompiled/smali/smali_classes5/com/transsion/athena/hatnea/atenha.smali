.class public Lcom/transsion/athena/hatnea/atenha;
.super Lcom/transsion/athena/hatnea/anateh;


# instance fields
.field private final c:Lcom/transsion/athena/config/data/model/enatha;

.field private final d:Lcom/transsion/athena/aethna/aethna;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/transsion/athena/config/data/model/enatha;Lcom/transsion/athena/aethna/aethna;)V
    .locals 0
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/transsion/athena/hatnea/anateh;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/transsion/athena/hatnea/atenha;->c:Lcom/transsion/athena/config/data/model/enatha;

    iput-object p3, p0, Lcom/transsion/athena/hatnea/atenha;->d:Lcom/transsion/athena/aethna/aethna;

    return-void
.end method

.method private synthetic d()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/athena/hatnea/atenha;->d:Lcom/transsion/athena/aethna/aethna;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/transsion/athena/aethna/aethna;->a(IZ)V

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/transsion/athena/hatnea/atenha;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/athena/hatnea/atenha;->d()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/athena/hatnea/atenha;->c:Lcom/transsion/athena/config/data/model/enatha;

    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/enatha;->i()J

    move-result-wide v2

    const-string v4, ""

    invoke-static {v1, v4, v2, v3}, Lcom/transsion/athena/hatnea/anehat;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/transsion/athena/hatnea/ehanat;

    move-result-object v1

    iget v2, v1, Lcom/transsion/athena/hatnea/ehanat;->a:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/transsion/athena/hatnea/atenha;->c:Lcom/transsion/athena/config/data/model/enatha;

    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/enatha;->b()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->u()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/transsion/athena/hatnea/anateh;->a:Landroid/os/Handler;

    const/16 v3, 0x12a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/transsion/athena/hatnea/anateh;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput v4, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/transsion/athena/hatnea/anateh;->a:Landroid/os/Handler;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_0
    iget v2, v1, Lcom/transsion/athena/hatnea/ehanat;->a:I

    const-string v3, "<-- globalConfig:%s"

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    iget-object v0, p0, Lcom/transsion/athena/hatnea/atenha;->c:Lcom/transsion/athena/config/data/model/enatha;

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/enatha;->d()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/transsion/athena/config/data/model/enatha;->c(I)V

    goto :goto_0

    :cond_1
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "NOT_MODIFIED"

    aput-object v2, v1, v0

    invoke-static {v3, v1}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/athena/hatnea/atenha;->c:Lcom/transsion/athena/config/data/model/enatha;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/transsion/athena/hatnea/atenha;->c:Lcom/transsion/athena/config/data/model/enatha;

    invoke-virtual {v3}, Lcom/transsion/athena/config/data/model/enatha;->c()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/transsion/athena/config/data/model/enatha;->b(J)V

    goto :goto_0

    :cond_2
    iget-object v1, v1, Lcom/transsion/athena/hatnea/ehanat;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v0

    invoke-static {v3, v2}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/athena/aethna/athena;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/athena/hatnea/atenha;->c:Lcom/transsion/athena/config/data/model/enatha;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/transsion/athena/hatnea/atenha;->c:Lcom/transsion/athena/config/data/model/enatha;

    invoke-virtual {v3}, Lcom/transsion/athena/config/data/model/enatha;->c()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/transsion/athena/config/data/model/enatha;->b(J)V

    iget-object v0, p0, Lcom/transsion/athena/hatnea/anateh;->a:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/athena/hatnea/a;

    invoke-direct {v1, p0}, Lcom/transsion/athena/hatnea/a;-><init>(Lcom/transsion/athena/hatnea/atenha;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :goto_0
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/athena/aethna/athena;->l()V

    :goto_1
    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "Retrieve-Global-Config"

    return-object v0
.end method
