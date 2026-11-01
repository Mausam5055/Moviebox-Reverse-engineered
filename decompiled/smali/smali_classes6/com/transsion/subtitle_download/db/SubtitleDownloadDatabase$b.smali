.class public final Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase$b;
.super Ly3/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Ly3/c;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(La4/d;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ALTER TABLE ST_DOWNLOAD_TABLE ADD COLUMN ugcVideoId TEXT"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE ST_DOWNLOAD_TABLE ADD COLUMN ugcVideoCollectionId TEXT"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    return-void
.end method
