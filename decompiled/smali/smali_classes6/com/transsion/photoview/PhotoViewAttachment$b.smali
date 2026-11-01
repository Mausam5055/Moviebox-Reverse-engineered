.class Lcom/transsion/photoview/PhotoViewAttachment$b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/photoview/PhotoViewAttachment;->Q(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/photoview/PhotoViewAttachment;


# direct methods
.method constructor <init>(Lcom/transsion/photoview/PhotoViewAttachment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment$b;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    iget-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment$b;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {p1}, Lcom/transsion/photoview/PhotoViewAttachment;->o(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/h;

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment$b;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {p1}, Lcom/transsion/photoview/PhotoViewAttachment;->g(Lcom/transsion/photoview/PhotoViewAttachment;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment$b;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {p1}, Lcom/transsion/photoview/PhotoViewAttachment;->g(Lcom/transsion/photoview/PhotoViewAttachment;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment$b;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {v0}, Lcom/transsion/photoview/PhotoViewAttachment;->e(Lcom/transsion/photoview/PhotoViewAttachment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_0
    return-void
.end method
