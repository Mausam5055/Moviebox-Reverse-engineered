.class Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;


# direct methods
.method constructor <init>(Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView$a;->a:Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView$a;->a:Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView$a;->a:Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->f(Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView$a;->a:Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->g(Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;Z)V

    return-void
.end method
