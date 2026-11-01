.class Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl$a;
.super Landroidx/room/f0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl;->s(Landroidx/room/c;)La4/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl;I)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl$a;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl;

    invoke-direct {p0, p2}, Landroidx/room/f0$b;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(La4/d;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `cloudList_room` (`codeSeatId` TEXT NOT NULL, `code_seat_bean` TEXT, PRIMARY KEY(`codeSeatId`))"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `adList_room` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `ad_creative_id` TEXT, `codeSeatId` TEXT, `file_path` TEXT, `price` REAL, `is_offline_ad` INTEGER, `ad_request_ver` INTEGER, `ad_bean` TEXT)"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `attr_click_room` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `ac_type` INTEGER NOT NULL, `pkg` TEXT NOT NULL, `dl_type` TEXT NOT NULL, `codeSeatId` TEXT NOT NULL, `click_ts` INTEGER NOT NULL, `ad_creative_id` TEXT NOT NULL)"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `attr_impression_room` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `pkg` TEXT NOT NULL, `imp_ts` INTEGER NOT NULL, `ad_creative_id` TEXT NOT NULL)"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `retry_tracking_table_room` (`uuid` TEXT NOT NULL, `create_time` INTEGER, `retry_times` INTEGER, `tracking_data` TEXT, `md5` TEXT, PRIMARY KEY(`uuid`))"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `default_ad_room` (`ad_creative_id` TEXT NOT NULL, `codeSeatId` TEXT NOT NULL, `ad_type` INTEGER NOT NULL, `price` REAL, `ad_request_ver` INTEGER NOT NULL, `displayed_times` INTEGER NOT NULL, `displayed_date` TEXT, `start_date` TEXT, `end_date` TEXT, `display_max_times` INTEGER NOT NULL, `file_path` TEXT, `default_country_white` TEXT, `default_country_black` TEXT, `default_brand_white` TEXT, `default_brand_black` TEXT, `ad_bean` TEXT, PRIMARY KEY(`ad_creative_id`, `codeSeatId`))"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'45caaee56032168186f6d5e50f533e4c\')"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    return-void
.end method

.method public b(La4/d;)V
    .locals 2

    const-string v0, "DROP TABLE IF EXISTS `cloudList_room`"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `adList_room`"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `attr_click_room`"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `attr_impression_room`"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `retry_tracking_table_room`"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `default_ad_room`"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl$a;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl;->E0(Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl;)Ljava/util/List;

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

.method public c(La4/d;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl$a;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl;->F0(Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl;)Ljava/util/List;

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

.method public d(La4/d;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl$a;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl;->D0(Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl;La4/d;)La4/d;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl$a;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl;->G0(Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl;La4/d;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl$a;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl;->H0(Lcom/cloud/hisavana/sdk/database/HSRoomDatabase_Impl;)Ljava/util/List;

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

.method public e(La4/d;)V
    .locals 0

    return-void
.end method

.method public f(La4/d;)V
    .locals 0

    invoke-static {p1}, Landroidx/room/util/b;->a(La4/d;)V

    return-void
.end method

.method public g(La4/d;)Landroidx/room/f0$c;
    .locals 28

    move-object/from16 v0, p1

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Landroidx/room/util/o$a;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v4, "codeSeatId"

    const-string v5, "TEXT"

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "codeSeatId"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-string v5, "code_seat_bean"

    const-string v6, "TEXT"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "code_seat_bean"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashSet;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(I)V

    new-instance v6, Landroidx/room/util/o;

    const-string v7, "cloudList_room"

    invoke-direct {v6, v7, v1, v2, v5}, Landroidx/room/util/o;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    invoke-static {v0, v7}, Landroidx/room/util/o;->a(La4/d;Ljava/lang/String;)Landroidx/room/util/o;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroidx/room/util/o;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "\n Found:\n"

    if-nez v2, :cond_0

    new-instance v0, Landroidx/room/f0$c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cloudList_room(com.cloud.hisavana.sdk.database.entities.CloudConfigEntity).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Landroidx/room/f0$c;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Landroidx/room/util/o$a;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-string v7, "_id"

    const-string v8, "INTEGER"

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "_id"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const-string v8, "ad_creative_id"

    const-string v9, "TEXT"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "ad_creative_id"

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-string v9, "codeSeatId"

    const-string v10, "TEXT"

    const/4 v12, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const/16 v20, 0x0

    const/16 v21, 0x1

    const-string v16, "file_path"

    const-string v17, "TEXT"

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v15, v2

    invoke-direct/range {v15 .. v21}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "file_path"

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const/4 v14, 0x0

    const/4 v15, 0x1

    const-string v10, "price"

    const-string v11, "REAL"

    const/4 v13, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v9, "price"

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const/4 v15, 0x0

    const/16 v16, 0x1

    const-string v11, "is_offline_ad"

    const-string v12, "INTEGER"

    const/4 v14, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v10, "is_offline_ad"

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const/16 v16, 0x0

    const/16 v17, 0x1

    const-string v12, "ad_request_ver"

    const-string v13, "INTEGER"

    const/4 v15, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v10, "ad_request_ver"

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const-string v12, "ad_bean"

    const-string v13, "TEXT"

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v11, "ad_bean"

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12, v4}, Ljava/util/HashSet;-><init>(I)V

    new-instance v13, Landroidx/room/util/o;

    const-string v14, "adList_room"

    invoke-direct {v13, v14, v1, v2, v12}, Landroidx/room/util/o;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    invoke-static {v0, v14}, Landroidx/room/util/o;->a(La4/d;Ljava/lang/String;)Landroidx/room/util/o;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroidx/room/util/o;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Landroidx/room/f0$c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adList_room(com.cloud.hisavana.sdk.database.entities.AdListEntity).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Landroidx/room/f0$c;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Landroidx/room/util/o$a;

    const/16 v17, 0x0

    const/16 v18, 0x1

    const-string v13, "_id"

    const-string v14, "INTEGER"

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const/16 v24, 0x0

    const/16 v25, 0x1

    const-string v20, "ac_type"

    const-string v21, "INTEGER"

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v25}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "ac_type"

    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const/16 v18, 0x0

    const/16 v19, 0x1

    const-string v14, "pkg"

    const-string v15, "TEXT"

    const/16 v17, 0x0

    move-object v13, v2

    invoke-direct/range {v13 .. v19}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "pkg"

    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const-string v14, "dl_type"

    const-string v15, "TEXT"

    move-object v13, v2

    invoke-direct/range {v13 .. v19}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v13, "dl_type"

    invoke-virtual {v1, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const/16 v19, 0x0

    const/16 v20, 0x1

    const-string v15, "codeSeatId"

    const-string v16, "TEXT"

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v14, v2

    invoke-direct/range {v14 .. v20}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const/16 v26, 0x0

    const/16 v27, 0x1

    const-string v22, "click_ts"

    const-string v23, "INTEGER"

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v27}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v13, "click_ts"

    invoke-virtual {v1, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const-string v15, "ad_creative_id"

    const-string v16, "TEXT"

    move-object v14, v2

    invoke-direct/range {v14 .. v20}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13, v4}, Ljava/util/HashSet;-><init>(I)V

    new-instance v14, Landroidx/room/util/o;

    const-string v15, "attr_click_room"

    invoke-direct {v14, v15, v1, v2, v13}, Landroidx/room/util/o;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    invoke-static {v0, v15}, Landroidx/room/util/o;->a(La4/d;Ljava/lang/String;)Landroidx/room/util/o;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroidx/room/util/o;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v0, Landroidx/room/f0$c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attr_click_room(com.cloud.hisavana.sdk.database.entities.AttrClickEntity).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Landroidx/room/f0$c;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_2
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Landroidx/room/util/o$a;

    const/16 v18, 0x0

    const/16 v19, 0x1

    const-string v14, "_id"

    const-string v15, "INTEGER"

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object v13, v2

    invoke-direct/range {v13 .. v19}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const/16 v25, 0x0

    const/16 v26, 0x1

    const-string v21, "pkg"

    const-string v22, "TEXT"

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v26}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const-string v14, "imp_ts"

    const-string v15, "INTEGER"

    const/16 v17, 0x0

    move-object v13, v2

    invoke-direct/range {v13 .. v19}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "imp_ts"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const/16 v17, 0x0

    const/16 v18, 0x1

    const-string v13, "ad_creative_id"

    const-string v14, "TEXT"

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v4}, Ljava/util/HashSet;-><init>(I)V

    new-instance v12, Landroidx/room/util/o;

    const-string v13, "attr_impression_room"

    invoke-direct {v12, v13, v1, v2, v6}, Landroidx/room/util/o;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    invoke-static {v0, v13}, Landroidx/room/util/o;->a(La4/d;Ljava/lang/String;)Landroidx/room/util/o;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroidx/room/util/o;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v0, Landroidx/room/f0$c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attr_impression_room(com.cloud.hisavana.sdk.database.entities.AttrImpressionEntity).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Landroidx/room/f0$c;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_3
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Landroidx/room/util/o$a;

    const/16 v17, 0x0

    const/16 v18, 0x1

    const-string v13, "uuid"

    const-string v14, "TEXT"

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "uuid"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const-string v13, "create_time"

    const-string v14, "INTEGER"

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "create_time"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const-string v13, "retry_times"

    const-string v14, "INTEGER"

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "retry_times"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const-string v13, "tracking_data"

    const-string v14, "TEXT"

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "tracking_data"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const-string v13, "md5"

    const-string v14, "TEXT"

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "md5"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v4}, Ljava/util/HashSet;-><init>(I)V

    new-instance v12, Landroidx/room/util/o;

    const-string v13, "retry_tracking_table_room"

    invoke-direct {v12, v13, v1, v2, v6}, Landroidx/room/util/o;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    invoke-static {v0, v13}, Landroidx/room/util/o;->a(La4/d;Ljava/lang/String;)Landroidx/room/util/o;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroidx/room/util/o;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v0, Landroidx/room/f0$c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retry_tracking_table_room(com.cloud.hisavana.sdk.database.entities.RetryTrackingEntity).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Landroidx/room/f0$c;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_4
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Landroidx/room/util/o$a;

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    const-string v13, "ad_creative_id"

    const-string v14, "TEXT"

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x2

    const-string v20, "codeSeatId"

    const-string v21, "TEXT"

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v25}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const/16 v16, 0x0

    const-string v13, "ad_type"

    const-string v14, "INTEGER"

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "ad_type"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const/4 v15, 0x0

    const-string v13, "price"

    const-string v14, "REAL"

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const/16 v23, 0x0

    const-string v20, "ad_request_ver"

    const-string v21, "INTEGER"

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v25}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const/4 v15, 0x1

    const-string v13, "displayed_times"

    const-string v14, "INTEGER"

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "displayed_times"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const/4 v15, 0x0

    const-string v13, "displayed_date"

    const-string v14, "TEXT"

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "displayed_date"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const-string v13, "start_date"

    const-string v14, "TEXT"

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "start_date"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const-string v13, "end_date"

    const-string v14, "TEXT"

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "end_date"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const/4 v15, 0x1

    const-string v13, "display_max_times"

    const-string v14, "INTEGER"

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "display_max_times"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const/4 v15, 0x0

    const-string v13, "file_path"

    const-string v14, "TEXT"

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const/16 v22, 0x0

    const-string v20, "default_country_white"

    const-string v21, "TEXT"

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v25}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "default_country_white"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const-string v13, "default_country_black"

    const-string v14, "TEXT"

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "default_country_black"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const-string v13, "default_brand_white"

    const-string v14, "TEXT"

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "default_brand_white"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const-string v13, "default_brand_black"

    const-string v14, "TEXT"

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "default_brand_black"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const-string v13, "ad_bean"

    const-string v14, "TEXT"

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    new-instance v6, Landroidx/room/util/o;

    const-string v7, "default_ad_room"

    invoke-direct {v6, v7, v1, v2, v3}, Landroidx/room/util/o;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    invoke-static {v0, v7}, Landroidx/room/util/o;->a(La4/d;Ljava/lang/String;)Landroidx/room/util/o;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroidx/room/util/o;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Landroidx/room/f0$c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default_ad_room(com.cloud.hisavana.sdk.database.entities.DefaultAdEntity).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Landroidx/room/f0$c;-><init>(ZLjava/lang/String;)V

    return-object v1

    :cond_5
    new-instance v0, Landroidx/room/f0$c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/room/f0$c;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method
