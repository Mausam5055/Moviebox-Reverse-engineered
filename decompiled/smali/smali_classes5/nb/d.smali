.class public Lnb/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lic/a;

.field private volatile b:Lpb/a;

.field private volatile c:Lqb/b;

.field private final d:Ljava/util/List;


# direct methods
.method public constructor <init>(Lic/a;)V
    .locals 2

    new-instance v0, Lqb/c;

    invoke-direct {v0}, Lqb/c;-><init>()V

    new-instance v1, Lpb/f;

    invoke-direct {v1}, Lpb/f;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lnb/d;-><init>(Lic/a;Lqb/b;Lpb/a;)V

    return-void
.end method

.method public constructor <init>(Lic/a;Lqb/b;Lpb/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnb/d;->a:Lic/a;

    iput-object p2, p0, Lnb/d;->c:Lqb/b;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnb/d;->d:Ljava/util/List;

    iput-object p3, p0, Lnb/d;->b:Lpb/a;

    invoke-direct {p0}, Lnb/d;->f()V

    return-void
.end method

.method public static synthetic a(Lnb/d;Lic/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lnb/d;->i(Lic/b;)V

    return-void
.end method

.method public static synthetic b(Lnb/d;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnb/d;->g(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic c(Lnb/d;Lqb/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lnb/d;->h(Lqb/a;)V

    return-void
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lnb/d;->a:Lic/a;

    new-instance v1, Lnb/c;

    invoke-direct {v1, p0}, Lnb/c;-><init>(Lnb/d;)V

    invoke-interface {v0, v1}, Lic/a;->a(Lic/a$a;)V

    return-void
.end method

.method private synthetic g(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lnb/d;->b:Lpb/a;

    invoke-interface {v0, p1, p2}, Lpb/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic h(Lqb/a;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnb/d;->c:Lqb/b;

    instance-of v0, v0, Lqb/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnb/d;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lnb/d;->c:Lqb/b;

    invoke-interface {v0, p1}, Lqb/b;->a(Lqb/a;)V

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private synthetic i(Lic/b;)V
    .locals 5

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    const-string v1, "AnalyticsConnector now available."

    invoke-virtual {v0, v1}, Lob/g;->b(Ljava/lang/String;)V

    invoke-interface {p1}, Lic/b;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkb/a;

    new-instance v0, Lpb/e;

    invoke-direct {v0, p1}, Lpb/e;-><init>(Lkb/a;)V

    new-instance v1, Lnb/e;

    invoke-direct {v1}, Lnb/e;-><init>()V

    invoke-static {p1, v1}, Lnb/d;->j(Lkb/a;Lnb/e;)Lkb/a$a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p1

    const-string v2, "Registered Firebase Analytics listener."

    invoke-virtual {p1, v2}, Lob/g;->b(Ljava/lang/String;)V

    new-instance p1, Lpb/d;

    invoke-direct {p1}, Lpb/d;-><init>()V

    new-instance v2, Lpb/c;

    const/16 v3, 0x1f4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v2, v0, v3, v4}, Lpb/c;-><init>(Lpb/e;ILjava/util/concurrent/TimeUnit;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnb/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lqb/a;

    invoke-virtual {p1, v3}, Lpb/d;->a(Lqb/a;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {v1, p1}, Lnb/e;->d(Lpb/b;)V

    invoke-virtual {v1, v2}, Lnb/e;->e(Lpb/b;)V

    iput-object p1, p0, Lnb/d;->c:Lqb/b;

    iput-object v2, p0, Lnb/d;->b:Lpb/a;

    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p1

    const-string v0, "Could not register Firebase Analytics listener; a listener is already registered."

    invoke-virtual {p1, v0}, Lob/g;->k(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private static j(Lkb/a;Lnb/e;)Lkb/a$a;
    .locals 2

    const-string v0, "clx"

    invoke-interface {p0, v0, p1}, Lkb/a;->a(Ljava/lang/String;Lkb/a$b;)Lkb/a$a;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    const-string v1, "Could not register AnalyticsConnectorListener with Crashlytics origin."

    invoke-virtual {v0, v1}, Lob/g;->b(Ljava/lang/String;)V

    const-string v0, "crash"

    invoke-interface {p0, v0, p1}, Lkb/a;->a(Ljava/lang/String;Lkb/a$b;)Lkb/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p0

    const-string p1, "A new version of the Google Analytics for Firebase SDK is now available. For improved performance and compatibility with Crashlytics, please update to the latest version."

    invoke-virtual {p0, p1}, Lob/g;->k(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public d()Lpb/a;
    .locals 1

    new-instance v0, Lnb/b;

    invoke-direct {v0, p0}, Lnb/b;-><init>(Lnb/d;)V

    return-object v0
.end method

.method public e()Lqb/b;
    .locals 1

    new-instance v0, Lnb/a;

    invoke-direct {v0, p0}, Lnb/a;-><init>(Lnb/d;)V

    return-object v0
.end method
