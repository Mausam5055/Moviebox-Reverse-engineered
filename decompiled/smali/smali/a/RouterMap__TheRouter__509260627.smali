.class public La/RouterMap__TheRouter__509260627;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/therouter/router/d;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final COUNT:Ljava/lang/String; = "1"

.field public static final ROUTERMAP0:Ljava/lang/String; = "[{\"path\":\"/ugc_shorts/detail\",\"className\":\"com.transsion.shorttv_pugc.ui.activity.ShortTvListActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/ugc_shorts/favorite\",\"className\":\"com.transsion.shorttv_pugc.ui.activity.ShortTVFavoriteActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/shorts/detail\",\"className\":\"com.transsion.shorttv.ui.activity.ShortTvListActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/shorts/favorite\",\"className\":\"com.transsion.shorttv.ui.activity.ShortTVFavoriteActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/shorttv/playlist\",\"className\":\"com.transsion.shorttv._channel.ui.activity.ShortTvPlayListActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/shorttv/movieFilter\",\"className\":\"com.transsion.shorttv._channel.ui.activity.ShortTvMovieFilterActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/shorttv/category\",\"className\":\"com.transsion.shorttv._channel.ui.activity.ShortTvCategoryActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}}]"

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

    const-string v1, "/ugc_shorts/detail"

    const-string v2, "com.transsion.shorttv_pugc.ui.activity.ShortTvListActivity"

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/ugc_shorts/favorite"

    const-string v2, "com.transsion.shorttv_pugc.ui.activity.ShortTVFavoriteActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/shorts/detail"

    const-string v2, "com.transsion.shorttv.ui.activity.ShortTvListActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/shorts/favorite"

    const-string v2, "com.transsion.shorttv.ui.activity.ShortTVFavoriteActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/shorttv/playlist"

    const-string v2, "com.transsion.shorttv._channel.ui.activity.ShortTvPlayListActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/shorttv/movieFilter"

    const-string v2, "com.transsion.shorttv._channel.ui.activity.ShortTvMovieFilterActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/shorttv/category"

    const-string v2, "com.transsion.shorttv._channel.ui.activity.ShortTvCategoryActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    invoke-static {}, La/RouterMap__TheRouter__509260627;->addRoute()V

    return-void
.end method
