.class public final Lcom/transsion/room/viewmodel/RoomDetailViewModel$d;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/viewmodel/RoomDetailViewModel;->x(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/transsion/room/viewmodel/RoomDetailViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/transsion/room/viewmodel/RoomDetailViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$d;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$d;->e:Lcom/transsion/room/viewmodel/RoomDetailViewModel;

    invoke-direct {p0}, Lsg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object p1, p0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$d;->e:Lcom/transsion/room/viewmodel/RoomDetailViewModel;

    invoke-static {p1}, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->h(Lcom/transsion/room/viewmodel/RoomDetailViewModel;)Landroidx/lifecycle/b0;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkOutRoom onFailure message.."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "RoomModel"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/moviedetailapi/bean/RoomNet;

    invoke-virtual {p0, p1}, Lcom/transsion/room/viewmodel/RoomDetailViewModel$d;->e(Lcom/transsion/moviedetailapi/bean/RoomNet;)V

    return-void
.end method

.method public e(Lcom/transsion/moviedetailapi/bean/RoomNet;)V
    .locals 9

    sget-object v0, Lty/b;->a:Lty/b$a;

    invoke-virtual {v0}, Lty/b$a;->a()Lty/b;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lty/b;->f(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$d;->e:Lcom/transsion/room/viewmodel/RoomDetailViewModel;

    invoke-static {v0}, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->h(Lcom/transsion/room/viewmodel/RoomDetailViewModel;)Landroidx/lifecycle/b0;

    move-result-object v0

    new-instance v1, Lcom/transsion/moviedetailapi/bean/RoomNet;

    const-string v2, "success"

    invoke-direct {v1, v2}, Lcom/transsion/moviedetailapi/bean/RoomNet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    sget-object v3, Llg/a;->a:Llg/a$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/RoomNet;->getGroupId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkOutRoom onSuccess groupId.."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "RoomModel"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method
