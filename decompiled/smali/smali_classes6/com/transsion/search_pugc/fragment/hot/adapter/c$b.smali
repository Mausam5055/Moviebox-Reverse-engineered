.class public final Lcom/transsion/search_pugc/fragment/hot/adapter/c$b;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/search_pugc/fragment/hot/adapter/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field final synthetic e:Lcom/transsion/search_pugc/fragment/hot/adapter/c;


# direct methods
.method public constructor <init>(Lcom/transsion/search_pugc/fragment/hot/adapter/c;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/hot/adapter/c$b;->e:Lcom/transsion/search_pugc/fragment/hot/adapter/c;

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    return-void
.end method

.method private static final A(Lcom/transsion/search_pugc/fragment/hot/adapter/c;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/search_pugc/fragment/hot/adapter/c;->U1(Lcom/transsion/search_pugc/fragment/hot/adapter/c;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p0}, Lcom/transsion/search_pugc/fragment/hot/adapter/c;->V1(Lcom/transsion/search_pugc/fragment/hot/adapter/c;)I

    move-result p2

    if-ne p1, p2, :cond_1

    invoke-static {p0}, Lcom/transsion/search_pugc/fragment/hot/adapter/c;->S1(Lcom/transsion/search_pugc/fragment/hot/adapter/c;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    invoke-static {p0}, Lcom/transsion/search_pugc/fragment/hot/adapter/c;->T1(Lcom/transsion/search_pugc/fragment/hot/adapter/c;)Lcom/transsion/search_pugc/g;

    move-result-object p1

    invoke-static {p0}, Lcom/transsion/search_pugc/fragment/hot/adapter/c;->R1(Lcom/transsion/search_pugc/fragment/hot/adapter/c;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/transsion/search_pugc/g;->n(Z)V

    :cond_1
    return-void
.end method

.method public static synthetic y(Lcom/transsion/search_pugc/fragment/hot/adapter/c;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/search_pugc/fragment/hot/adapter/c$b;->A(Lcom/transsion/search_pugc/fragment/hot/adapter/c;ILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/search_pugc/fragment/hot/adapter/a;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/search_pugc/fragment/hot/adapter/c$b;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search_pugc/fragment/hot/adapter/a;)V

    return-void
.end method

.method public l()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/search/R$layout;->item_search_history_word:I

    return v0
.end method

.method public z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search_pugc/fragment/hot/adapter/a;)V
    .locals 3

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/hot/adapter/c$b;->e:Lcom/transsion/search_pugc/fragment/hot/adapter/c;

    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->g0(Ljava/lang/Object;)I

    move-result v0

    sget v1, Lcom/transsion/search/R$id;->search_history_text:I

    invoke-virtual {p2}, Lcom/transsion/search_pugc/fragment/hot/adapter/a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iget-object p2, p0, Lcom/transsion/search_pugc/fragment/hot/adapter/c$b;->e:Lcom/transsion/search_pugc/fragment/hot/adapter/c;

    invoke-static {p2}, Lcom/transsion/search_pugc/fragment/hot/adapter/c;->U1(Lcom/transsion/search_pugc/fragment/hot/adapter/c;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/search_pugc/fragment/hot/adapter/c$b;->e:Lcom/transsion/search_pugc/fragment/hot/adapter/c;

    invoke-static {p2}, Lcom/transsion/search_pugc/fragment/hot/adapter/c;->V1(Lcom/transsion/search_pugc/fragment/hot/adapter/c;)I

    move-result p2

    if-ne v0, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    sget v2, Lcom/transsion/search/R$id;->search_hot_history_more_image:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    iget-object v2, p0, Lcom/transsion/search_pugc/fragment/hot/adapter/c$b;->e:Lcom/transsion/search_pugc/fragment/hot/adapter/c;

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {v2}, Lcom/transsion/search_pugc/fragment/hot/adapter/c;->R1(Lcom/transsion/search_pugc/fragment/hot/adapter/c;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget p2, Lcom/transsion/search/R$drawable;->ic_hide:I

    goto :goto_2

    :cond_2
    sget p2, Lcom/transsion/search/R$drawable;->ic_more:I

    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance p2, Lcom/transsion/search_pugc/fragment/hot/adapter/d;

    invoke-direct {p2, v2, v0}, Lcom/transsion/search_pugc/fragment/hot/adapter/d;-><init>(Lcom/transsion/search_pugc/fragment/hot/adapter/c;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
