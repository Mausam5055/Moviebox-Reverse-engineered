.class public final Lcom/transsion/push/feature/seek/b;
.super Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/push/feature/seek/b$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/transsion/push/feature/seek/b$a;


# instance fields
.field private final e:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/push/feature/seek/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/push/feature/seek/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/push/feature/seek/b;->f:Lcom/transsion/push/feature/seek/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;-><init>()V

    new-instance v0, Lcom/transsion/push/feature/seek/a;

    invoke-direct {v0}, Lcom/transsion/push/feature/seek/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/push/feature/seek/b;->e:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic H()Lcom/transsion/mpush/core/renderer/s;
    .locals 1

    invoke-static {}, Lcom/transsion/push/feature/seek/b;->J()Lcom/transsion/mpush/core/renderer/s;

    move-result-object v0

    return-object v0
.end method

.method private final I()Lcom/transsion/mpush/core/renderer/s;
    .locals 1

    iget-object v0, p0, Lcom/transsion/push/feature/seek/b;->e:Lkotlin/Lazy;

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
.method public E(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;->E(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/transsion/push/feature/seek/SeekPushFeature;->d:Lcom/transsion/push/feature/seek/SeekPushFeature$a;

    invoke-virtual {p2, p1}, Lcom/transsion/push/feature/seek/SeekPushFeature$a;->b(Landroid/content/Context;)V

    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;)Landroidx/core/app/NotificationCompat$m;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/transsion/mpush/core/renderer/i;->a(Landroid/content/Context;Ljava/lang/String;)Landroidx/core/app/NotificationCompat$m;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$m;->E(Z)Landroidx/core/app/NotificationCompat$m;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$m;->l(Z)Landroidx/core/app/NotificationCompat$m;

    move-result-object p1

    const-string p2, "setAutoCancel(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public q(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Lcom/transsion/mpush/api/LocalPushMessage;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/push/feature/seek/b;->I()Lcom/transsion/mpush/core/renderer/s;

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

    const-string v0, "push_sdk_seek_channel"

    return-object v0
.end method

.method protected u()Ljava/lang/String;
    .locals 1

    const-string v0, "\u6c42\u7247\u63a8\u9001"

    return-object v0
.end method

.method public v(Lcom/transsion/mpush/api/LocalPushMessage;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/push/feature/seek/b;->I()Lcom/transsion/mpush/core/renderer/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/mpush/core/renderer/s;->v(Lcom/transsion/mpush/api/LocalPushMessage;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public w(Lcom/transsion/mpush/api/LocalPushMessage;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/push/feature/seek/b;->I()Lcom/transsion/mpush/core/renderer/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/mpush/core/renderer/s;->w(Lcom/transsion/mpush/api/LocalPushMessage;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
