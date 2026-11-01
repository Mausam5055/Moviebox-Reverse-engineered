.class final Landroidx/media3/ui/PlayerControlView$j;
.super Landroidx/media3/ui/PlayerControlView$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/ui/PlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "j"
.end annotation


# instance fields
.field final synthetic c:Landroidx/media3/ui/PlayerControlView;


# direct methods
.method private constructor <init>(Landroidx/media3/ui/PlayerControlView;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView$j;->c:Landroidx/media3/ui/PlayerControlView;

    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerControlView$l;-><init>(Landroidx/media3/ui/PlayerControlView;)V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/ui/PlayerControlView;Landroidx/media3/ui/PlayerControlView$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerControlView$j;-><init>(Landroidx/media3/ui/PlayerControlView;)V

    return-void
.end method

.method public static synthetic n(Landroidx/media3/ui/PlayerControlView$j;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerControlView$j;->p(Landroid/view/View;)V

    return-void
.end method

.method private synthetic p(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$j;->c:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView;->j(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/common/a0;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$j;->c:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView;->j(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/common/a0;

    move-result-object p1

    const/16 v0, 0x1d

    invoke-interface {p1, v0}, Landroidx/media3/common/a0;->h(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$j;->c:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView;->j(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/common/a0;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media3/common/a0;->l()Landroidx/media3/common/h0;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$j;->c:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Landroidx/media3/ui/PlayerControlView;->j(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/common/a0;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/media3/common/h0;->a()Landroidx/media3/common/h0$c;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroidx/media3/common/h0$c;->G(I)Landroidx/media3/common/h0$c;

    move-result-object p1

    const/4 v1, -0x3

    invoke-virtual {p1, v1}, Landroidx/media3/common/h0$c;->K(I)Landroidx/media3/common/h0$c;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/media3/common/h0$c;->M(Ljava/lang/String;)Landroidx/media3/common/h0$c;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/media3/common/h0$c;->O(I)Landroidx/media3/common/h0$c;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/h0$c;->F()Landroidx/media3/common/h0;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/media3/common/a0;->V(Landroidx/media3/common/h0;)V

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$j;->c:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView;->I(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public j(Landroidx/media3/ui/PlayerControlView$i;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/media3/ui/PlayerControlView$l;->j(Landroidx/media3/ui/PlayerControlView$i;I)V

    if-lez p2, :cond_1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$l;->a:Ljava/util/List;

    add-int/lit8 p2, p2, -0x1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/ui/PlayerControlView$k;

    iget-object p1, p1, Landroidx/media3/ui/PlayerControlView$i;->b:Landroid/view/View;

    invoke-virtual {p2}, Landroidx/media3/ui/PlayerControlView$k;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public k(Landroidx/media3/ui/PlayerControlView$i;)V
    .locals 3

    iget-object v0, p1, Landroidx/media3/ui/PlayerControlView$i;->a:Landroid/widget/TextView;

    sget v1, Landroidx/media3/ui/R$string;->exo_track_selection_none:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView$l;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView$l;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/ui/PlayerControlView$k;

    invoke-virtual {v2}, Landroidx/media3/ui/PlayerControlView$k;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_1
    iget-object v2, p1, Landroidx/media3/ui/PlayerControlView$i;->b:Landroid/view/View;

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x4

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v0, Landroidx/media3/ui/p;

    invoke-direct {v0, p0}, Landroidx/media3/ui/p;-><init>(Landroidx/media3/ui/PlayerControlView$j;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public o(Ljava/util/List;)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/ui/PlayerControlView$k;

    invoke-virtual {v2}, Landroidx/media3/ui/PlayerControlView$k;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView$j;->c:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v1}, Landroidx/media3/ui/PlayerControlView;->D(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView$j;->c:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v1}, Landroidx/media3/ui/PlayerControlView;->D(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView$j;->c:Landroidx/media3/ui/PlayerControlView;

    if-eqz v0, :cond_2

    invoke-static {v2}, Landroidx/media3/ui/PlayerControlView;->J(Landroidx/media3/ui/PlayerControlView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_2

    :cond_2
    invoke-static {v2}, Landroidx/media3/ui/PlayerControlView;->K(Landroidx/media3/ui/PlayerControlView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView$j;->c:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v1}, Landroidx/media3/ui/PlayerControlView;->D(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$j;->c:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Landroidx/media3/ui/PlayerControlView;->L(Landroidx/media3/ui/PlayerControlView;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$j;->c:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Landroidx/media3/ui/PlayerControlView;->M(Landroidx/media3/ui/PlayerControlView;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView$l;->a:Ljava/util/List;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 0

    check-cast p1, Landroidx/media3/ui/PlayerControlView$i;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/ui/PlayerControlView$j;->j(Landroidx/media3/ui/PlayerControlView$i;I)V

    return-void
.end method
