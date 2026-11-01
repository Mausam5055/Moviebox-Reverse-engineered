.class Landroidx/media3/ui/PlayerControlView$h;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/ui/PlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:[Ljava/lang/String;

.field private final c:[Landroid/graphics/drawable/Drawable;

.field final synthetic d:Landroidx/media3/ui/PlayerControlView;


# direct methods
.method public constructor <init>(Landroidx/media3/ui/PlayerControlView;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView$h;->d:Landroidx/media3/ui/PlayerControlView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Landroidx/media3/ui/PlayerControlView$h;->a:[Ljava/lang/String;

    array-length p1, p2

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView$h;->b:[Ljava/lang/String;

    iput-object p3, p0, Landroidx/media3/ui/PlayerControlView$h;->c:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private k(I)Z
    .locals 3

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$h;->d:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Landroidx/media3/ui/PlayerControlView;->j(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/common/a0;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    return v0

    :cond_1
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$h;->d:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView;->j(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/common/a0;

    move-result-object p1

    const/16 v2, 0x1e

    invoke-interface {p1, v2}, Landroidx/media3/common/a0;->h(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$h;->d:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView;->j(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/common/a0;

    move-result-object p1

    const/16 v2, 0x1d

    invoke-interface {p1, v2}, Landroidx/media3/common/a0;->h(I)Z

    move-result p1

    if-eqz p1, :cond_2

    move v1, v0

    :cond_2
    return v1

    :cond_3
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$h;->d:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView;->j(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/common/a0;

    move-result-object p1

    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroidx/media3/common/a0;->h(I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public g()Z
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media3/ui/PlayerControlView$h;->k(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroidx/media3/ui/PlayerControlView$h;->k(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$h;->a:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public h(Landroidx/media3/ui/PlayerControlView$g;I)V
    .locals 4

    invoke-direct {p0, p2}, Landroidx/media3/ui/PlayerControlView$h;->k(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$n;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$n;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView$g;->g(Landroidx/media3/ui/PlayerControlView$g;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView$h;->a:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$h;->b:[Ljava/lang/String;

    aget-object v0, v0, p2

    const/16 v1, 0x8

    if-nez v0, :cond_1

    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView$g;->h(Landroidx/media3/ui/PlayerControlView$g;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView$g;->h(Landroidx/media3/ui/PlayerControlView$g;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView$h;->b:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$h;->c:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p2

    if-nez v0, :cond_2

    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView$g;->i(Landroidx/media3/ui/PlayerControlView$g;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView$g;->i(Landroidx/media3/ui/PlayerControlView$g;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$h;->c:[Landroid/graphics/drawable/Drawable;

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    return-void
.end method

.method public i(Landroid/view/ViewGroup;I)Landroidx/media3/ui/PlayerControlView$g;
    .locals 2

    iget-object p2, p0, Landroidx/media3/ui/PlayerControlView$h;->d:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Landroidx/media3/ui/R$layout;->exo_styled_settings_list_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Landroidx/media3/ui/PlayerControlView$g;

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$h;->d:Landroidx/media3/ui/PlayerControlView;

    invoke-direct {p2, v0, p1}, Landroidx/media3/ui/PlayerControlView$g;-><init>(Landroidx/media3/ui/PlayerControlView;Landroid/view/View;)V

    return-object p2
.end method

.method public j(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$h;->b:[Ljava/lang/String;

    aput-object p2, v0, p1

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 0

    check-cast p1, Landroidx/media3/ui/PlayerControlView$g;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/ui/PlayerControlView$h;->h(Landroidx/media3/ui/PlayerControlView$g;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/media3/ui/PlayerControlView$h;->i(Landroid/view/ViewGroup;I)Landroidx/media3/ui/PlayerControlView$g;

    move-result-object p1

    return-object p1
.end method
