.class public final Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView$b;->a:Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 9

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView$b;->a:Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView$b;->a:Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;

    invoke-static {v0}, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;->access$getViewBinding$p(Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;)Lso/h0;

    move-result-object v0

    iget-object v0, v0, Lso/h0;->b:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget-object v7, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView$b;->a:Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;

    invoke-static {v1}, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;->access$getViewBinding$p(Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;)Lso/h0;

    move-result-object v1

    iget-object v1, v1, Lso/h0;->b:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6e32\u67d3\u7ed3\u675f\u83b7\u53d6\u7684\u5bbd\u5ea6\u4e3a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", \u539f\u59cb\u5bbd\u5ea6\u4e3a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "ShortTVDiscoverCategoryView"

    const/4 v4, 0x0

    move-object v1, v7

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {}, Lcom/transsion/core/utils/e;->f()I

    move-result v1

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v8, v1, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8ba1\u7b97\u5f97\u51fa, ivAll.width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", viewWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "ShortTVDiscoverCategoryView"

    move-object v1, v7

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView$b;->a:Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;

    invoke-static {v1}, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;->access$getViewBinding$p(Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;)Lso/h0;

    move-result-object v1

    iget-object v1, v1, Lso/h0;->d:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_0

    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView$b;->a:Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;

    invoke-static {v1}, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;->access$getViewBinding$p(Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;)Lso/h0;

    move-result-object v1

    iget-object v1, v1, Lso/h0;->c:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_1

    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView$b;->a:Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;

    invoke-static {v1}, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;->access$getViewBinding$p(Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;)Lso/h0;

    move-result-object v1

    iget-object v1, v1, Lso/h0;->b:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
