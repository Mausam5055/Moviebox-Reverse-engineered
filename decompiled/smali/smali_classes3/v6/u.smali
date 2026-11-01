.class public final Lv6/u;
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

    const-string v0, "DELETE FROM `hisavana_ab_room` WHERE `layer_id` = ?"

    return-object v0
.end method

.method public final j(La4/h;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Lv6/z;

    invoke-virtual {p2}, Lv6/z;->getLayerId()J

    move-result-wide v0

    const/4 p2, 0x1

    invoke-interface {p1, p2, v0, v1}, La4/f;->c(IJ)V

    return-void
.end method
