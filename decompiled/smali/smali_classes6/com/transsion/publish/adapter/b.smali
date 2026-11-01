.class public final Lcom/transsion/publish/adapter/b;
.super Landroidx/recyclerview/widget/RecyclerView$b0;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/FrameLayout;

.field private d:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    sget v0, Lcom/transsion/publish/R$id;->tv_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/publish/adapter/b;->a:Landroid/widget/TextView;

    sget v0, Lcom/transsion/publish/R$id;->tv_desc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/publish/adapter/b;->b:Landroid/widget/TextView;

    sget v0, Lcom/transsion/publish/R$id;->rl_close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/publish/adapter/b;->c:Landroid/widget/FrameLayout;

    sget v0, Lcom/transsion/publish/R$id;->iv_play:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/publish/adapter/b;->d:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final f()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/adapter/b;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final g()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/adapter/b;->c:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final h()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/adapter/b;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public final i()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/adapter/b;->a:Landroid/widget/TextView;

    return-object v0
.end method
