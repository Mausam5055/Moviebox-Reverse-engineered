.class public Lcom/google/firebase/perf/config/a;
.super Ljava/lang/Object;


# static fields
.field private static final d:Lsc/a;

.field private static volatile e:Lcom/google/firebase/perf/config/a;


# instance fields
.field private final a:Lcom/google/firebase/perf/config/RemoteConfigManager;

.field private b:Lcom/google/firebase/perf/util/d;

.field private c:Lcom/google/firebase/perf/config/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lsc/a;->e()Lsc/a;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/config/a;->d:Lsc/a;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/perf/config/RemoteConfigManager;Lcom/google/firebase/perf/util/d;Lcom/google/firebase/perf/config/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getInstance()Lcom/google/firebase/perf/config/RemoteConfigManager;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/firebase/perf/config/a;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    if-nez p2, :cond_1

    new-instance p2, Lcom/google/firebase/perf/util/d;

    invoke-direct {p2}, Lcom/google/firebase/perf/util/d;-><init>()V

    :cond_1
    iput-object p2, p0, Lcom/google/firebase/perf/config/a;->b:Lcom/google/firebase/perf/util/d;

    if-nez p3, :cond_2

    invoke-static {}, Lcom/google/firebase/perf/config/w;->e()Lcom/google/firebase/perf/config/w;

    move-result-object p3

    :cond_2
    iput-object p3, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    return-void
.end method

.method private H(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private I(Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lpc/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private J(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private L(D)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmpg-double v0, v0, p1

    if-gtz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private M(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private N(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    invoke-virtual {p1}, Lcom/google/firebase/perf/config/u;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/w;->b(Ljava/lang/String;)Lcom/google/firebase/perf/util/e;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    invoke-virtual {p1}, Lcom/google/firebase/perf/config/u;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/w;->c(Ljava/lang/String;)Lcom/google/firebase/perf/util/e;

    move-result-object p1

    return-object p1
.end method

.method private d(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    invoke-virtual {p1}, Lcom/google/firebase/perf/config/u;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/w;->f(Ljava/lang/String;)Lcom/google/firebase/perf/util/e;

    move-result-object p1

    return-object p1
.end method

.method private e(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    invoke-virtual {p1}, Lcom/google/firebase/perf/config/u;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/w;->g(Ljava/lang/String;)Lcom/google/firebase/perf/util/e;

    move-result-object p1

    return-object p1
.end method

.method public static declared-synchronized g()Lcom/google/firebase/perf/config/a;
    .locals 3

    const-class v0, Lcom/google/firebase/perf/config/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/config/a;->e:Lcom/google/firebase/perf/config/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/firebase/perf/config/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Lcom/google/firebase/perf/config/a;-><init>(Lcom/google/firebase/perf/config/RemoteConfigManager;Lcom/google/firebase/perf/util/d;Lcom/google/firebase/perf/config/w;)V

    sput-object v1, Lcom/google/firebase/perf/config/a;->e:Lcom/google/firebase/perf/config/a;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/google/firebase/perf/config/a;->e:Lcom/google/firebase/perf/config/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private k()Z
    .locals 4

    invoke-static {}, Lcom/google/firebase/perf/config/k;->e()Lcom/google/firebase/perf/config/k;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->u(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-virtual {v2}, Lcom/google/firebase/perf/config/RemoteConfigManager;->isLastFetchFailed()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/google/firebase/perf/config/w;->m(Ljava/lang/String;Z)Z

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->b(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/k;->d()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private l()Z
    .locals 4

    invoke-static {}, Lcom/google/firebase/perf/config/j;->e()Lcom/google/firebase/perf/config/j;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->x(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/google/firebase/perf/config/w;->l(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->I(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->e(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->I(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/j;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->I(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private n(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/config/a;->b:Lcom/google/firebase/perf/util/d;

    invoke-virtual {p1}, Lcom/google/firebase/perf/config/u;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/util/d;->b(Ljava/lang/String;)Lcom/google/firebase/perf/util/e;

    move-result-object p1

    return-object p1
.end method

.method private o(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/config/a;->b:Lcom/google/firebase/perf/util/d;

    invoke-virtual {p1}, Lcom/google/firebase/perf/config/u;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/util/d;->c(Ljava/lang/String;)Lcom/google/firebase/perf/util/e;

    move-result-object p1

    return-object p1
.end method

.method private p(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/config/a;->b:Lcom/google/firebase/perf/util/d;

    invoke-virtual {p1}, Lcom/google/firebase/perf/config/u;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/util/d;->e(Ljava/lang/String;)Lcom/google/firebase/perf/util/e;

    move-result-object p1

    return-object p1
.end method

.method private u(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/config/a;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-virtual {p1}, Lcom/google/firebase/perf/config/u;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getBoolean(Ljava/lang/String;)Lcom/google/firebase/perf/util/e;

    move-result-object p1

    return-object p1
.end method

.method private v(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/config/a;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-virtual {p1}, Lcom/google/firebase/perf/config/u;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getDouble(Ljava/lang/String;)Lcom/google/firebase/perf/util/e;

    move-result-object p1

    return-object p1
.end method

.method private w(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/config/a;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-virtual {p1}, Lcom/google/firebase/perf/config/u;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getLong(Ljava/lang/String;)Lcom/google/firebase/perf/util/e;

    move-result-object p1

    return-object p1
.end method

.method private x(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/config/a;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-virtual {p1}, Lcom/google/firebase/perf/config/u;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getString(Ljava/lang/String;)Lcom/google/firebase/perf/util/e;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public A()J
    .locals 5

    invoke-static {}, Lcom/google/firebase/perf/config/n;->e()Lcom/google/firebase/perf/config/n;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->p(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->M(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->w(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->M(J)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/n;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/w;->k(Ljava/lang/String;J)Z

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->d(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->M(J)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/n;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public B()J
    .locals 5

    invoke-static {}, Lcom/google/firebase/perf/config/o;->e()Lcom/google/firebase/perf/config/o;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->p(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->J(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->w(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->J(J)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/o;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/w;->k(Ljava/lang/String;J)Z

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->d(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->J(J)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/o;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public C()J
    .locals 5

    invoke-static {}, Lcom/google/firebase/perf/config/p;->f()Lcom/google/firebase/perf/config/p;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->p(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->J(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->w(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->J(J)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/p;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/w;->k(Ljava/lang/String;J)Z

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->d(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->J(J)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_2
    iget-object v1, p0, Lcom/google/firebase/perf/config/a;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-virtual {v1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->isLastFetchFailed()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/p;->e()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_3
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/p;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public D()D
    .locals 5

    invoke-static {}, Lcom/google/firebase/perf/config/q;->f()Lcom/google/firebase/perf/config/q;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->o(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    invoke-direct {p0, v1, v2}, Lcom/google/firebase/perf/config/a;->L(D)Z

    move-result v3

    if-eqz v3, :cond_0

    return-wide v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->v(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->L(D)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/q;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/w;->j(Ljava/lang/String;D)Z

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->c(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->L(D)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_2
    iget-object v1, p0, Lcom/google/firebase/perf/config/a;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-virtual {v1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->isLastFetchFailed()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/q;->e()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_3
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/q;->d()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public E()J
    .locals 5

    invoke-static {}, Lcom/google/firebase/perf/config/r;->e()Lcom/google/firebase/perf/config/r;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->w(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/r;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/w;->k(Ljava/lang/String;J)Z

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->d(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/r;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public F()J
    .locals 5

    invoke-static {}, Lcom/google/firebase/perf/config/s;->e()Lcom/google/firebase/perf/config/s;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->w(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/s;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/w;->k(Ljava/lang/String;J)Z

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->d(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/s;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public G()D
    .locals 5

    invoke-static {}, Lcom/google/firebase/perf/config/t;->f()Lcom/google/firebase/perf/config/t;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->v(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->L(D)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/t;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/w;->j(Ljava/lang/String;D)Z

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->c(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->L(D)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-object v1, p0, Lcom/google/firebase/perf/config/a;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-virtual {v1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->isLastFetchFailed()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/t;->e()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/t;->d()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public K()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/firebase/perf/config/a;->j()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/a;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public O(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/google/firebase/perf/config/a;->d:Lsc/a;

    invoke-static {p1}, Lcom/google/firebase/perf/util/k;->b(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lsc/a;->i(Z)V

    iget-object v0, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/w;->i(Landroid/content/Context;)V

    return-void
.end method

.method public P(Lcom/google/firebase/perf/util/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/perf/config/a;->b:Lcom/google/firebase/perf/util/d;

    return-void
.end method

.method public a()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;->e()Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;

    move-result-object v0

    sget-object v1, Lpc/a;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;->c()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/google/firebase/perf/config/a;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getRemoteConfigValueOrDefault(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3}, Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;->g(J)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v2, v3}, Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;->f(J)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/config/w;->l(Ljava/lang/String;Ljava/lang/String;)Z

    return-object v2

    :cond_2
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->e(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_3
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()D
    .locals 5

    invoke-static {}, Lcom/google/firebase/perf/config/e;->e()Lcom/google/firebase/perf/config/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->o(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    invoke-direct {p0, v1, v2}, Lcom/google/firebase/perf/config/a;->L(D)Z

    move-result v3

    if-eqz v3, :cond_0

    return-wide v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->v(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->L(D)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/w;->j(Ljava/lang/String;D)Z

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->c(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->L(D)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/e;->d()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public h()Z
    .locals 4

    invoke-static {}, Lcom/google/firebase/perf/config/d;->e()Lcom/google/firebase/perf/config/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->n(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->u(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/google/firebase/perf/config/w;->m(Ljava/lang/String;Z)Z

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->b(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/d;->d()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/Boolean;
    .locals 3

    invoke-static {}, Lcom/google/firebase/perf/config/b;->e()Lcom/google/firebase/perf/config/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->n(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/b;->d()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/Boolean;
    .locals 3

    invoke-virtual {p0}, Lcom/google/firebase/perf/config/a;->i()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/firebase/perf/config/c;->d()Lcom/google/firebase/perf/config/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->b(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->n(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public m()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/perf/config/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/firebase/perf/config/a;->l()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q()J
    .locals 5

    invoke-static {}, Lcom/google/firebase/perf/config/f;->e()Lcom/google/firebase/perf/config/f;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->w(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/w;->k(Ljava/lang/String;J)Z

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->d(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/f;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public r()J
    .locals 5

    invoke-static {}, Lcom/google/firebase/perf/config/g;->e()Lcom/google/firebase/perf/config/g;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->w(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/w;->k(Ljava/lang/String;J)Z

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->d(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/g;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public s()D
    .locals 5

    invoke-static {}, Lcom/google/firebase/perf/config/h;->f()Lcom/google/firebase/perf/config/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->v(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->L(D)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/w;->j(Ljava/lang/String;D)Z

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->c(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->L(D)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-object v1, p0, Lcom/google/firebase/perf/config/a;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-virtual {v1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->isLastFetchFailed()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/h;->e()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/h;->d()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public t()J
    .locals 5

    invoke-static {}, Lcom/google/firebase/perf/config/i;->e()Lcom/google/firebase/perf/config/i;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->w(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->N(J)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/w;->k(Ljava/lang/String;J)Z

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->d(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->N(J)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/i;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public y()J
    .locals 5

    invoke-static {}, Lcom/google/firebase/perf/config/l;->e()Lcom/google/firebase/perf/config/l;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->p(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->J(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->w(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->J(J)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/w;->k(Ljava/lang/String;J)Z

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->d(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->J(J)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/l;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public z()J
    .locals 5

    invoke-static {}, Lcom/google/firebase/perf/config/m;->f()Lcom/google/firebase/perf/config/m;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->p(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->J(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->w(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->J(J)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/w;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/m;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/w;->k(Ljava/lang/String;J)Z

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->d(Lcom/google/firebase/perf/config/u;)Lcom/google/firebase/perf/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->J(J)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_2
    iget-object v1, p0, Lcom/google/firebase/perf/config/a;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-virtual {v1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->isLastFetchFailed()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/m;->e()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_3
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/m;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
