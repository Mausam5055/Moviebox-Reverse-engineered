.class public final Lcom/transsion/room/viewmodel/d$b;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/viewmodel/d;->e(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/room/viewmodel/d;


# direct methods
.method constructor <init>(Lcom/transsion/room/viewmodel/d;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/viewmodel/d$b;->d:Lcom/transsion/room/viewmodel/d;

    invoke-direct {p0}, Lsg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object p1, p0, Lcom/transsion/room/viewmodel/d$b;->d:Lcom/transsion/room/viewmodel/d;

    invoke-virtual {p1}, Lcom/transsion/room/viewmodel/d;->h()Landroidx/lifecycle/b0;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFailure message.."

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

    check-cast p1, Lcom/transsion/room/bean/CheckNameBean;

    invoke-virtual {p0, p1}, Lcom/transsion/room/viewmodel/d$b;->e(Lcom/transsion/room/bean/CheckNameBean;)V

    return-void
.end method

.method public e(Lcom/transsion/room/bean/CheckNameBean;)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/room/viewmodel/d$b;->d:Lcom/transsion/room/viewmodel/d;

    invoke-virtual {v0}, Lcom/transsion/room/viewmodel/d;->h()Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/room/bean/CheckNameBean;->getGroupId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuccess groupId.."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "RoomModel"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method
