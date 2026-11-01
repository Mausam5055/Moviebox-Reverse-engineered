.class public final Lcom/transsion/baselib/db/AppDatabase$d0;
.super Ly3/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/baselib/db/AppDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    const/16 v0, 0x25

    const/16 v1, 0x26

    invoke-direct {p0, v0, v1}, Ly3/c;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(La4/d;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ALTER TABLE DOWNLOAD_TABLE ADD averageHueLight TEXT"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS VIDEO_DETAIL_PLAY_NEW (`subjectId` TEXT NOT NULL, `id` TEXT NOT NULL, `ep` INTEGER NOT NULL, `se` INTEGER NOT NULL, `progress` INTEGER NOT NULL, `title` TEXT, `coverUrl` TEXT, `thumbnail` TEXT, `videoUrl` TEXT, `timeStamp` INTEGER NOT NULL, `subtitleSelectId` TEXT, `totalDuration` INTEGER DEFAULT 0, `averageHueLight` TEXT, `subjectType` INTEGER, `hasDelete` INTEGER NOT NULL DEFAULT 0, `playMode` TEXT NOT NULL DEFAULT `2`, `downloadUrl` TEXT, `downloadFilePath` TEXT, `downloadSize` INTEGER NOT NULL DEFAULT 0, PRIMARY KEY(`subjectId`, `ep`, `se`))"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    const-string v0, "INSERT OR IGNORE INTO `VIDEO_DETAIL_PLAY_NEW` (subjectId, id, ep, se, progress, title, coverUrl, thumbnail, videoUrl, timeStamp, subtitleSelectId) SELECT subjectId, id, ep, se, progress, title, coverUrl, thumbnail, videoUrl, timeStamp, subtitleSelectId FROM `VIDEO_DETAIL_PLAY`"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    const-string v0, "INSERT OR IGNORE INTO `VIDEO_DETAIL_PLAY_NEW` (subjectId, id, ep, se, progress, title, coverUrl, thumbnail, videoUrl, timeStamp, subtitleSelectId, totalDuration, averageHueLight, subjectType, hasDelete, playMode, downloadUrl, downloadFilePath, downloadSize) SELECT subjectId, resourceId, ep, se, progress, subjectName, cover, thumbnail, url, lastPlayTimeStamp, subtitleSelectId, duration, averageHueLight, subjectType, 0, 1, url, path, size FROM `download_table` WHERE (type in (2,3,5)) AND fileType = 1 AND lastPlayTimeStamp > 0 ORDER BY updateTimeStamp DESC"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    const-string v0, "DROP TABLE VIDEO_DETAIL_PLAY"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE VIDEO_DETAIL_PLAY_NEW RENAME TO VIDEO_DETAIL_PLAY"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    return-void
.end method
