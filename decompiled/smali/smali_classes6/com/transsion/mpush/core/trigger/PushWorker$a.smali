.class public final Lcom/transsion/mpush/core/trigger/PushWorker$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/mpush/core/trigger/PushWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/mpush/core/trigger/PushWorker$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/work/d$a;

    invoke-direct {v0}, Landroidx/work/d$a;-><init>()V

    sget-object v1, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    invoke-virtual {v0, v1}, Landroidx/work/d$a;->b(Landroidx/work/NetworkType;)Landroidx/work/d$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/d$a;->a()Landroidx/work/d;

    move-result-object v0

    sget-object v1, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    const-wide/16 v2, 0xf

    const-wide/16 v4, 0x1e

    invoke-virtual {v1, v2, v3, v4, v5}, Lkotlin/random/Random$Default;->nextLong(JJ)J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    new-instance v4, Landroidx/work/b0$a;

    const-class v5, Lcom/transsion/mpush/core/trigger/PushWorker;

    invoke-direct {v4, v5, v1, v2, v3}, Landroidx/work/b0$a;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v4, v0}, Landroidx/work/i0$a;->i(Landroidx/work/d;)Landroidx/work/i0$a;

    move-result-object v0

    check-cast v0, Landroidx/work/b0$a;

    const-string v1, "pull"

    invoke-virtual {v0, v1}, Landroidx/work/i0$a;->a(Ljava/lang/String;)Landroidx/work/i0$a;

    move-result-object v0

    check-cast v0, Landroidx/work/b0$a;

    invoke-virtual {v0}, Landroidx/work/i0$a;->b()Landroidx/work/i0;

    move-result-object v0

    check-cast v0, Landroidx/work/b0;

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    invoke-static {p1}, Landroidx/profileinstaller/b;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p1}, Landroidx/work/WorkManager;->f(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object p1

    const-string v1, "new_sdk_push_pull_worker"

    sget-object v2, Landroidx/work/ExistingPeriodicWorkPolicy;->KEEP:Landroidx/work/ExistingPeriodicWorkPolicy;

    invoke-virtual {p1, v1, v2, v0}, Landroidx/work/WorkManager;->e(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/b0;)Landroidx/work/w;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method
