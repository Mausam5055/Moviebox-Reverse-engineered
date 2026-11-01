.class public abstract Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;
.super Landroidx/room/RoomDatabase;


# static fields
.field private static volatile p:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

.field private static final q:Ly3/c;

.field private static final r:Ly3/c;

.field private static final s:Ly3/c;

.field private static final t:Ly3/c;

.field private static final u:Ly3/c;

.field private static final v:Ly3/c;

.field private static final w:Ly3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase$a;

    const/4 v1, 0x2

    const/16 v2, 0xd48

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase$a;-><init>(II)V

    sput-object v0, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->q:Ly3/c;

    new-instance v0, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase$b;

    const/16 v1, 0xa28

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase$b;-><init>(II)V

    sput-object v0, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->r:Ly3/c;

    new-instance v0, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase$c;

    const/16 v1, 0xa8c

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase$c;-><init>(II)V

    sput-object v0, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->s:Ly3/c;

    new-instance v0, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase$d;

    const/16 v1, 0xb54

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase$d;-><init>(II)V

    sput-object v0, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->t:Ly3/c;

    new-instance v0, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase$e;

    const/16 v1, 0xb5e

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase$e;-><init>(II)V

    sput-object v0, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->u:Ly3/c;

    new-instance v0, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase$f;

    const/16 v1, 0xbfe

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase$f;-><init>(II)V

    sput-object v0, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->v:Ly3/c;

    new-instance v0, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase$g;

    const/16 v1, 0xc44

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase$g;-><init>(II)V

    sput-object v0, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->w:Ly3/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method private static A0(La4/d;)V
    .locals 10

    const-string v0, "md5"

    const-string v1, "tracking_data"

    const-string v2, "retry_times"

    const-string v3, "create_time"

    const-string v4, "uuid"

    const-string v5, "DROP TABLE IF EXISTS retry_tracking_table"

    const/4 v6, 0x0

    :try_start_0
    invoke-interface {p0}, La4/d;->A()V

    const-string v7, "SELECT * FROM retry_tracking_table"

    invoke-interface {p0, v7}, La4/d;->i0(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v6, v4}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v3}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v6, v2}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v6, v1}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "retry_tracking_table_room"

    const/4 v9, 0x5

    invoke-interface {p0, v8, v9, v7}, La4/d;->j0(Ljava/lang/String;ILandroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    invoke-interface {p0, v5}, La4/d;->E(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :goto_1
    :try_start_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    const-string v2, "HSRoomDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "migrateTable_retry_tracking_table failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_1

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-interface {p0, v5}, La4/d;->E(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :goto_2
    invoke-interface {p0}, La4/d;->I()V

    invoke-interface {p0}, La4/d;->L()V

    return-void

    :goto_3
    if-eqz v6, :cond_2

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-interface {p0, v5}, La4/d;->E(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    invoke-interface {p0}, La4/d;->I()V

    invoke-interface {p0}, La4/d;->L()V

    throw v0
.end method

.method private static B0(La4/d;)V
    .locals 8

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    const-string v1, "requestConfigTime"

    invoke-virtual {v0, v1}, Lj7/a;->s(Ljava/lang/String;)V

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    const-string v1, "hisavanaCurrentCloudControlVersion"

    invoke-virtual {v0, v1}, Lj7/a;->s(Ljava/lang/String;)V

    const-string v6, "cloudList_room"

    const-string v7, "retry_tracking_table_room"

    const-string v2, "adList_room"

    const-string v3, "default_ad_room"

    const-string v4, "attr_impression_room"

    const-string v5, "attr_click_room"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->m0(La4/d;[Ljava/lang/String;)V

    return-void
.end method

.method private static C0(La4/d;)V
    .locals 6

    const-string v4, "cloudList_room"

    const-string v5, "retry_tracking_table_room"

    const-string v0, "adList_room"

    const-string v1, "default_ad_room"

    const-string v2, "attr_impression_room"

    const-string v3, "attr_click_room"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->m0(La4/d;[Ljava/lang/String;)V

    return-void
.end method

.method private static g0(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method static synthetic i0(La4/d;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->q0(La4/d;)V

    return-void
.end method

.method static synthetic j0(La4/d;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->m0(La4/d;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic l0(La4/d;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->B0(La4/d;)V

    return-void
.end method

.method private static m0(La4/d;[Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "adList_room"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x5

    goto :goto_1

    :sswitch_1
    const-string v6, "attr_click_room"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x4

    goto :goto_1

    :sswitch_2
    const-string v6, "cloudList_room"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x3

    goto :goto_1

    :sswitch_3
    const-string v6, "retry_tracking_table_room"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x2

    goto :goto_1

    :sswitch_4
    const-string v6, "attr_impression_room"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    move v5, v0

    goto :goto_1

    :sswitch_5
    const-string v6, "default_ad_room"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    move v5, v2

    :goto_1
    packed-switch v5, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->s0(La4/d;)V

    goto :goto_2

    :pswitch_1
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->u0(La4/d;)V

    goto :goto_2

    :pswitch_2
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->y0(La4/d;)V

    goto :goto_2

    :pswitch_3
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->A0(La4/d;)V

    goto :goto_2

    :pswitch_4
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->w0(La4/d;)V

    goto :goto_2

    :pswitch_5
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->z0(La4/d;)V

    :goto_2
    add-int/2addr v3, v0

    goto :goto_0

    :cond_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x44e10887 -> :sswitch_5
        -0x28724cfd -> :sswitch_4
        -0x11e956e3 -> :sswitch_3
        -0xa3c56d9 -> :sswitch_2
        -0x853cbc0 -> :sswitch_1
        0x5d346f9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic o0(La4/d;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->C0(La4/d;)V

    return-void
.end method

.method private static q0(La4/d;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS cloudList_room(codeSeatId TEXT PRIMARY KEY NOT NULL, code_seat_bean TEXT);"

    invoke-interface {p0, v0}, La4/d;->E(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS adList_room(_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,ad_creative_id TEXT, codeSeatId TEXT,file_path TEXT,price DOUBLE,is_offline_ad INTEGER,ad_request_ver INTEGER,ad_bean TEXT);"

    invoke-interface {p0, v0}, La4/d;->E(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS retry_tracking_table_room(uuid TEXT NOT NULL, create_time INTEGER,retry_times INTEGER,tracking_data TEXT,md5 TEXT,PRIMARY KEY (uuid))"

    invoke-interface {p0, v0}, La4/d;->E(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS default_ad_room(ad_creative_id TEXT NOT NULL,codeSeatId TEXT NOT NULL,ad_type INTEGER NOT NULL,price DOUBLE DEFAULT 0.0,ad_request_ver INTEGER NOT NULL DEFAULT 0,displayed_times INTEGER NOT NULL  DEFAULT 0,displayed_date TEXT,start_date TEXT,end_date TEXT,display_max_times INTEGER NOT NULL DEFAULT 0,file_path TEXT,default_country_white TEXT,default_country_black TEXT,default_brand_white TEXT,default_brand_black TEXT,ad_bean TEXT, PRIMARY KEY (ad_creative_id,codeSeatId));"

    invoke-interface {p0, v0}, La4/d;->E(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS attr_impression_room(_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,pkg TEXT NOT NULL,imp_ts INTEGER NOT NULL DEFAULT 0,ad_creative_id TEXT NOT NULL);"

    invoke-interface {p0, v0}, La4/d;->E(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS attr_click_room(_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,ac_type INTEGER NOT NULL,pkg TEXT NOT NULL,dl_type TEXT NOT NULL,codeSeatId TEXT NOT NULL,click_ts INTEGER NOT NULL DEFAULT 0,ad_creative_id TEXT NOT NULL);"

    invoke-interface {p0, v0}, La4/d;->E(Ljava/lang/String;)V

    return-void
.end method

.method private static r0()Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;
    .locals 4

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    const-string v2, "hisavana.db"

    invoke-static {v0, v1, v2}, Landroidx/room/q;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$a;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [Ly3/c;

    sget-object v2, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->q:Ly3/c;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->r:Ly3/c;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->s:Ly3/c;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->t:Ly3/c;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->u:Ly3/c;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->v:Ly3/c;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->w:Ly3/c;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase$a;->b([Ly3/c;)Landroidx/room/RoomDatabase$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase$a;->g()Landroidx/room/RoomDatabase$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase$a;->e()Landroidx/room/RoomDatabase$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase$a;->d()Landroidx/room/RoomDatabase;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    return-object v0
.end method

.method private static s0(La4/d;)V
    .locals 13

    const-string v0, "file_path"

    const-string v1, "ad_request_ver"

    const-string v2, "ad_creative_id"

    const-string v3, "price"

    const-string v4, "codeSeatId"

    const-string v5, "ad_bean"

    const-string v6, "is_offline_ad"

    const-string v7, "_id"

    const-string v8, "DROP TABLE IF EXISTS adList"

    const/4 v9, 0x0

    :try_start_0
    invoke-interface {p0}, La4/d;->A()V

    const-string v10, "SELECT * FROM adList"

    invoke-interface {p0, v10}, La4/d;->i0(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v9, v7}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v7, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v9, v6}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v9, v5}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v5, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9, v4}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9, v3}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v10, v3, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    invoke-static {v9, v2}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9, v1}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v9, v0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "adList_room"

    const/4 v12, 0x5

    invoke-interface {p0, v11, v12, v10}, La4/d;->j0(Ljava/lang/String;ILandroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    invoke-interface {p0, v8}, La4/d;->E(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :goto_1
    :try_start_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    const-string v2, "HSRoomDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "migrateTable_adList failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_1

    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-interface {p0, v8}, La4/d;->E(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :goto_2
    invoke-interface {p0}, La4/d;->I()V

    invoke-interface {p0}, La4/d;->L()V

    return-void

    :goto_3
    if-eqz v9, :cond_2

    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-interface {p0, v8}, La4/d;->E(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    invoke-interface {p0}, La4/d;->I()V

    invoke-interface {p0}, La4/d;->L()V

    throw v0
.end method

.method private static u0(La4/d;)V
    .locals 12

    const-string v0, "ad_creative_id"

    const-string v1, "click_ts"

    const-string v2, "codeSeatId"

    const-string v3, "dl_type"

    const-string v4, "pkg"

    const-string v5, "ac_type"

    const-string v6, "_id"

    const-string v7, "DROP TABLE IF EXISTS attr_click"

    const/4 v8, 0x0

    :try_start_0
    invoke-interface {p0}, La4/d;->A()V

    const-string v9, "SELECT * FROM attr_click"

    invoke-interface {p0, v9}, La4/d;->i0(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v8, v6}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v8, v5}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v8, v4}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8, v3}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8, v2}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8, v1}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v8, v0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "attr_click_room"

    const/4 v11, 0x5

    invoke-interface {p0, v10, v11, v9}, La4/d;->j0(Ljava/lang/String;ILandroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    invoke-interface {p0, v7}, La4/d;->E(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :goto_1
    :try_start_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    const-string v2, "HSRoomDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "migrateTable_attr_click failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_1

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-interface {p0, v7}, La4/d;->E(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :goto_2
    invoke-interface {p0}, La4/d;->I()V

    invoke-interface {p0}, La4/d;->L()V

    return-void

    :goto_3
    if-eqz v8, :cond_2

    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-interface {p0, v7}, La4/d;->E(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    invoke-interface {p0}, La4/d;->I()V

    invoke-interface {p0}, La4/d;->L()V

    throw v0
.end method

.method public static v0()Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;
    .locals 5

    sget-object v0, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->p:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    if-nez v0, :cond_2

    const-class v0, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->p:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :try_start_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->r0()Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    move-result-object v1

    sput-object v1, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->p:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    invoke-static {}, La7/c;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    const-string v2, "HSRoomDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current database version is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->p:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->z()La4/e;

    move-result-object v4

    invoke-interface {v4}, La4/e;->getReadableDatabase()La4/d;

    move-result-object v4

    invoke-interface {v4}, La4/d;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, La7/c;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create room database failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "hisavana.db"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->r0()Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    move-result-object v1

    sput-object v1, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->p:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_2
    :goto_2
    sget-object v0, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->p:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    return-object v0
.end method

.method private static w0(La4/d;)V
    .locals 9

    const-string v0, "ad_creative_id"

    const-string v1, "imp_ts"

    const-string v2, "pkg"

    const-string v3, "_id"

    const-string v4, "DROP TABLE IF EXISTS attr_impression"

    const/4 v5, 0x0

    :try_start_0
    invoke-interface {p0}, La4/d;->A()V

    const-string v6, "SELECT * FROM attr_impression"

    invoke-interface {p0, v6}, La4/d;->i0(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v5, v3}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v5, v2}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v1}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v5, v0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "attr_impression_room"

    const/4 v8, 0x5

    invoke-interface {p0, v7, v8, v6}, La4/d;->j0(Ljava/lang/String;ILandroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-interface {p0, v4}, La4/d;->E(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :goto_1
    :try_start_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    const-string v2, "HSRoomDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "migrateTable_attr_impression failed:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_1

    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-interface {p0, v4}, La4/d;->E(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :goto_2
    invoke-interface {p0}, La4/d;->I()V

    invoke-interface {p0}, La4/d;->L()V

    return-void

    :goto_3
    if-eqz v5, :cond_2

    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-interface {p0, v4}, La4/d;->E(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    invoke-interface {p0}, La4/d;->I()V

    invoke-interface {p0}, La4/d;->L()V

    throw v0
.end method

.method private static y0(La4/d;)V
    .locals 7

    const-string v0, "code_seat_bean"

    const-string v1, "codeSeatId"

    const-string v2, "DROP TABLE IF EXISTS cloudList"

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p0}, La4/d;->A()V

    const-string v4, "SELECT * FROM cloudList"

    invoke-interface {p0, v4}, La4/d;->i0(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v3, v1}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "cloudList_room"

    const/4 v6, 0x5

    invoke-interface {p0, v5, v6, v4}, La4/d;->j0(Ljava/lang/String;ILandroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-interface {p0, v2}, La4/d;->E(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :goto_1
    :try_start_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    const-string v4, "HSRoomDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "migrateTable_cloudList failed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-interface {p0, v2}, La4/d;->E(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :goto_2
    invoke-interface {p0}, La4/d;->I()V

    invoke-interface {p0}, La4/d;->L()V

    return-void

    :goto_3
    if-eqz v3, :cond_2

    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-interface {p0, v2}, La4/d;->E(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    invoke-interface {p0}, La4/d;->I()V

    invoke-interface {p0}, La4/d;->L()V

    throw v0
.end method

.method private static z0(La4/d;)V
    .locals 23

    move-object/from16 v1, p0

    const-string v0, "ad_bean"

    const-string v2, "default_brand_black"

    const-string v3, "default_brand_white"

    const-string v4, "default_country_black"

    const-string v5, "default_country_white"

    const-string v6, "file_path"

    const-string v7, "display_max_times"

    const-string v8, "end_date"

    const-string v9, "start_date"

    const-string v10, "displayed_date"

    const-string v11, "displayed_times"

    const-string v12, "ad_request_ver"

    const-string v13, "price"

    const-string v14, "ad_type"

    const-string v15, "codeSeatId"

    move-object/from16 v16, v0

    const-string v0, "ad_creative_id"

    move-object/from16 v17, v2

    const-string v2, "DROP TABLE IF EXISTS default_ad"

    const/16 v18, 0x0

    :try_start_0
    invoke-interface/range {p0 .. p0}, La4/d;->A()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object/from16 v19, v2

    :try_start_1
    const-string v2, "SELECT * FROM default_ad"

    invoke-interface {v1, v2}, La4/d;->i0(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :goto_0
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v18, :cond_0

    :try_start_3
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v20, v3

    invoke-static {v2, v0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v15}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v15, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v14}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v14, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v2, v13}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    invoke-static {v2, v12}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v12, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v2, v11}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v2, v10}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v9}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v8}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v7}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v2, v6}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v5}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v4}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v20

    move-object/from16 v20, v0

    invoke-static {v2, v3}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v17, v3

    invoke-static {v2, v0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v16

    move-object/from16 v16, v0

    invoke-static {v2, v3}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "default_ad_room"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v18, v3

    const/4 v3, 0x5

    move-object/from16 v21, v4

    move-object/from16 v4, p0

    :try_start_4
    invoke-interface {v4, v0, v3, v1}, La4/d;->j0(Ljava/lang/String;ILandroid/content/ContentValues;)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v4

    move-object/from16 v3, v17

    move-object/from16 v0, v20

    move-object/from16 v4, v21

    move-object/from16 v17, v16

    move-object/from16 v16, v18

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :goto_1
    move-object/from16 v18, v2

    :goto_2
    move-object/from16 v1, v19

    goto/16 :goto_7

    :catch_0
    move-exception v0

    :goto_3
    move-object/from16 v18, v2

    :goto_4
    move-object/from16 v1, v19

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_3

    :cond_0
    move-object v4, v1

    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object/from16 v1, v19

    invoke-interface {v4, v1}, La4/d;->E(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v4, v1

    move-object/from16 v1, v19

    move-object/from16 v18, v2

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v4, v1

    move-object/from16 v1, v19

    move-object/from16 v18, v2

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v4, v1

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v4, v1

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v4, v1

    move-object v1, v2

    goto :goto_7

    :catch_4
    move-exception v0

    move-object v4, v1

    move-object v1, v2

    :goto_5
    :try_start_6
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v2

    const-string v3, "HSRoomDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "migrateTable_default_ad failed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-eqz v18, :cond_1

    :try_start_7
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-interface {v4, v1}, La4/d;->E(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :catch_5
    :goto_6
    invoke-interface/range {p0 .. p0}, La4/d;->I()V

    invoke-interface/range {p0 .. p0}, La4/d;->L()V

    return-void

    :catchall_5
    move-exception v0

    :goto_7
    if-eqz v18, :cond_2

    :try_start_8
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-interface {v4, v1}, La4/d;->E(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :catch_6
    invoke-interface/range {p0 .. p0}, La4/d;->I()V

    invoke-interface/range {p0 .. p0}, La4/d;->L()V

    throw v0
.end method


# virtual methods
.method public abstract h0()Lcom/cloud/hisavana/sdk/v3;
.end method

.method public abstract k0()Lcom/cloud/hisavana/sdk/f5;
.end method

.method public abstract n0()Lcom/cloud/hisavana/sdk/c6;
.end method

.method public abstract p0()Lcom/cloud/hisavana/sdk/v0;
.end method

.method public abstract t0()Lcom/cloud/hisavana/sdk/c2;
.end method

.method public abstract x0()Lcom/cloud/hisavana/sdk/m1;
.end method
