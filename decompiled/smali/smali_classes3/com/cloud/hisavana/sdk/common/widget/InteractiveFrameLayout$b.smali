.class public final Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout$a;

.field final synthetic b:Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout$a;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout$b;->b:Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout$b;->a:Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout$a;

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout$b;->b:Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout$b;->b:Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v0, :cond_2

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout$b;->b:Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout$b;->a:Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout$a;

    if-eqz v2, :cond_2

    invoke-interface {v2, v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout$a;->a(II)V

    :cond_2
    :goto_0
    return-void
.end method
