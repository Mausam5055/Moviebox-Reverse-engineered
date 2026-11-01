.class public final Lv6/v;
.super Landroidx/room/j0;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/room/j0;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM hisavana_ab_room WHERE layer_id IN (SELECT layer_id FROM hisavana_ab_room ORDER BY request_time ASC LIMIT ?)"

    return-object v0
.end method
