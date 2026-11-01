.class public final Lcom/transsion/mbwidget/data/WidgetRefreshWorker$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/mbwidget/data/WidgetRefreshWorker;
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

    invoke-direct {p0}, Lcom/transsion/mbwidget/data/WidgetRefreshWorker$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 14

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v1, Lcom/transsion/gslb/GslbSdk;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    sget-object v2, Lcom/transsion/mbwidget/data/WidgetDataManager;->a:Lcom/transsion/mbwidget/data/WidgetDataManager;

    invoke-virtual {v2}, Lcom/transsion/mbwidget/data/WidgetDataManager;->y()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, "context"

    const/4 v10, 0x0

    if-eqz v2, :cond_1

    :try_start_1
    new-instance v2, Landroid/content/ComponentName;

    sget-object v3, Lcom/transsion/gslb/GslbSdk;->context:Landroid/content/Context;

    const-class v4, Lcom/transsion/mbwidget/HotSubjectWidgetProvider;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v11

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    array-length v2, v11

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v10

    :goto_0
    if-nez v2, :cond_1

    array-length v12, v11

    move v13, v10

    :goto_1
    if-ge v13, v12, :cond_1

    aget v5, v11, v13

    sget-object v2, Lcom/transsion/mbwidget/HotSubjectWidgetProvider;->a:Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion;

    sget-object v3, Lcom/transsion/gslb/GslbSdk;->context:Landroid/content/Context;

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v4, v1

    invoke-static/range {v2 .. v8}, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion;->f(Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILjava/lang/String;ILjava/lang/Object;)V

    add-int/2addr v13, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_1
    new-instance v2, Landroid/content/ComponentName;

    sget-object v3, Lcom/transsion/gslb/GslbSdk;->context:Landroid/content/Context;

    const-class v4, Lcom/transsion/mbwidget/PlayWidgetProvider;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    array-length v3, v2

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    move v3, v10

    :goto_2
    if-nez v3, :cond_3

    array-length v3, v2

    :goto_3
    if-ge v10, v3, :cond_3

    aget v4, v2, v10

    sget-object v5, Lcom/transsion/mbwidget/PlayWidgetProvider;->a:Lcom/transsion/mbwidget/PlayWidgetProvider$Companion;

    sget-object v6, Lcom/transsion/gslb/GslbSdk;->context:Landroid/content/Context;

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v1, v4}, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion;->c(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    add-int/2addr v10, v0

    goto :goto_3

    :cond_3
    sget-object v1, Llg/a;->a:Llg/a$a;

    const-string v2, "DeskWidget_"

    const-string v3, "doWork, refresh completed"

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :goto_4
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    return-void
.end method
