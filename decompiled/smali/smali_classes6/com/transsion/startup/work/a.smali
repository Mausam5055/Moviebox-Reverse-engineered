.class public final Lcom/transsion/startup/work/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/startup/work/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/startup/work/a;

    invoke-direct {v0}, Lcom/transsion/startup/work/a;-><init>()V

    sput-object v0, Lcom/transsion/startup/work/a;->a:Lcom/transsion/startup/work/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 9

    const-string v0, "NetworkDataSourceWorker"

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v1}, Lsm/f$a;->a()Lsm/f;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "key_report_request_off"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5, v2, v3}, Lsm/f;->d(Lsm/f;Ljava/lang/String;ZILjava/lang/Object;)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/text/StringsKt;->m1(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    if-eqz v1, :cond_1

    return-void

    :cond_1
    sget-object v1, Lak/a0;->a:Lak/a0;

    invoke-virtual {v1, p1}, Lak/a0;->a(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "NetworkDataSourceManager"

    if-nez v1, :cond_2

    sget-object p1, Llg/a;->a:Llg/a$a;

    const-string v0, "Skip network data source work because storage or WorkManager is unavailable"

    invoke-virtual {p1, v2, v0, v5}, Llg/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_2
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_3

    invoke-static {p1}, Landroidx/profileinstaller/b;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_1
    new-instance v1, Landroidx/work/d$a;

    invoke-direct {v1}, Landroidx/work/d$a;-><init>()V

    sget-object v3, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    invoke-virtual {v1, v3}, Landroidx/work/d$a;->b(Landroidx/work/NetworkType;)Landroidx/work/d$a;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/work/d$a;->a()Landroidx/work/d;

    move-result-object v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    new-instance v4, Landroidx/work/b0$a;

    const-class v6, Lcom/transsion/startup/work/NetworkDataSourceWorker;

    const-wide/16 v7, 0x1

    invoke-direct {v4, v6, v7, v8, v3}, Landroidx/work/b0$a;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v4, v1}, Landroidx/work/i0$a;->i(Landroidx/work/d;)Landroidx/work/i0$a;

    move-result-object v1

    check-cast v1, Landroidx/work/b0$a;

    invoke-virtual {v1, v0}, Landroidx/work/i0$a;->a(Ljava/lang/String;)Landroidx/work/i0$a;

    move-result-object v1

    check-cast v1, Landroidx/work/b0$a;

    invoke-virtual {v1, v7, v8, v3}, Landroidx/work/i0$a;->k(JLjava/util/concurrent/TimeUnit;)Landroidx/work/i0$a;

    move-result-object v1

    check-cast v1, Landroidx/work/b0$a;

    invoke-virtual {v1}, Landroidx/work/i0$a;->b()Landroidx/work/i0;

    move-result-object v1

    check-cast v1, Landroidx/work/b0;

    sget-object v3, Landroidx/work/WorkManager;->a:Landroidx/work/WorkManager$a;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v3, p1}, Landroidx/work/WorkManager$a;->a(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object p1

    sget-object v3, Landroidx/work/ExistingPeriodicWorkPolicy;->REPLACE:Landroidx/work/ExistingPeriodicWorkPolicy;

    invoke-virtual {p1, v0, v3, v1}, Landroidx/work/WorkManager;->e(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/b0;)Landroidx/work/w;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_4

    sget-object v0, Lak/a0;->a:Lak/a0;

    invoke-virtual {v0, p1}, Lak/a0;->g(Ljava/lang/Throwable;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to schedule network data source work: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1, v5}, Llg/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    return-void
.end method
