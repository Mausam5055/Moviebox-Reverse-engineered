.class Lcom/tn/lib/view/expand/SubjectExpandView$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/lib/view/expand/SubjectExpandView;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tn/lib/view/expand/SubjectExpandView;


# direct methods
.method constructor <init>(Lcom/tn/lib/view/expand/SubjectExpandView;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/lib/view/expand/SubjectExpandView$a;->a:Lcom/tn/lib/view/expand/SubjectExpandView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView$a;->a:Lcom/tn/lib/view/expand/SubjectExpandView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView$a;->a:Lcom/tn/lib/view/expand/SubjectExpandView;

    invoke-static {v0}, Lcom/tn/lib/view/expand/SubjectExpandView;->d(Lcom/tn/lib/view/expand/SubjectExpandView;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tn/lib/view/expand/SubjectExpandView;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView$a;->a:Lcom/tn/lib/view/expand/SubjectExpandView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tn/lib/view/expand/SubjectExpandView;->e(Lcom/tn/lib/view/expand/SubjectExpandView;Z)V

    return-void
.end method
