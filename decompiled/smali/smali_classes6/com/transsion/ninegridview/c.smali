.class public final Lcom/transsion/ninegridview/c;
.super Ljava/lang/Object;

# interfaces
.implements Lpn/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget-object v0, Lej/f;->a:Lej/f$a;

    invoke-virtual {v0, p1}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object p1

    invoke-virtual {p1, p3}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object p1

    sget p3, Lcom/transsion/ninegridview/R$color;->ic_default_bg_color:I

    invoke-virtual {p1, p3}, Lej/f$b;->i(I)Lej/f$b;

    move-result-object p1

    if-nez p6, :cond_0

    const-string p6, ""

    :cond_0
    invoke-virtual {p1, p6}, Lej/f$b;->l(Ljava/lang/String;)Lej/f$b;

    move-result-object p1

    invoke-virtual {p1, p4}, Lej/f$b;->m(I)Lej/f$b;

    move-result-object p1

    invoke-virtual {p1, p5}, Lej/f$b;->c(I)Lej/f$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :cond_1
    return-void
.end method

.method public b(Landroid/content/Context;Lcom/transsion/ninegridview/video/NineGridItemView;Lcom/transsion/moviedetailapi/bean/Image;II)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/ninegridview/video/NineGridItemView;->getImageView()Lcom/google/android/material/imageview/ShapeableImageView;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/Image;->getGifBean()Lcom/transsion/moviedetailapi/bean/GifBean;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/GifBean;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/Image;->getGifBean()Lcom/transsion/moviedetailapi/bean/GifBean;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/GifBean;->getFirstFrameUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/Image;->getUrl()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_2
    if-gtz p4, :cond_4

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result p4

    :cond_4
    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget-object v1, Lej/f;->a:Lej/f$a;

    invoke-virtual {v1, p1}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object p1

    const-string v1, ""

    if-nez v0, :cond_5

    move-object v0, v1

    :cond_5
    invoke-virtual {p1, v0}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object p1

    sget v0, Lcom/transsion/ninegridview/R$color;->ic_default_bg_color:I

    invoke-virtual {p1, v0}, Lej/f$b;->i(I)Lej/f$b;

    move-result-object p1

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/Image;->getThumbnail()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_6

    goto :goto_3

    :cond_6
    move-object v1, p3

    :cond_7
    :goto_3
    invoke-virtual {p1, v1}, Lej/f$b;->l(Ljava/lang/String;)Lej/f$b;

    move-result-object p1

    invoke-virtual {p1, p4}, Lej/f$b;->m(I)Lej/f$b;

    move-result-object p1

    invoke-virtual {p1, p5}, Lej/f$b;->c(I)Lej/f$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :cond_8
    return-void
.end method
