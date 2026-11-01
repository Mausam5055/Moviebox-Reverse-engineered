.class Lcom/cloud/hisavana/sdk/w0$b;
.super Landroidx/room/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/w0;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/cloud/hisavana/sdk/w0;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/w0;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/w0$b;->d:Lcom/cloud/hisavana/sdk/w0;

    invoke-direct {p0, p2}, Landroidx/room/f;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected e()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `cloudList_room` SET `codeSeatId` = ?,`code_seat_bean` = ? WHERE `codeSeatId` = ?"

    return-object v0
.end method

.method protected bridge synthetic j(La4/h;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/cloud/hisavana/sdk/e1;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/w0$b;->m(La4/h;Lcom/cloud/hisavana/sdk/e1;)V

    return-void
.end method

.method protected m(La4/h;Lcom/cloud/hisavana/sdk/e1;)V
    .locals 2

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/e1;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, La4/f;->g(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/e1;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, La4/f;->y(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/e1;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-interface {p1, v1}, La4/f;->g(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/e1;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, La4/f;->y(ILjava/lang/String;)V

    :goto_1
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/e1;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    invoke-interface {p1, v1}, La4/f;->g(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/e1;->a()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, La4/f;->y(ILjava/lang/String;)V

    :goto_2
    return-void
.end method
