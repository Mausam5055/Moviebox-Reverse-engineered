.class final Landroidx/media3/ui/PlayerControlView$g;
.super Landroidx/recyclerview/widget/RecyclerView$b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/ui/PlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "g"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/ImageView;

.field final synthetic d:Landroidx/media3/ui/PlayerControlView;


# direct methods
.method public constructor <init>(Landroidx/media3/ui/PlayerControlView;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView$g;->d:Landroidx/media3/ui/PlayerControlView;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    sget p1, Landroidx/media3/common/util/a1;->a:I

    const/16 v0, 0x1a

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/view/View;->setFocusable(Z)V

    :cond_0
    sget p1, Landroidx/media3/ui/R$id;->exo_main_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView$g;->a:Landroid/widget/TextView;

    sget p1, Landroidx/media3/ui/R$id;->exo_sub_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView$g;->b:Landroid/widget/TextView;

    sget p1, Landroidx/media3/ui/R$id;->exo_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView$g;->c:Landroid/widget/ImageView;

    new-instance p1, Landroidx/media3/ui/o;

    invoke-direct {p1, p0}, Landroidx/media3/ui/o;-><init>(Landroidx/media3/ui/PlayerControlView$g;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic f(Landroidx/media3/ui/PlayerControlView$g;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerControlView$g;->j(Landroid/view/View;)V

    return-void
.end method

.method static synthetic g(Landroidx/media3/ui/PlayerControlView$g;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$g;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic h(Landroidx/media3/ui/PlayerControlView$g;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$g;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic i(Landroidx/media3/ui/PlayerControlView$g;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$g;->c:Landroid/widget/ImageView;

    return-object p0
.end method

.method private synthetic j(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$g;->d:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/media3/ui/PlayerControlView;->G(Landroidx/media3/ui/PlayerControlView;I)V

    return-void
.end method
