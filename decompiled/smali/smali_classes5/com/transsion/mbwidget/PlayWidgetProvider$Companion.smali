.class public final Lcom/transsion/mbwidget/PlayWidgetProvider$Companion;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/mbwidget/PlayWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/mbwidget/PlayWidgetProvider$Companion;Landroid/content/Context;Landroid/widget/RemoteViews;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion;->b(Landroid/content/Context;Landroid/widget/RemoteViews;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final b(Landroid/content/Context;Landroid/widget/RemoteViews;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p4

    instance-of v1, v0, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$bindHistory$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$bindHistory$1;

    iget v2, v1, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$bindHistory$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$bindHistory$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$bindHistory$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$bindHistory$1;-><init>(Lcom/transsion/mbwidget/PlayWidgetProvider$Companion;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$bindHistory$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v3

    iget v4, v1, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$bindHistory$1;->label:I

    const/16 v5, 0x9a

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v9, :cond_1

    iget v3, v1, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$bindHistory$1;->I$0:I

    iget-object v4, v1, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$bindHistory$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v1, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$bindHistory$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    iget-object v10, v1, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$bindHistory$1;->L$1:Ljava/lang/Object;

    check-cast v10, Landroid/widget/RemoteViews;

    iget-object v1, v1, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$bindHistory$1;->L$0:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v4, v1, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$bindHistory$1;->I$0:I

    iget-object v6, v1, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$bindHistory$1;->L$1:Ljava/lang/Object;

    check-cast v6, Landroid/widget/RemoteViews;

    iget-object v10, v1, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$bindHistory$1;->L$0:Ljava/lang/Object;

    check-cast v10, Landroid/content/Context;

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v11, v4

    move-object v4, v10

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v0, Lcom/transsion/mbwidget/data/WidgetDataManager;->a:Lcom/transsion/mbwidget/data/WidgetDataManager;

    move-object/from16 v4, p1

    iput-object v4, v1, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$bindHistory$1;->L$0:Ljava/lang/Object;

    move-object/from16 v10, p2

    iput-object v10, v1, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$bindHistory$1;->L$1:Ljava/lang/Object;

    move/from16 v11, p3

    iput v11, v1, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$bindHistory$1;->I$0:I

    iput v6, v1, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$bindHistory$1;->label:I

    invoke-virtual {v0, v1}, Lcom/transsion/mbwidget/data/WidgetDataManager;->p(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_4

    return-object v3

    :cond_4
    move-object v6, v10

    :goto_1
    check-cast v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    :try_start_1
    sget-object v12, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-eqz v0, :cond_8

    sget-object v12, Lcom/transsion/mbwidget/utils/BitmapUtils;->a:Lcom/transsion/mbwidget/utils/BitmapUtils;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v13

    const-string v14, "getApp(...)"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5}, Ldk/a;->b(I)I

    move-result v15

    iput-object v4, v1, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$bindHistory$1;->L$0:Ljava/lang/Object;

    iput-object v6, v1, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$bindHistory$1;->L$1:Ljava/lang/Object;

    iput-object v0, v1, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$bindHistory$1;->L$2:Ljava/lang/Object;

    iput-object v10, v1, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$bindHistory$1;->L$3:Ljava/lang/Object;

    iput v11, v1, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$bindHistory$1;->I$0:I

    iput v9, v1, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$bindHistory$1;->label:I

    invoke-virtual {v12, v13, v14, v15, v1}, Lcom/transsion/mbwidget/utils/BitmapUtils;->d(Landroid/content/Context;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v1, v3, :cond_5

    return-object v3

    :cond_5
    move v3, v11

    move-object/from16 v17, v6

    move-object v6, v0

    move-object v0, v1

    move-object v1, v4

    move-object v4, v10

    move-object/from16 v10, v17

    :goto_2
    :try_start_2
    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v11

    if-nez v11, :cond_6

    goto :goto_4

    :cond_6
    :goto_3
    move-object v12, v0

    goto :goto_5

    :cond_7
    :goto_4
    sget-object v0, Lcom/transsion/mbwidget/utils/BitmapUtils;->a:Lcom/transsion/mbwidget/utils/BitmapUtils;

    sget v11, Lcom/transsion/mbwidget/R$mipmap;->bg_img_widget_small:I

    invoke-virtual {v0, v11}, Lcom/transsion/mbwidget/utils/BitmapUtils;->b(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    :goto_5
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v11

    const/16 v0, 0x8c

    invoke-static {v0}, Ldk/a;->b(I)I

    move-result v13

    invoke-static {v5}, Ldk/a;->b(I)I

    move-result v14

    const/16 v0, 0x10

    invoke-static {v0}, Ldk/a;->b(I)I

    move-result v16

    const/4 v15, 0x0

    invoke-static/range {v11 .. v16}, Lkg/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;IIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    sget v5, Lcom/transsion/mbwidget/R$id;->widget_img:I

    invoke-virtual {v10, v5, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    sget-object v0, Lcom/transsion/mbwidget/data/WidgetDataManager;->a:Lcom/transsion/mbwidget/data/WidgetDataManager;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v1, v7, v5, v11}, Lcom/transsion/mbwidget/data/WidgetDataManager;->v(Landroid/content/Context;ZLjava/lang/Integer;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v0, Lcom/transsion/mbwidget/utils/a;->a:Lcom/transsion/mbwidget/utils/a;

    const-string v5, "subject"

    invoke-virtual {v6}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v5, v11}, Lcom/transsion/mbwidget/utils/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v4

    move-object v4, v10

    move v3, v11

    move-object v10, v6

    goto :goto_7

    :cond_8
    move-object v1, v4

    move-object v4, v10

    move v3, v11

    move-object v10, v6

    :goto_6
    if-nez v0, :cond_9

    sget-object v0, Lcom/transsion/mbwidget/utils/a;->a:Lcom/transsion/mbwidget/utils/a;

    const-string v5, "root"

    invoke-static {v0, v5, v8, v9, v8}, Lcom/transsion/mbwidget/utils/a;->e(Lcom/transsion/mbwidget/utils/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    sget v0, Lcom/transsion/mbwidget/R$id;->widget_img:I

    sget v5, Lcom/transsion/mbwidget/R$mipmap;->bg_img_widget_small:I

    invoke-virtual {v10, v0, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :cond_9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    :goto_7
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    sget v0, Lcom/transsion/mbwidget/R$id;->widget_root:I

    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Landroid/app/PendingIntent;

    if-nez v4, :cond_a

    sget-object v4, Lcom/transsion/mbwidget/data/WidgetDataManager;->a:Lcom/transsion/mbwidget/data/WidgetDataManager;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v7, v5}, Lcom/transsion/mbwidget/data/WidgetDataManager;->m(Landroid/content/Context;ZLjava/lang/Integer;)Landroid/app/PendingIntent;

    move-result-object v4

    :cond_a
    invoke-virtual {v10, v0, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    sget v0, Lcom/transsion/mbwidget/R$id;->widget_search:I

    sget-object v4, Lcom/transsion/mbwidget/data/WidgetDataManager;->a:Lcom/transsion/mbwidget/data/WidgetDataManager;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v1, v7, v3}, Lcom/transsion/mbwidget/data/WidgetDataManager;->s(Landroid/content/Context;ZLjava/lang/Integer;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    sget-object v0, Lcom/transsion/mbwidget/utils/a;->a:Lcom/transsion/mbwidget/utils/a;

    const-string v1, "search"

    invoke-static {v0, v1, v8, v9, v8}, Lcom/transsion/mbwidget/utils/a;->e(Lcom/transsion/mbwidget/utils/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final c(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appWidgetManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$updateWidget$1;

    const/4 v0, 0x0

    invoke-direct {v4, p3, p1, p2, v0}, Lcom/transsion/mbwidget/PlayWidgetProvider$Companion$updateWidget$1;-><init>(ILandroid/content/Context;Landroid/appwidget/AppWidgetManager;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
