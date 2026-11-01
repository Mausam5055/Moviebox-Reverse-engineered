.class Lcom/blankj/utilcode/util/ToastUtils$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/ToastUtils;->p(Landroid/view/View;Ljava/lang/CharSequence;ILcom/blankj/utilcode/util/ToastUtils;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$duration:I

.field final synthetic val$text:Ljava/lang/CharSequence;

.field final synthetic val$utils:Lcom/blankj/utilcode/util/ToastUtils;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/ToastUtils;Landroid/view/View;Ljava/lang/CharSequence;I)V
    .locals 0

    iput-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils$2;->val$utils:Lcom/blankj/utilcode/util/ToastUtils;

    iput-object p2, p0, Lcom/blankj/utilcode/util/ToastUtils$2;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/blankj/utilcode/util/ToastUtils$2;->val$text:Ljava/lang/CharSequence;

    iput p4, p0, Lcom/blankj/utilcode/util/ToastUtils$2;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->l()V

    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$2;->val$utils:Lcom/blankj/utilcode/util/ToastUtils;

    invoke-static {v0}, Lcom/blankj/utilcode/util/ToastUtils;->c(Lcom/blankj/utilcode/util/ToastUtils;)Lcom/blankj/utilcode/util/ToastUtils$b;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/blankj/utilcode/util/ToastUtils;->b(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$2;->val$view:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Lcom/blankj/utilcode/util/ToastUtils$b;->b(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$2;->val$text:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Lcom/blankj/utilcode/util/ToastUtils$b;->c(Ljava/lang/CharSequence;)V

    :goto_0
    iget v1, p0, Lcom/blankj/utilcode/util/ToastUtils$2;->val$duration:I

    invoke-interface {v0, v1}, Lcom/blankj/utilcode/util/ToastUtils$b;->a(I)V

    return-void
.end method
