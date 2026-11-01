.class public final Lcom/transsion/videodetail/StreamDetailFragment$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/videodetail/StreamDetailFragment;->Z0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/videodetail/StreamDetailFragment;


# direct methods
.method constructor <init>(Lcom/transsion/videodetail/StreamDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/videodetail/StreamDetailFragment$b;->a:Lcom/transsion/videodetail/StreamDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    iget-object v0, p0, Lcom/transsion/videodetail/StreamDetailFragment$b;->a:Lcom/transsion/videodetail/StreamDetailFragment;

    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Ljx/i;

    if-eqz v0, :cond_0

    iget-object v0, v0, Ljx/i;->b:Lcom/tn/lib/view/bubbleview/BubbleTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/videodetail/StreamDetailFragment$b;->a:Lcom/transsion/videodetail/StreamDetailFragment;

    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Ljx/i;

    if-eqz v0, :cond_1

    iget-object v0, v0, Ljx/i;->b:Lcom/tn/lib/view/bubbleview/BubbleTextView;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/tn/lib/view/bubbleview/BubbleTextView;->setArrowPosition(F)V

    sget-object v2, Llg/a;->a:Llg/a$a;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activity tip width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", arrowPosition: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "videoDetail"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_2
    return-void
.end method
