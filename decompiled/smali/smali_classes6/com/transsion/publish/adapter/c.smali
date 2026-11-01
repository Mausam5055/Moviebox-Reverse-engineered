.class public final Lcom/transsion/publish/adapter/c;
.super Landroidx/recyclerview/widget/RecyclerView$b0;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    sget v0, Lcom/transsion/publish/R$id;->iv_photo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/publish/adapter/c;->a:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/publish/R$id;->iv_clear:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/publish/adapter/c;->b:Landroid/view/View;

    sget v0, Lcom/transsion/publish/R$id;->rl_add:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/publish/adapter/c;->c:Landroid/view/View;

    sget v0, Lcom/transsion/publish/R$id;->tv_number:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/publish/adapter/c;->d:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final f()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/adapter/c;->c:Landroid/view/View;

    return-object v0
.end method

.method public final g()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/adapter/c;->b:Landroid/view/View;

    return-object v0
.end method

.method public final h()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/adapter/c;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final i()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/adapter/c;->d:Landroid/widget/TextView;

    return-object v0
.end method
