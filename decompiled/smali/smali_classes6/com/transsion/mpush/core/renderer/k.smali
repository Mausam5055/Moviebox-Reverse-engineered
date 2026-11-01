.class public Lcom/transsion/mpush/core/renderer/k;
.super Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/mpush/core/renderer/k$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/transsion/mpush/core/renderer/k$a;


# instance fields
.field private final e:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/mpush/core/renderer/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/mpush/core/renderer/k$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/mpush/core/renderer/k;->f:Lcom/transsion/mpush/core/renderer/k$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;-><init>()V

    new-instance v0, Lcom/transsion/mpush/core/renderer/j;

    invoke-direct {v0}, Lcom/transsion/mpush/core/renderer/j;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/mpush/core/renderer/k;->e:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic H()Lcom/transsion/mpush/core/renderer/s;
    .locals 1

    invoke-static {}, Lcom/transsion/mpush/core/renderer/k;->J()Lcom/transsion/mpush/core/renderer/s;

    move-result-object v0

    return-object v0
.end method

.method private final I()Lcom/transsion/mpush/core/renderer/s;
    .locals 1

    iget-object v0, p0, Lcom/transsion/mpush/core/renderer/k;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/mpush/core/renderer/s;

    return-object v0
.end method

.method private static final J()Lcom/transsion/mpush/core/renderer/s;
    .locals 1

    new-instance v0, Lcom/transsion/mpush/core/renderer/s;

    invoke-direct {v0}, Lcom/transsion/mpush/core/renderer/s;-><init>()V

    return-object v0
.end method


# virtual methods
.method public C(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 6

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {p2}, Lcom/transsion/mpush/api/LocalPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u3010FCM\u6e32\u67d3\u3011\u6d88\u606f\u56fe\u7247\u52a0\u8f7d\u5931\u8d25\uff0c\u6d88\u606fID\uff1a"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\uff0c\u5f02\u5e38\uff1a"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "M_PUSH_SDK"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p1, Lln/b;->a:Lln/b;

    invoke-virtual {p2}, Lcom/transsion/mpush/api/LocalPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lln/b;->d(Ljava/lang/String;Z)V

    return-void
.end method

.method public D(Landroidx/core/app/NotificationCompat$m;Lcom/transsion/mpush/api/LocalPushMessage;Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/mpush/core/renderer/k;->I()Lcom/transsion/mpush/core/renderer/s;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;->D(Landroidx/core/app/NotificationCompat$m;Lcom/transsion/mpush/api/LocalPushMessage;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public E(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p4, :cond_0

    const-string p4, "200"

    :cond_0
    sget-object p1, Lcom/transsion/mpush/core/config/MsgShowStatus;->INSTANCE:Lcom/transsion/mpush/core/config/MsgShowStatus;

    invoke-virtual {p1, p4}, Lcom/transsion/mpush/core/config/MsgShowStatus;->isShowStatus(Ljava/lang/String;)Z

    move-result p1

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {p2}, Lcom/transsion/mpush/api/LocalPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u3010FCM\u6e32\u67d3\u3011\u6d88\u606f\u5c55\u793a\u57cb\u70b9\u4e0a\u62a5\uff0c\u6d88\u606fID\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\uff0cshowStatus\uff1a"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\uff0c\u6210\u529f\uff1a"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "M_PUSH_SDK"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p3, Lln/b;->a:Lln/b;

    invoke-virtual {p2}, Lcom/transsion/mpush/api/LocalPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2, p1}, Lln/b;->d(Ljava/lang/String;Z)V

    return-void
.end method

.method public q(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Lcom/transsion/mpush/api/LocalPushMessage;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/mpush/core/renderer/k;->I()Lcom/transsion/mpush/core/renderer/s;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/mpush/core/renderer/s;->q(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Lcom/transsion/mpush/api/LocalPushMessage;Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    return-void
.end method

.method protected t()Ljava/lang/String;
    .locals 1

    const-string v0, "push_sdk_fcm_channel"

    return-object v0
.end method

.method protected u()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/transsion/mpush/R$string;->push_channel_fcm_name:I

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

    invoke-direct {p0}, Lcom/transsion/mpush/core/renderer/k;->I()Lcom/transsion/mpush/core/renderer/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/mpush/core/renderer/s;->v(Lcom/transsion/mpush/api/LocalPushMessage;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public w(Lcom/transsion/mpush/api/LocalPushMessage;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/mpush/core/renderer/k;->I()Lcom/transsion/mpush/core/renderer/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/mpush/core/renderer/s;->w(Lcom/transsion/mpush/api/LocalPushMessage;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
