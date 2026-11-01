.class public final Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl$OooO0O0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/proxy/OnKeyboardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;->initKeyBoardChange(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyBoardAnimEnd()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;->access$isStarted$p(Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;->access$setStarted$p(Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;Z)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;->access$getHandler$p(Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onKeyBoardAnimStart()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;->access$isStarted$p(Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;->access$setStarted$p(Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;Z)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;->access$getHandler$p(Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onKeyBoardHeightChange(I)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;->access$getLastHeight$p(Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;

    invoke-static {v0, p1}, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;->access$setLastHeight$p(Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;I)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;->access$getHandler$p(Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
