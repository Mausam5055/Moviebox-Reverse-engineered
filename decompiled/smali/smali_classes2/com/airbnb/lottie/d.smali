.class public abstract Lcom/airbnb/lottie/d;
.super Ljava/lang/Object;


# static fields
.field public static a:Z = false

.field private static b:Z = false

.field private static c:Z = true

.field private static d:Z = true

.field private static e:Lcom/airbnb/lottie/AsyncUpdates;

.field private static f:Lt4/e;

.field private static g:Lt4/d;

.field private static volatile h:Lt4/g;

.field private static volatile i:Lt4/f;

.field private static j:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/AsyncUpdates;->AUTOMATIC:Lcom/airbnb/lottie/AsyncUpdates;

    sput-object v0, Lcom/airbnb/lottie/d;->e:Lcom/airbnb/lottie/AsyncUpdates;

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    invoke-static {p0}, Lcom/airbnb/lottie/d;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/airbnb/lottie/d;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/airbnb/lottie/d;->f()Lv4/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lv4/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)F
    .locals 1

    sget-boolean v0, Lcom/airbnb/lottie/d;->b:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/airbnb/lottie/d;->f()Lv4/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lv4/h;->b(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static d()Lcom/airbnb/lottie/AsyncUpdates;
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/d;->e:Lcom/airbnb/lottie/AsyncUpdates;

    return-object v0
.end method

.method public static e()Z
    .locals 1

    sget-boolean v0, Lcom/airbnb/lottie/d;->d:Z

    return v0
.end method

.method private static f()Lv4/h;
    .locals 2

    sget-object v0, Lcom/airbnb/lottie/d;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv4/h;

    if-nez v0, :cond_0

    new-instance v0, Lv4/h;

    invoke-direct {v0}, Lv4/h;-><init>()V

    sget-object v1, Lcom/airbnb/lottie/d;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public static g()Z
    .locals 1

    sget-boolean v0, Lcom/airbnb/lottie/d;->b:Z

    return v0
.end method

.method private static synthetic h(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "lottie_network_cache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static i(Landroid/content/Context;)Lt4/f;
    .locals 3

    sget-boolean v0, Lcom/airbnb/lottie/d;->c:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/airbnb/lottie/d;->i:Lt4/f;

    if-nez v0, :cond_3

    const-class v1, Lt4/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/airbnb/lottie/d;->i:Lt4/f;

    if-nez v0, :cond_2

    new-instance v0, Lt4/f;

    sget-object v2, Lcom/airbnb/lottie/d;->g:Lt4/d;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/airbnb/lottie/c;

    invoke-direct {v2, p0}, Lcom/airbnb/lottie/c;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-direct {v0, v2}, Lt4/f;-><init>(Lt4/d;)V

    sput-object v0, Lcom/airbnb/lottie/d;->i:Lt4/f;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_3

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_3
    return-object v0
.end method

.method public static j(Landroid/content/Context;)Lt4/g;
    .locals 3

    sget-object v0, Lcom/airbnb/lottie/d;->h:Lt4/g;

    if-nez v0, :cond_2

    const-class v1, Lt4/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/airbnb/lottie/d;->h:Lt4/g;

    if-nez v0, :cond_1

    new-instance v0, Lt4/g;

    invoke-static {p0}, Lcom/airbnb/lottie/d;->i(Landroid/content/Context;)Lt4/f;

    move-result-object p0

    sget-object v2, Lcom/airbnb/lottie/d;->f:Lt4/e;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lt4/b;

    invoke-direct {v2}, Lt4/b;-><init>()V

    :goto_0
    invoke-direct {v0, p0, v2}, Lt4/g;-><init>(Lt4/f;Lt4/e;)V

    sput-object v0, Lcom/airbnb/lottie/d;->h:Lt4/g;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_3

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_3
    return-object v0
.end method
