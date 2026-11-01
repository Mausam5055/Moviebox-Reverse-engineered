.class public final Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$hideStatusLoading$2$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/utils/OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->hideStatusLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$hideStatusLoading$2$1$2;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public show(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$hideStatusLoading$2$1$2;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {v0, p2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->setMsgAppName(Ljava/lang/String;)V

    sget-object p2, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;->OooO00o:Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniAppPopWindowToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getShowMsgBubbleController()Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;

    move-result-object v2

    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;->OooO00o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;)V

    :cond_1
    return-void
.end method
