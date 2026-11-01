.class public final Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$g;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;


# direct methods
.method constructor <init>(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$g;->a:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$g;->b(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;I)V

    return-void
.end method

.method private static final b(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;I)V
    .locals 1

    invoke-static {p1}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->access$getItemView(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {p1}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->access$getMPageChange$p(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)Lcom/transsion/ninegridview/preview/r;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->access$getImageList$p(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/moviedetailapi/bean/Image;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-virtual {v0, p2, p1, p0}, Lcom/transsion/ninegridview/preview/r;->f(ILcom/transsion/moviedetailapi/bean/Image;Landroid/view/View;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$g;->a:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

    invoke-static {v0, p1}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->access$setCurrentItemIndex$p(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;I)V

    iget-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$g;->a:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

    invoke-static {v0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->access$showPageIndex(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)V

    iget-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$g;->a:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

    invoke-static {v0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->access$getImageList$p(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/moviedetailapi/bean/Image;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Image;->getGifBean()Lcom/transsion/moviedetailapi/bean/GifBean;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/GifBean;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v2, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$g;->a:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

    invoke-static {v2}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->access$getItemView(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v2, :cond_1

    iget-object v1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$g;->a:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

    invoke-static {v1}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->access$getHandler$p(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$g;->a:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

    new-instance v3, Lcom/transsion/ninegridview/preview/b;

    invoke-direct {v3, v0, v2, p1}, Lcom/transsion/ninegridview/preview/b;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;I)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$g;->a:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

    invoke-static {v2}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->access$getMPageChange$p(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)Lcom/transsion/ninegridview/preview/r;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$g;->a:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

    invoke-static {v3}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->access$getImageList$p(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/moviedetailapi/bean/Image;

    :cond_2
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v2, p1, v1, v0}, Lcom/transsion/ninegridview/preview/r;->f(ILcom/transsion/moviedetailapi/bean/Image;Landroid/view/View;)V

    :cond_3
    :goto_1
    return-void
.end method
