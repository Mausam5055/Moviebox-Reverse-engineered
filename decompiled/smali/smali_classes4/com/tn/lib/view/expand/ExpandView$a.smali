.class Lcom/tn/lib/view/expand/ExpandView$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/lib/view/expand/ExpandView;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tn/lib/view/expand/ExpandView;


# direct methods
.method constructor <init>(Lcom/tn/lib/view/expand/ExpandView;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/lib/view/expand/ExpandView$a;->a:Lcom/tn/lib/view/expand/ExpandView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/tn/lib/view/expand/ExpandView$a;->a:Lcom/tn/lib/view/expand/ExpandView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/tn/lib/view/expand/ExpandView$a;->a:Lcom/tn/lib/view/expand/ExpandView;

    invoke-static {v0}, Lcom/tn/lib/view/expand/ExpandView;->f(Lcom/tn/lib/view/expand/ExpandView;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tn/lib/view/expand/ExpandView;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tn/lib/view/expand/ExpandView$a;->a:Lcom/tn/lib/view/expand/ExpandView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tn/lib/view/expand/ExpandView;->g(Lcom/tn/lib/view/expand/ExpandView;Z)V

    return-void
.end method
