.class public final Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$a;,
        Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$b;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;Landroid/widget/RemoteViews;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;->e(Landroid/widget/RemoteViews;II)V

    return-void
.end method

.method public static final synthetic b(Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;Landroid/content/Context;Landroid/widget/RemoteViews;ILcom/transsion/mbwidget/data/SportMatch;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;->f(Landroid/content/Context;Landroid/widget/RemoteViews;ILcom/transsion/mbwidget/data/SportMatch;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;Landroid/widget/RemoteViews;ILjava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;->m(Landroid/widget/RemoteViews;ILjava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;->p(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    return-void
.end method

.method private final e(Landroid/widget/RemoteViews;II)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/transsion/mbwidget/R$id;->widget_upcoming_container:I

    int-to-float p2, p2

    const/4 v1, 0x1

    invoke-static {p1, v0, p2, v1}, Lcom/transsion/mbwidget/e;->a(Landroid/widget/RemoteViews;IFI)V

    sget v0, Lcom/transsion/mbwidget/R$id;->widget_upcoming_container:I

    int-to-float p3, p3

    invoke-static {p1, v0, p3, v1}, Lcom/transsion/mbwidget/f;->a(Landroid/widget/RemoteViews;IFI)V

    sget v0, Lcom/transsion/mbwidget/R$id;->widget_default_container:I

    invoke-static {p1, v0, p2, v1}, Lcom/transsion/mbwidget/e;->a(Landroid/widget/RemoteViews;IFI)V

    sget p2, Lcom/transsion/mbwidget/R$id;->widget_default_container:I

    invoke-static {p1, p2, p3, v1}, Lcom/transsion/mbwidget/f;->a(Landroid/widget/RemoteViews;IFI)V

    return-void
.end method

.method private final f(Landroid/content/Context;Landroid/widget/RemoteViews;ILcom/transsion/mbwidget/data/SportMatch;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    move-object/from16 v0, p5

    instance-of v1, v0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$bindMatch$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$bindMatch$1;

    iget v2, v1, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$bindMatch$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$bindMatch$1;->label:I

    :goto_0
    move-object v9, v1

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$bindMatch$1;

    invoke-direct {v1, v6, v0}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$bindMatch$1;-><init>(Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object v0, v9, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$bindMatch$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v10

    iget v1, v9, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$bindMatch$1;->label:I

    const/16 v11, 0x1c

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v13, :cond_2

    if-ne v1, v12, :cond_1

    iget v1, v9, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$bindMatch$1;->I$0:I

    iget-object v2, v9, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$bindMatch$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/mbwidget/data/SportMatch;

    iget-object v3, v9, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$bindMatch$1;->L$1:Ljava/lang/Object;

    check-cast v3, Landroid/widget/RemoteViews;

    iget-object v4, v9, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$bindMatch$1;->L$0:Ljava/lang/Object;

    check-cast v4, Landroid/content/Context;

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v15, v1

    move-object v7, v3

    move-object v1, v4

    goto/16 :goto_7

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v1, v9, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$bindMatch$1;->I$0:I

    iget-object v2, v9, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$bindMatch$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/mbwidget/data/SportMatch;

    iget-object v3, v9, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$bindMatch$1;->L$1:Ljava/lang/Object;

    check-cast v3, Landroid/widget/RemoteViews;

    iget-object v4, v9, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$bindMatch$1;->L$0:Ljava/lang/Object;

    check-cast v4, Landroid/content/Context;

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v15, v1

    move-object v8, v2

    move-object v7, v3

    move-object v14, v4

    goto/16 :goto_6

    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    if-nez v8, :cond_4

    invoke-direct/range {p0 .. p3}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;->p(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_4
    sget-object v14, Llg/a;->a:Llg/a$a;

    invoke-virtual/range {p4 .. p4}, Lcom/transsion/mbwidget/data/SportMatch;->getMatchId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The match data is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x4

    const/16 v19, 0x0

    const-string v15, "SportWidget_"

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->a:Lcom/transsion/mbwidget/data/SportWidgetDataManager;

    invoke-virtual {v0, v8}, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->m(Lcom/transsion/mbwidget/data/SportMatch;)Z

    move-result v1

    invoke-virtual {v0, v8}, Lcom/transsion/mbwidget/data/SportWidgetDataManager;->l(Lcom/transsion/mbwidget/data/SportMatch;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v1, :cond_5

    if-nez v0, :cond_5

    move v0, v13

    goto :goto_2

    :cond_5
    move v0, v2

    :goto_2
    sget v1, Lcom/transsion/mbwidget/R$id;->widget_upcoming_container:I

    invoke-virtual {v7, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v1, Lcom/transsion/mbwidget/R$id;->widget_default_container:I

    const/16 v3, 0x8

    invoke-virtual {v7, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v1, Lcom/transsion/mbwidget/R$id;->widget_upcoming_label:I

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    move v2, v3

    :goto_3
    invoke-virtual {v7, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual/range {p4 .. p4}, Lcom/transsion/mbwidget/data/SportMatch;->getSportType()Lcom/transsion/mbwidget/data/SportType;

    move-result-object v0

    sget-object v1, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v13, :cond_9

    if-eq v0, v12, :cond_8

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const-string v0, "cricket"

    :goto_4
    move-object v5, v0

    goto :goto_5

    :cond_7
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_8
    const-string v0, "basketball"

    goto :goto_4

    :cond_9
    const-string v0, "football"

    goto :goto_4

    :goto_5
    sget v3, Lcom/transsion/mbwidget/R$id;->widget_upcoming_container:I

    sget v4, Lcom/transsion/mbwidget/R$id;->widget_bg_layer2:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;->n(Landroid/content/Context;Landroid/widget/RemoteViews;IILjava/lang/String;)V

    sget v0, Lcom/transsion/mbwidget/R$id;->widget_match_time:I

    invoke-virtual/range {p4 .. p4}, Lcom/transsion/mbwidget/data/SportMatch;->getMatchTime()J

    move-result-wide v1

    invoke-direct {v6, v1, v2}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;->g(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget v0, Lcom/transsion/mbwidget/R$id;->widget_team1_name:I

    invoke-virtual/range {p4 .. p4}, Lcom/transsion/mbwidget/data/SportMatch;->getTeam1Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget v0, Lcom/transsion/mbwidget/R$id;->widget_team2_name:I

    invoke-virtual/range {p4 .. p4}, Lcom/transsion/mbwidget/data/SportMatch;->getTeam2Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget v2, Lcom/transsion/mbwidget/R$id;->widget_team1_logo:I

    invoke-virtual/range {p4 .. p4}, Lcom/transsion/mbwidget/data/SportMatch;->getTeam1Logo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11}, Ldk/a;->b(I)I

    move-result v4

    move-object/from16 v14, p1

    iput-object v14, v9, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$bindMatch$1;->L$0:Ljava/lang/Object;

    iput-object v7, v9, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$bindMatch$1;->L$1:Ljava/lang/Object;

    iput-object v8, v9, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$bindMatch$1;->L$2:Ljava/lang/Object;

    move/from16 v15, p3

    iput v15, v9, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$bindMatch$1;->I$0:I

    iput v13, v9, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$bindMatch$1;->label:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;->m(Landroid/widget/RemoteViews;ILjava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_a

    return-object v10

    :cond_a
    :goto_6
    sget v2, Lcom/transsion/mbwidget/R$id;->widget_team2_logo:I

    invoke-virtual {v8}, Lcom/transsion/mbwidget/data/SportMatch;->getTeam2Logo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11}, Ldk/a;->b(I)I

    move-result v4

    iput-object v14, v9, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$bindMatch$1;->L$0:Ljava/lang/Object;

    iput-object v7, v9, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$bindMatch$1;->L$1:Ljava/lang/Object;

    iput-object v8, v9, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$bindMatch$1;->L$2:Ljava/lang/Object;

    iput v15, v9, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$bindMatch$1;->I$0:I

    iput v12, v9, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$bindMatch$1;->label:I

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;->m(Landroid/widget/RemoteViews;ILjava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_b

    return-object v10

    :cond_b
    move-object v2, v8

    move-object v1, v14

    :goto_7
    invoke-virtual {v2}, Lcom/transsion/mbwidget/data/SportMatch;->getDeeplink()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/transsion/mbwidget/data/SportMatch;->getMatchId()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_d

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_8

    :cond_c
    const-string v5, "match"

    move-object/from16 v0, p0

    move v2, v15

    invoke-direct/range {v0 .. v5}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;->j(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    sget v1, Lcom/transsion/mbwidget/R$id;->widget_root:I

    invoke-virtual {v7, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_9

    :cond_d
    :goto_8
    sget v0, Lcom/transsion/mbwidget/R$id;->widget_root:I

    invoke-direct {v6, v1, v15}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;->i(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :goto_9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method private final g(J)Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne v3, p1, :cond_0

    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "HH:mm"

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p1, p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "MM/dd HH:mm"

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p1, p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    :goto_0
    return-object p1
.end method

.method private final h(Landroid/os/Bundle;)Lkotlin/Pair;
    .locals 7

    const-string v0, "appWidgetMinWidth"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "appWidgetMinHeight"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "appWidgetMaxHeight"

    invoke-virtual {p1, v3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8a

    :goto_0
    const/16 v3, 0x91

    if-lez v2, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1f

    if-lt v5, v6, :cond_9

    const-string v2, "appWidgetSizes"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v1

    check-cast v2, Landroid/util/SizeF;

    invoke-virtual {v2}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    int-to-float v0, v0

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/util/SizeF;

    invoke-virtual {v4}, Landroid/util/SizeF;->getWidth()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-lez v5, :cond_5

    move-object v1, v3

    move v2, v4

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    :goto_2
    check-cast v1, Landroid/util/SizeF;

    invoke-virtual {v1}, Landroid/util/SizeF;->getWidth()F

    move-result p1

    float-to-int v0, p1

    invoke-virtual {v1}, Landroid/util/SizeF;->getHeight()F

    move-result p1

    float-to-int v1, p1

    goto :goto_5

    :cond_6
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    :cond_7
    :goto_3
    if-lez v1, :cond_8

    goto :goto_5

    :cond_8
    move v1, v4

    goto :goto_5

    :cond_9
    if-lez v1, :cond_a

    move v2, v1

    goto :goto_4

    :cond_a
    if-lez v2, :cond_b

    goto :goto_4

    :cond_b
    move v2, v3

    :goto_4
    move v1, v2

    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method private final i(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 6

    const/4 v4, 0x0

    const-string v5, "root"

    const-string v3, ""

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;->j(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private final j(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.transsion.mbwidget.sport.ACTION_CLICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "key_deeplink_widget"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "key_module_name"

    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "key_match_id_widget"

    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :goto_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1f

    if-lt p2, p3, :cond_2

    const/high16 p2, 0xc000000

    goto :goto_1

    :cond_2
    const/high16 p2, 0x8000000

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    long-to-int p3, p3

    invoke-static {p1, p3, v0, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "getBroadcast(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p3, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method static synthetic l(Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const-string p3, "mipmap"

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private final m(Landroid/widget/RemoteViews;ILjava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p5, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1;

    iget v1, v0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1;

    invoke-direct {v0, p0, p5}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1;-><init>(Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p5, v0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p2, v0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1;->I$0:I

    iget-object p1, v0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1;->L$1:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Ljava/lang/String;

    iget-object p1, v0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroid/widget/RemoteViews;

    :try_start_0
    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v3, p1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    if-eqz p3, :cond_6

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p5

    if-nez p5, :cond_3

    goto :goto_4

    :cond_3
    :try_start_1
    sget-object p5, Lcom/transsion/mbwidget/data/WidgetDataManager;->a:Lcom/transsion/mbwidget/data/WidgetDataManager;

    iput-object p1, v0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1;->L$1:Ljava/lang/Object;

    iput p2, v0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1;->I$0:I

    iput v3, v0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1;->label:I

    invoke-virtual {p5, p3, p4, v0}, Lcom/transsion/mbwidget/data/WidgetDataManager;->k(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p5, Landroid/graphics/Bitmap;

    if-eqz p5, :cond_5

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p4

    if-nez p4, :cond_5

    invoke-virtual {p1, p2, p5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_3

    :cond_5
    sget-object v0, Llg/a;->a:Llg/a$a;

    const-string v1, "SportWidget_"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to load team logo: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_2
    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Error loading team logo ("

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "): "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v1, "SportWidget_"

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Llg/a$a;->k(Llg/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_6
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private final n(Landroid/content/Context;Landroid/widget/RemoteViews;IILjava/lang/String;)V
    .locals 9

    const-string v0, "bg_"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_layer1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v8}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;->l(Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "setBackgroundResource"

    invoke-virtual {p2, p3, v2, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v3, p1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_layer2"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;->l(Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2, p4, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error in dual layer rendering ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "): "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v1, "SportWidget_"

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Llg/a$a;->k(Llg/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    :cond_1
    :goto_2
    return-void
.end method

.method private final o(II)Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$a;
    .locals 7

    new-instance v0, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$a;

    const/16 v1, 0x91

    const-string v2, "4x6"

    const/16 v3, 0x8a

    invoke-direct {v0, v2, v3, v1}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$a;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$a;

    const-string v2, "4x7"

    const/16 v4, 0x8b

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$a;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$a;

    const-string v4, "5x6"

    const/16 v5, 0x72

    invoke-direct {v2, v4, v5, v3}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$a;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$a;

    const/16 v4, 0xb0

    const/16 v5, 0xae

    const-string v6, "5x9"

    invoke-direct {v3, v6, v4, v5}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$a;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x4

    new-array v4, v4, [Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$a;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$a;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v2, 0x7fffffff

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$a;

    invoke-virtual {v4}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$a;->c()I

    move-result v5

    sub-int/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {v4}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$a;->a()I

    move-result v6

    sub-int/2addr v6, p2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-lt v5, v2, :cond_1

    if-ne v5, v2, :cond_0

    if-ge v6, v3, :cond_0

    :cond_1
    move-object v1, v4

    move v2, v5

    move v3, v6

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private final p(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    .locals 8

    sget v0, Lcom/transsion/mbwidget/R$id;->widget_upcoming_container:I

    const/16 v1, 0x8

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v0, Lcom/transsion/mbwidget/R$id;->widget_default_container:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v5, Lcom/transsion/mbwidget/R$id;->widget_default_container:I

    sget v6, Lcom/transsion/mbwidget/R$id;->widget_fallback_layer2:I

    const-string v7, "default"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;->n(Landroid/content/Context;Landroid/widget/RemoteViews;IILjava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;->i(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p1

    sget p3, Lcom/transsion/mbwidget/R$id;->widget_watch_now_btn:I

    invoke-virtual {p2, p3, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    sget p3, Lcom/transsion/mbwidget/R$id;->widget_root:I

    invoke-virtual {p2, p3, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method public static synthetic r(Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;->q(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IZ)V

    return-void
.end method


# virtual methods
.method public final q(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IZ)V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "context"

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "appWidgetManager"

    move-object/from16 v8, p2

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Llg/a;->a:Llg/a$a;

    const/4 v13, 0x4

    const/4 v14, 0x0

    const-string v10, "SportWidget_"

    const-string v11, "=== Widget Size Debug ==="

    const/4 v12, 0x0

    move-object v9, v2

    invoke-static/range {v9 .. v14}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const-string v4, "appWidgetMinWidth"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v6, "appWidgetMinHeight"

    invoke-virtual {v1, v6, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Raw size from system: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "dp x "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "dp"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v15, "SportWidget_"

    const/4 v14, 0x1

    invoke-virtual {v2, v15, v7, v14}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v7, 0x0

    const-string v10, "SportWidget_"

    const-string v11, "Design table standard (4x6): 138dp x 145dp"

    move-object v9, v2

    move-object v14, v7

    invoke-static/range {v9 .. v14}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const-string v7, "appWidgetMaxWidth"

    invoke-virtual {v1, v7, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string v9, "appWidgetMaxHeight"

    invoke-virtual {v1, v9, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Max size from system: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    const-string v10, "SportWidget_"

    move-object v9, v2

    invoke-static/range {v9 .. v14}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1f

    if-lt v5, v7, :cond_0

    const-string v5, "appWidgetSizes"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SizeF options: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x4

    const/4 v14, 0x0

    const-string v10, "SportWidget_"

    const/4 v12, 0x0

    move-object v9, v2

    invoke-static/range {v9 .. v14}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;->h(Landroid/os/Bundle;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-direct {v0, v5, v1}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;->o(II)Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$a;->c()I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-virtual {v7}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$a;->a()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f400000    # 0.75f

    mul-float/2addr v9, v10

    float-to-int v13, v9

    invoke-virtual {v7}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$a;->a()I

    move-result v9

    invoke-static {v1, v13, v9}, Lkotlin/ranges/RangesKt;->m(III)I

    move-result v12

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Base size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v1, 0x4

    const/4 v5, 0x0

    const-string v10, "SportWidget_"

    const/4 v6, 0x0

    move-object v9, v2

    move/from16 v16, v12

    move v12, v6

    move v6, v13

    move v13, v1

    move v1, v14

    move-object v14, v5

    invoke-static/range {v9 .. v14}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {v7}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$a;->c()I

    move-result v9

    invoke-virtual {v7}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$a;->a()I

    move-result v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Reference size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "dp)"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v2, v15, v5, v7}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Applied size: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v16

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "dp (minContentHeight="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v15, v5, v7}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v13, 0x4

    const/4 v14, 0x0

    const-string v10, "SportWidget_"

    const-string v11, "========================"

    const/4 v12, 0x0

    move-object v9, v2

    invoke-static/range {v9 .. v14}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v10

    new-instance v11, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;

    const/4 v9, 0x0

    move-object v2, v11

    move-object/from16 v3, p1

    move v5, v4

    move v4, v1

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v9}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion$updateWidget$1;-><init>(Landroid/content/Context;IIIZLandroid/appwidget/AppWidgetManager;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x3

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v10

    move-object v8, v11

    move-object v10, v1

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
