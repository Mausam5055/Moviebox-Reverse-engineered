.class public final Lcom/transsion/wrapperad/install/ui/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/wrapperad/install/ui/d;

.field private static b:Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;

.field private static final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final d:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private static e:Lcom/transsion/wrapperad/install/ui/a;

.field private static final f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/wrapperad/install/ui/d;

    invoke-direct {v0}, Lcom/transsion/wrapperad/install/ui/d;-><init>()V

    sput-object v0, Lcom/transsion/wrapperad/install/ui/d;->a:Lcom/transsion/wrapperad/install/ui/d;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/transsion/wrapperad/install/ui/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/transsion/wrapperad/install/ui/d;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/transsion/wrapperad/install/ui/d;->f:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/transsion/wrapperad/install/ui/d;->g()V

    return-void
.end method

.method public static synthetic b(I)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/wrapperad/install/ui/d;->f(I)V

    return-void
.end method

.method private final e(Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;)V
    .locals 6

    if-nez p1, :cond_0

    sget-object p1, Lcom/transsion/wrapperad/install/a;->a:Lcom/transsion/wrapperad/install/a;

    invoke-direct {p0}, Lcom/transsion/wrapperad/install/ui/d;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> displayTask() --> info == null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/wrapperad/install/a;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/wrapperad/install/ui/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Lcom/transsion/wrapperad/install/a;->a:Lcom/transsion/wrapperad/install/a;

    invoke-direct {p0}, Lcom/transsion/wrapperad/install/ui/d;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> displayTask() --> isTaskShowing == true"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/wrapperad/install/a;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sput-object p1, Lcom/transsion/wrapperad/install/ui/d;->b:Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;

    sget-object p1, Lyx/a;->a:Lyx/a;

    invoke-virtual {p1}, Lyx/a;->l()I

    move-result p1

    sget-object v0, Lcom/transsion/wrapperad/install/ui/d;->f:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/wrapperad/install/ui/b;

    invoke-direct {v1, p1}, Lcom/transsion/wrapperad/install/ui/b;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v1, Lcom/transsion/wrapperad/install/ui/c;

    invoke-direct {v1}, Lcom/transsion/wrapperad/install/ui/c;-><init>()V

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final f(I)V
    .locals 4

    sget-object v0, Lcom/transsion/wrapperad/install/ui/d;->e:Lcom/transsion/wrapperad/install/ui/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/wrapperad/install/ui/a;->onAppInstalledTipStart()V

    :cond_0
    sget-object v0, Lcom/transsion/wrapperad/install/a;->a:Lcom/transsion/wrapperad/install/a;

    sget-object v1, Lcom/transsion/wrapperad/install/ui/d;->a:Lcom/transsion/wrapperad/install/ui/d;

    invoke-direct {v1}, Lcom/transsion/wrapperad/install/ui/d;->k()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/transsion/wrapperad/install/ui/d;->e:Lcom/transsion/wrapperad/install/ui/a;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> displayTask() --> listener = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " --> items = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/wrapperad/install/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static final g()V
    .locals 6

    const/4 v0, 0x0

    sput-object v0, Lcom/transsion/wrapperad/install/ui/d;->b:Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;

    sget-object v1, Lcom/transsion/wrapperad/install/a;->a:Lcom/transsion/wrapperad/install/a;

    sget-object v2, Lcom/transsion/wrapperad/install/ui/d;->a:Lcom/transsion/wrapperad/install/ui/d;

    invoke-direct {v2}, Lcom/transsion/wrapperad/install/ui/d;->k()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " --> displayTask() --> \u65f6\u95f4\u5230\u81ea\u52a8\u5173\u95ed"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/transsion/wrapperad/install/a;->a(Ljava/lang/String;)V

    sget-object v3, Lcom/transsion/wrapperad/install/ui/d;->e:Lcom/transsion/wrapperad/install/ui/a;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/transsion/wrapperad/install/ui/a;->onAppInstalledTipEnd()V

    :cond_0
    sget-object v3, Lcom/transsion/wrapperad/install/ui/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {v2}, Lcom/transsion/wrapperad/install/ui/d;->k()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " --> displayTask() --> isTaskShowing = false"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/transsion/wrapperad/install/a;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v2, v4, v1, v0}, Lcom/transsion/wrapperad/install/ui/d;->i(Lcom/transsion/wrapperad/install/ui/d;ZILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic i(Lcom/transsion/wrapperad/install/ui/d;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/wrapperad/install/ui/d;->h(Z)V

    return-void
.end method

.method private final k()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/transsion/wrapperad/install/ui/d;->a:Lcom/transsion/wrapperad/install/ui/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final c(Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;)V
    .locals 3

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/wrapperad/install/ui/d;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/transsion/wrapperad/install/a;->a:Lcom/transsion/wrapperad/install/a;

    invoke-direct {p0}, Lcom/transsion/wrapperad/install/ui/d;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> addAppChangeInfo() --> "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/wrapperad/install/a;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/transsion/wrapperad/install/ui/d;->i(Lcom/transsion/wrapperad/install/ui/d;ZILjava/lang/Object;)V

    return-void
.end method

.method public final d()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/transsion/wrapperad/install/ui/d;->e:Lcom/transsion/wrapperad/install/ui/a;

    sget-object v1, Lcom/transsion/wrapperad/install/ui/d;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final h(Z)V
    .locals 4

    sget-object p1, Lcom/transsion/wrapperad/install/ui/d;->b:Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/wrapperad/install/a;->a:Lcom/transsion/wrapperad/install/a;

    invoke-direct {p0}, Lcom/transsion/wrapperad/install/ui/d;->k()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/transsion/wrapperad/install/ui/d;->b:Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> doNextTask() --> \u6b63\u5728\u5c55\u793a pkg = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "--> \u8fd4\u56de "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/wrapperad/install/a;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object p1, Lcom/transsion/wrapperad/install/ui/d;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;

    sget-object v1, Lcom/transsion/wrapperad/install/a;->a:Lcom/transsion/wrapperad/install/a;

    invoke-direct {p0}, Lcom/transsion/wrapperad/install/ui/d;->k()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> doNextTask() --> "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> \u6d88\u606f\u6e05\u7a7a"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/wrapperad/install/a;->a(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/wrapperad/install/ui/d;->e(Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;)V

    return-void
.end method

.method public final j()Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;
    .locals 3

    sget-object v0, Lcom/transsion/wrapperad/install/ui/d;->b:Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/transsion/wrapperad/install/ui/d;->i(Lcom/transsion/wrapperad/install/ui/d;ZILjava/lang/Object;)V

    sget-object v0, Lcom/transsion/wrapperad/install/ui/d;->b:Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;

    :cond_0
    return-object v0
.end method

.method public final l(Lcom/transsion/wrapperad/install/ui/a;)V
    .locals 0

    sput-object p1, Lcom/transsion/wrapperad/install/ui/d;->e:Lcom/transsion/wrapperad/install/ui/a;

    return-void
.end method
