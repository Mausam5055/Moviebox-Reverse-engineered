.class public final Lcom/transsion/mbwidget/data/SportWidgetPeriodicWorker;
.super Landroidx/work/CoroutineWorker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/mbwidget/data/SportWidgetPeriodicWorker$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000cB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\u0008H\u0096@\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/transsion/mbwidget/data/SportWidgetPeriodicWorker;",
        "Landroidx/work/CoroutineWorker;",
        "Landroid/content/Context;",
        "context",
        "Landroidx/work/WorkerParameters;",
        "params",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "Landroidx/work/s$a;",
        "n",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "g",
        "a",
        "DeskWidget_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final g:Lcom/transsion/mbwidget/data/SportWidgetPeriodicWorker$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/mbwidget/data/SportWidgetPeriodicWorker$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/mbwidget/data/SportWidgetPeriodicWorker$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/mbwidget/data/SportWidgetPeriodicWorker;->g:Lcom/transsion/mbwidget/data/SportWidgetPeriodicWorker$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method


# virtual methods
.method public n(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13

    const/4 v0, 0x1

    instance-of v1, p1, Lcom/transsion/mbwidget/data/SportWidgetPeriodicWorker$doWork$1;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/transsion/mbwidget/data/SportWidgetPeriodicWorker$doWork$1;

    iget v2, v1, Lcom/transsion/mbwidget/data/SportWidgetPeriodicWorker$doWork$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/transsion/mbwidget/data/SportWidgetPeriodicWorker$doWork$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/transsion/mbwidget/data/SportWidgetPeriodicWorker$doWork$1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/mbwidget/data/SportWidgetPeriodicWorker$doWork$1;-><init>(Lcom/transsion/mbwidget/data/SportWidgetPeriodicWorker;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v1, Lcom/transsion/mbwidget/data/SportWidgetPeriodicWorker$doWork$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v2

    iget v3, v1, Lcom/transsion/mbwidget/data/SportWidgetPeriodicWorker$doWork$1;->label:I

    const-string v4, "SportWidget"

    if-eqz v3, :cond_2

    if-ne v3, v0, :cond_1

    iget-object v2, v1, Lcom/transsion/mbwidget/data/SportWidgetPeriodicWorker$doWork$1;->L$2:Ljava/lang/Object;

    check-cast v2, [I

    iget-object v3, v1, Lcom/transsion/mbwidget/data/SportWidgetPeriodicWorker$doWork$1;->L$1:Ljava/lang/Object;

    check-cast v3, Landroid/appwidget/AppWidgetManager;

    iget-object v1, v1, Lcom/transsion/mbwidget/data/SportWidgetPeriodicWorker$doWork$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/mbwidget/data/SportWidgetPeriodicWorker;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p0}, Landroidx/work/s;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    new-instance p1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroidx/work/s;->a()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider;

    invoke-direct {p1, v5, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    array-length v5, p1

    if-nez v5, :cond_3

    sget-object p1, Llg/a;->a:Llg/a$a;

    const-string v1, "SportWidgetPeriodicWorker: no sport widget instance, skip"

    invoke-virtual {p1, v4, v1, v0}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Landroidx/work/s$a;->c()Landroidx/work/s$a;

    move-result-object p1

    goto :goto_3

    :cond_3
    sget-object v5, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->a:Lcom/transsion/mbwidget/data/SportWidgetDataManager;

    iput-object p0, v1, Lcom/transsion/mbwidget/data/SportWidgetPeriodicWorker$doWork$1;->L$0:Ljava/lang/Object;

    iput-object v3, v1, Lcom/transsion/mbwidget/data/SportWidgetPeriodicWorker$doWork$1;->L$1:Ljava/lang/Object;

    iput-object p1, v1, Lcom/transsion/mbwidget/data/SportWidgetPeriodicWorker$doWork$1;->L$2:Ljava/lang/Object;

    iput v0, v1, Lcom/transsion/mbwidget/data/SportWidgetPeriodicWorker$doWork$1;->label:I

    invoke-virtual {v5, v1}, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->g(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_4

    return-object v2

    :cond_4
    move-object v1, p0

    move-object v2, p1

    :goto_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    array-length p1, v2

    const/4 v5, 0x0

    move v12, v5

    :goto_2
    if-ge v12, p1, :cond_5

    aget v8, v2, v12

    sget-object v5, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider;->a:Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;

    invoke-virtual {v1}, Landroidx/work/s;->a()Landroid/content/Context;

    move-result-object v6

    const-string v7, "getApplicationContext(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const/16 v10, 0x8

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v7, v3

    invoke-static/range {v5 .. v11}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;->r(Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IZILjava/lang/Object;)V

    add-int/2addr v12, v0

    goto :goto_2

    :cond_5
    sget-object p1, Llg/a;->a:Llg/a$a;

    array-length v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SportWidgetPeriodicWorker: refreshed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sport widget(s)"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v4, v1, v0}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Landroidx/work/s$a;->c()Landroidx/work/s$a;

    move-result-object p1

    :goto_3
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :goto_4
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_5
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_6

    :cond_6
    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SportWidgetPeriodicWorker error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v1, "SportWidget"

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Llg/a$a;->k(Llg/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    invoke-static {}, Landroidx/work/s$a;->a()Landroidx/work/s$a;

    move-result-object p1

    const-string v0, "failure(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_6
    return-object p1
.end method
