.class public Lj/c;
.super Lj/e;


# static fields
.field private static volatile c:Lj/c;

.field private static final d:Ljava/util/concurrent/Executor;

.field private static final e:Ljava/util/concurrent/Executor;


# instance fields
.field private a:Lj/e;

.field private final b:Lj/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj/a;

    invoke-direct {v0}, Lj/a;-><init>()V

    sput-object v0, Lj/c;->d:Ljava/util/concurrent/Executor;

    new-instance v0, Lj/b;

    invoke-direct {v0}, Lj/b;-><init>()V

    sput-object v0, Lj/c;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lj/e;-><init>()V

    new-instance v0, Lj/d;

    invoke-direct {v0}, Lj/d;-><init>()V

    iput-object v0, p0, Lj/c;->b:Lj/e;

    iput-object v0, p0, Lj/c;->a:Lj/e;

    return-void
.end method

.method public static synthetic e(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lj/c;->i(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic f(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lj/c;->j(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static g()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lj/c;->e:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static h()Lj/c;
    .locals 2

    sget-object v0, Lj/c;->c:Lj/c;

    if-eqz v0, :cond_0

    sget-object v0, Lj/c;->c:Lj/c;

    return-object v0

    :cond_0
    const-class v0, Lj/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lj/c;->c:Lj/c;

    if-nez v1, :cond_1

    new-instance v1, Lj/c;

    invoke-direct {v1}, Lj/c;-><init>()V

    sput-object v1, Lj/c;->c:Lj/c;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lj/c;->c:Lj/c;

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static synthetic i(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lj/c;->h()Lj/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lj/c;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic j(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lj/c;->h()Lj/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lj/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lj/c;->a:Lj/e;

    invoke-virtual {v0, p1}, Lj/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lj/c;->a:Lj/e;

    invoke-virtual {v0}, Lj/e;->c()Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lj/c;->a:Lj/e;

    invoke-virtual {v0, p1}, Lj/e;->d(Ljava/lang/Runnable;)V

    return-void
.end method
