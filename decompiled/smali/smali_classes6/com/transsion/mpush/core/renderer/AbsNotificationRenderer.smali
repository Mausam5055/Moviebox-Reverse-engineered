.class public abstract Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;
.super Lcom/transsion/mpush/core/renderer/i;

# interfaces
.implements Lcom/transsion/mpush/api/INotificationRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$a;


# instance fields
.field private final c:Lkotlinx/coroutines/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;->d:Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$a;

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

    iput-object v0, p0, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;->c:Lkotlinx/coroutines/n0;

    return-void
.end method

.method public static synthetic A(Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;Landroid/graphics/Bitmap;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;->z(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: internalShow"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final B(Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;Landroid/content/Context;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;->r(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final G(Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;Landroid/content/Context;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;->r(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic o(Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;Landroid/content/Context;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;->B(Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;Landroid/content/Context;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;Landroid/content/Context;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;->G(Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;Landroid/content/Context;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public C(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public D(Landroidx/core/app/NotificationCompat$m;Lcom/transsion/mpush/api/LocalPushMessage;Landroid/graphics/Bitmap;)V
    .locals 0

    const-string p3, "builder"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public E(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lln/b;->a:Lln/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lln/b;->k(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected F(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msgBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;->c:Lkotlinx/coroutines/n0;

    new-instance v4, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$updateMsgStatus$1;

    const/4 v0, 0x0

    invoke-direct {v4, p2, p1, v0}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$updateMsgStatus$1;-><init>(Lcom/transsion/mpush/api/LocalPushMessage;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public l(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;->t()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/transsion/mpush/core/renderer/b;

    invoke-direct {v1, p0, p1, v0}, Lcom/transsion/mpush/core/renderer/b;-><init>(Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/mpush/core/renderer/i;->d(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    return-void
.end method

.method public q(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Lcom/transsion/mpush/api/LocalPushMessage;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 0

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected r(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;->u()Ljava/lang/String;

    move-result-object v4

    sget v0, Lcom/transsion/mpush/R$string;->push_channel_standard_desc:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/mpush/core/renderer/i;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public s(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;)Landroid/app/PendingIntent;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public show(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;)V
    .locals 14

    move-object v7, p0

    move-object v1, p1

    move-object/from16 v2, p2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/mpush/api/LocalPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/mpush/api/LocalPushMessage;->getStyle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/mpush/api/LocalPushMessage;->getTitle()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u3010\u6e32\u67d3\u5c42\u3011\u5f00\u59cb\u6e32\u67d3\u901a\u77e5\uff0c\u6d88\u606fID\uff1a"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\uff0c\u6d88\u606f\u7c7b\u578b\uff1a"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\uff0c\u6807\u9898\uff1a"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v9, "M_PUSH_SDK"

    const/4 v11, 0x0

    move-object v8, v0

    invoke-static/range {v8 .. v13}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;->x(Lcom/transsion/mpush/api/LocalPushMessage;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p2}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;->y(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;)I

    move-result v4

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/mpush/api/LocalPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u3010\u6e32\u67d3\u5c42\u3011\u5f00\u59cb\u52a0\u8f7d\u56fe\u7247\uff0c\u6d88\u606fID\uff1a"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\uff0c\u56fe\u7247URL\uff1a"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v9, "M_PUSH_SDK"

    const/4 v11, 0x0

    move-object v8, v0

    invoke-static/range {v8 .. v13}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Lln/a;->a:Lln/a;

    invoke-virtual {v0}, Lln/a;->f()Lcom/transsion/mpush/api/IPushImageLoader;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$b;

    invoke-direct {v5, v2, p0, p1}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$b;-><init>(Lcom/transsion/mpush/api/LocalPushMessage;Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;Landroid/content/Context;)V

    invoke-interface {v0, p1, v3, v4, v5}, Lcom/transsion/mpush/api/IPushImageLoader;->loadImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Lcom/transsion/mpush/api/IPushImageLoader$Callback;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/mpush/api/LocalPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u3010\u6e32\u67d3\u5c42\u3011\u6d88\u606f\u65e0\u56fe\u7247\uff0c\u76f4\u63a5\u5c55\u793a\uff0c\u6d88\u606fID\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v9, "M_PUSH_SDK"

    const/4 v11, 0x0

    move-object v8, v0

    invoke-static/range {v8 .. v13}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v0 .. v6}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;->A(Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;Landroid/graphics/Bitmap;Ljava/lang/Object;ILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method protected t()Ljava/lang/String;
    .locals 1

    const-string v0, "push_sdk_standard_channel"

    return-object v0
.end method

.method protected u()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/transsion/mpush/R$string;->push_channel_standard_name:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public v(Lcom/transsion/mpush/api/LocalPushMessage;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public w(Lcom/transsion/mpush/api/LocalPushMessage;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected x(Lcom/transsion/mpush/api/LocalPushMessage;)Ljava/lang/String;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/mpush/api/LocalPushMessage;->getImageArray()Ljava/util/List;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected y(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/mpush/api/LocalPushMessage;->getStyle()Ljava/lang/String;

    move-result-object p1

    const-string p2, "102"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x42c80000    # 100.0f

    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result p1

    const/high16 p2, 0x42a00000    # 80.0f

    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    sub-int/2addr p1, p2

    :goto_0
    return p1
.end method

.method public final z(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v0, p3

    const-string v1, "context"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "message"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v12, Llg/a;->a:Llg/a$a;

    const/4 v7, 0x0

    const/4 v13, 0x1

    if-eqz v0, :cond_0

    move v1, v13

    goto :goto_0

    :cond_0
    move v1, v7

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AbsNotificationRenderer] internalShow -> Start. Bitmap Present: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "M_PUSH_SDK"

    const/4 v4, 0x0

    move-object v1, v12

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;->t()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Lcom/transsion/mpush/core/renderer/a;

    invoke-direct {v2, v8, v9, v1}, Lcom/transsion/mpush/core/renderer/a;-><init>(Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v8, v9, v1, v2}, Lcom/transsion/mpush/core/renderer/i;->d(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v8, v9, v14}, Lcom/transsion/mpush/core/renderer/i;->a(Landroid/content/Context;Ljava/lang/String;)Landroidx/core/app/NotificationCompat$m;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/mpush/core/renderer/i;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$m;->J(I)Landroidx/core/app/NotificationCompat$m;

    move-result-object v15

    const-string v1, "setSmallIcon(...)"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/mpush/api/LocalPushMessage;->isRefresh()Z

    move-result v1

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    const-string v2, "M_PUSH_SDK"

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/mpush/api/LocalPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u3010\u6e32\u67d3\u5c42\u3011\u9759\u9ed8\u5237\u65b0\u6a21\u5f0f\uff0c\u5173\u95ed\u58f0\u97f3\u548c\u9707\u52a8\uff0c\u6d88\u606fID\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/16 v16, 0x0

    const/4 v4, 0x0

    move-object v1, v12

    move-object/from16 v6, v16

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {v15, v13}, Landroidx/core/app/NotificationCompat$m;->F(Z)Landroidx/core/app/NotificationCompat$m;

    invoke-virtual {v15, v7}, Landroidx/core/app/NotificationCompat$m;->t(I)Landroidx/core/app/NotificationCompat$m;

    const/4 v6, 0x0

    invoke-virtual {v15, v6}, Landroidx/core/app/NotificationCompat$m;->K(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$m;

    new-array v1, v13, [J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v7

    invoke-virtual {v15, v1}, Landroidx/core/app/NotificationCompat$m;->N([J)Landroidx/core/app/NotificationCompat$m;

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v14

    goto/16 :goto_7

    :cond_1
    const/4 v1, -0x1

    invoke-virtual {v15, v1}, Landroidx/core/app/NotificationCompat$m;->t(I)Landroidx/core/app/NotificationCompat$m;

    :goto_1
    invoke-virtual {v8, v10}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;->v(Lcom/transsion/mpush/api/LocalPushMessage;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v10}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;->w(Lcom/transsion/mpush/api/LocalPushMessage;)Ljava/lang/Integer;

    move-result-object v13

    if-nez v7, :cond_2

    if-eqz v13, :cond_3

    :cond_2
    move-object/from16 v16, v6

    goto :goto_2

    :cond_3
    const-string v2, "M_PUSH_SDK"

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/mpush/api/LocalPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u3010\u6e32\u67d3\u5c42\u3011\u4f7f\u7528\u9ed8\u8ba4\u6837\u5f0f\uff0c\u6d88\u606fID\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, v12

    move-object/from16 v16, v6

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {v8, v15, v10, v0}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;->D(Landroidx/core/app/NotificationCompat$m;Lcom/transsion/mpush/api/LocalPushMessage;Landroid/graphics/Bitmap;)V

    goto/16 :goto_5

    :goto_2
    const-string v2, "M_PUSH_SDK"

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/mpush/api/LocalPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u3010\u6e32\u67d3\u5c42\u3011\u4f7f\u7528\u81ea\u5b9a\u4e49\u5e03\u5c40\uff0c\u6d88\u606fID\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\uff0c\u6536\u8d77\u6001ID\uff1a"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\uff0c\u5c55\u5f00\u6001ID\uff1a"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, v12

    invoke-static/range {v1 .. v6}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v7, :cond_4

    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v1, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v15, v2}, Landroidx/core/app/NotificationCompat$m;->s(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$m;

    move-object v3, v2

    goto :goto_3

    :cond_4
    move-object/from16 v3, v16

    :goto_3
    if-eqz v13, :cond_5

    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v1, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v15, v2}, Landroidx/core/app/NotificationCompat$m;->r(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$m;

    move-object v4, v2

    goto :goto_4

    :cond_5
    move-object/from16 v4, v16

    :goto_4
    new-instance v1, Landroidx/core/app/NotificationCompat$o;

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$o;-><init>()V

    invoke-virtual {v15, v1}, Landroidx/core/app/NotificationCompat$m;->L(Landroidx/core/app/NotificationCompat$p;)Landroidx/core/app/NotificationCompat$m;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;->q(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Lcom/transsion/mpush/api/LocalPushMessage;Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    :goto_5
    invoke-virtual/range {p0 .. p2}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;->s(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;)Landroid/app/PendingIntent;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/mpush/api/LocalPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/transsion/mpush/core/renderer/i;->e(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v8, v9, v10, v4, v14}, Lcom/transsion/mpush/core/renderer/i;->b(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v7}, Lcom/transsion/mpush/core/renderer/i;->n(Lcom/transsion/mpush/core/renderer/i;Landroid/content/Context;Landroid/content/Intent;IZILjava/lang/Object;)Landroid/app/PendingIntent;

    move-result-object v1

    :cond_6
    invoke-virtual {v15, v1}, Landroidx/core/app/NotificationCompat$m;->o(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$m;

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/mpush/api/LocalPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/transsion/mpush/core/renderer/i;->e(Ljava/lang/String;)I

    move-result v7

    const-string v2, "M_PUSH_SDK"

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/mpush/api/LocalPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u3010\u6e32\u67d3\u5c42\u3011\u901a\u77e5\u53d1\u9001\u6210\u529f\uff0c\u6d88\u606fID\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\uff0c\u901a\u77e5ID\uff1a"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, v12

    invoke-static/range {v1 .. v6}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {v8, v9, v7, v15}, Lcom/transsion/mpush/core/renderer/i;->i(Landroid/content/Context;ILandroidx/core/app/NotificationCompat$m;)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/mpush/api/LocalPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual/range {p0 .. p2}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;->F(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;)V

    :cond_7
    const-string v2, "M_PUSH_SDK"

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/mpush/api/LocalPushMessage;->isRefresh()Z

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AbsNotificationRenderer] internalShow ->refresh msg can:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, v12

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/mpush/api/LocalPushMessage;->isRefresh()Z

    move-result v1

    if-nez v1, :cond_9

    if-nez v0, :cond_8

    const-string v6, "201"

    goto :goto_6

    :cond_8
    move-object/from16 v6, v16

    :goto_6
    invoke-virtual {v8, v9, v10, v14, v6}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;->E(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lln/a;->a:Lln/a;

    invoke-virtual {v0}, Lln/a;->i()Lcom/transsion/mpush/core/config/PushSdkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/mpush/core/config/PushSdkConfig;->getEnableRefresh()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.transsion.mpush.action.NEW_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static/range {p1 .. p1}, Lr1/a;->b(Landroid/content/Context;)Lr1/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr1/a;->d(Landroid/content/Intent;)Z

    const-string v1, "M_PUSH_SDK"

    const-string v2, "[AbsNotificationRenderer] internalShow -> Broadcast sent for refresh"

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v12

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_1
    move-exception v0

    :goto_7
    sget-object v2, Llg/a;->a:Llg/a$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AbsNotificationRenderer] internalShow -> Failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "M_PUSH_SDK"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v8, v9, v10, v1, v0}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;->C(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_9
    :goto_8
    return-void
.end method
