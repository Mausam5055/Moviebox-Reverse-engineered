.class public final Lv6/t;
.super Landroidx/room/h;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/room/h;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `hisavana_ab_room` (`layer_id`,`request_time`,`ab_info`) VALUES (?,?,?)"

    return-object v0
.end method

.method public final j(La4/h;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Lv6/z;

    invoke-virtual {p2}, Lv6/z;->getLayerId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, La4/f;->c(IJ)V

    invoke-virtual {p2}, Lv6/z;->getRequestTime()J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, La4/f;->c(IJ)V

    invoke-virtual {p2}, Lv6/z;->getInfo()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, La4/f;->g(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lv6/z;->getInfo()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, La4/f;->y(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
