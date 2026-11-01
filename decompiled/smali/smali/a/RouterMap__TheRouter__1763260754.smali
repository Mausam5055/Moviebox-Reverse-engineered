.class public La/RouterMap__TheRouter__1763260754;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/therouter/router/d;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final COUNT:Ljava/lang/String; = "1"

.field public static final ROUTERMAP0:Ljava/lang/String; = "[{\"path\":\"/postdetail/favorite\",\"className\":\"com.transsion.postdetail.ui.activity.favorite.FavoriteActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/postdetail/feedback_input\",\"className\":\"com.transsion.postdetail.ui.activity.PostFeedbackInputActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/post/detailVideo\",\"className\":\"com.transsion.postdetail.ui.activity.PostDetailVideoActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/post/detail\",\"className\":\"com.transsion.postdetail.ui.activity.PostDetailActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/video/detail\",\"className\":\"com.transsion.postdetail.ui.activity.LocalVideoDetailActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/my_activity\",\"className\":\"com.transsion.postdetail.myactivity.MyActivityActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/post/my_comment\",\"className\":\"com.transsion.postdetail.comment.ui.CommentListActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}}]"

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

    const-string v1, "/postdetail/favorite"

    const-string v2, "com.transsion.postdetail.ui.activity.favorite.FavoriteActivity"

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/postdetail/feedback_input"

    const-string v2, "com.transsion.postdetail.ui.activity.PostFeedbackInputActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/post/detailVideo"

    const-string v2, "com.transsion.postdetail.ui.activity.PostDetailVideoActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/post/detail"

    const-string v2, "com.transsion.postdetail.ui.activity.PostDetailActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/video/detail"

    const-string v2, "com.transsion.postdetail.ui.activity.LocalVideoDetailActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/profile/my_activity"

    const-string v2, "com.transsion.postdetail.myactivity.MyActivityActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/post/my_comment"

    const-string v2, "com.transsion.postdetail.comment.ui.CommentListActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    invoke-static {}, La/RouterMap__TheRouter__1763260754;->addRoute()V

    return-void
.end method
