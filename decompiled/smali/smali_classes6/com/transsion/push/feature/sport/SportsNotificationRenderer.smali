.class public final Lcom/transsion/push/feature/sport/SportsNotificationRenderer;
.super Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/push/feature/sport/SportsNotificationRenderer$a;,
        Lcom/transsion/push/feature/sport/SportsNotificationRenderer$b;
    }
.end annotation


# static fields
.field public static final e:Lcom/transsion/push/feature/sport/SportsNotificationRenderer$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/push/feature/sport/SportsNotificationRenderer$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/push/feature/sport/SportsNotificationRenderer$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/push/feature/sport/SportsNotificationRenderer;->e:Lcom/transsion/push/feature/sport/SportsNotificationRenderer$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;-><init>()V

    return-void
.end method

.method private final H(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Lcom/transsion/push/feature/sport/SportsNotificationRenderer$b;)V
    .locals 10

    invoke-virtual {p4}, Lcom/transsion/push/feature/sport/SportsNotificationRenderer$b;->a()Lcom/transsion/push/feature/sport/ServerMatchListItemData;

    move-result-object v0

    invoke-virtual {p4}, Lcom/transsion/push/feature/sport/SportsNotificationRenderer$b;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p4}, Lcom/transsion/push/feature/sport/SportsNotificationRenderer$b;->c()Landroid/graphics/Bitmap;

    move-result-object p4

    sget v1, Lcom/transsion/lib/push/R$string;->match_vs:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "getString(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/push/feature/sport/ServerMatchListItemData;->getTeam1()Lcom/transsion/push/feature/sport/TeamInfoMatch;

    move-result-object v3

    const-string v4, ""

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/transsion/push/feature/sport/TeamInfoMatch;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    move-object v3, v4

    :cond_1
    invoke-virtual {v0}, Lcom/transsion/push/feature/sport/ServerMatchListItemData;->getTeam2()Lcom/transsion/push/feature/sport/TeamInfoMatch;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/transsion/push/feature/sport/TeamInfoMatch;->getName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    move-object v4, v5

    :cond_3
    :goto_0
    sget v5, Lcom/transsion/lib/push/R$string;->match_vs_notification1:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/transsion/lib/push/R$string;->match_vs_notification2:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_4

    sget v1, Lcom/transsion/lib/push/R$id;->notification_title_tv:I

    invoke-virtual {p2, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_4
    if-eqz p3, :cond_5

    sget p2, Lcom/transsion/lib/push/R$id;->notification_title_tv:I

    invoke-virtual {p3, p2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_5
    if-eqz p3, :cond_8

    sget p1, Lcom/transsion/lib/push/R$id;->tv_team1_name:I

    invoke-virtual {p3, p1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget p1, Lcom/transsion/lib/push/R$id;->tv_team2_name:I

    invoke-virtual {p3, p1, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget p1, Lcom/transsion/lib/push/R$id;->match_round:I

    invoke-virtual {v0}, Lcom/transsion/push/feature/sport/ServerMatchListItemData;->getMatchRound()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/transsion/push/feature/sport/ServerMatchListItemData;->getStartTime()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/push/feature/sport/SportsNotificationRenderer;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/transsion/lib/push/R$id;->btn_upcoming:I

    invoke-virtual {p3, p2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz v2, :cond_6

    sget-object v1, Lcom/transsion/mpush/core/utils/c;->a:Lcom/transsion/mpush/core/utils/c;

    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    int-to-float v4, p2

    const/16 v6, 0xa

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/transsion/mpush/core/utils/c;->h(Lcom/transsion/mpush/core/utils/c;Landroid/graphics/Bitmap;Ljava/lang/Integer;FIILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p2

    sget v0, Lcom/transsion/lib/push/R$id;->iv_team1_logo:I

    invoke-virtual {p3, v0, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :cond_6
    if-eqz p4, :cond_7

    sget-object v3, Lcom/transsion/mpush/core/utils/c;->a:Lcom/transsion/mpush/core/utils/c;

    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p1

    int-to-float v6, p1

    const/16 v8, 0xa

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v4, p4

    invoke-static/range {v3 .. v9}, Lcom/transsion/mpush/core/utils/c;->h(Lcom/transsion/mpush/core/utils/c;Landroid/graphics/Bitmap;Ljava/lang/Integer;FIILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p1

    sget p2, Lcom/transsion/lib/push/R$id;->iv_team2_logo:I

    invoke-virtual {p3, p2, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :cond_7
    sget p1, Lcom/transsion/lib/push/R$id;->match_push_ly:I

    const-string p2, "setBackgroundResource"

    sget p4, Lcom/transsion/lib/push/R$drawable;->push_layer_match_push_bg:I

    invoke-virtual {p3, p1, p2, p4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :cond_8
    return-void
.end method

.method private final I(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {p1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public D(Landroidx/core/app/NotificationCompat$m;Lcom/transsion/mpush/api/LocalPushMessage;Landroid/graphics/Bitmap;)V
    .locals 0

    const-string p3, "builder"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "message"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/mpush/api/LocalPushMessage;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/core/app/NotificationCompat$m;->q(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$m;

    move-result-object p1

    invoke-virtual {p2}, Lcom/transsion/mpush/api/LocalPushMessage;->getDesc()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$m;->p(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$m;

    return-void
.end method

.method public final J(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;Lcom/transsion/push/feature/sport/ServerMatchListItemData;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    invoke-super {p0, p1, p2}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;->show(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;)V

    return-void

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v0, Lcom/transsion/push/feature/sport/SportsNotificationRenderer$show$1;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p3

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/transsion/push/feature/sport/SportsNotificationRenderer$show$1;-><init>(Lcom/transsion/push/feature/sport/ServerMatchListItemData;Lcom/transsion/push/feature/sport/SportsNotificationRenderer;Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public q(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Lcom/transsion/mpush/api/LocalPushMessage;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 0

    const-string p5, "context"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "message"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p4, p6, Lcom/transsion/push/feature/sport/SportsNotificationRenderer$b;

    if-eqz p4, :cond_0

    check-cast p6, Lcom/transsion/push/feature/sport/SportsNotificationRenderer$b;

    invoke-direct {p0, p1, p2, p3, p6}, Lcom/transsion/push/feature/sport/SportsNotificationRenderer;->H(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Lcom/transsion/push/feature/sport/SportsNotificationRenderer$b;)V

    :cond_0
    return-void
.end method

.method protected t()Ljava/lang/String;
    .locals 1

    const-string v0, "push_sdk_sports_channel"

    return-object v0
.end method

.method protected u()Ljava/lang/String;
    .locals 1

    const-string v0, "Sports Notification"

    return-object v0
.end method

.method public v(Lcom/transsion/mpush/api/LocalPushMessage;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget p1, Lcom/transsion/lib/push/R$layout;->push_notification_normal_small_match:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public w(Lcom/transsion/mpush/api/LocalPushMessage;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget p1, Lcom/transsion/lib/push/R$layout;->push_notification_match_upcoming:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
