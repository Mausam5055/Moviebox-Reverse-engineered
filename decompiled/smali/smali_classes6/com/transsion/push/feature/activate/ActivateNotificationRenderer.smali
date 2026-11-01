.class public final Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;
.super Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/push/feature/activate/ActivateNotificationRenderer$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/transsion/push/feature/activate/ActivateNotificationRenderer$a;


# instance fields
.field private final e:Lkotlinx/coroutines/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/push/feature/activate/ActivateNotificationRenderer$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/push/feature/activate/ActivateNotificationRenderer$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;->f:Lcom/transsion/push/feature/activate/ActivateNotificationRenderer$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/l2;->b(Lkotlinx/coroutines/t1;ILjava/lang/Object;)Lkotlinx/coroutines/z;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;->e:Lkotlinx/coroutines/n0;

    return-void
.end method

.method public static synthetic H(Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;Landroid/content/Context;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;->Q(Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;Landroid/content/Context;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic I(Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;->P(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic J(Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;->R(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic K(Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/mpush/core/renderer/i;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final L(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/transsion/ad/ps/activate/PsActivateBean;Lcom/transsion/mpush/api/LocalPushMessage;Landroid/graphics/Bitmap;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget v2, Lcom/transsion/lib/push/R$id;->notification_title_tv:I

    sget v3, Lcom/transsion/lib/push/R$string;->notification_activate_title:I

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/transsion/ad/ps/activate/PsActivateBean;->getAppName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    invoke-virtual {p4}, Lcom/transsion/mpush/api/LocalPushMessage;->getTitle()Ljava/lang/String;

    move-result-object v4

    :cond_1
    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v0

    invoke-virtual {p1, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget v2, Lcom/transsion/lib/push/R$id;->notification_content_tv:I

    sget v3, Lcom/transsion/lib/push/R$string;->notification_activate_content:I

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/transsion/ad/ps/activate/PsActivateBean;->getAppName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    :cond_2
    invoke-virtual {p4}, Lcom/transsion/mpush/api/LocalPushMessage;->getTitle()Ljava/lang/String;

    move-result-object v4

    :cond_3
    new-array p4, v1, [Ljava/lang/Object;

    aput-object v4, p4, v0

    invoke-virtual {p1, v3, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget p1, Lcom/transsion/lib/push/R$id;->btn_activate_cta:I

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/transsion/ad/ps/activate/PsActivateBean;->getButtonText()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_5

    :cond_4
    const-string p3, "OPEN"

    :cond_5
    invoke-virtual {p2, p1, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    if-eqz p5, :cond_6

    sget p1, Lcom/transsion/lib/push/R$id;->iv_activate_icon:I

    invoke-virtual {p2, p1, p5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :cond_6
    return-void
.end method

.method private final M(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, p1, v4, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5, v4, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v3, p2, p2, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method private final O(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "clickArea"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    if-nez p1, :cond_0

    const-string p1, "{}"

    :cond_0
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    :goto_0
    return-object p1
.end method

.method private final P(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    const/4 v0, 0x1

    new-instance v1, Lcom/transsion/push/feature/activate/a;

    invoke-direct {v1, p0, v8}, Lcom/transsion/push/feature/activate/a;-><init>(Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;Landroid/content/Context;)V

    const-string v2, "push_sdk_activate_channel"

    invoke-virtual {p0, v8, v2, v1}, Lcom/transsion/mpush/core/renderer/i;->d(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v8, v11}, Lcom/transsion/mpush/core/renderer/i;->a(Landroid/content/Context;Ljava/lang/String;)Landroidx/core/app/NotificationCompat$m;

    move-result-object v12

    invoke-virtual {p0}, Lcom/transsion/mpush/core/renderer/i;->g()I

    move-result v1

    invoke-virtual {v12, v1}, Landroidx/core/app/NotificationCompat$m;->J(I)Landroidx/core/app/NotificationCompat$m;

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/mpush/api/LocalPushMessage;->isRefresh()Z

    move-result v1

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v12, v0}, Landroidx/core/app/NotificationCompat$m;->F(Z)Landroidx/core/app/NotificationCompat$m;

    invoke-virtual {v12, v13}, Landroidx/core/app/NotificationCompat$m;->t(I)Landroidx/core/app/NotificationCompat$m;

    invoke-virtual {v12, v14}, Landroidx/core/app/NotificationCompat$m;->K(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$m;

    new-array v0, v0, [J

    const-wide/16 v1, 0x0

    aput-wide v1, v0, v13

    invoke-virtual {v12, v0}, Landroidx/core/app/NotificationCompat$m;->N([J)Landroidx/core/app/NotificationCompat$m;

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {v12, v0}, Landroidx/core/app/NotificationCompat$m;->t(I)Landroidx/core/app/NotificationCompat$m;

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/mpush/api/LocalPushMessage;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroidx/core/app/NotificationCompat$m;->q(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$m;

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/mpush/api/LocalPushMessage;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroidx/core/app/NotificationCompat$m;->p(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$m;

    invoke-virtual {p0, v9}, Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;->v(Lcom/transsion/mpush/api/LocalPushMessage;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v9}, Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;->w(Lcom/transsion/mpush/api/LocalPushMessage;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v12, v2}, Landroidx/core/app/NotificationCompat$m;->s(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$m;

    invoke-virtual {v12, v3}, Landroidx/core/app/NotificationCompat$m;->r(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$m;

    new-instance v0, Landroidx/core/app/NotificationCompat$o;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$o;-><init>()V

    invoke-virtual {v12, v0}, Landroidx/core/app/NotificationCompat$m;->L(Landroidx/core/app/NotificationCompat$p;)Landroidx/core/app/NotificationCompat$m;

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;->q(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Lcom/transsion/mpush/api/LocalPushMessage;Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/mpush/api/LocalPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/mpush/core/renderer/i;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual/range {p0 .. p2}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;->s(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;)Landroid/app/PendingIntent;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {p0, v8, v9, v0, v11}, Lcom/transsion/mpush/core/renderer/i;->b(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    instance-of v2, v10, Lcom/transsion/ad/ps/activate/PsActivateBean;

    if-eqz v2, :cond_1

    move-object v2, v10

    check-cast v2, Lcom/transsion/ad/ps/activate/PsActivateBean;

    goto :goto_1

    :cond_1
    move-object v2, v14

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/ad/ps/activate/PsActivateBean;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v14

    :goto_2
    if-eqz v2, :cond_3

    const-string v3, "content"

    invoke-direct {p0, v1, v2, v3, v9}, Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;->S(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/mpush/api/LocalPushMessage;)V

    :cond_3
    invoke-virtual {p0, v8, v1, v0, v13}, Lcom/transsion/mpush/core/renderer/i;->m(Landroid/content/Context;Landroid/content/Intent;IZ)Landroid/app/PendingIntent;

    move-result-object v1

    :cond_4
    invoke-virtual {v12, v1}, Landroidx/core/app/NotificationCompat$m;->o(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$m;

    invoke-virtual {p0, v8, v0, v12}, Lcom/transsion/mpush/core/renderer/i;->i(Landroid/content/Context;ILandroidx/core/app/NotificationCompat$m;)V

    invoke-virtual/range {p0 .. p2}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;->F(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;)V

    invoke-virtual {p0, v8, v9, v11, v14}, Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;->E(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final Q(Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;Landroid/content/Context;)Lkotlin/Unit;
    .locals 1

    const-string v0, "push_sdk_activate_channel"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;->r(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final R(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p2, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p2, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int p2, v1

    const/4 v1, 0x1

    invoke-static {p1, v0, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private final S(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/mpush/api/LocalPushMessage;)V
    .locals 27

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual/range {p4 .. p4}, Lcom/transsion/mpush/api/LocalPushMessage;->getExtraMap()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p0

    invoke-direct {v3, v2, v1}, Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;->O(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "target_package_name"

    move-object/from16 v5, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "clickArea"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "msg_extra_map"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p4 .. p4}, Lcom/transsion/mpush/api/LocalPushMessage;->getDeeplink()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v4, "deeplink"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const v25, 0x37fff

    const/16 v26, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v4, p4

    move-object/from16 v22, v2

    invoke-static/range {v4 .. v26}, Lcom/transsion/mpush/api/LocalPushMessage;->copy$default(Lcom/transsion/mpush/api/LocalPushMessage;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJZZLjava/lang/String;ZIILjava/lang/Object;)Lcom/transsion/mpush/api/LocalPushMessage;

    move-result-object v1

    const-string v2, "push_message"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public E(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;->E(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/transsion/push/feature/activate/ActivatePushFeature;->d:Lcom/transsion/push/feature/activate/ActivatePushFeature$a;

    invoke-virtual {p2, p1}, Lcom/transsion/push/feature/activate/ActivatePushFeature$a;->b(Landroid/content/Context;)V

    return-void
.end method

.method public final N()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;->e:Lkotlinx/coroutines/n0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/o0;->d(Lkotlinx/coroutines/n0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public final T(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;Lcom/transsion/ad/ps/activate/PsActivateBean;)V
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adBean"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/transsion/ad/ps/activate/PsActivateBean;->getIconUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;->e:Lkotlinx/coroutines/n0;

    new-instance v8, Lcom/transsion/push/feature/activate/ActivateNotificationRenderer$show$1;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/transsion/push/feature/activate/ActivateNotificationRenderer$show$1;-><init>(Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;Landroid/content/Context;Ljava/lang/String;Lcom/transsion/mpush/api/LocalPushMessage;Lcom/transsion/ad/ps/activate/PsActivateBean;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    move-object v5, v0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;->P(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public q(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Lcom/transsion/mpush/api/LocalPushMessage;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p6, Lcom/transsion/ad/ps/activate/PsActivateBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p6, Lcom/transsion/ad/ps/activate/PsActivateBean;

    goto :goto_0

    :cond_0
    move-object p6, v1

    :goto_0
    if-eqz p5, :cond_1

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p5, v0}, Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;->M(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1
    if-eqz p2, :cond_2

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p6

    move-object v6, p4

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;->L(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/transsion/ad/ps/activate/PsActivateBean;Lcom/transsion/mpush/api/LocalPushMessage;Landroid/graphics/Bitmap;)V

    :cond_2
    if-eqz p3, :cond_3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p6

    move-object v6, p4

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;->L(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/transsion/ad/ps/activate/PsActivateBean;Lcom/transsion/mpush/api/LocalPushMessage;Landroid/graphics/Bitmap;)V

    :cond_3
    if-eqz p6, :cond_5

    invoke-virtual {p6}, Lcom/transsion/ad/ps/activate/PsActivateBean;->getPackageName()Ljava/lang/String;

    move-result-object p5

    if-eqz p5, :cond_5

    invoke-virtual {p4}, Lcom/transsion/mpush/api/LocalPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p0, p6}, Lcom/transsion/mpush/core/renderer/i;->e(Ljava/lang/String;)I

    move-result p6

    add-int/lit8 p6, p6, 0x1

    invoke-virtual {p0}, Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p4, p6, v0}, Lcom/transsion/mpush/core/renderer/i;->b(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "button"

    invoke-direct {p0, v0, p5, v1, p4}, Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;->S(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/mpush/api/LocalPushMessage;)V

    const/4 p4, 0x0

    invoke-virtual {p0, p1, v0, p6, p4}, Lcom/transsion/mpush/core/renderer/i;->m(Landroid/content/Context;Landroid/content/Intent;IZ)Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p2, :cond_4

    sget p4, Lcom/transsion/lib/push/R$id;->btn_activate_cta:I

    invoke-virtual {p2, p4, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_4
    if-eqz p3, :cond_5

    sget p2, Lcom/transsion/lib/push/R$id;->btn_activate_cta:I

    invoke-virtual {p3, p2, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_5
    return-void
.end method

.method public show(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "ActivateNotificationRenderer"

    const-string v2, "\u4e0d\u5e94\u76f4\u63a5\u8c03\u7528\uff0c\u8bf7\u4f7f\u7528 show(context, message, adBean)"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->z(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method protected t()Ljava/lang/String;
    .locals 1

    const-string v0, "push_sdk_activate_channel"

    return-object v0
.end method

.method protected u()Ljava/lang/String;
    .locals 1

    const-string v0, "\u6fc0\u6d3b\u5e7f\u544a\u63a8\u9001"

    return-object v0
.end method

.method public v(Lcom/transsion/mpush/api/LocalPushMessage;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget p1, Lcom/transsion/lib/push/R$layout;->notification_activate:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public w(Lcom/transsion/mpush/api/LocalPushMessage;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget p1, Lcom/transsion/lib/push/R$layout;->notification_activate:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
