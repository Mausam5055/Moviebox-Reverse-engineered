.class public final Lcom/transsion/home/adapter/trending/provider/b0;
.super Lcom/transsion/baseui/adapter/BaseItemBindingProvider;


# static fields
.field public static final h:I


# instance fields
.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/transsion/baseui/adapter/BaseItemBindingProvider;->f:I

    sput v0, Lcom/transsion/home/adapter/trending/provider/b0;->h:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/baseui/adapter/BaseItemBindingProvider;-><init>()V

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result v0

    const/16 v1, 0x18

    invoke-static {v1}, Ldk/a;->b(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/home/adapter/trending/provider/b0;->g:I

    return-void
.end method

.method public static synthetic A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/b0;->C(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;Landroid/view/View;)V

    return-void
.end method

.method private static final C(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;Landroid/view/View;)V
    .locals 0

    sget-object p2, Lrl/c;->a:Lrl/c;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    move-result p0

    invoke-virtual {p2, p0, p1}, Lrl/c;->f(ILcom/transsion/home/bean/OperateItem;)V

    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getPage()Lcom/transsion/home/bean/SingleImagePage;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/home/bean/SingleImagePage;->getDeepLink()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getDeepLink()Ljava/lang/String;

    move-result-object p0

    :cond_1
    if-eqz p0, :cond_2

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {p0, p2, p1, p2}, Lak/k;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public B(Lgl/j0;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V
    .locals 9

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "helper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lgl/j0;->c:Lcom/tn/lib/widget/TnTextView;

    invoke-virtual {p3}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/transsion/home/adapter/trending/provider/a0;

    invoke-direct {v1, p2, p3}, Lcom/transsion/home/adapter/trending/provider/a0;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p3}, Lcom/transsion/home/bean/OperateItem;->getPage()Lcom/transsion/home/bean/SingleImagePage;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/home/bean/SingleImagePage;->getImage()Lcom/transsion/moviedetailapi/bean/Image;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Image;->getHeight()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p3}, Lcom/transsion/home/bean/OperateItem;->getPage()Lcom/transsion/home/bean/SingleImagePage;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/home/bean/SingleImagePage;->getImage()Lcom/transsion/moviedetailapi/bean/Image;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Image;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iget v1, p0, Lcom/transsion/home/adapter/trending/provider/b0;->g:I

    mul-int v2, v1, p2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    int-to-float v3, v0

    div-float/2addr v2, v3

    sget-object v3, Llg/a;->a:Llg/a$a;

    invoke-virtual {p3}, Lcom/transsion/home/bean/OperateItem;->getPage()Lcom/transsion/home/bean/SingleImagePage;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/transsion/home/bean/SingleImagePage;->getImage()Lcom/transsion/moviedetailapi/bean/Image;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Image;->getUrl()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "imgH:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",imgW:"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " imageViewHeight:"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", imageViewWidth:"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\uff0c url:"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "SingleImage"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p2, p1, Lgl/j0;->b:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    float-to-int v0, v2

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p1, Lgl/j0;->b:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p3}, Lcom/transsion/home/bean/OperateItem;->getPage()Lcom/transsion/home/bean/SingleImagePage;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/transsion/home/bean/SingleImagePage;->getImage()Lcom/transsion/moviedetailapi/bean/Image;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Image;->getUrl()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    sget-object v0, Lej/f;->a:Lej/f$a;

    iget-object v1, p1, Lgl/j0;->b:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object p2

    invoke-virtual {p3}, Lcom/transsion/home/bean/OperateItem;->getPage()Lcom/transsion/home/bean/SingleImagePage;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/transsion/home/bean/SingleImagePage;->getImage()Lcom/transsion/moviedetailapi/bean/Image;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/Image;->getThumbnail()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_4

    :cond_3
    const-string p3, ""

    :cond_4
    invoke-virtual {p2, p3}, Lej/f$b;->l(Ljava/lang/String;)Lej/f$b;

    move-result-object p2

    iget p3, p0, Lcom/transsion/home/adapter/trending/provider/b0;->g:I

    invoke-virtual {p2, p3}, Lej/f$b;->m(I)Lej/f$b;

    move-result-object p2

    iget-object p1, p1, Lgl/j0;->b:Lcom/google/android/material/imageview/ShapeableImageView;

    const-string p3, "ivCover"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :cond_5
    return-void
.end method

.method public D(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lgl/j0;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "parent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lgl/j0;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lgl/j0;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public l()I
    .locals 1

    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->SINGLE_IMAGE:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public bridge synthetic y(Lg4/a;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lgl/j0;

    check-cast p3, Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/home/adapter/trending/provider/b0;->B(Lgl/j0;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V

    return-void
.end method

.method public bridge synthetic z(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/b0;->D(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lgl/j0;

    move-result-object p1

    return-object p1
.end method
