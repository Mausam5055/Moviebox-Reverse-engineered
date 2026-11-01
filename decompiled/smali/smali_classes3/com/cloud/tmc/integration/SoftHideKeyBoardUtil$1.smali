.class Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil$1;->this$0:Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil$1;->this$0:Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;

    invoke-static {v0}, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;->a(Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil$1;->this$0:Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;

    invoke-static {v0}, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;->b(Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;->c(Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;I)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil$1;->this$0:Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;->d(Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;Z)V

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil$1;->this$0:Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;

    invoke-static {v0}, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;->e(Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;)V

    return-void
.end method
