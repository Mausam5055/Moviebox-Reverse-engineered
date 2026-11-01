.class public Lcom/transsion/player/exo/DemoDownloadService;
.super Landroidx/media3/exoplayer/offline/DownloadService;


# direct methods
.method public constructor <init>()V
    .locals 7

    sget v5, Lcom/transsion/player/R$string;->exo_download_notification_channel_name:I

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    const-string v4, "download_channel"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/offline/DownloadService;-><init>(IJLjava/lang/String;II)V

    return-void
.end method


# virtual methods
.method protected m()Landroidx/media3/exoplayer/offline/DownloadManager;
    .locals 1

    invoke-static {p0}, Lco/a;->h(Landroid/content/Context;)Landroidx/media3/exoplayer/offline/DownloadManager;

    move-result-object v0

    invoke-static {p0}, Lco/a;->i(Landroid/content/Context;)Landroidx/media3/exoplayer/offline/k;

    return-object v0
.end method

.method protected n(Ljava/util/List;I)Landroid/app/Notification;
    .locals 7

    invoke-static {p0}, Lco/a;->i(Landroid/content/Context;)Landroidx/media3/exoplayer/offline/k;

    move-result-object v0

    sget v2, Lcom/transsion/player/R$mipmap;->player_ic_download:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/exoplayer/offline/k;->b(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;Ljava/util/List;I)Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method protected q()Lf2/f;
    .locals 2

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/media3/exoplayer/scheduler/PlatformScheduler;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/scheduler/PlatformScheduler;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
