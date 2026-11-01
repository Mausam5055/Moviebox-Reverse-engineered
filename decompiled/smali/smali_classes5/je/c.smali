.class public Lje/c;
.super Ljava/lang/Object;

# interfaces
.implements Lje/b$a;


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;

.field private final b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final c:Ljava/util/ArrayDeque;

.field private d:Lje/b;


# direct methods
.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lje/c;->c:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    iput-object v0, p0, Lje/c;->d:Lje/b;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v7, p0, Lje/c;->a:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v3, 0x1

    const-wide/16 v4, 0x1

    const/4 v2, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lje/c;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lje/c;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lje/b;

    iput-object v0, p0, Lje/c;->d:Lje/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lje/c;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Lje/b;->b(Ljava/util/concurrent/ThreadPoolExecutor;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lje/b;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lje/c;->d:Lje/b;

    invoke-direct {p0}, Lje/c;->b()V

    return-void
.end method

.method public c(Lje/b;)V
    .locals 1

    invoke-virtual {p1, p0}, Lje/b;->c(Lje/b$a;)V

    iget-object v0, p0, Lje/c;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lje/c;->d:Lje/b;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lje/c;->b()V

    :cond_0
    return-void
.end method
