.class public final Lcom/transsion/videofloat/manager/VideoPipManagerImp$pipActionReceiver$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/videofloat/manager/VideoPipManagerImp;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/transsion/videofloat/manager/VideoPipManagerImp$pipActionReceiver$1",
        "Landroid/content/BroadcastReceiver;",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "VideoFloat_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/videofloat/manager/VideoPipManagerImp;


# direct methods
.method constructor <init>(Lcom/transsion/videofloat/manager/VideoPipManagerImp;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/videofloat/manager/VideoPipManagerImp$pipActionReceiver$1;->a:Lcom/transsion/videofloat/manager/VideoPipManagerImp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    sget-object p1, Llg/a;->a:Llg/a$a;

    iget-object v0, p0, Lcom/transsion/videofloat/manager/VideoPipManagerImp$pipActionReceiver$1;->a:Lcom/transsion/videofloat/manager/VideoPipManagerImp;

    invoke-static {v0}, Lcom/transsion/videofloat/manager/VideoPipManagerImp;->t(Lcom/transsion/videofloat/manager/VideoPipManagerImp;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --pipActionReceiver action:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "VideoFloat-pip"

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pip_action_control"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "control_type"

    const/4 v6, 0x0

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iget-object v0, p0, Lcom/transsion/videofloat/manager/VideoPipManagerImp$pipActionReceiver$1;->a:Lcom/transsion/videofloat/manager/VideoPipManagerImp;

    invoke-static {v0}, Lcom/transsion/videofloat/manager/VideoPipManagerImp;->t(Lcom/transsion/videofloat/manager/VideoPipManagerImp;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --pipActionReceiver controlType:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "VideoFloat-pip"

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 p1, 0x1

    if-eq p2, p1, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 p1, 0x3

    if-eq p2, p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/transsion/videofloat/manager/VideoPipManagerImp$pipActionReceiver$1;->a:Lcom/transsion/videofloat/manager/VideoPipManagerImp;

    invoke-static {p1, v6}, Lcom/transsion/videofloat/manager/VideoPipManagerImp;->r(Lcom/transsion/videofloat/manager/VideoPipManagerImp;Z)V

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/transsion/videofloat/manager/VideoPipManagerImp$pipActionReceiver$1;->a:Lcom/transsion/videofloat/manager/VideoPipManagerImp;

    invoke-static {p2, p1}, Lcom/transsion/videofloat/manager/VideoPipManagerImp;->r(Lcom/transsion/videofloat/manager/VideoPipManagerImp;Z)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/transsion/videofloat/manager/VideoPipManagerImp$pipActionReceiver$1;->a:Lcom/transsion/videofloat/manager/VideoPipManagerImp;

    invoke-static {p1}, Lcom/transsion/videofloat/manager/VideoPipManagerImp;->v(Lcom/transsion/videofloat/manager/VideoPipManagerImp;)V

    :cond_5
    :goto_1
    return-void
.end method
