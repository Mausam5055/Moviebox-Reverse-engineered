.class public La/RouterMap__TheRouter__2071639136;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/therouter/router/d;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final COUNT:Ljava/lang/String; = "1"

.field public static final ROUTERMAP0:Ljava/lang/String; = "[{\"path\":\"/home/tv_live_detail\",\"className\":\"com.transsion.home.tv.TvLiveDetailActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/home/playlist\",\"className\":\"com.transsion.home.category.PlayListActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/home/category\",\"className\":\"com.transsion.home.category.CategoryActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/home/ugc_ranking\",\"className\":\"com.transsion.home.activity.UGCRankingActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/home/hashtag\",\"className\":\"com.transsion.home.activity.UGCHashTagActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/home/ugc_filter\",\"className\":\"com.transsion.home.activity.UGCFilterActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/home/ugc_film_list\",\"className\":\"com.transsion.home.activity.UGCFilmListActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/rank/all\",\"className\":\"com.transsion.home.activity.RankAllActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/home/operatePage\",\"className\":\"com.transsion.home.activity.OperateActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/home/movieFilter\",\"className\":\"com.transsion.home.activity.MovieFilterActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/home/filter\",\"className\":\"com.transsion.home.activity.FilterActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}}]"

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

    const-string v1, "/home/tv_live_detail"

    const-string v2, "com.transsion.home.tv.TvLiveDetailActivity"

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/home/playlist"

    const-string v2, "com.transsion.home.category.PlayListActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/home/category"

    const-string v2, "com.transsion.home.category.CategoryActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/home/ugc_ranking"

    const-string v2, "com.transsion.home.activity.UGCRankingActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/home/hashtag"

    const-string v2, "com.transsion.home.activity.UGCHashTagActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/home/ugc_filter"

    const-string v2, "com.transsion.home.activity.UGCFilterActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/home/ugc_film_list"

    const-string v2, "com.transsion.home.activity.UGCFilmListActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/rank/all"

    const-string v2, "com.transsion.home.activity.RankAllActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/home/operatePage"

    const-string v2, "com.transsion.home.activity.OperateActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/home/movieFilter"

    const-string v2, "com.transsion.home.activity.MovieFilterActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/home/filter"

    const-string v2, "com.transsion.home.activity.FilterActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    invoke-static {}, La/RouterMap__TheRouter__2071639136;->addRoute()V

    return-void
.end method
