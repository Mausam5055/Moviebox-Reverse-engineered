.class public Lz8/s;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:La9/d;

.field private final c:Lz8/u;

.field private final d:Lb9/a;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;La9/d;Lz8/u;Lb9/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz8/s;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lz8/s;->b:La9/d;

    iput-object p3, p0, Lz8/s;->c:Lz8/u;

    iput-object p4, p0, Lz8/s;->d:Lb9/a;

    return-void
.end method

.method public static synthetic a(Lz8/s;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lz8/s;->d()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lz8/s;)V
    .locals 0

    invoke-direct {p0}, Lz8/s;->e()V

    return-void
.end method

.method private synthetic d()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lz8/s;->b:La9/d;

    invoke-interface {v0}, La9/d;->H()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/datatransport/runtime/o;

    iget-object v2, p0, Lz8/s;->c:Lz8/u;

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lz8/u;->a(Lcom/google/android/datatransport/runtime/o;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic e()V
    .locals 2

    iget-object v0, p0, Lz8/s;->d:Lb9/a;

    new-instance v1, Lz8/r;

    invoke-direct {v1, p0}, Lz8/r;-><init>(Lz8/s;)V

    invoke-interface {v0, v1}, Lb9/a;->b(Lb9/a$a;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    iget-object v0, p0, Lz8/s;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lz8/q;

    invoke-direct {v1, p0}, Lz8/q;-><init>(Lz8/s;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
