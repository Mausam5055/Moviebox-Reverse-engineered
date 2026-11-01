.class public final Lv6/n;
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

    const-string v0, "INSERT OR REPLACE INTO `hisavana_local_ab_room` (`local_ab_version_code`,`local_ab_json`) VALUES (?,?)"

    return-object v0
.end method

.method public final j(La4/h;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Lv6/r;

    iget-wide v0, p2, Lv6/r;->a:J

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, La4/f;->c(IJ)V

    iget-object p2, p2, Lv6/r;->b:Ljava/lang/String;

    const/4 v0, 0x2

    if-nez p2, :cond_0

    invoke-interface {p1, v0}, La4/f;->g(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0, p2}, La4/f;->y(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
