.class Lmb/z;
.super Ljava/lang/Object;

# interfaces
.implements Lic/b;
.implements Lic/a;


# static fields
.field private static final c:Lic/a$a;

.field private static final d:Lic/b;


# instance fields
.field private a:Lic/a$a;

.field private volatile b:Lic/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmb/w;

    invoke-direct {v0}, Lmb/w;-><init>()V

    sput-object v0, Lmb/z;->c:Lic/a$a;

    new-instance v0, Lmb/x;

    invoke-direct {v0}, Lmb/x;-><init>()V

    sput-object v0, Lmb/z;->d:Lic/b;

    return-void
.end method

.method private constructor <init>(Lic/a$a;Lic/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmb/z;->a:Lic/a$a;

    iput-object p2, p0, Lmb/z;->b:Lic/b;

    return-void
.end method

.method public static synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lmb/z;->g()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Lic/a$a;Lic/a$a;Lic/b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lmb/z;->h(Lic/a$a;Lic/a$a;Lic/b;)V

    return-void
.end method

.method public static synthetic d(Lic/b;)V
    .locals 0

    invoke-static {p0}, Lmb/z;->f(Lic/b;)V

    return-void
.end method

.method static e()Lmb/z;
    .locals 3

    new-instance v0, Lmb/z;

    sget-object v1, Lmb/z;->c:Lic/a$a;

    sget-object v2, Lmb/z;->d:Lic/b;

    invoke-direct {v0, v1, v2}, Lmb/z;-><init>(Lic/a$a;Lic/b;)V

    return-object v0
.end method

.method private static synthetic f(Lic/b;)V
    .locals 0

    return-void
.end method

.method private static synthetic g()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic h(Lic/a$a;Lic/a$a;Lic/b;)V
    .locals 0

    invoke-interface {p0, p2}, Lic/a$a;->a(Lic/b;)V

    invoke-interface {p1, p2}, Lic/a$a;->a(Lic/b;)V

    return-void
.end method

.method static i(Lic/b;)Lmb/z;
    .locals 2

    new-instance v0, Lmb/z;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lmb/z;-><init>(Lic/a$a;Lic/b;)V

    return-object v0
.end method


# virtual methods
.method public a(Lic/a$a;)V
    .locals 3

    iget-object v0, p0, Lmb/z;->b:Lic/b;

    sget-object v1, Lmb/z;->d:Lic/b;

    if-eq v0, v1, :cond_0

    invoke-interface {p1, v0}, Lic/a$a;->a(Lic/b;)V

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmb/z;->b:Lic/b;

    if-eq v0, v1, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lmb/z;->a:Lic/a$a;

    new-instance v2, Lmb/y;

    invoke-direct {v2, v1, p1}, Lmb/y;-><init>(Lic/a$a;Lic/a$a;)V

    iput-object v2, p0, Lmb/z;->a:Lic/a$a;

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-interface {p1, v0}, Lic/a$a;->a(Lic/b;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmb/z;->b:Lic/b;

    invoke-interface {v0}, Lic/b;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method j(Lic/b;)V
    .locals 2

    iget-object v0, p0, Lmb/z;->b:Lic/b;

    sget-object v1, Lmb/z;->d:Lic/b;

    if-ne v0, v1, :cond_0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmb/z;->a:Lic/a$a;

    const/4 v1, 0x0

    iput-object v1, p0, Lmb/z;->a:Lic/a$a;

    iput-object p1, p0, Lmb/z;->b:Lic/b;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0, p1}, Lic/a$a;->a(Lic/b;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "provide() can be called only once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
