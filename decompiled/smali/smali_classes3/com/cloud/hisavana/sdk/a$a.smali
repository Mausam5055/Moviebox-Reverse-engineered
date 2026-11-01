.class Lcom/cloud/hisavana/sdk/a$a;
.super Landroidx/room/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/a;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/cloud/hisavana/sdk/a;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/a;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/a$a;->d:Lcom/cloud/hisavana/sdk/a;

    invoke-direct {p0, p2}, Landroidx/room/h;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected e()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `attr_impression_room` (`_id`,`pkg`,`imp_ts`,`ad_creative_id`) VALUES (nullif(?, 0),?,?,?)"

    return-object v0
.end method

.method protected bridge synthetic j(La4/h;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/cloud/hisavana/sdk/h;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/a$a;->n(La4/h;Lcom/cloud/hisavana/sdk/h;)V

    return-void
.end method

.method protected n(La4/h;Lcom/cloud/hisavana/sdk/h;)V
    .locals 3

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/h;->d()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, La4/f;->c(IJ)V

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/h;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, La4/f;->g(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, La4/f;->y(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/h;->b()J

    move-result-wide v0

    const/4 v2, 0x3

    invoke-interface {p1, v2, v0, v1}, La4/f;->c(IJ)V

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/h;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_1

    invoke-interface {p1, v1}, La4/f;->g(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/h;->a()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, La4/f;->y(ILjava/lang/String;)V

    :goto_1
    return-void
.end method
