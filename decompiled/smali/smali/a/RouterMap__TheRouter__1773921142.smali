.class public La/RouterMap__TheRouter__1773921142;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/therouter/router/d;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final COUNT:Ljava/lang/String; = "1"

.field public static final ROUTERMAP0:Ljava/lang/String; = "[{\"path\":\"/download/ugc_my_downloads\",\"className\":\"com.transsnet.downloader.ugc.activity.UGCMyDownloadsActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/download/ugc_collection_list\",\"className\":\"com.transsnet.downloader.ugc.activity.UGCDownloadCollectionListActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/download/transfer\",\"className\":\"com.transsnet.downloader.activity.TransferActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/download/series_list\",\"className\":\"com.transsnet.downloader.activity.DownloadSeriesListActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/download/panel_activity\",\"className\":\"com.transsnet.downloader.activity.DownloadPanelActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/download/play_history\",\"className\":\"com.transsnet.downloader.activity.AllHistoricalPlayRecordActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}}]"

.field public static final TAG:Ljava/lang/String; = "Created by kymjs, and APT Version is 1.3.0."

.field public static final THEROUTER_APT_VERSION:Ljava/lang/String; = "1.3.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addRoute()V
    .locals 4

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/download/ugc_my_downloads"

    const-string v2, "com.transsnet.downloader.ugc.activity.UGCMyDownloadsActivity"

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/download/ugc_collection_list"

    const-string v2, "com.transsnet.downloader.ugc.activity.UGCDownloadCollectionListActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/download/transfer"

    const-string v2, "com.transsnet.downloader.activity.TransferActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/download/series_list"

    const-string v2, "com.transsnet.downloader.activity.DownloadSeriesListActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/download/panel_activity"

    const-string v2, "com.transsnet.downloader.activity.DownloadPanelActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/download/play_history"

    const-string v2, "com.transsnet.downloader.activity.AllHistoricalPlayRecordActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    invoke-static {}, La/RouterMap__TheRouter__1773921142;->addRoute()V

    return-void
.end method
