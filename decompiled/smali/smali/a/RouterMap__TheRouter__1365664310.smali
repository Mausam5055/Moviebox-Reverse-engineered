.class public La/RouterMap__TheRouter__1365664310;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/therouter/router/d;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final COUNT:Ljava/lang/String; = "1"

.field public static final ROUTERMAP0:Ljava/lang/String; = "[{\"path\":\"/movie/staff\",\"className\":\"com.transsion.moviedetail.staff.MovieStaffActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/movie/detail\",\"className\":\"com.transsion.moviedetail.activity.MovieDetailActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}}]"

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

    const-string v1, "/movie/staff"

    const-string v2, "com.transsion.moviedetail.staff.MovieStaffActivity"

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/movie/detail"

    const-string v2, "com.transsion.moviedetail.activity.MovieDetailActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    invoke-static {}, La/RouterMap__TheRouter__1365664310;->addRoute()V

    return-void
.end method
