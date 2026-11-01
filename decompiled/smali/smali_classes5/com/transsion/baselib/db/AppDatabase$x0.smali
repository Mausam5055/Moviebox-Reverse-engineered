.class public final Lcom/transsion/baselib/db/AppDatabase$x0;
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

    const/16 v0, 0x37

    const/16 v1, 0x38

    invoke-direct {p0, v0, v1}, Ly3/c;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(La4/d;)V
    .locals 4

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ugcVideoIsVertical"

    const-string v1, "DOWNLOAD_TABLE"

    invoke-static {p1, v1, v0}, Lij/a;->a(La4/d;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ALTER TABLE DOWNLOAD_TABLE ADD COLUMN ugcVideoIsVertical INTEGER NOT NULL DEFAULT 0"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    :cond_0
    const-string v0, "originData"

    invoke-static {p1, v1, v0}, Lij/a;->a(La4/d;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ALTER TABLE DOWNLOAD_TABLE ADD COLUMN originData TEXT"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    :cond_1
    const-string v0, "uid"

    const-string v1, "ugc_video_detail_play"

    invoke-static {p1, v1, v0}, Lij/a;->a(La4/d;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v2, "ALTER TABLE "

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ADD COLUMN uid TEXT"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    :cond_2
    const-string v0, "userName"

    invoke-static {p1, v1, v0}, Lij/a;->a(La4/d;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ADD COLUMN userName TEXT"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    :cond_3
    const-string v0, "userAvatar"

    invoke-static {p1, v1, v0}, Lij/a;->a(La4/d;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ADD COLUMN userAvatar TEXT"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    :cond_4
    const-string v0, "description"

    invoke-static {p1, v1, v0}, Lij/a;->a(La4/d;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ADD COLUMN description TEXT"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    :cond_5
    const-string v0, "videoStyle"

    invoke-static {p1, v1, v0}, Lij/a;->a(La4/d;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ADD COLUMN videoStyle TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    :cond_6
    const-string v0, "CREATE TABLE IF NOT EXISTS home_preferences_interval_time (\n    id TEXT NOT NULL,\n    showTime INTEGER NOT NULL,\n    closeTime INTEGER NOT NULL,\n    chooseTime INTEGER NOT NULL,\n    showIntervalSeconds INTEGER NOT NULL,\n    closeIntervalSeconds INTEGER NOT NULL,\n    chooseIntervalSeconds INTEGER NOT NULL,\n    PRIMARY KEY(id)\n)"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    return-void
.end method
