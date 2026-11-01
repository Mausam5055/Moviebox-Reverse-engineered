.class public final Lcom/transsion/baselib/db/AppDatabase$m;
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

    const/16 v0, 0x15

    const/16 v1, 0x16

    invoke-direct {p0, v0, v1}, Ly3/c;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(La4/d;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ALTER TABLE DOWNLOAD_TABLE ADD urlCreateAt INTEGER NOT NULL DEFAULT 0"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE DOWNLOAD_TABLE ADD subtitleSelectId TEXT"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE DOWNLOAD_SUBTITLE_TABLE ADD subtitleName TEXT"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE DOWNLOAD_SUBTITLE_TABLE ADD type INTEGER NOT NULL DEFAULT 1"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS SUBTITLE_LANGUAGE_MAP_TABLE (`lan` TEXT NOT NULL, `lanName` TEXT NOT NULL, `inSearch` INTEGER NOT NULL, PRIMARY KEY(`lan`))"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    return-void
.end method
