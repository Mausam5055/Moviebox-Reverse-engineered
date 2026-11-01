.class public final Lcom/transsion/search_pugc/fragment/result/adapter/c;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0011\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR$\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0006\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/transsion/search_pugc/fragment/result/adapter/c;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/search_pugc/bean/SecondTab;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "secondTab",
        "<init>",
        "(Lcom/transsion/search_pugc/bean/SecondTab;)V",
        "",
        "E1",
        "holder",
        "item",
        "B1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search_pugc/bean/SecondTab;)V",
        "F",
        "Lcom/transsion/search_pugc/bean/SecondTab;",
        "C1",
        "()Lcom/transsion/search_pugc/bean/SecondTab;",
        "D1",
        "Search_psRelease"
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
.field private F:Lcom/transsion/search_pugc/bean/SecondTab;


# direct methods
.method public constructor <init>(Lcom/transsion/search_pugc/bean/SecondTab;)V
    .locals 3

    sget v0, Lcom/transsion/search/R$layout;->item_search_result_tab_ugc:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/adapter/c;->F:Lcom/transsion/search_pugc/bean/SecondTab;

    return-void
.end method


# virtual methods
.method protected B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search_pugc/bean/SecondTab;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/search/R$id;->tab_text:I

    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SecondTab;->getTagValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v0, Lcom/transsion/search/R$id;->tab_text:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/baseui/widget/GradientTextView;

    iget-object v1, p0, Lcom/transsion/search_pugc/fragment/result/adapter/c;->F:Lcom/transsion/search_pugc/bean/SecondTab;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Lcom/transsion/search/R$id;->tab_root:I

    sget v1, Lcom/transsion/search/R$drawable;->bg_search_secondtab_seleted:I

    invoke-virtual {p1, p2, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setBackgroundResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/tn/lib/widget/R$color;->brand_new_gradient_start:I

    invoke-static {p1, p2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v1, Lcom/tn/lib/widget/R$color;->brand_new_gradient_center:I

    invoke-static {p2, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/tn/lib/widget/R$color;->brand_new_gradient_end:I

    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/transsion/baseui/widget/GradientTextView;->setGradientColors(III)V

    goto :goto_0

    :cond_0
    sget p2, Lcom/transsion/search/R$id;->tab_root:I

    sget v1, Lcom/transsion/search/R$drawable;->bg_search_secondtab_unseleted:I

    invoke-virtual {p1, p2, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setBackgroundResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/tn/lib/widget/R$color;->white_80:I

    invoke-static {p1, p2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v1, Lcom/tn/lib/widget/R$color;->white_80:I

    invoke-static {p2, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/tn/lib/widget/R$color;->white_80:I

    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/transsion/baseui/widget/GradientTextView;->setGradientColors(III)V

    :goto_0
    return-void
.end method

.method public final C1()Lcom/transsion/search_pugc/bean/SecondTab;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/adapter/c;->F:Lcom/transsion/search_pugc/bean/SecondTab;

    return-object v0
.end method

.method public final D1(Lcom/transsion/search_pugc/bean/SecondTab;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/adapter/c;->F:Lcom/transsion/search_pugc/bean/SecondTab;

    return-void
.end method

.method public final E1(Lcom/transsion/search_pugc/bean/SecondTab;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/adapter/c;->F:Lcom/transsion/search_pugc/bean/SecondTab;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/search_pugc/bean/SecondTab;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/search_pugc/fragment/result/adapter/c;->B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search_pugc/bean/SecondTab;)V

    return-void
.end method
