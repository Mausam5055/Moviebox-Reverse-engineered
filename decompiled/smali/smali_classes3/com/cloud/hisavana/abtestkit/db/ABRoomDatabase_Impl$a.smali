.class public final Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl$a;
.super Landroidx/room/f0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;->s(Landroidx/room/c;)La4/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl$a;->b:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/room/f0$b;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(La4/d;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `hisavana_ab_room` (`layer_id` INTEGER NOT NULL, `request_time` INTEGER NOT NULL, `ab_info` TEXT, PRIMARY KEY(`layer_id`))"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `hisavana_local_ab_room` (`local_ab_version_code` INTEGER NOT NULL, `local_ab_json` TEXT, PRIMARY KEY(`local_ab_version_code`))"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'c3731bb55f7c1b83c5a17ab41e6dc2b1\')"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    return-void
.end method

.method public final b(La4/d;)V
    .locals 2

    const-string v0, "DROP TABLE IF EXISTS `hisavana_ab_room`"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `hisavana_local_ab_room`"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl$a;->b:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-static {v0}, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;->i0(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/room/RoomDatabase$b;

    invoke-virtual {v1, p1}, Landroidx/room/RoomDatabase$b;->c(La4/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(La4/d;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl$a;->b:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-static {v0}, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;->k0(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/room/RoomDatabase$b;

    invoke-virtual {v1, p1}, Landroidx/room/RoomDatabase$b;->a(La4/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(La4/d;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl$a;->b:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;->j0(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;La4/d;)V

    iget-object v0, p0, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl$a;->b:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;->l0(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;La4/d;)V

    iget-object v0, p0, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl$a;->b:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-static {v0}, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;->m0(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/room/RoomDatabase$b;

    invoke-virtual {v1, p1}, Landroidx/room/RoomDatabase$b;->e(La4/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e(La4/d;)V
    .locals 0

    return-void
.end method

.method public final f(La4/d;)V
    .locals 0

    invoke-static {p1}, Landroidx/room/util/b;->a(La4/d;)V

    return-void
.end method

.method public final g(La4/d;)Landroidx/room/f0$c;
    .locals 12

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v1, Landroidx/room/util/o$a;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v3, "layer_id"

    const-string v4, "INTEGER"

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "layer_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/room/util/o$a;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v4, "request_time"

    const-string v5, "INTEGER"

    const/4 v7, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "request_time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/room/util/o$a;

    const-string v4, "ab_info"

    const-string v5, "TEXT"

    const/4 v6, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "ab_info"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(I)V

    new-instance v4, Landroidx/room/util/o;

    const-string v5, "hisavana_ab_room"

    invoke-direct {v4, v5, v0, v1, v3}, Landroidx/room/util/o;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    invoke-static {p1, v5}, Landroidx/room/util/o;->a(La4/d;Ljava/lang/String;)Landroidx/room/util/o;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/room/util/o;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "\n Found:\n"

    if-nez v1, :cond_0

    new-instance p1, Landroidx/room/f0$c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "hisavana_ab_room(com.cloud.hisavana.abtestkit.db.entities.OnlineABEntity).\n Expected:\n"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Landroidx/room/f0$c;-><init>(ZLjava/lang/String;)V

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v1, Landroidx/room/util/o$a;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-string v5, "local_ab_version_code"

    const-string v6, "INTEGER"

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "local_ab_version_code"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/room/util/o$a;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v6, "local_ab_json"

    const-string v7, "TEXT"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "local_ab_json"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(I)V

    new-instance v5, Landroidx/room/util/o;

    const-string v6, "hisavana_local_ab_room"

    invoke-direct {v5, v6, v0, v1, v4}, Landroidx/room/util/o;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    invoke-static {p1, v6}, Landroidx/room/util/o;->a(La4/d;Ljava/lang/String;)Landroidx/room/util/o;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroidx/room/util/o;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroidx/room/f0$c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "hisavana_local_ab_room(com.cloud.hisavana.abtestkit.db.entities.LocalABEntity).\n Expected:\n"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Landroidx/room/f0$c;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_1
    new-instance p1, Landroidx/room/f0$c;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroidx/room/f0$c;-><init>(ZLjava/lang/String;)V

    return-object p1
.end method
