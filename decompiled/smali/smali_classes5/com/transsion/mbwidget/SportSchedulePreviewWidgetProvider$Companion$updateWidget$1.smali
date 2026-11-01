.class final Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;->q(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.mbwidget.SportSchedulePreviewWidgetProvider$Companion$updateWidget$1"
    f = "SportSchedulePreviewWidgetProvider.kt"
    l = {
        0xb0,
        0xb2,
        0xba,
        0xc5
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $appWidgetId:I

.field final synthetic $appWidgetManager:Landroid/appwidget/AppWidgetManager;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $hDp:I

.field final synthetic $reportExposure:Z

.field final synthetic $wDp:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroid/content/Context;IIIZLandroid/appwidget/AppWidgetManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIIZ",
            "Landroid/appwidget/AppWidgetManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$context:Landroid/content/Context;

    iput p2, p0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$wDp:I

    iput p3, p0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$hDp:I

    iput p4, p0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$appWidgetId:I

    iput-boolean p5, p0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$reportExposure:Z

    iput-object p6, p0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;

    iget-object v1, p0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$context:Landroid/content/Context;

    iget v2, p0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$wDp:I

    iget v3, p0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$hDp:I

    iget v4, p0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$appWidgetId:I

    iget-boolean v5, p0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$reportExposure:Z

    iget-object v6, p0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;-><init>(Landroid/content/Context;IIIZLandroid/appwidget/AppWidgetManager;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v7, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v8

    iget v0, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->label:I

    const-string v9, "root"

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v12, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    if-eq v0, v11, :cond_1

    if-ne v0, v10, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object/from16 v16, v0

    goto/16 :goto_5

    :cond_2
    iget-object v0, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/mbwidget/data/SportMatch;

    iget-object v1, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->L$0:Ljava/lang/Object;

    check-cast v1, Landroid/widget/RemoteViews;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_3
    iget-object v0, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroid/widget/RemoteViews;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v2, p1

    goto :goto_0

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_3
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v3, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/transsion/mbwidget/R$layout;->widget_sport:I

    invoke-direct {v0, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sget-object v3, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->a:Lcom/transsion/mbwidget/data/SportWidgetDataManager;

    iput-object v0, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->L$0:Ljava/lang/Object;

    iput v2, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->label:I

    invoke-virtual {v3, v7}, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_5

    return-object v8

    :cond_5
    :goto_0
    move-object v13, v2

    check-cast v13, Lcom/transsion/mbwidget/data/SportMatch;

    sget-object v2, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider;->a:Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;

    iget v3, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$wDp:I

    iget v4, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$hDp:I

    invoke-static {v2, v0, v3, v4}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;->a(Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;Landroid/widget/RemoteViews;II)V

    iget-object v3, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$context:Landroid/content/Context;

    iget v4, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$appWidgetId:I

    iput-object v0, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->L$0:Ljava/lang/Object;

    iput-object v13, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->L$1:Ljava/lang/Object;

    iput v1, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->label:I

    move-object v1, v2

    move-object v2, v3

    move-object v3, v0

    move-object v5, v13

    move-object/from16 v6, p0

    invoke-static/range {v1 .. v6}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;->b(Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;Landroid/content/Context;Landroid/widget/RemoteViews;ILcom/transsion/mbwidget/data/SportMatch;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_6

    return-object v8

    :cond_6
    move-object v1, v0

    move-object v0, v13

    :goto_1
    iget-boolean v2, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$reportExposure:Z

    if-eqz v2, :cond_a

    sget-object v2, Lcom/transsion/mbwidget/utils/a;->a:Lcom/transsion/mbwidget/utils/a;

    if-eqz v0, :cond_7

    const-string v3, "match"

    goto :goto_2

    :cond_7
    move-object v3, v9

    :goto_2
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/transsion/mbwidget/data/SportMatch;->getMatchId()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_8
    move-object v4, v12

    :goto_3
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/transsion/mbwidget/data/SportMatch;->getDeeplink()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_9
    move-object v0, v12

    :goto_4
    invoke-virtual {v2, v3, v4, v0}, Lcom/transsion/mbwidget/utils/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    new-instance v2, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1$1;

    iget-object v3, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v4, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$appWidgetId:I

    invoke-direct {v2, v3, v4, v1, v12}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1$1;-><init>(Landroid/appwidget/AppWidgetManager;ILandroid/widget/RemoteViews;Lkotlin/coroutines/Continuation;)V

    iput-object v12, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->L$0:Ljava/lang/Object;

    iput-object v12, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->L$1:Ljava/lang/Object;

    iput v11, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->label:I

    invoke-static {v0, v2, v7}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-ne v0, v8, :cond_c

    return-object v8

    :goto_5
    sget-object v13, Llg/a;->a:Llg/a$a;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWidget error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x8

    const/16 v19, 0x0

    const-string v14, "SportWidget_"

    const/16 v17, 0x0

    invoke-static/range {v13 .. v19}, Llg/a$a;->k(Llg/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/transsion/mbwidget/R$layout;->widget_sport:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sget-object v1, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider;->a:Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;

    iget v2, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$wDp:I

    iget v3, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$hDp:I

    invoke-static {v1, v0, v2, v3}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;->a(Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;Landroid/widget/RemoteViews;II)V

    iget-object v2, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$context:Landroid/content/Context;

    iget v3, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$appWidgetId:I

    invoke-static {v1, v2, v0, v3}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;->d(Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    iget-boolean v1, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$reportExposure:Z

    if-eqz v1, :cond_b

    sget-object v1, Lcom/transsion/mbwidget/utils/a;->a:Lcom/transsion/mbwidget/utils/a;

    invoke-virtual {v1, v9, v12, v12}, Lcom/transsion/mbwidget/utils/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v1

    new-instance v2, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1$2;

    iget-object v3, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v4, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->$appWidgetId:I

    invoke-direct {v2, v3, v4, v0, v12}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1$2;-><init>(Landroid/appwidget/AppWidgetManager;ILandroid/widget/RemoteViews;Lkotlin/coroutines/Continuation;)V

    iput-object v12, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->L$0:Ljava/lang/Object;

    iput-object v12, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->L$1:Ljava/lang/Object;

    iput v10, v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;->label:I

    invoke-static {v1, v2, v7}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_c

    return-object v8

    :cond_c
    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
