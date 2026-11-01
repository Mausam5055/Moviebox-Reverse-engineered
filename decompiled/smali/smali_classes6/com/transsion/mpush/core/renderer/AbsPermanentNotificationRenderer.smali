.class public abstract Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;
.super Lcom/transsion/mpush/core/renderer/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$a;
    }
.end annotation


# static fields
.field public static final h:Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$a;


# instance fields
.field private final c:Lkotlinx/coroutines/n0;

.field private volatile d:J

.field private volatile e:Ljava/lang/String;

.field private f:I

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->h:Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/mpush/core/renderer/i;-><init>()V

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

    iput-object v0, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->c:Lkotlinx/coroutines/n0;

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->e:Ljava/lang/String;

    const v0, 0x927c0

    iput v0, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->f:I

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    iput v0, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->g:I

    return-void
.end method

.method private final E(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/transsion/mpush/core/config/PermanentConfig;)V
    .locals 21

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const/4 v11, 0x1

    const/4 v12, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->x()Ljava/lang/String;

    move-result-object v13

    new-instance v1, Lcom/transsion/mpush/core/renderer/h;

    invoke-direct {v1, v8, v0, v13}, Lcom/transsion/mpush/core/renderer/h;-><init>(Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v8, v0, v13, v1}, Lcom/transsion/mpush/core/renderer/i;->d(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    invoke-virtual {v8, v0, v13}, Lcom/transsion/mpush/core/renderer/i;->a(Landroid/content/Context;Ljava/lang/String;)Landroidx/core/app/NotificationCompat$m;

    move-result-object v1

    const-string v2, "PermanentGroup"

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$m;->y(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$m;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroidx/core/app/NotificationCompat$m;->z(Z)Landroidx/core/app/NotificationCompat$m;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroidx/core/app/NotificationCompat$m;->E(Z)Landroidx/core/app/NotificationCompat$m;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroidx/core/app/NotificationCompat$m;->l(Z)Landroidx/core/app/NotificationCompat$m;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroidx/core/app/NotificationCompat$m;->I(Z)Landroidx/core/app/NotificationCompat$m;

    move-result-object v14

    const-string v1, "setShowWhen(...)"

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/mpush/api/PermanentPushMessage;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/mpush/api/PermanentPushMessage;->isRefresh()Z

    move-result v1

    if-ne v1, v11, :cond_0

    sget-object v15, Llg/a;->a:Llg/a$a;

    const-string v16, "M_PUSH_SDK"

    const-string v17, "[AbsPermanentNotificationRenderer] internalShow -> Silent Refresh"

    const/16 v19, 0x4

    const/16 v20, 0x0

    const/16 v18, 0x0

    invoke-static/range {v15 .. v20}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {v14, v11}, Landroidx/core/app/NotificationCompat$m;->F(Z)Landroidx/core/app/NotificationCompat$m;

    invoke-virtual {v14, v12}, Landroidx/core/app/NotificationCompat$m;->t(I)Landroidx/core/app/NotificationCompat$m;

    invoke-virtual {v14, v2}, Landroidx/core/app/NotificationCompat$m;->K(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$m;

    new-array v1, v11, [J

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v12

    invoke-virtual {v14, v1}, Landroidx/core/app/NotificationCompat$m;->N([J)Landroidx/core/app/NotificationCompat$m;

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v14, v1}, Landroidx/core/app/NotificationCompat$m;->t(I)Landroidx/core/app/NotificationCompat$m;

    :goto_0
    invoke-virtual {v8, v9}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->z(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v9}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->A(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v1, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    move-object/from16 v7, p4

    goto :goto_1

    :cond_2
    sget-object v15, Llg/a;->a:Llg/a$a;

    const-string v16, "M_PUSH_SDK"

    const-string v17, "internalShow: using default style"

    const/16 v19, 0x4

    const/16 v20, 0x0

    const/16 v18, 0x0

    invoke-static/range {v15 .. v20}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    move-object/from16 v7, p4

    invoke-virtual {v8, v14, v9, v10, v7}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->I(Landroidx/core/app/NotificationCompat$m;Ljava/util/List;Ljava/util/List;Lcom/transsion/mpush/core/config/PermanentConfig;)V

    goto/16 :goto_4

    :goto_1
    sget-object v15, Llg/a;->a:Llg/a$a;

    const-string v16, "M_PUSH_SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "internalShow: using custom views collapsed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", expanded="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x4

    const/16 v20, 0x0

    const/16 v18, 0x0

    invoke-static/range {v15 .. v20}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_3

    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v5, v4, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v14, v5}, Landroidx/core/app/NotificationCompat$m;->s(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$m;

    goto :goto_2

    :cond_3
    move-object v5, v2

    :goto_2
    if-eqz v3, :cond_4

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v4, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v14, v1}, Landroidx/core/app/NotificationCompat$m;->r(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$m;

    move-object v4, v1

    goto :goto_3

    :cond_4
    move-object v4, v2

    :goto_3
    new-instance v1, Landroidx/core/app/NotificationCompat$o;

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$o;-><init>()V

    invoke-virtual {v14, v1}, Landroidx/core/app/NotificationCompat$m;->L(Landroidx/core/app/NotificationCompat$p;)Landroidx/core/app/NotificationCompat$m;

    invoke-virtual {v14, v11}, Landroidx/core/app/NotificationCompat$m;->O(I)Landroidx/core/app/NotificationCompat$m;

    const/4 v1, 0x2

    invoke-virtual {v14, v1}, Landroidx/core/app/NotificationCompat$m;->G(I)Landroidx/core/app/NotificationCompat$m;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_5

    invoke-virtual {v14, v12}, Landroidx/core/app/NotificationCompat$m;->t(I)Landroidx/core/app/NotificationCompat$m;

    :cond_5
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v5

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->s(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Ljava/util/List;Ljava/util/List;Lcom/transsion/mpush/core/config/PermanentConfig;)V

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->B()Ljava/lang/String;

    move-result-object v4

    const-string v5, "10010"

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v7}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->w(Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;Landroid/content/Context;Lcom/transsion/mpush/api/PermanentPushMessage;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroidx/core/app/NotificationCompat$m;->o(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$m;

    sget-object v2, Llg/a;->a:Llg/a$a;

    const-string v3, "M_PUSH_SDK"

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u3010\u5e38\u9a7b\u6e32\u67d3\u3011\u5e38\u9a7b\u901a\u77e5\u53d1\u9001\u6210\u529f\uff0c\u901a\u77e5ID\uff1a10010\uff0c\u6d88\u606f\u6570\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/16 v1, 0x271a

    invoke-virtual {v8, v0, v1, v14}, Lcom/transsion/mpush/core/renderer/i;->i(Landroid/content/Context;ILandroidx/core/app/NotificationCompat$m;)V

    invoke-virtual {v8, v9}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->C(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v8, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iput-object v1, v8, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->e:Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/mpush/api/PermanentPushMessage;

    if-eqz v1, :cond_9

    move-object v2, v10

    check-cast v2, Ljava/lang/Iterable;

    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_7

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    move v11, v12

    goto :goto_5

    :cond_7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_8

    :goto_5
    sget-object v2, Lln/b;->a:Lln/b;

    invoke-virtual {v2, v0, v1, v13, v11}, Lln/b;->i(Landroid/content/Context;Lcom/transsion/mpush/api/PermanentPushMessage;Ljava/lang/String;Z)V

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v8, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->d:J

    invoke-static/range {p2 .. p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/mpush/api/PermanentPushMessage;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/transsion/mpush/api/PermanentPushMessage;->isRefresh()Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Lln/a;->a:Lln/a;

    invoke-virtual {v2}, Lln/a;->i()Lcom/transsion/mpush/core/config/PushSdkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/mpush/core/config/PushSdkConfig;->getEnableRefresh()Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.transsion.mpush.action.NEW_MESSAGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "message"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static/range {p1 .. p1}, Lr1/a;->b(Landroid/content/Context;)Lr1/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lr1/a;->d(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :goto_6
    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internalShow: failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "M_PUSH_SDK"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_7
    return-void
.end method

.method private static final F(Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;Landroid/content/Context;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->u(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method static synthetic H(Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;Landroid/content/Context;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p3

    instance-of v1, v0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$1;

    iget v2, v1, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$1;->label:I

    move-object/from16 v5, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$1;

    move-object/from16 v5, p0

    invoke-direct {v1, v5, v0}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$1;-><init>(Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v8

    iget v2, v1, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$1;->label:I

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v10, :cond_2

    if-ne v2, v9, :cond_1

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->i(II)I

    move-result v3

    sget-object v11, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadImages: starting load for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " images"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x4

    const/16 v16, 0x0

    const-string v12, "M_PUSH_SDK"

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1;

    const/4 v7, 0x0

    move-object v2, v0

    move-object/from16 v4, p2

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1;-><init>(ILjava/util/List;Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    iput v10, v1, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$1;->label:I

    invoke-static {v0, v1}, Lkotlinx/coroutines/o0;->e(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_4

    return-object v8

    :cond_4
    :goto_1
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    iput v9, v1, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$1;->label:I

    invoke-static {v0, v1}, Lkotlinx/coroutines/f;->a(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_5

    return-object v8

    :cond_5
    :goto_2
    return-object v0
.end method

.method private static final K(Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;Landroid/content/Context;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->u(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic o(Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;Landroid/content/Context;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->K(Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;Landroid/content/Context;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;Landroid/content/Context;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->F(Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;Landroid/content/Context;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic q(Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/transsion/mpush/core/config/PermanentConfig;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->E(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/transsion/mpush/core/config/PermanentConfig;)V

    return-void
.end method

.method public static final synthetic r(Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->d:J

    return-void
.end method

.method public static synthetic w(Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;Landroid/content/Context;Lcom/transsion/mpush/api/PermanentPushMessage;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/app/PendingIntent;
    .locals 1

    if-nez p6, :cond_3

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->v(Landroid/content/Context;Lcom/transsion/mpush/api/PermanentPushMessage;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: createPermanentClickIntent"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public A(Ljava/util/List;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "messages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected final B()Ljava/lang/String;
    .locals 3

    sget-object v0, Lln/a;->a:Lln/a;

    invoke-virtual {v0}, Lln/a;->i()Lcom/transsion/mpush/core/config/PushSdkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/mpush/core/config/PushSdkConfig;->getMainDeepLink()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&channel=permanent_push&msgId=111&msg_type=11"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method protected final C(Ljava/util/List;)Ljava/lang/String;
    .locals 5

    const-string v0, "messages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_0
    check-cast v2, Lcom/transsion/mpush/api/PermanentPushMessage;

    const/16 v4, 0x9

    if-gt v1, v4, :cond_1

    invoke-virtual {v2}, Lcom/transsion/mpush/api/PermanentPushMessage;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/transsion/mpush/core/utils/c;->a:Lcom/transsion/mpush/core/utils/c;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/transsion/mpush/core/utils/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final D()I
    .locals 1

    iget v0, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->g:I

    return v0
.end method

.method protected G(Landroid/content/Context;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->H(Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;Landroid/content/Context;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public I(Landroidx/core/app/NotificationCompat$m;Ljava/util/List;Ljava/util/List;Lcom/transsion/mpush/core/config/PermanentConfig;)V
    .locals 0

    const-string p4, "builder"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "messages"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bitmaps"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final J(Landroid/content/Context;Ljava/util/List;Lcom/transsion/mpush/core/config/PermanentConfig;)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v1, p2

    const-string v0, "context"

    move-object/from16 v3, p1

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messages"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v7, Llg/a;->a:Llg/a$a;

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "M_PUSH_SDK"

    const-string v9, "\u3010\u5e38\u9a7b\u6e32\u67d3\u3011\u6d88\u606f\u5217\u8868\u4e3a\u7a7a\uff0c\u8df3\u8fc7\u6e32\u67d3"

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v6, v1}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->C(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Llg/a;->a:Llg/a$a;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u3010\u5e38\u9a7b\u6e32\u67d3\u3011\u5f00\u59cb\u6e32\u67d3\u5e38\u9a7b\u901a\u77e5\uff0c\u6d88\u606f\u6570\uff1a"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\uff0c\u6d88\u606fID\uff1a"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "M_PUSH_SDK"

    const/4 v10, 0x0

    move-object v7, v2

    invoke-static/range {v7 .. v12}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v4, v6, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->e:Ljava/lang/String;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v7, v6, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->d:J

    sub-long/2addr v4, v7

    iget v0, v6, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->f:I

    int-to-long v7, v0

    cmp-long v0, v4, v7

    if-gez v0, :cond_1

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "M_PUSH_SDK"

    const-string v9, "\u3010\u5e38\u9a7b\u6e32\u67d3\u3011\u76f8\u540c\u5185\u5bb9\u5237\u65b0\u9891\u7387\u9650\u5236\uff0c\u8df3\u8fc7\u6e32\u67d3"

    const/4 v10, 0x0

    move-object v7, v2

    invoke-static/range {v7 .. v12}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_1
    iget-object v13, v6, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->c:Lkotlinx/coroutines/n0;

    new-instance v16, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$show$1;

    const/4 v5, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$show$1;-><init>(Ljava/util/List;Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;Landroid/content/Context;Lcom/transsion/mpush/core/config/PermanentConfig;Lkotlin/coroutines/Continuation;)V

    const/16 v17, 0x3

    const/16 v18, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v13 .. v18}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method protected c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/NotificationManager;

    invoke-static {p1, p2}, Lm/a;->a(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createNotificationChannel: creating channel "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "M_PUSH_SDK"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {}, Landroidx/media3/common/util/g0;->a()V

    invoke-static {p2, p3, p4}, Lm/f;->a(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object p2

    invoke-static {p2, p5}, Landroidx/media3/common/util/f0;->a(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/transsion/mpush/core/renderer/c;->a(Landroid/app/NotificationChannel;Z)V

    invoke-static {p2, p3}, Lcom/transsion/mpush/core/renderer/d;->a(Landroid/app/NotificationChannel;Z)V

    invoke-static {p2, p3}, Lcom/transsion/mpush/core/renderer/e;->a(Landroid/app/NotificationChannel;Z)V

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lcom/transsion/mpush/core/renderer/f;->a(Landroid/app/NotificationChannel;I)V

    invoke-static {p1, p2}, Lm/c;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    :cond_1
    return-void
.end method

.method public l(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->x()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/transsion/mpush/core/renderer/g;

    invoke-direct {v1, p0, p1, v0}, Lcom/transsion/mpush/core/renderer/g;-><init>(Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/mpush/core/renderer/i;->d(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    return-void
.end method

.method public s(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Ljava/util/List;Ljava/util/List;Lcom/transsion/mpush/core/config/PermanentConfig;)V
    .locals 0

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "messages"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bitmaps"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final t(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/core/app/t;->d(Landroid/content/Context;)Landroidx/core/app/t;

    move-result-object p1

    const/16 v0, 0x271a

    invoke-virtual {p1, v0}, Landroidx/core/app/t;->b(I)V

    return-void
.end method

.method protected u(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sget v0, Lcom/transsion/mpush/R$string;->push_channel_permanent_desc:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method protected final v(Landroid/content/Context;Lcom/transsion/mpush/api/PermanentPushMessage;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    const-class v0, Lcom/transsion/mpush/core/activity/SdkPushClickActivity;

    invoke-direct {v3, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x0

    if-nez p4, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/mpush/api/PermanentPushMessage;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v1, p4

    :goto_0
    const-string v2, "msg_id"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez p3, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/transsion/mpush/api/PermanentPushMessage;->getDeeplink()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_1

    :cond_3
    move-object v1, p3

    :goto_1
    const-string v2, "msg_uri"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "is_permanent"

    const/4 v2, 0x1

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/transsion/mpush/api/PermanentPushMessage;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    :cond_4
    const-string v1, "permanent_id"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "msg_type"

    const/16 v1, 0xb

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/transsion/mpush/api/PermanentPushMessage;->getSubjectId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    move-object p4, p2

    :cond_6
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/transsion/mpush/core/renderer/i;->n(Lcom/transsion/mpush/core/renderer/i;Landroid/content/Context;Landroid/content/Intent;IZILjava/lang/Object;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method protected x()Ljava/lang/String;
    .locals 1

    const-string v0, "push_sdk_permanent"

    return-object v0
.end method

.method protected y(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/mpush/R$string;->push_channel_permanent_name:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public z(Ljava/util/List;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "messages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
