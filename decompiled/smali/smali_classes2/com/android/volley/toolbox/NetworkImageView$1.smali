.class Lcom/android/volley/toolbox/NetworkImageView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/toolbox/h$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/NetworkImageView;->d(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/android/volley/toolbox/NetworkImageView;


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/NetworkImageView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->b:Lcom/android/volley/toolbox/NetworkImageView;

    iput-boolean p2, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/volley/toolbox/h$b;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->a:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->b:Lcom/android/volley/toolbox/NetworkImageView;

    new-instance v0, Lcom/android/volley/toolbox/NetworkImageView$1$1;

    invoke-direct {v0, p0, p1}, Lcom/android/volley/toolbox/NetworkImageView$1$1;-><init>(Lcom/android/volley/toolbox/NetworkImageView$1;Lcom/android/volley/toolbox/h$b;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1

    iget-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->b:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lcom/android/volley/toolbox/NetworkImageView;->a(Lcom/android/volley/toolbox/NetworkImageView;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->b:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lcom/android/volley/toolbox/NetworkImageView;->a(Lcom/android/volley/toolbox/NetworkImageView;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->b:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lcom/android/volley/toolbox/NetworkImageView;->b(Lcom/android/volley/toolbox/NetworkImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->b:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lcom/android/volley/toolbox/NetworkImageView;->b(Lcom/android/volley/toolbox/NetworkImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->b:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lcom/android/volley/toolbox/NetworkImageView;->c(Lcom/android/volley/toolbox/NetworkImageView;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->b:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lcom/android/volley/toolbox/NetworkImageView;->c(Lcom/android/volley/toolbox/NetworkImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    :goto_0
    return-void
.end method
