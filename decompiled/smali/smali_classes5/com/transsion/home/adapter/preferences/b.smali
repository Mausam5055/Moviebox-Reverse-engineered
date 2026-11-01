.class public final Lcom/transsion/home/adapter/preferences/b;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B5\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u0012\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ#\u0010\u0014\u001a\u00020\u000c*\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001f\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u001a\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 \u00a8\u0006!"
    }
    d2 = {
        "Lcom/transsion/home/adapter/preferences/b;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/home/bean/HomePreferencesContentItem;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "",
        "",
        "selectedIds",
        "",
        "isSingle",
        "",
        "maxSelectNum",
        "Lkotlin/Function0;",
        "",
        "onSelectionChanged",
        "<init>",
        "(Ljava/util/Set;ZILkotlin/jvm/functions/Function0;)V",
        "Lcom/transsion/baseui/widget/GradientTextView;",
        "Landroid/content/Context;",
        "context",
        "selected",
        "C1",
        "(Lcom/transsion/baseui/widget/GradientTextView;Landroid/content/Context;Z)V",
        "holder",
        "item",
        "D1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/HomePreferencesContentItem;)V",
        "F",
        "Ljava/util/Set;",
        "G",
        "Z",
        "H",
        "I",
        "Lkotlin/jvm/functions/Function0;",
        "Home_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final J:I = 0x8


# instance fields
.field private final F:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final G:Z

.field private final H:I

.field private final I:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;ZILkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZI",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "selectedIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSelectionChanged"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/home/R$layout;->item_home_preferences_enter_pop_tag:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/transsion/home/adapter/preferences/b;->F:Ljava/util/Set;

    iput-boolean p2, p0, Lcom/transsion/home/adapter/preferences/b;->G:Z

    iput p3, p0, Lcom/transsion/home/adapter/preferences/b;->H:I

    iput-object p4, p0, Lcom/transsion/home/adapter/preferences/b;->I:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Set;ZILkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/home/adapter/preferences/b;-><init>(Ljava/util/Set;ZILkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic B1(Lcom/transsion/home/adapter/preferences/b;Lcom/transsion/home/bean/HomePreferencesContentItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/home/adapter/preferences/b;->E1(Lcom/transsion/home/adapter/preferences/b;Lcom/transsion/home/bean/HomePreferencesContentItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V

    return-void
.end method

.method private final C1(Lcom/transsion/baseui/widget/GradientTextView;Landroid/content/Context;Z)V
    .locals 4

    sget v0, Lcom/tn/lib/widget/R$color;->white_80:I

    invoke-static {p2, v0}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v0

    sget v1, Lcom/tn/lib/widget/R$color;->brand_new_gradient_start:I

    invoke-static {p2, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v1

    sget v2, Lcom/tn/lib/widget/R$color;->brand_new_gradient_center:I

    invoke-static {p2, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget v3, Lcom/tn/lib/widget/R$color;->brand_new_gradient_end:I

    invoke-static {p2, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p2

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-eqz p3, :cond_2

    move v0, p2

    :cond_2
    invoke-virtual {p1, v1, v2, v0}, Lcom/transsion/baseui/widget/GradientTextView;->setGradientColors(III)V

    return-void
.end method

.method private static final E1(Lcom/transsion/home/adapter/preferences/b;Lcom/transsion/home/bean/HomePreferencesContentItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 1

    iget-boolean p3, p0, Lcom/transsion/home/adapter/preferences/b;->G:Z

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/transsion/home/adapter/preferences/b;->F:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/transsion/home/bean/HomePreferencesContentItem;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/home/adapter/preferences/b;->F:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/transsion/home/bean/HomePreferencesContentItem;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/transsion/home/adapter/preferences/b;->F:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->clear()V

    iget-object p2, p0, Lcom/transsion/home/adapter/preferences/b;->F:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/transsion/home/bean/HomePreferencesContentItem;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_2

    :cond_1
    iget-object p3, p0, Lcom/transsion/home/adapter/preferences/b;->F:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/transsion/home/bean/HomePreferencesContentItem;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    iget p3, p0, Lcom/transsion/home/adapter/preferences/b;->H:I

    if-lez p3, :cond_2

    iget-object p3, p0, Lcom/transsion/home/adapter/preferences/b;->F:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p3

    iget v0, p0, Lcom/transsion/home/adapter/preferences/b;->H:I

    if-lt p3, v0, :cond_2

    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/transsion/home/R$string;->home_preferences_max_select_tips:I

    iget p0, p0, Lcom/transsion/home/adapter/preferences/b;->H:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p3, v0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/transsion/baseui/util/m;->f(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p3, p0, Lcom/transsion/home/adapter/preferences/b;->F:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/transsion/home/bean/HomePreferencesContentItem;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object p3, p0, Lcom/transsion/home/adapter/preferences/b;->F:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/transsion/home/bean/HomePreferencesContentItem;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :goto_2
    iget-object p0, p0, Lcom/transsion/home/adapter/preferences/b;->I:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected D1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/HomePreferencesContentItem;)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/home/adapter/preferences/b;->F:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/transsion/home/bean/HomePreferencesContentItem;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    sget v1, Lcom/transsion/home/R$id;->tvTagName:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/baseui/widget/GradientTextView;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v2, v0}, Lcom/transsion/home/adapter/preferences/b;->C1(Lcom/transsion/baseui/widget/GradientTextView;Landroid/content/Context;Z)V

    invoke-virtual {p2}, Lcom/transsion/home/bean/HomePreferencesContentItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/transsion/home/adapter/preferences/a;

    invoke-direct {v1, p0, p2, p1}, Lcom/transsion/home/adapter/preferences/a;-><init>(Lcom/transsion/home/adapter/preferences/b;Lcom/transsion/home/bean/HomePreferencesContentItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/home/bean/HomePreferencesContentItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/preferences/b;->D1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/HomePreferencesContentItem;)V

    return-void
.end method
