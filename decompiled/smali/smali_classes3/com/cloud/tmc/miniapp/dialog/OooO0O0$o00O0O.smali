.class public final Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o00O0O;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/dialog/OooO0O0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "o00O0O"
.end annotation


# instance fields
.field public final OooO00o:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o00O0O;->OooO00o:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onShow(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o00O0O;->OooO00o:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0O0:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o00O0O;->OooO00o:Ljava/lang/Runnable;

    invoke-static {p1, v0}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->post(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
