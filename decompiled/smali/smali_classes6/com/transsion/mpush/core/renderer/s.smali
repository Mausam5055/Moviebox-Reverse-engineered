.class public final Lcom/transsion/mpush/core/renderer/s;
.super Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;


# instance fields
.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlin/Lazy;

.field private final g:Lkotlin/Lazy;

.field private final h:Lkotlin/Lazy;

.field private final i:Lkotlin/Lazy;

.field private final j:Lkotlin/Lazy;

.field private final k:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;-><init>()V

    new-instance v0, Lcom/transsion/mpush/core/renderer/l;

    invoke-direct {v0}, Lcom/transsion/mpush/core/renderer/l;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/mpush/core/renderer/s;->e:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/mpush/core/renderer/m;

    invoke-direct {v0}, Lcom/transsion/mpush/core/renderer/m;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/mpush/core/renderer/s;->f:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/mpush/core/renderer/n;

    invoke-direct {v0}, Lcom/transsion/mpush/core/renderer/n;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/mpush/core/renderer/s;->g:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/mpush/core/renderer/o;

    invoke-direct {v0}, Lcom/transsion/mpush/core/renderer/o;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/mpush/core/renderer/s;->h:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/mpush/core/renderer/p;

    invoke-direct {v0}, Lcom/transsion/mpush/core/renderer/p;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/mpush/core/renderer/s;->i:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/mpush/core/renderer/q;

    invoke-direct {v0}, Lcom/transsion/mpush/core/renderer/q;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/mpush/core/renderer/s;->j:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/mpush/core/renderer/r;

    invoke-direct {v0, p0}, Lcom/transsion/mpush/core/renderer/r;-><init>(Lcom/transsion/mpush/core/renderer/s;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/mpush/core/renderer/s;->k:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic H()I
    .locals 1

    invoke-static {}, Lcom/transsion/mpush/core/renderer/s;->O()I

    move-result v0

    return v0
.end method

.method public static synthetic I()I
    .locals 1

    invoke-static {}, Lcom/transsion/mpush/core/renderer/s;->S()I

    move-result v0

    return v0
.end method

.method public static synthetic J()I
    .locals 1

    invoke-static {}, Lcom/transsion/mpush/core/renderer/s;->Q()I

    move-result v0

    return v0
.end method

.method public static synthetic K(Lcom/transsion/mpush/core/renderer/s;)I
    .locals 0

    invoke-static {p0}, Lcom/transsion/mpush/core/renderer/s;->e0(Lcom/transsion/mpush/core/renderer/s;)I

    move-result p0

    return p0
.end method

.method public static synthetic L()I
    .locals 1

    invoke-static {}, Lcom/transsion/mpush/core/renderer/s;->P()I

    move-result v0

    return v0
.end method

.method public static synthetic M()I
    .locals 1

    invoke-static {}, Lcom/transsion/mpush/core/renderer/s;->T()I

    move-result v0

    return v0
.end method

.method public static synthetic N()F
    .locals 1

    invoke-static {}, Lcom/transsion/mpush/core/renderer/s;->R()F

    move-result v0

    return v0
.end method

.method private static final O()I
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    return v0
.end method

.method private static final P()I
    .locals 1

    const/high16 v0, 0x43280000    # 168.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    return v0
.end method

.method private static final Q()I
    .locals 1

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    return v0
.end method

.method private static final R()F
    .locals 1

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private static final S()I
    .locals 1

    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    return v0
.end method

.method private static final T()I
    .locals 1

    const/high16 v0, 0x428e0000    # 71.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    return v0
.end method

.method private final U(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 11

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/transsion/mpush/core/renderer/s;->a0()I

    move-result v0

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/transsion/mpush/core/renderer/s;->b0()I

    move-result v0

    goto :goto_0

    :goto_1
    if-eqz p3, :cond_1

    invoke-direct {p0}, Lcom/transsion/mpush/core/renderer/s;->V()I

    move-result p3

    :goto_2
    move v5, p3

    goto :goto_3

    :cond_1
    invoke-direct {p0}, Lcom/transsion/mpush/core/renderer/s;->W()I

    move-result p3

    goto :goto_2

    :goto_3
    sget-object v1, Lcom/transsion/mpush/core/utils/c;->a:Lcom/transsion/mpush/core/utils/c;

    sget-object p3, Lln/a;->a:Lln/a;

    invoke-virtual {p3}, Lln/a;->i()Lcom/transsion/mpush/core/config/PushSdkConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/transsion/mpush/core/config/PushSdkConfig;->getDefaultImgRes()I

    move-result v6

    invoke-direct {p0}, Lcom/transsion/mpush/core/renderer/s;->X()F

    move-result p3

    float-to-int v7, p3

    const/16 v9, 0x40

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v10}, Lcom/transsion/mpush/core/utils/c;->b(Lcom/transsion/mpush/core/utils/c;Landroid/content/Context;Landroid/graphics/Bitmap;IIIIZILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_4

    :cond_2
    move-object p2, p1

    :goto_4
    return-object p2
.end method

.method private final V()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/mpush/core/renderer/s;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final W()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/mpush/core/renderer/s;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final X()F
    .locals 1

    iget-object v0, p0, Lcom/transsion/mpush/core/renderer/s;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method private final Y()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/mpush/core/renderer/s;->h:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final Z()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/mpush/core/renderer/s;->i:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final a0()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/mpush/core/renderer/s;->j:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final b0()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/mpush/core/renderer/s;->k:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final c0(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 10

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/transsion/mpush/core/renderer/s;->Y()I

    move-result p3

    :goto_0
    move v3, p3

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/transsion/mpush/core/renderer/s;->V()I

    move-result p3

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/transsion/mpush/core/renderer/s;->Z()I

    move-result v4

    sget-object v0, Lcom/transsion/mpush/core/utils/c;->a:Lcom/transsion/mpush/core/utils/c;

    sget-object p3, Lln/a;->a:Lln/a;

    invoke-virtual {p3}, Lln/a;->i()Lcom/transsion/mpush/core/config/PushSdkConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/transsion/mpush/core/config/PushSdkConfig;->getDefaultImgRes()I

    move-result v5

    invoke-direct {p0}, Lcom/transsion/mpush/core/renderer/s;->X()F

    move-result p3

    float-to-int v6, p3

    const/16 v8, 0x40

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Lcom/transsion/mpush/core/utils/c;->b(Lcom/transsion/mpush/core/utils/c;Landroid/content/Context;Landroid/graphics/Bitmap;IIIIZILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    move-object p2, p1

    :goto_2
    return-object p2
.end method

.method private final d0(Lcom/transsion/mpush/api/LocalPushMessage;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/transsion/mpush/api/LocalPushMessage;->getStyle()Ljava/lang/String;

    move-result-object p1

    const-string v0, "101"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private static final e0(Lcom/transsion/mpush/core/renderer/s;)I
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result v0

    invoke-direct {p0}, Lcom/transsion/mpush/core/renderer/s;->V()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public q(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Lcom/transsion/mpush/api/LocalPushMessage;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 7

    const-string p6, "context"

    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "message"

    invoke-static {p4, p6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/transsion/mpush/core/renderer/s;->d0(Lcom/transsion/mpush/api/LocalPushMessage;)Z

    move-result p6

    sget-object v6, Llg/a;->a:Llg/a$a;

    invoke-virtual {p4}, Lcom/transsion/mpush/api/LocalPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v0

    if-eqz p6, :cond_0

    const-string v1, "\u7ad6\u5c4f"

    goto :goto_0

    :cond_0
    const-string v1, "\u6a2a\u5c4f"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u3010\u672c\u5730\u6e32\u67d3\u3011\u5f00\u59cb\u7ed1\u5b9a\u81ea\u5b9a\u4e49\u89c6\u56fe\uff0c\u6d88\u606fID\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\uff0c\u7c7b\u578b\uff1a"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "M_PUSH_SDK"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz p3, :cond_1

    sget v0, Lcom/transsion/mpush/R$id;->push_notification_title:I

    invoke-virtual {p4}, Lcom/transsion/mpush/api/LocalPushMessage;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget v0, Lcom/transsion/mpush/R$id;->push_notification_content:I

    invoke-virtual {p4}, Lcom/transsion/mpush/api/LocalPushMessage;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget v0, Lcom/transsion/mpush/R$id;->push_notification_cimage:I

    invoke-direct {p0, p1, p5, p6}, Lcom/transsion/mpush/core/renderer/s;->U(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :cond_1
    if-eqz p2, :cond_2

    sget p3, Lcom/transsion/mpush/R$id;->push_notification_title:I

    invoke-virtual {p4}, Lcom/transsion/mpush/api/LocalPushMessage;->getTitle()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget p3, Lcom/transsion/mpush/R$id;->push_notification_cimage:I

    invoke-direct {p0, p1, p5, p6}, Lcom/transsion/mpush/core/renderer/s;->c0(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :cond_2
    const-string p1, "\u3010\u672c\u5730\u6e32\u67d3\u3011\u89c6\u56fe\u7ed1\u5b9a\u5b8c\u6210"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "M_PUSH_SDK"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public v(Lcom/transsion/mpush/api/LocalPushMessage;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/mpush/core/renderer/s;->d0(Lcom/transsion/mpush/api/LocalPushMessage;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/transsion/mpush/R$layout;->push_sdk_notification_portrait_collapsed:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/mpush/R$layout;->push_sdk_notification_collapsed:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public w(Lcom/transsion/mpush/api/LocalPushMessage;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/mpush/core/renderer/s;->d0(Lcom/transsion/mpush/api/LocalPushMessage;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/transsion/mpush/R$layout;->push_sdk_notification_portrait:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/mpush/R$layout;->push_sdk_notification_landscape:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    return-object p1
.end method
