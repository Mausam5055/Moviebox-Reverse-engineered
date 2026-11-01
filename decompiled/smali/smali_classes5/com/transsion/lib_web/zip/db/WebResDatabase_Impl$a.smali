.class public final Lcom/transsion/lib_web/zip/db/WebResDatabase_Impl$a;
.super Landroidx/room/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/lib_web/zip/db/WebResDatabase_Impl;->j0()Landroidx/room/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/lib_web/zip/db/WebResDatabase_Impl;


# direct methods
.method constructor <init>(Lcom/transsion/lib_web/zip/db/WebResDatabase_Impl;)V
    .locals 2

    iput-object p1, p0, Lcom/transsion/lib_web/zip/db/WebResDatabase_Impl$a;->d:Lcom/transsion/lib_web/zip/db/WebResDatabase_Impl;

    const-string p1, "8fb9548e62ef8b007d7fa7c9d6d00479"

    const-string v0, "a675d4e34806d9830871c01a4db0b4d7"

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, v0}, Landroidx/room/d0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lz3/b;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `mb_web_res_db` (`scene` TEXT NOT NULL, `htmlUrl` TEXT NOT NULL, `zipUrl` TEXT NOT NULL, `zipMd5` TEXT NOT NULL, `sourceType` INTEGER NOT NULL, `updateTime` TEXT, PRIMARY KEY(`scene`))"

    invoke-static {p1, v0}, Lz3/a;->a(Lz3/b;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-static {p1, v0}, Lz3/a;->a(Lz3/b;Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'8fb9548e62ef8b007d7fa7c9d6d00479\')"

    invoke-static {p1, v0}, Lz3/a;->a(Lz3/b;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lz3/b;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `mb_web_res_db`"

    invoke-static {p1, v0}, Lz3/a;->a(Lz3/b;Ljava/lang/String;)V

    return-void
.end method

.method public f(Lz3/b;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public g(Lz3/b;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/lib_web/zip/db/WebResDatabase_Impl$a;->d:Lcom/transsion/lib_web/zip/db/WebResDatabase_Impl;

    invoke-static {v0, p1}, Lcom/transsion/lib_web/zip/db/WebResDatabase_Impl;->i0(Lcom/transsion/lib_web/zip/db/WebResDatabase_Impl;Lz3/b;)V

    return-void
.end method

.method public h(Lz3/b;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public i(Lz3/b;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/room/util/b;->b(Lz3/b;)V

    return-void
.end method

.method public j(Lz3/b;)Landroidx/room/d0$a;
    .locals 17

    move-object/from16 v0, p1

    const-string v1, "connection"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v9, Landroidx/room/util/o$a;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v3, "scene"

    const-string v4, "TEXT"

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "scene"

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const/4 v15, 0x0

    const/16 v16, 0x1

    const-string v11, "htmlUrl"

    const-string v12, "TEXT"

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "htmlUrl"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-string v5, "zipUrl"

    const-string v6, "TEXT"

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "zipUrl"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const-string v5, "zipMd5"

    const-string v6, "TEXT"

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "zipMd5"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const-string v5, "sourceType"

    const-string v6, "INTEGER"

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "sourceType"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/o$a;

    const-string v5, "updateTime"

    const-string v6, "TEXT"

    const/4 v7, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "updateTime"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v4, Landroidx/room/util/o;

    const-string v5, "mb_web_res_db"

    invoke-direct {v4, v5, v1, v2, v3}, Landroidx/room/util/o;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    sget-object v1, Landroidx/room/util/o;->e:Landroidx/room/util/o$b;

    invoke-virtual {v1, v0, v5}, Landroidx/room/util/o$b;->b(Lz3/b;Ljava/lang/String;)Landroidx/room/util/o;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/room/util/o;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroidx/room/d0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mb_web_res_db(com.transsion.lib_web.zip.db.WebViewCacheConfigData).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n Found:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Landroidx/room/d0$a;-><init>(ZLjava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v0, Landroidx/room/d0$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/room/d0$a;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method
