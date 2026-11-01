.class public final Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/mbwidget/HotSubjectWidgetProvider;
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

    invoke-direct {p0}, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion;Landroid/content/Context;Landroid/widget/RemoteViews;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion;->c(Landroid/content/Context;Landroid/widget/RemoteViews;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion;->d(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final c(Landroid/content/Context;Landroid/widget/RemoteViews;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    instance-of v3, v2, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;

    iget v4, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->label:I

    move-object/from16 v4, p0

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;

    move-object/from16 v4, p0

    invoke-direct {v3, v4, v2}, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;-><init>(Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v5

    iget v6, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->label:I

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v6, :cond_5

    if-eq v6, v10, :cond_4

    if-eq v6, v9, :cond_3

    if-eq v6, v8, :cond_2

    if-ne v6, v7, :cond_1

    iget v0, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->I$0:I

    iget-object v1, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    iget-object v5, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->L$1:Ljava/lang/Object;

    check-cast v5, Landroid/widget/RemoteViews;

    iget-object v3, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->L$0:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v1

    move-object v1, v5

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    move-object v1, v5

    goto/16 :goto_a

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->I$1:I

    iget v1, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->I$0:I

    iget-object v6, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->L$4:Ljava/lang/Object;

    check-cast v6, Lcom/transsion/moviedetailapi/bean/Subject;

    iget-object v11, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->L$3:Ljava/lang/Object;

    check-cast v11, Ljava/util/Iterator;

    iget-object v12, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->L$2:Ljava/lang/Object;

    check-cast v12, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    iget-object v13, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->L$1:Ljava/lang/Object;

    check-cast v13, Landroid/widget/RemoteViews;

    iget-object v14, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->L$0:Ljava/lang/Object;

    check-cast v14, Landroid/content/Context;

    :try_start_1
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    move-object v1, v13

    goto/16 :goto_a

    :cond_3
    iget v0, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->I$0:I

    iget-object v1, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    iget-object v6, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->L$1:Ljava/lang/Object;

    check-cast v6, Landroid/widget/RemoteViews;

    iget-object v11, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->L$0:Ljava/lang/Object;

    check-cast v11, Landroid/content/Context;

    :try_start_2
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v17, v6

    move-object v6, v1

    move-object/from16 v1, v17

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v6

    goto/16 :goto_a

    :cond_4
    iget v0, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->I$0:I

    iget-object v1, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v6, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->L$1:Ljava/lang/Object;

    check-cast v6, Landroid/widget/RemoteViews;

    iget-object v11, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->L$0:Ljava/lang/Object;

    check-cast v11, Landroid/content/Context;

    :try_start_3
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v17, v2

    move-object v2, v1

    move-object v1, v6

    move-object/from16 v6, v17

    goto :goto_1

    :cond_5
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget v2, Lcom/transsion/mbwidget/R$id;->bg_search:I

    sget-object v6, Lcom/transsion/mbwidget/data/WidgetDataManager;->a:Lcom/transsion/mbwidget/data/WidgetDataManager;

    invoke-static/range {p3 .. p3}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v0, v10, v11}, Lcom/transsion/mbwidget/data/WidgetDataManager;->s(Landroid/content/Context;ZLjava/lang/Integer;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v1, v2, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    sget v2, Lcom/transsion/mbwidget/R$id;->ic_refresh:I

    invoke-static/range {p3 .. p3}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v0, v10, v11}, Lcom/transsion/mbwidget/data/WidgetDataManager;->q(Landroid/content/Context;ZLjava/lang/Integer;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v1, v2, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    sget v2, Lcom/transsion/mbwidget/R$id;->widget_root:I

    invoke-static/range {p3 .. p3}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v0, v10, v11}, Lcom/transsion/mbwidget/data/WidgetDataManager;->m(Landroid/content/Context;ZLjava/lang/Integer;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v1, v2, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :try_start_4
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iput-object v0, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->L$0:Ljava/lang/Object;

    iput-object v1, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->L$1:Ljava/lang/Object;

    move-object/from16 v2, p4

    iput-object v2, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->L$2:Ljava/lang/Object;

    move/from16 v11, p3

    iput v11, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->I$0:I

    iput v10, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->label:I

    invoke-virtual {v6, v3}, Lcom/transsion/mbwidget/data/WidgetDataManager;->p(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v5, :cond_6

    return-object v5

    :cond_6
    move/from16 v17, v11

    move-object v11, v0

    move/from16 v0, v17

    :goto_1
    check-cast v6, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    if-nez v6, :cond_7

    sget-object v6, Lcom/transsion/mbwidget/data/WidgetDataManager;->a:Lcom/transsion/mbwidget/data/WidgetDataManager;

    invoke-virtual {v6}, Lcom/transsion/mbwidget/data/WidgetDataManager;->j()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    move-result-object v6

    goto :goto_2

    :catchall_3
    move-exception v0

    goto/16 :goto_a

    :cond_7
    :goto_2
    sget-object v12, Lcom/transsion/mbwidget/data/WidgetDataManager;->a:Lcom/transsion/mbwidget/data/WidgetDataManager;

    invoke-virtual {v6}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectId()Ljava/lang/String;

    move-result-object v13

    iput-object v11, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->L$0:Ljava/lang/Object;

    iput-object v1, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->L$1:Ljava/lang/Object;

    iput-object v6, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->L$2:Ljava/lang/Object;

    iput v0, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->I$0:I

    iput v9, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->label:I

    invoke-virtual {v12, v13, v2, v3}, Lcom/transsion/mbwidget/data/WidgetDataManager;->u(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_8

    return-object v5

    :cond_8
    :goto_3
    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/transsion/mbwidget/data/b;

    invoke-virtual {v12}, Lcom/transsion/mbwidget/data/b;->a()I

    move-result v14

    if-le v14, v9, :cond_9

    goto/16 :goto_8

    :cond_9
    invoke-virtual {v12}, Lcom/transsion/mbwidget/data/b;->b()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v14

    invoke-virtual {v12}, Lcom/transsion/mbwidget/data/b;->a()I

    move-result v12

    invoke-static {}, Lcom/transsion/mbwidget/HotSubjectWidgetProvider;->d()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    invoke-virtual {v14}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v15, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {}, Lcom/transsion/mbwidget/HotSubjectWidgetProvider;->c()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-virtual {v14}, Lcom/transsion/moviedetailapi/bean/Subject;->getCorner()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v9, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {}, Lcom/transsion/mbwidget/HotSubjectWidgetProvider;->c()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-virtual {v14}, Lcom/transsion/moviedetailapi/bean/Subject;->getCorner()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_b

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-nez v15, :cond_a

    goto :goto_5

    :cond_a
    const/4 v15, 0x0

    goto :goto_6

    :cond_b
    :goto_5
    const/16 v15, 0x8

    :goto_6
    invoke-virtual {v1, v9, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget-object v9, Lcom/transsion/mbwidget/HotSubjectWidgetProvider;->a:Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion;

    invoke-virtual {v14}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v15

    if-eqz v15, :cond_c

    invoke-virtual {v15}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v13

    :cond_c
    iput-object v11, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->L$0:Ljava/lang/Object;

    iput-object v1, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->L$1:Ljava/lang/Object;

    iput-object v6, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->L$2:Ljava/lang/Object;

    iput-object v2, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->L$3:Ljava/lang/Object;

    iput-object v14, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->L$4:Ljava/lang/Object;

    iput v0, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->I$0:I

    iput v12, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->I$1:I

    iput v8, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->label:I

    invoke-direct {v9, v13, v12, v3}, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion;->d(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-ne v9, v5, :cond_d

    return-object v5

    :cond_d
    move-object v13, v1

    move v1, v0

    move v0, v12

    move-object v12, v6

    move-object v6, v14

    move-object v14, v11

    move-object v11, v2

    move-object v2, v9

    :goto_7
    :try_start_5
    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/transsion/mbwidget/HotSubjectWidgetProvider;->a()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-virtual {v13, v9, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/transsion/mbwidget/HotSubjectWidgetProvider;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    sget-object v2, Lcom/transsion/mbwidget/data/WidgetDataManager;->a:Lcom/transsion/mbwidget/data/WidgetDataManager;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v14, v10, v9, v15}, Lcom/transsion/mbwidget/data/WidgetDataManager;->v(Landroid/content/Context;ZLjava/lang/Integer;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v13, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    sget-object v0, Lcom/transsion/mbwidget/utils/a;->a:Lcom/transsion/mbwidget/utils/a;

    const-string v2, "subject"

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v2, v9, v6}, Lcom/transsion/mbwidget/utils/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v0, v1

    move-object v2, v11

    move-object v6, v12

    move-object v1, v13

    move-object v11, v14

    :goto_8
    const/4 v9, 0x2

    goto/16 :goto_4

    :cond_e
    :try_start_6
    sget v2, Lcom/transsion/mbwidget/R$id;->work_title4:I

    invoke-virtual {v6}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v2, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget-object v2, Lcom/transsion/mbwidget/HotSubjectWidgetProvider;->a:Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion;

    invoke-virtual {v6}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v8

    iput-object v11, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->L$0:Ljava/lang/Object;

    iput-object v1, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->L$1:Ljava/lang/Object;

    iput-object v6, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->L$2:Ljava/lang/Object;

    iput-object v13, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->L$3:Ljava/lang/Object;

    iput-object v13, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->L$4:Ljava/lang/Object;

    iput v0, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->I$0:I

    iput v7, v3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$bindList$1;->label:I

    const/16 v7, 0xb

    invoke-direct {v2, v8, v7, v3}, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion;->d(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_f

    return-object v5

    :cond_f
    move-object v3, v11

    :goto_9
    check-cast v2, Landroid/graphics/Bitmap;

    sget v5, Lcom/transsion/mbwidget/R$id;->work_img4:I

    invoke-virtual {v1, v5, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    sget-object v11, Lcom/transsion/mbwidget/utils/a;->a:Lcom/transsion/mbwidget/utils/a;

    const-string v12, "subject"

    invoke-virtual {v6}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectId()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lcom/transsion/mbwidget/utils/a;->j(Lcom/transsion/mbwidget/utils/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    sget v2, Lcom/transsion/mbwidget/R$id;->work_root4:I

    sget-object v5, Lcom/transsion/mbwidget/data/WidgetDataManager;->a:Lcom/transsion/mbwidget/data/WidgetDataManager;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v10, v0, v6}, Lcom/transsion/mbwidget/data/WidgetDataManager;->v(Landroid/content/Context;ZLjava/lang/Integer;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_b

    :goto_a
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_b
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_10

    sget-object v2, Llg/a;->a:Llg/a$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hot- error:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "DeskWidget_"

    invoke-virtual {v2, v3, v0, v10}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_10
    sget v0, Lcom/transsion/mbwidget/R$id;->widget_search_tv:I

    sget-object v2, Lcom/transsion/mbwidget/data/WidgetDataManager;->a:Lcom/transsion/mbwidget/data/WidgetDataManager;

    invoke-virtual {v2}, Lcom/transsion/mbwidget/data/WidgetDataManager;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget-object v0, Lcom/transsion/mbwidget/utils/a;->a:Lcom/transsion/mbwidget/utils/a;

    const/4 v9, 0x6

    const/4 v10, 0x0

    const-string v6, "search"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v0

    invoke-static/range {v5 .. v10}, Lcom/transsion/mbwidget/utils/a;->j(Lcom/transsion/mbwidget/utils/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    const-string v6, "root"

    invoke-static/range {v5 .. v10}, Lcom/transsion/mbwidget/utils/a;->j(Lcom/transsion/mbwidget/utils/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method private final d(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p3, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$getCoverBitmap$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$getCoverBitmap$1;

    iget v1, v0, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$getCoverBitmap$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$getCoverBitmap$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$getCoverBitmap$1;

    invoke-direct {v0, p0, p3}, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$getCoverBitmap$1;-><init>(Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$getCoverBitmap$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$getCoverBitmap$1;->label:I

    const/16 v3, 0x44

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget p2, v0, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$getCoverBitmap$1;->I$0:I

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p3, Lcom/transsion/mbwidget/data/WidgetDataManager;->a:Lcom/transsion/mbwidget/data/WidgetDataManager;

    invoke-static {v3}, Ldk/a;->b(I)I

    move-result v2

    iput p2, v0, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$getCoverBitmap$1;->I$0:I

    iput v4, v0, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$getCoverBitmap$1;->label:I

    invoke-virtual {p3, p1, v2, v0}, Lcom/transsion/mbwidget/data/WidgetDataManager;->k(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Landroid/graphics/Bitmap;

    sget-object p1, Llg/a;->a:Llg/a$a;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindList, i:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", bitmap:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DeskWidget_"

    invoke-virtual {p1, v0, p2, v4}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    if-nez p1, :cond_6

    :cond_5
    sget-object p1, Lcom/transsion/mbwidget/utils/BitmapUtils;->a:Lcom/transsion/mbwidget/utils/BitmapUtils;

    invoke-virtual {p1}, Lcom/transsion/mbwidget/utils/BitmapUtils;->c()Landroid/graphics/Bitmap;

    move-result-object p3

    :cond_6
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v4

    invoke-static {v3}, Ldk/a;->b(I)I

    move-result v6

    const/16 p1, 0x5f

    invoke-static {p1}, Ldk/a;->b(I)I

    move-result v7

    const/4 p1, 0x5

    invoke-static {p1}, Ldk/a;->b(I)I

    move-result v9

    const/4 v8, 0x0

    move-object v5, p3

    invoke-static/range {v4 .. v9}, Lkg/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;IIZI)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    move-object p3, p1

    :goto_3
    return-object p3
.end method

.method public static synthetic f(Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion;->e(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final e(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILjava/lang/String;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appWidgetManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v0, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$updateWidget$1;

    const/4 v7, 0x0

    move-object v2, v0

    move v3, p3

    move-object v4, p4

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/transsion/mbwidget/HotSubjectWidgetProvider$Companion$updateWidget$1;-><init>(ILjava/lang/String;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
