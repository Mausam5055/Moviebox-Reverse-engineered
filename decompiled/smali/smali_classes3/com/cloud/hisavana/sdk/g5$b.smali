.class Lcom/cloud/hisavana/sdk/g5$b;
.super Landroidx/room/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/g5;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/cloud/hisavana/sdk/g5;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/g5;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/g5$b;->d:Lcom/cloud/hisavana/sdk/g5;

    invoke-direct {p0, p2}, Landroidx/room/h;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected e()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `attr_click_room` (`_id`,`ac_type`,`pkg`,`dl_type`,`codeSeatId`,`click_ts`,`ad_creative_id`) VALUES (nullif(?, 0),?,?,?,?,?,?)"

    return-object v0
.end method

.method protected bridge synthetic j(La4/h;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/cloud/hisavana/sdk/j5;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/g5$b;->n(La4/h;Lcom/cloud/hisavana/sdk/j5;)V

    return-void
.end method

.method protected n(La4/h;Lcom/cloud/hisavana/sdk/j5;)V
    .locals 3

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/j5;->g()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, La4/f;->c(IJ)V

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/j5;->a()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, La4/f;->c(IJ)V

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/j5;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, La4/f;->g(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/j5;->f()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, La4/f;->y(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/j5;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_1

    invoke-interface {p1, v1}, La4/f;->g(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/j5;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, La4/f;->y(ILjava/lang/String;)V

    :goto_1
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/j5;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_2

    invoke-interface {p1, v1}, La4/f;->g(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/j5;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, La4/f;->y(ILjava/lang/String;)V

    :goto_2
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/j5;->c()J

    move-result-wide v0

    const/4 v2, 0x6

    invoke-interface {p1, v2, v0, v1}, La4/f;->c(IJ)V

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/j5;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_3

    invoke-interface {p1, v1}, La4/f;->g(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/j5;->b()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, La4/f;->y(ILjava/lang/String;)V

    :goto_3
    return-void
.end method
