.class public final Lv6/x;
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

    const-string v0, "UPDATE hisavana_ab_room SET request_time = ? WHERE layer_id = ?"

    return-object v0
.end method
