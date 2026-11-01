.class public final Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;
.super Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter$NormalViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter<",
        "Ljava/lang/String;",
        ">.NormalViewHolder;"
    }
.end annotation


# instance fields
.field private final checkBox$delegate:Lkotlin/Lazy;

.field private final imageView$delegate:Lkotlin/Lazy;

.field private final ivQrPreview$delegate:Lkotlin/Lazy;

.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

.field private final viewMask$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->this$0:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    sget v0, Lcom/cloud/tmc/miniapp/R$layout;->item_image_select:I

    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter$NormalViewHolder;-><init>(Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;I)V

    new-instance p1, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder$imageView$2;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder$imageView$2;-><init>(Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->imageView$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder$checkBox$2;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder$checkBox$2;-><init>(Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->checkBox$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder$viewMask$2;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder$viewMask$2;-><init>(Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->viewMask$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder$ivQrPreview$2;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder$ivQrPreview$2;-><init>(Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->ivQrPreview$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getCheckBox()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->checkBox$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getImageView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->imageView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getIvQrPreview()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->ivQrPreview$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    return-object v0
.end method

.method private final getViewMask()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->viewMask$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public onBindView(I)V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->this$0:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->this$0:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;->getImageLoder()Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    move-result-object v2

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3, p1, v1}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImg(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;->getSelectMode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->getCheckBox()Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->getIvQrPreview()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_6

    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_3
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->getCheckBox()Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;->getSelectNum(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->getCheckBox()Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_2
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->getCheckBox()Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->getViewMask()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_a

    sget v1, Lcom/cloud/tmc/miniapp/R$color;->mini_black50:I

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_6

    :cond_7
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->getCheckBox()Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_4
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->getCheckBox()Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_5

    :cond_9
    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->getViewMask()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_a

    sget v1, Lcom/cloud/tmc/miniapp/R$color;->mini_black6:I

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_a
    :goto_6
    return-void
.end method
