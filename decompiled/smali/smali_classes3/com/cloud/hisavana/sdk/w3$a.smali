.class Lcom/cloud/hisavana/sdk/w3$a;
.super Landroidx/room/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/w3;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/cloud/hisavana/sdk/w3;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/w3;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/w3$a;->d:Lcom/cloud/hisavana/sdk/w3;

    invoke-direct {p0, p2}, Landroidx/room/h;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected e()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `adList_room` (`_id`,`ad_creative_id`,`codeSeatId`,`file_path`,`price`,`is_offline_ad`,`ad_request_ver`,`ad_bean`) VALUES (nullif(?, 0),?,?,?,?,?,?,?)"

    return-object v0
.end method

.method protected bridge synthetic j(La4/h;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/cloud/hisavana/sdk/y3;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/w3$a;->n(La4/h;Lcom/cloud/hisavana/sdk/y3;)V

    return-void
.end method

.method protected n(La4/h;Lcom/cloud/hisavana/sdk/y3;)V
    .locals 4

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/y3;->o()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, La4/f;->c(IJ)V

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/y3;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, La4/f;->g(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/y3;->f()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, La4/f;->y(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/y3;->k()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    invoke-interface {p1, v1}, La4/f;->g(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/y3;->k()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, La4/f;->y(ILjava/lang/String;)V

    :goto_1
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/y3;->m()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    invoke-interface {p1, v1}, La4/f;->g(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/y3;->m()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, La4/f;->y(ILjava/lang/String;)V

    :goto_2
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/y3;->n()Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    invoke-interface {p1, v1}, La4/f;->g(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/y3;->n()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, La4/f;->a(ID)V

    :goto_3
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/y3;->p()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_4

    invoke-interface {p1, v1}, La4/f;->g(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/y3;->p()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, La4/f;->c(IJ)V

    :goto_4
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/y3;->i()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_5

    invoke-interface {p1, v1}, La4/f;->g(I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/y3;->i()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, La4/f;->c(IJ)V

    :goto_5
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/y3;->a()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_6

    invoke-interface {p1, v1}, La4/f;->g(I)V

    goto :goto_6

    :cond_6
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/y3;->a()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, La4/f;->y(ILjava/lang/String;)V

    :goto_6
    return-void
.end method
