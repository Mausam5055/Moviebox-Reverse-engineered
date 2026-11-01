.class Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->setUpBubbleDrawable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;


# direct methods
.method constructor <init>(Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout$1;->this$0:Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout$1;->this$0:Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout$1;->this$0:Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->a(Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;II)V

    return-void
.end method
