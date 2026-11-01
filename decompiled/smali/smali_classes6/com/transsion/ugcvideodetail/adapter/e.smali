.class public final Lcom/transsion/ugcvideodetail/adapter/e;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0017\u0012\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR*\u0010\u0015\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/transsion/ugcvideodetail/adapter/e;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Leu/a;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "",
        "data",
        "<init>",
        "(Ljava/util/List;)V",
        "holder",
        "item",
        "",
        "B1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Leu/a;)V",
        "",
        "value",
        "F",
        "I",
        "C1",
        "()I",
        "D1",
        "(I)V",
        "selectedIndex",
        "UGCVideoDetail_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private F:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/transsion/ugcvideodetail/adapter/e;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Leu/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/ugcvideodetail/R$layout;->item_ugc_imm_video_setting_language:I

    invoke-direct {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/transsion/ugcvideodetail/adapter/e;->F:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/ugcvideodetail/adapter/e;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Leu/a;)V
    .locals 6

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result v0

    iget v1, p0, Lcom/transsion/ugcvideodetail/adapter/e;->F:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sget v1, Lcom/transsion/ugcvideodetail/R$id;->tvLanguage:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/baseui/widget/GradientTextView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v3, 0x40800000    # 4.0f

    if-eqz v0, :cond_1

    sget v0, Lcom/tn/lib/widget/R$color;->brand_new_gradient_start:I

    invoke-static {p2, v0}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v0

    sget v4, Lcom/tn/lib/widget/R$color;->brand_new_gradient_center:I

    invoke-static {p2, v4}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v4

    sget v5, Lcom/tn/lib/widget/R$color;->brand_new_gradient_end:I

    invoke-static {p2, v5}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v1, v0, v4, v5}, Lcom/transsion/baseui/widget/GradientTextView;->setGradientColors(III)V

    new-instance v0, Lcom/noober/background/drawable/DrawableCreator$Builder;

    invoke-direct {v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;-><init>()V

    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/noober/background/drawable/DrawableCreator$Builder;->setCornersRadius(F)Lcom/noober/background/drawable/DrawableCreator$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/noober/background/drawable/DrawableCreator$Builder;->setGradientAngle(I)Lcom/noober/background/drawable/DrawableCreator$Builder;

    move-result-object v0

    sget v1, Lcom/tn/lib/widget/R$color;->brand_new_gradient_start_20:I

    invoke-static {p2, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v1

    sget v2, Lcom/tn/lib/widget/R$color;->brand_new_gradient_center_20:I

    invoke-static {p2, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget v3, Lcom/tn/lib/widget/R$color;->brand_new_gradient_end_20:I

    invoke-static {p2, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v0, v1, v2, p2}, Lcom/noober/background/drawable/DrawableCreator$Builder;->setGradientColor(III)Lcom/noober/background/drawable/DrawableCreator$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/noober/background/drawable/DrawableCreator$Builder;->build()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    sget v0, Lcom/tn/lib/widget/R$color;->white_80:I

    invoke-static {p2, v0}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v0

    sget v2, Lcom/tn/lib/widget/R$color;->white_80:I

    invoke-static {p2, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget v4, Lcom/tn/lib/widget/R$color;->white_80:I

    invoke-static {p2, v4}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v1, v0, v2, v4}, Lcom/transsion/baseui/widget/GradientTextView;->setGradientColors(III)V

    new-instance v0, Lcom/noober/background/drawable/DrawableCreator$Builder;

    invoke-direct {v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;-><init>()V

    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/noober/background/drawable/DrawableCreator$Builder;->setCornersRadius(F)Lcom/noober/background/drawable/DrawableCreator$Builder;

    move-result-object v0

    sget v1, Lcom/tn/lib/widget/R$color;->white_6:I

    invoke-static {p2, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/noober/background/drawable/DrawableCreator$Builder;->setSolidColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/noober/background/drawable/DrawableCreator$Builder;->build()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.method public final C1()I
    .locals 1

    iget v0, p0, Lcom/transsion/ugcvideodetail/adapter/e;->F:I

    return v0
.end method

.method public final D1(I)V
    .locals 2

    iget v0, p0, Lcom/transsion/ugcvideodetail/adapter/e;->F:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/transsion/ugcvideodetail/adapter/e;->F:I

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_2
    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Leu/a;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/adapter/e;->B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Leu/a;)V

    return-void
.end method
