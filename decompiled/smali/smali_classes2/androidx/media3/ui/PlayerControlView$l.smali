.class abstract Landroidx/media3/ui/PlayerControlView$l;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/ui/PlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "l"
.end annotation


# instance fields
.field protected a:Ljava/util/List;

.field final synthetic b:Landroidx/media3/ui/PlayerControlView;


# direct methods
.method protected constructor <init>(Landroidx/media3/ui/PlayerControlView;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView$l;->b:Landroidx/media3/ui/PlayerControlView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView$l;->a:Ljava/util/List;

    return-void
.end method

.method public static synthetic g(Landroidx/media3/ui/PlayerControlView$l;Landroidx/media3/common/a0;Landroidx/media3/common/f0;Landroidx/media3/ui/PlayerControlView$k;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/ui/PlayerControlView$l;->i(Landroidx/media3/common/a0;Landroidx/media3/common/f0;Landroidx/media3/ui/PlayerControlView$k;Landroid/view/View;)V

    return-void
.end method

.method private synthetic i(Landroidx/media3/common/a0;Landroidx/media3/common/f0;Landroidx/media3/ui/PlayerControlView$k;Landroid/view/View;)V
    .locals 2

    const/16 p4, 0x1d

    invoke-interface {p1, p4}, Landroidx/media3/common/a0;->h(I)Z

    move-result p4

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Landroidx/media3/common/a0;->l()Landroidx/media3/common/h0;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/media3/common/h0;->a()Landroidx/media3/common/h0$c;

    move-result-object p4

    new-instance v0, Landroidx/media3/common/g0;

    iget v1, p3, Landroidx/media3/ui/PlayerControlView$k;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Landroidx/media3/common/g0;-><init>(Landroidx/media3/common/f0;Ljava/util/List;)V

    invoke-virtual {p4, v0}, Landroidx/media3/common/h0$c;->L(Landroidx/media3/common/g0;)Landroidx/media3/common/h0$c;

    move-result-object p2

    iget-object p4, p3, Landroidx/media3/ui/PlayerControlView$k;->a:Landroidx/media3/common/i0$a;

    invoke-virtual {p4}, Landroidx/media3/common/i0$a;->d()I

    move-result p4

    const/4 v0, 0x0

    invoke-virtual {p2, p4, v0}, Landroidx/media3/common/h0$c;->P(IZ)Landroidx/media3/common/h0$c;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/common/h0$c;->F()Landroidx/media3/common/h0;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/media3/common/a0;->V(Landroidx/media3/common/h0;)V

    iget-object p1, p3, Landroidx/media3/ui/PlayerControlView$k;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView$l;->m(Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$l;->b:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView;->I(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0
.end method

.method protected h()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/ui/PlayerControlView$l;->a:Ljava/util/List;

    return-void
.end method

.method public j(Landroidx/media3/ui/PlayerControlView$i;I)V
    .locals 6

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$l;->b:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Landroidx/media3/ui/PlayerControlView;->j(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/common/a0;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView$l;->k(Landroidx/media3/ui/PlayerControlView$i;)V

    goto :goto_2

    :cond_1
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView$l;->a:Ljava/util/List;

    const/4 v2, 0x1

    sub-int/2addr p2, v2

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/ui/PlayerControlView$k;

    iget-object v1, p2, Landroidx/media3/ui/PlayerControlView$k;->a:Landroidx/media3/common/i0$a;

    invoke-virtual {v1}, Landroidx/media3/common/i0$a;->a()Landroidx/media3/common/f0;

    move-result-object v1

    invoke-interface {v0}, Landroidx/media3/common/a0;->l()Landroidx/media3/common/h0;

    move-result-object v3

    iget-object v3, v3, Landroidx/media3/common/h0;->D:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Landroidx/media3/ui/PlayerControlView$k;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    iget-object v3, p1, Landroidx/media3/ui/PlayerControlView$i;->a:Landroid/widget/TextView;

    iget-object v5, p2, Landroidx/media3/ui/PlayerControlView$k;->c:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p1, Landroidx/media3/ui/PlayerControlView$i;->b:Landroid/view/View;

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x4

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v2, Landroidx/media3/ui/q;

    invoke-direct {v2, p0, v0, v1, p2}, Landroidx/media3/ui/q;-><init>(Landroidx/media3/ui/PlayerControlView$l;Landroidx/media3/common/a0;Landroidx/media3/common/f0;Landroidx/media3/ui/PlayerControlView$k;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    return-void
.end method

.method protected abstract k(Landroidx/media3/ui/PlayerControlView$i;)V
.end method

.method public l(Landroid/view/ViewGroup;I)Landroidx/media3/ui/PlayerControlView$i;
    .locals 2

    iget-object p2, p0, Landroidx/media3/ui/PlayerControlView$l;->b:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Landroidx/media3/ui/R$layout;->exo_styled_sub_settings_list_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Landroidx/media3/ui/PlayerControlView$i;

    invoke-direct {p2, p1}, Landroidx/media3/ui/PlayerControlView$i;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method protected abstract m(Ljava/lang/String;)V
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 0

    check-cast p1, Landroidx/media3/ui/PlayerControlView$i;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/ui/PlayerControlView$l;->j(Landroidx/media3/ui/PlayerControlView$i;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/media3/ui/PlayerControlView$l;->l(Landroid/view/ViewGroup;I)Landroidx/media3/ui/PlayerControlView$i;

    move-result-object p1

    return-object p1
.end method
