.class Lcom/cloud/hisavana/sdk/n1$b;
.super Landroidx/room/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/n1;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/cloud/hisavana/sdk/n1;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/n1;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/n1$b;->d:Lcom/cloud/hisavana/sdk/n1;

    invoke-direct {p0, p2}, Landroidx/room/f;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected e()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `retry_tracking_table_room` SET `uuid` = ?,`create_time` = ?,`retry_times` = ?,`tracking_data` = ?,`md5` = ? WHERE `uuid` = ?"

    return-object v0
.end method

.method protected bridge synthetic j(La4/h;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/cloud/hisavana/sdk/q1;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/n1$b;->m(La4/h;Lcom/cloud/hisavana/sdk/q1;)V

    return-void
.end method

.method protected m(La4/h;Lcom/cloud/hisavana/sdk/q1;)V
    .locals 4

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/q1;->j()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, La4/f;->g(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/q1;->j()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, La4/f;->y(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/q1;->a()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-interface {p1, v1}, La4/f;->g(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/q1;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, La4/f;->c(IJ)V

    :goto_1
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/q1;->g()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    invoke-interface {p1, v1}, La4/f;->g(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/q1;->g()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, La4/f;->c(IJ)V

    :goto_2
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/q1;->i()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_3

    invoke-interface {p1, v1}, La4/f;->g(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/q1;->i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, La4/f;->y(ILjava/lang/String;)V

    :goto_3
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/q1;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_4

    invoke-interface {p1, v1}, La4/f;->g(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/q1;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, La4/f;->y(ILjava/lang/String;)V

    :goto_4
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/q1;->j()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_5

    invoke-interface {p1, v1}, La4/f;->g(I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/q1;->j()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, La4/f;->y(ILjava/lang/String;)V

    :goto_5
    return-void
.end method
