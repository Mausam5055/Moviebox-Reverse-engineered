.class public final Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$onKeyboardListener$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$onKeyboardListener$1;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyBoardChanged(II)V
    .locals 3

    const-string v0, "MiniAppBaseFragment"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyboardListener: keyboardHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", screenHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$onKeyboardListener$1;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    invoke-static {v1, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->access$tabBarAdjustPan(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "onKeyBoardChanged failed"

    invoke-static {v0, p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
