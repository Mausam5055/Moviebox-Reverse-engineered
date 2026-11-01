.class final Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$updateWidget$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion;->e(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILjava/lang/String;)V
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
    c = "com.transsion.mbwidget.HotSubjectWidgetProvider$Companion$updateWidget$1"
    f = "HotSubjectWidgetProvider.kt"
    l = {
        0x72,
        0x73
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $appWidgetId:I

.field final synthetic $appWidgetManager:Landroid/appwidget/AppWidgetManager;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $refreshId:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(ILjava/lang/String;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Landroid/appwidget/AppWidgetManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$updateWidget$1;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$updateWidget$1;->$appWidgetId:I

    iput-object p2, p0, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$updateWidget$1;->$refreshId:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$updateWidget$1;->$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$updateWidget$1;->$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$updateWidget$1;

    iget v1, p0, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$updateWidget$1;->$appWidgetId:I

    iget-object v2, p0, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$updateWidget$1;->$refreshId:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$updateWidget$1;->$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$updateWidget$1;->$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$updateWidget$1;-><init>(ILjava/lang/String;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$updateWidget$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$updateWidget$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$updateWidget$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$updateWidget$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$updateWidget$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$updateWidget$1;->L$0:Ljava/lang/Object;

    check-cast v1, Landroid/widget/RemoteViews;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Llg/a;->a:Llg/a$a;

    iget v1, p0, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$updateWidget$1;->$appWidgetId:I

    iget-object v4, p0, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$updateWidget$1;->$refreshId:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HotSubjectWidgetProvider-updateWidget: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -refreshId:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "DeskWidget_"

    invoke-virtual {p1, v4, v1, v3}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v1, Landroid/widget/RemoteViews;

    iget-object p1, p0, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$updateWidget$1;->$context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    sget v4, Lcom/transsion/mbwidget/R$layout;->widget_subject_big:I

    invoke-direct {v1, p1, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sget-object v5, Lcom/transsion/mbwidget/HotSubjectWidgetProvider;->a:Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion;

    iget-object v6, p0, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$updateWidget$1;->$context:Landroid/content/Context;

    iget v8, p0, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$updateWidget$1;->$appWidgetId:I

    iget-object v9, p0, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$updateWidget$1;->$refreshId:Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$updateWidget$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$updateWidget$1;->label:I

    move-object v7, v1

    move-object v10, p0

    invoke-static/range {v5 .. v10}, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion;->a(Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion;Landroid/content/Context;Landroid/widget/RemoteViews;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object p1

    new-instance v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$updateWidget$1$1;

    iget-object v4, p0, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$updateWidget$1;->$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v5, p0, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$updateWidget$1;->$appWidgetId:I

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v1, v6}, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$updateWidget$1$1;-><init>(Landroid/appwidget/AppWidgetManager;ILandroid/widget/RemoteViews;Lkotlin/coroutines/Continuation;)V

    iput-object v6, p0, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$updateWidget$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$updateWidget$1;->label:I

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
