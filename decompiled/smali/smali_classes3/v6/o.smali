.class public final Lv6/o;
.super Landroidx/room/f;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/room/f;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `hisavana_local_ab_room` SET `local_ab_version_code` = ?,`local_ab_json` = ? WHERE `local_ab_version_code` = ?"

    return-object v0
.end method

.method public final j(La4/h;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Lv6/r;

    iget-wide v0, p2, Lv6/r;->a:J

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, La4/f;->c(IJ)V

    iget-object v0, p2, Lv6/r;->b:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, La4/f;->g(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1, v0}, La4/f;->y(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x3

    iget-wide v1, p2, Lv6/r;->a:J

    invoke-interface {p1, v0, v1, v2}, La4/f;->c(IJ)V

    return-void
.end method
