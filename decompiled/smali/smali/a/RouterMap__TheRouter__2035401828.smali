.class public La/RouterMap__TheRouter__2035401828;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/therouter/router/d;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final COUNT:Ljava/lang/String; = "1"

.field public static final ROUTERMAP0:Ljava/lang/String; = "[{\"path\":\"/subscription/my_subscription\",\"className\":\"com.transsion.room.sub.activity.subscription.SubscriptionListActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/subscription/subscription\",\"className\":\"com.transsion.room.sub.activity.subscription.SubscriptionActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/ugc/likes\",\"className\":\"com.transsion.room.sub.activity.likes.UgcLikesActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/room/list\",\"className\":\"com.transsion.room.activity.RoomListActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/room/home\",\"className\":\"com.transsion.room.activity.RoomHomeActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/room/detail\",\"className\":\"com.transsion.room.activity.RoomDetailActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/room/others_list\",\"className\":\"com.transsion.room.activity.OthersRoomListActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/room/my\",\"className\":\"com.transsion.room.activity.MyRoomActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/room/hot_room\",\"className\":\"com.transsion.room.activity.HotRoomsActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/room/create\",\"className\":\"com.transsion.room.activity.CreateRoomActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}}]"

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

    const-string v1, "/subscription/my_subscription"

    const-string v2, "com.transsion.room.sub.activity.subscription.SubscriptionListActivity"

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/subscription/subscription"

    const-string v2, "com.transsion.room.sub.activity.subscription.SubscriptionActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/ugc/likes"

    const-string v2, "com.transsion.room.sub.activity.likes.UgcLikesActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/room/list"

    const-string v2, "com.transsion.room.activity.RoomListActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/room/home"

    const-string v2, "com.transsion.room.activity.RoomHomeActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/room/detail"

    const-string v2, "com.transsion.room.activity.RoomDetailActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/room/others_list"

    const-string v2, "com.transsion.room.activity.OthersRoomListActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/room/my"

    const-string v2, "com.transsion.room.activity.MyRoomActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/room/hot_room"

    const-string v2, "com.transsion.room.activity.HotRoomsActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/room/create"

    const-string v2, "com.transsion.room.activity.CreateRoomActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    invoke-static {}, La/RouterMap__TheRouter__2035401828;->addRoute()V

    return-void
.end method
