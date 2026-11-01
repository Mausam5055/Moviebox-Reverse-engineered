.class public Lcom/pgl/ssdk/x0;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pgl/ssdk/x0$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/pgl/ssdk/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pgl/ssdk/a1<",
            "Lcom/pgl/ssdk/y0;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/pgl/ssdk/b1;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/pgl/ssdk/a1;->a(I)Lcom/pgl/ssdk/a1;

    move-result-object v0

    iput-object v0, p0, Lcom/pgl/ssdk/x0;->a:Lcom/pgl/ssdk/a1;

    return-void
.end method

.method synthetic constructor <init>(Lcom/pgl/ssdk/x0$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/pgl/ssdk/x0;-><init>()V

    return-void
.end method

.method public static a()Lcom/pgl/ssdk/x0;
    .locals 1

    invoke-static {}, Lcom/pgl/ssdk/x0$b;->a()Lcom/pgl/ssdk/x0;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/pgl/ssdk/b1$a;Ljava/lang/String;)Lcom/pgl/ssdk/y0;
    .locals 1

    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance p2, Lcom/pgl/ssdk/y0;

    invoke-direct {p2, v0, p1}, Lcom/pgl/ssdk/y0;-><init>(Landroid/os/HandlerThread;Lcom/pgl/ssdk/b1$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p2

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/pgl/ssdk/b1;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/pgl/ssdk/x0;->b(Lcom/pgl/ssdk/b1$a;Ljava/lang/String;)Lcom/pgl/ssdk/b1;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/pgl/ssdk/b1;
    .locals 2

    iget-object v0, p0, Lcom/pgl/ssdk/x0;->b:Lcom/pgl/ssdk/b1;

    if-nez v0, :cond_1

    const-class v0, Lcom/pgl/ssdk/x0;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/pgl/ssdk/x0;->b:Lcom/pgl/ssdk/b1;

    if-nez v1, :cond_0

    const-string v1, "ssdk_net_handler"

    invoke-virtual {p0, v1}, Lcom/pgl/ssdk/x0;->a(Ljava/lang/String;)Lcom/pgl/ssdk/b1;

    move-result-object v1

    iput-object v1, p0, Lcom/pgl/ssdk/x0;->b:Lcom/pgl/ssdk/b1;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/pgl/ssdk/x0;->b:Lcom/pgl/ssdk/b1;

    return-object v0
.end method

.method public b(Lcom/pgl/ssdk/b1$a;Ljava/lang/String;)Lcom/pgl/ssdk/b1;
    .locals 1

    iget-object v0, p0, Lcom/pgl/ssdk/x0;->a:Lcom/pgl/ssdk/a1;

    invoke-virtual {v0}, Lcom/pgl/ssdk/a1;->a()Lcom/pgl/ssdk/z0;

    move-result-object v0

    check-cast v0, Lcom/pgl/ssdk/y0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/pgl/ssdk/y0;->a(Lcom/pgl/ssdk/b1$a;)V

    invoke-virtual {v0, p2}, Lcom/pgl/ssdk/y0;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/pgl/ssdk/x0;->a(Lcom/pgl/ssdk/b1$a;Ljava/lang/String;)Lcom/pgl/ssdk/y0;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public c()Lcom/pgl/ssdk/b1;
    .locals 2

    iget-object v0, p0, Lcom/pgl/ssdk/x0;->b:Lcom/pgl/ssdk/b1;

    if-nez v0, :cond_1

    const-class v0, Lcom/pgl/ssdk/x0;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/pgl/ssdk/x0;->b:Lcom/pgl/ssdk/b1;

    if-nez v1, :cond_0

    const-string v1, "ssdk_handler"

    invoke-virtual {p0, v1}, Lcom/pgl/ssdk/x0;->a(Ljava/lang/String;)Lcom/pgl/ssdk/b1;

    move-result-object v1

    iput-object v1, p0, Lcom/pgl/ssdk/x0;->b:Lcom/pgl/ssdk/b1;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/pgl/ssdk/x0;->b:Lcom/pgl/ssdk/b1;

    return-object v0
.end method
