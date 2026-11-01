.class final Landroidx/media3/ui/PlayerControlView$b;
.super Landroidx/media3/ui/PlayerControlView$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/ui/PlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic c:Landroidx/media3/ui/PlayerControlView;


# direct methods
.method private constructor <init>(Landroidx/media3/ui/PlayerControlView;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView$b;->c:Landroidx/media3/ui/PlayerControlView;

    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerControlView$l;-><init>(Landroidx/media3/ui/PlayerControlView;)V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/ui/PlayerControlView;Landroidx/media3/ui/PlayerControlView$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerControlView$b;-><init>(Landroidx/media3/ui/PlayerControlView;)V

    return-void
.end method

.method public static synthetic n(Landroidx/media3/ui/PlayerControlView$b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerControlView$b;->q(Landroid/view/View;)V

    return-void
.end method

.method private o(Landroidx/media3/common/h0;)Z
    .locals 4

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

    iget-object v2, v2, Landroidx/media3/ui/PlayerControlView$k;->a:Landroidx/media3/common/i0$a;

    invoke-virtual {v2}, Landroidx/media3/common/i0$a;->a()Landroidx/media3/common/f0;

    move-result-object v2

    iget-object v3, p1, Landroidx/media3/common/h0;->D:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private synthetic q(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$b;->c:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView;->j(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/common/a0;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$b;->c:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView;->j(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/common/a0;

    move-result-object p1

    const/16 v0, 0x1d

    invoke-interface {p1, v0}, Landroidx/media3/common/a0;->h(I)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$b;->c:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView;->j(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/common/a0;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media3/common/a0;->l()Landroidx/media3/common/h0;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$b;->c:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Landroidx/media3/ui/PlayerControlView;->j(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/common/a0;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/a0;

    invoke-virtual {p1}, Landroidx/media3/common/h0;->a()Landroidx/media3/common/h0$c;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/media3/common/h0$c;->G(I)Landroidx/media3/common/h0$c;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroidx/media3/common/h0$c;->P(IZ)Landroidx/media3/common/h0$c;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/h0$c;->F()Landroidx/media3/common/h0;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/media3/common/a0;->V(Landroidx/media3/common/h0;)V

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$b;->c:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView;->w(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/ui/PlayerControlView$h;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$b;->c:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Landroidx/media3/ui/R$string;->exo_track_selection_auto:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroidx/media3/ui/PlayerControlView$h;->j(ILjava/lang/String;)V

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$b;->c:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView;->I(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public k(Landroidx/media3/ui/PlayerControlView$i;)V
    .locals 2

    iget-object v0, p1, Landroidx/media3/ui/PlayerControlView$i;->a:Landroid/widget/TextView;

    sget v1, Landroidx/media3/ui/R$string;->exo_track_selection_auto:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$b;->c:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Landroidx/media3/ui/PlayerControlView;->j(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/common/a0;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/a0;

    invoke-interface {v0}, Landroidx/media3/common/a0;->l()Landroidx/media3/common/h0;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media3/ui/PlayerControlView$b;->o(Landroidx/media3/common/h0;)Z

    move-result v0

    iget-object v1, p1, Landroidx/media3/ui/PlayerControlView$i;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v0, Landroidx/media3/ui/m;

    invoke-direct {v0, p0}, Landroidx/media3/ui/m;-><init>(Landroidx/media3/ui/PlayerControlView$b;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$b;->c:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Landroidx/media3/ui/PlayerControlView;->w(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/ui/PlayerControlView$h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroidx/media3/ui/PlayerControlView$h;->j(ILjava/lang/String;)V

    return-void
.end method

.method public p(Ljava/util/List;)V
    .locals 4

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView$l;->a:Ljava/util/List;

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$b;->c:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Landroidx/media3/ui/PlayerControlView;->j(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/common/a0;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/a0;

    invoke-interface {v0}, Landroidx/media3/common/a0;->l()Landroidx/media3/common/h0;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$b;->c:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView;->w(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/ui/PlayerControlView$h;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$b;->c:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/media3/ui/R$string;->exo_track_selection_none:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroidx/media3/ui/PlayerControlView$h;->j(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/ui/PlayerControlView$b;->o(Landroidx/media3/common/h0;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$b;->c:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView;->w(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/ui/PlayerControlView$h;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$b;->c:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/media3/ui/R$string;->exo_track_selection_auto:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroidx/media3/ui/PlayerControlView$h;->j(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/ui/PlayerControlView$k;

    invoke-virtual {v1}, Landroidx/media3/ui/PlayerControlView$k;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$b;->c:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView;->w(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/ui/PlayerControlView$h;

    move-result-object p1

    iget-object v0, v1, Landroidx/media3/ui/PlayerControlView$k;->c:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroidx/media3/ui/PlayerControlView$h;->j(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
