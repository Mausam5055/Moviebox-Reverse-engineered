.class public final Lcom/transsion/mpush/core/renderer/v;
.super Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;


# instance fields
.field private final i:Lkotlin/Lazy;

.field private final j:Lkotlin/Lazy;

.field private final k:[Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 12

    invoke-direct {p0}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;-><init>()V

    new-instance v0, Lcom/transsion/mpush/core/renderer/t;

    invoke-direct {v0}, Lcom/transsion/mpush/core/renderer/t;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/mpush/core/renderer/v;->i:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/mpush/core/renderer/u;

    invoke-direct {v0}, Lcom/transsion/mpush/core/renderer/u;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/mpush/core/renderer/v;->j:Lkotlin/Lazy;

    sget v0, Lcom/transsion/mpush/R$id;->imageIv1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/transsion/mpush/R$id;->imageIv2:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/transsion/mpush/R$id;->imageIv3:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/transsion/mpush/R$id;->imageIv4:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/transsion/mpush/R$id;->imageIv5:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/transsion/mpush/R$id;->imageIv6:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget v6, Lcom/transsion/mpush/R$id;->imageIv7:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget v7, Lcom/transsion/mpush/R$id;->imageIv8:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget v8, Lcom/transsion/mpush/R$id;->imageIv9:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget v9, Lcom/transsion/mpush/R$id;->imageIv10:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0xa

    new-array v10, v10, [Ljava/lang/Integer;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v0, 0x1

    aput-object v1, v10, v0

    const/4 v0, 0x2

    aput-object v2, v10, v0

    const/4 v0, 0x3

    aput-object v3, v10, v0

    const/4 v0, 0x4

    aput-object v4, v10, v0

    const/4 v0, 0x5

    aput-object v5, v10, v0

    const/4 v0, 0x6

    aput-object v6, v10, v0

    const/4 v0, 0x7

    aput-object v7, v10, v0

    const/16 v0, 0x8

    aput-object v8, v10, v0

    const/16 v0, 0x9

    aput-object v9, v10, v0

    iput-object v10, p0, Lcom/transsion/mpush/core/renderer/v;->k:[Ljava/lang/Integer;

    return-void
.end method

.method public static synthetic L()I
    .locals 1

    invoke-static {}, Lcom/transsion/mpush/core/renderer/v;->Q()I

    move-result v0

    return v0
.end method

.method public static synthetic M()I
    .locals 1

    invoke-static {}, Lcom/transsion/mpush/core/renderer/v;->P()I

    move-result v0

    return v0
.end method

.method private final N()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/mpush/core/renderer/v;->j:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final O()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/mpush/core/renderer/v;->i:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private static final P()I
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/mpush/R$dimen;->push_permanent_image_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private static final Q()I
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/mpush/R$dimen;->push_permanent_image_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private final R(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10

    :try_start_0
    sget-object v0, Lcom/transsion/mpush/core/utils/c;->a:Lcom/transsion/mpush/core/utils/c;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/mpush/core/renderer/v;->O()I

    move-result v3

    invoke-direct {p0}, Lcom/transsion/mpush/core/renderer/v;->N()I

    move-result v4

    sget-object v2, Lln/a;->a:Lln/a;

    invoke-virtual {v2}, Lln/a;->i()Lcom/transsion/mpush/core/config/PushSdkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/mpush/core/config/PushSdkConfig;->getDefaultImgRes()I

    move-result v5

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v0, v2}, Lcom/transsion/mpush/core/utils/c;->c(F)I

    move-result v6

    const/16 v8, 0x40

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v9}, Lcom/transsion/mpush/core/utils/c;->b(Lcom/transsion/mpush/core/utils/c;Landroid/content/Context;Landroid/graphics/Bitmap;IIIIZILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toResizeBitmap: failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "M_PUSH_SDK"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public A(Ljava/util/List;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "messages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget p1, Lcom/transsion/mpush/R$layout;->push_notification_permanent_big:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public s(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Ljava/util/List;Ljava/util/List;Lcom/transsion/mpush/core/config/PermanentConfig;)V
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    const-string v0, "context"

    move-object/from16 v12, p1

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messages"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmaps"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u3010\u5e38\u9a7b\u6e32\u67d3\u3011\u5f00\u59cb\u7ed1\u5b9a\u81ea\u5b9a\u4e49\u89c6\u56fe\uff0c\u6d88\u606f\u6570\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\uff0c\u56fe\u7247\u6570\uff1a"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "M_PUSH_SDK"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz p6, :cond_0

    invoke-virtual/range {p6 .. p6}, Lcom/transsion/mpush/core/config/PermanentConfig;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual/range {p6 .. p6}, Lcom/transsion/mpush/core/config/PermanentConfig;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static/range {p4 .. p4}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/mpush/api/PermanentPushMessage;

    invoke-virtual {v0}, Lcom/transsion/mpush/api/PermanentPushMessage;->getTitle()Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    if-eqz v8, :cond_4

    sget v1, Lcom/transsion/mpush/R$id;->push_notification_title:I

    invoke-virtual {v8, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_4
    if-eqz v9, :cond_5

    sget v1, Lcom/transsion/mpush/R$id;->push_notification_title:I

    invoke-virtual {v9, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_5
    move-object v0, v11

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v14, 0x0

    move v15, v14

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v16, v15, 0x1

    if-gez v15, :cond_6

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_6
    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v10, v15}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/transsion/mpush/api/PermanentPushMessage;

    if-nez v17, :cond_7

    goto/16 :goto_6

    :cond_7
    invoke-direct {v7, v0}, Lcom/transsion/mpush/core/renderer/v;->R(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_8

    goto/16 :goto_6

    :cond_8
    if-ge v15, v1, :cond_9

    if-eqz v8, :cond_9

    iget-object v0, v7, Lcom/transsion/mpush/core/renderer/v;->k:[Ljava/lang/Integer;

    aget-object v0, v0, v15

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v8, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    invoke-virtual {v8, v5, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/16 v18, 0xc

    const/16 v19, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move v14, v5

    move/from16 v5, v18

    move-object v10, v6

    move-object/from16 v6, v19

    invoke-static/range {v0 .. v6}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->w(Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;Landroid/content/Context;Lcom/transsion/mpush/api/PermanentPushMessage;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v8, v14, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_4

    :cond_9
    move-object v10, v6

    :goto_4
    if-eqz v9, :cond_b

    iget-object v0, v7, Lcom/transsion/mpush/core/renderer/v;->k:[Ljava/lang/Integer;

    array-length v1, v0

    if-ge v15, v1, :cond_b

    aget-object v0, v0, v15

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v9, v14, v10}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    invoke-virtual {v9, v14, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, v7, Lcom/transsion/mpush/core/renderer/v;->k:[Ljava/lang/Integer;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne v15, v0, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->B()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v6}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->w(Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;Landroid/content/Context;Lcom/transsion/mpush/api/PermanentPushMessage;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_5

    :cond_a
    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-static/range {v0 .. v6}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->w(Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;Landroid/content/Context;Lcom/transsion/mpush/api/PermanentPushMessage;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_5
    invoke-virtual {v9, v14, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_b
    :goto_6
    move-object/from16 v10, p4

    move/from16 v15, v16

    const/4 v14, 0x0

    goto/16 :goto_3

    :cond_c
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, v7, Lcom/transsion/mpush/core/renderer/v;->k:[Ljava/lang/Integer;

    array-length v2, v2

    :goto_7
    const/16 v3, 0x8

    if-ge v0, v2, :cond_f

    if-ge v0, v1, :cond_d

    if-eqz v8, :cond_d

    iget-object v4, v7, Lcom/transsion/mpush/core/renderer/v;->k:[Ljava/lang/Integer;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v8, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_d
    if-eqz v9, :cond_e

    iget-object v4, v7, Lcom/transsion/mpush/core/renderer/v;->k:[Ljava/lang/Integer;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v9, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_f
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_10

    if-eqz v9, :cond_11

    sget v0, Lcom/transsion/mpush/R$id;->content_layout_2:I

    invoke-virtual {v9, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_8

    :cond_10
    if-eqz v9, :cond_11

    sget v0, Lcom/transsion/mpush/R$id;->content_layout_2:I

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_11
    :goto_8
    sget-object v0, Llg/a;->a:Llg/a$a;

    const-string v1, "\u3010\u5e38\u9a7b\u6e32\u67d3\u3011\u89c6\u56fe\u7ed1\u5b9a\u5b8c\u6210"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const-string v4, "M_PUSH_SDK"

    const/4 v5, 0x0

    move-object/from16 p1, v0

    move-object/from16 p2, v4

    move-object/from16 p3, v1

    move/from16 p4, v5

    move/from16 p5, v2

    move-object/from16 p6, v3

    invoke-static/range {p1 .. p6}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public z(Ljava/util/List;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "messages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget p1, Lcom/transsion/mpush/R$layout;->push_notification_permanent_small:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
