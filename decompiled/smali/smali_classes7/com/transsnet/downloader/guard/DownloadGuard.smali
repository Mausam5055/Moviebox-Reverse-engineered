.class public final Lcom/transsnet/downloader/guard/DownloadGuard;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsnet/downloader/guard/DownloadGuard;

.field private static b:Z

.field private static final c:Lkotlin/Lazy;

.field private static d:Ljava/util/Map;

.field private static final e:Landroid/app/NotificationManager;

.field private static f:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsnet/downloader/guard/DownloadGuard;

    invoke-direct {v0}, Lcom/transsnet/downloader/guard/DownloadGuard;-><init>()V

    sput-object v0, Lcom/transsnet/downloader/guard/DownloadGuard;->a:Lcom/transsnet/downloader/guard/DownloadGuard;

    new-instance v1, Lcom/transsnet/downloader/guard/a;

    invoke-direct {v1}, Lcom/transsnet/downloader/guard/a;-><init>()V

    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    sput-object v1, Lcom/transsnet/downloader/guard/DownloadGuard;->c:Lkotlin/Lazy;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v1, Lcom/transsnet/downloader/guard/DownloadGuard;->d:Ljava/util/Map;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/NotificationManager;

    sput-object v1, Lcom/transsnet/downloader/guard/DownloadGuard;->e:Landroid/app/NotificationManager;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    invoke-static {}, Landroidx/media3/common/util/g0;->a()V

    invoke-virtual {v0}, Lcom/transsnet/downloader/guard/DownloadGuard;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    sget v3, Lcom/transsnet/downloader/R$string;->download_notifications_name:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Lm/f;->a(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-static {v1, v0}, Lm/c;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/transsnet/downloader/guard/DownloadGuard;->f:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lkotlinx/coroutines/n0;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/guard/DownloadGuard;->d()Lkotlinx/coroutines/n0;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic b(Lcom/transsnet/downloader/guard/DownloadGuard;)I
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/guard/DownloadGuard;->g()I

    move-result p0

    return p0
.end method

.method public static final synthetic c(Lcom/transsnet/downloader/guard/DownloadGuard;Lcom/transsion/baselib/db/download/DownloadBean;)Landroidx/core/app/NotificationCompat$m;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsnet/downloader/guard/DownloadGuard;->j(Lcom/transsion/baselib/db/download/DownloadBean;)Landroidx/core/app/NotificationCompat$m;

    move-result-object p0

    return-object p0
.end method

.method private static final d()Lkotlinx/coroutines/n0;
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    return-object v0
.end method

.method private final e()Lkotlinx/coroutines/n0;
    .locals 1

    sget-object v0, Lcom/transsnet/downloader/guard/DownloadGuard;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/n0;

    return-object v0
.end method

.method private final g()I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    sget v0, Lcom/transsnet/downloader/R$layout;->notification_download_complete:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsnet/downloader/R$layout;->notification_download_complete_v12:I

    :goto_0
    return v0
.end method

.method private final h(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeries()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    move-result v2

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isVideo()Z

    move-result p1

    invoke-static {v1, v2, p1}, Lcom/transsion/baseui/util/n;->b(IIZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    move-result v1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isVideo()Z

    move-result p1

    invoke-static {v1, p1}, Lcom/transsion/baseui/util/n;->c(IZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, ""

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final i()I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    sget v0, Lcom/transsnet/downloader/R$layout;->notification_downloading:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsnet/downloader/R$layout;->notification_downloading_v12:I

    :goto_0
    return v0
.end method

.method private final j(Lcom/transsion/baselib/db/download/DownloadBean;)Landroidx/core/app/NotificationCompat$m;
    .locals 10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/high16 v0, 0x4000000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x8000000

    :goto_0
    const-class v1, Lcom/transsion/push/api/IPushProvider;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/push/api/IPushProvider;

    if-eqz v1, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "oneroom://com.community.oneroom?type="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/download/panel_activity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "download_notify"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "download_status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "&channel=download_notification"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v4

    const-string v5, "getApp(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Lcom/transsion/push/api/IPushProvider;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    sget-object v4, Lcom/transsnet/downloader/guard/DownloadGuard;->a:Lcom/transsnet/downloader/guard/DownloadGuard;

    invoke-direct {v4, p1}, Lcom/transsnet/downloader/guard/DownloadGuard;->k(Lcom/transsion/baselib/db/download/DownloadBean;)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "notification_id"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "msg_source"

    const-string v6, "push"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v5, Lcom/transsion/mpush/core/config/PushMsgType;->DOWNLOAD_PUSH:Lcom/transsion/mpush/core/config/PushMsgType;

    invoke-virtual {v5}, Lcom/transsion/mpush/core/config/PushMsgType;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "msg_type"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {v4, p1}, Lcom/transsnet/downloader/guard/DownloadGuard;->k(Lcom/transsion/baselib/db/download/DownloadBean;)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "msg_id"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x24000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3, v2, v1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/transsnet/downloader/guard/DownloadGuard;->h(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    move-wide v3, v5

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    move-result-wide v3

    :goto_1
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_2

    :cond_2
    move-wide v7, v5

    :goto_2
    cmp-long v7, v7, v5

    if-gez v7, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :cond_4
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    invoke-static {v3, v4, v8}, Lcom/blankj/utilcode/util/i;->b(JI)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6, v8}, Lcom/blankj/utilcode/util/i;->b(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    move-result-wide v3

    long-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_4

    :cond_5
    const-wide/16 v4, 0x1

    :goto_4
    long-to-float v4, v4

    div-float/2addr v3, v4

    const/16 v4, 0x64

    int-to-float v5, v4

    mul-float/2addr v3, v5

    float-to-int v3, v3

    if-le v3, v4, :cond_6

    move v3, v4

    :cond_6
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/transsnet/downloader/guard/DownloadGuard;->i()I

    move-result v9

    invoke-direct {v5, v6, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sget v6, Lcom/transsnet/downloader/R$id;->progress:I

    invoke-virtual {v5, v6, v4, v3, v2}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    sget v3, Lcom/transsnet/downloader/R$id;->tv_name:I

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getTitleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget v3, Lcom/transsnet/downloader/R$id;->tv_epse:I

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, v3, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget p1, Lcom/transsnet/downloader/R$id;->tv_size:I

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, p1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-instance p1, Landroidx/core/app/NotificationCompat$m;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsnet/downloader/guard/DownloadGuard;->f()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v3, v4}, Landroidx/core/app/NotificationCompat$m;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v3, Lcom/tn/lib/widget/R$drawable;->push_small_logo:I

    invoke-virtual {p1, v3}, Landroidx/core/app/NotificationCompat$m;->J(I)Landroidx/core/app/NotificationCompat$m;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$m;->p(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$m;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$m;->o(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$m;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$m;->l(Z)Landroidx/core/app/NotificationCompat$m;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroidx/core/app/NotificationCompat$m;->s(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$m;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroidx/core/app/NotificationCompat$m;->E(Z)Landroidx/core/app/NotificationCompat$m;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$m;->l(Z)Landroidx/core/app/NotificationCompat$m;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroidx/core/app/NotificationCompat$m;->F(Z)Landroidx/core/app/NotificationCompat$m;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroidx/core/app/NotificationCompat$m;->r(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$m;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method private final k(Lcom/transsion/baselib/db/download/DownloadBean;)I
    .locals 1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/transsnet/downloader/guard/DownloadGuard;->l(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private final l(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    if-nez p2, :cond_0

    move-object p2, p1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-gtz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    :cond_1
    return p2
.end method

.method private final m(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/transsnet/downloader/guard/DownloadGuard;->k(Lcom/transsion/baselib/db/download/DownloadBean;)I

    move-result v0

    sget-object v1, Lcom/transsnet/downloader/guard/DownloadGuard;->d:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsnet/downloader/guard/DownloadGuard;->e:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-direct {p0}, Lcom/transsnet/downloader/guard/DownloadGuard;->e()Lkotlinx/coroutines/n0;

    move-result-object v2

    new-instance v5, Lcom/transsnet/downloader/guard/DownloadGuard$otherStatus$1;

    const/4 v0, 0x0

    invoke-direct {v5, p1, v0}, Lcom/transsnet/downloader/guard/DownloadGuard$otherStatus$1;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final n(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 10

    invoke-direct {p0, p1}, Lcom/transsnet/downloader/guard/DownloadGuard;->k(Lcom/transsion/baselib/db/download/DownloadBean;)I

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget-object v3, Lcom/transsnet/downloader/guard/DownloadGuard;->f:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    sub-long v3, v1, v3

    const-wide/16 v5, 0x7d0

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/transsnet/downloader/guard/DownloadGuard;->f:Ljava/util/Map;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/transsnet/downloader/guard/DownloadGuard;->e()Lkotlinx/coroutines/n0;

    move-result-object v4

    new-instance v7, Lcom/transsnet/downloader/guard/DownloadGuard$progress$1;

    const/4 v1, 0x0

    invoke-direct {v7, p1, v0, v1}, Lcom/transsnet/downloader/guard/DownloadGuard$progress$1;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;ILkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final o(I)V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    const-class v3, Lcom/transsnet/downloader/guard/DownloadGuardService;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt p1, v2, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    new-instance v2, Lcom/transsnet/downloader/guard/DownloadGuard$a;

    invoke-direct {v2}, Lcom/transsnet/downloader/guard/DownloadGuard$a;-><init>()V

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    sput-boolean v0, Lcom/transsnet/downloader/guard/DownloadGuard;->b:Z

    return-void
.end method


# virtual methods
.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "download_service"

    return-object v0
.end method

.method public final p(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 4

    const-string v0, "downloadInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsnet/downloader/guard/DownloadGuard;->k(Lcom/transsion/baselib/db/download/DownloadBean;)I

    move-result v0

    sget-object v1, Lcom/transsnet/downloader/guard/DownloadGuard;->d:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    sget-object v2, Lcom/transsnet/downloader/guard/DownloadGuard;->e:Landroid/app/NotificationManager;

    const/16 v3, 0x2766

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/transsnet/downloader/guard/DownloadGuard;->m(Lcom/transsion/baselib/db/download/DownloadBean;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/guard/DownloadGuard;->n(Lcom/transsion/baselib/db/download/DownloadBean;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v1, Lcom/transsnet/downloader/guard/DownloadGuard;->d:Ljava/util/Map;

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/transsnet/downloader/guard/DownloadGuard;->o(I)V

    :goto_0
    return-void
.end method
