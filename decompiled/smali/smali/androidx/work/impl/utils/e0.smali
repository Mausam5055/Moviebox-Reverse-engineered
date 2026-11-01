.class public Landroidx/work/impl/utils/e0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/work/j;


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private final a:Lj4/c;

.field final b:Landroidx/work/impl/foreground/a;

.field final c:Landroidx/work/impl/model/k0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WMFgUpdater"

    invoke-static {v0}, Landroidx/work/t;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/utils/e0;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/foreground/a;Lj4/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/work/impl/utils/e0;->b:Landroidx/work/impl/foreground/a;

    iput-object p3, p0, Landroidx/work/impl/utils/e0;->a:Lj4/c;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->l0()Landroidx/work/impl/model/k0;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/utils/e0;->c:Landroidx/work/impl/model/k0;

    return-void
.end method

.method public static synthetic b(Landroidx/work/impl/utils/e0;Ljava/util/UUID;Landroidx/work/i;Landroid/content/Context;)Ljava/lang/Void;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/work/impl/utils/e0;->c(Ljava/util/UUID;Landroidx/work/i;Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method private synthetic c(Ljava/util/UUID;Landroidx/work/i;Landroid/content/Context;)Ljava/lang/Void;
    .locals 2

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Landroidx/work/impl/utils/e0;->c:Landroidx/work/impl/model/k0;

    invoke-interface {v0, p1}, Landroidx/work/impl/model/k0;->j(Ljava/lang/String;)Landroidx/work/impl/model/j0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/work/impl/model/j0;->b:Landroidx/work/WorkInfo$State;

    invoke-virtual {v1}, Landroidx/work/WorkInfo$State;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/work/impl/utils/e0;->b:Landroidx/work/impl/foreground/a;

    invoke-interface {v1, p1, p2}, Landroidx/work/impl/foreground/a;->a(Ljava/lang/String;Landroidx/work/i;)V

    invoke-static {v0}, Landroidx/work/impl/model/s1;->a(Landroidx/work/impl/model/j0;)Landroidx/work/impl/model/x;

    move-result-object p1

    invoke-static {p3, p1, p2}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->d(Landroid/content/Context;Landroidx/work/impl/model/x;Landroidx/work/i;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/UUID;Landroidx/work/i;)Lcom/google/common/util/concurrent/r;
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/utils/e0;->a:Lj4/c;

    invoke-interface {v0}, Lj4/c;->c()Lj4/a;

    move-result-object v0

    new-instance v1, Landroidx/work/impl/utils/d0;

    invoke-direct {v1, p0, p2, p3, p1}, Landroidx/work/impl/utils/d0;-><init>(Landroidx/work/impl/utils/e0;Ljava/util/UUID;Landroidx/work/i;Landroid/content/Context;)V

    const-string p1, "setForegroundAsync"

    invoke-static {v0, p1, v1}, Landroidx/work/ListenableFutureKt;->f(Ljava/util/concurrent/Executor;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lcom/google/common/util/concurrent/r;

    move-result-object p1

    return-object p1
.end method
