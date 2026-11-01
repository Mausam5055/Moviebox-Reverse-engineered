.class public final Lkr/c;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkr/c$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;

.field private b:Lkr/a;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    const-string v0, "mDatas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lkr/c;->a:Ljava/util/List;

    return-void
.end method

.method public static synthetic g(Lkr/c;Ljr/a;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lkr/c;->i(Lkr/c;Ljr/a;Landroid/view/View;)V

    return-void
.end method

.method private static final i(Lkr/c;Ljr/a;Landroid/view/View;)V
    .locals 6

    sget-object v0, Lkr/o;->a:Lkr/o;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkr/o;->e(Lkr/o;IJILjava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lkr/c;->b:Lkr/a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lkr/a;->a(Ljr/a;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lkr/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public h(Lkr/c$a;I)V
    .locals 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result v1

    const/high16 v2, 0x438f0000    # 286.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x4

    const/high16 v2, 0x41800000    # 16.0f

    const/4 v3, 0x0

    if-nez p2, :cond_0

    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkr/c;->getItemCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p2, v4, :cond_1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :goto_0
    iget-object v0, p0, Lkr/c;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljr/a;

    invoke-virtual {p1}, Lkr/c$a;->f()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Ljr/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lkr/c$a;->f()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Ljr/a;->a()I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v0, Lkr/b;

    invoke-direct {v0, p0, p2}, Lkr/b;-><init>(Lkr/c;Ljr/a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public j(Landroid/view/ViewGroup;I)Lkr/c$a;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/share/R$layout;->adapter_share:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lkr/c$a;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p2, p1}, Lkr/c$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final k(Lkr/a;)V
    .locals 1

    const-string v0, "onItemClickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkr/c;->b:Lkr/a;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 0

    check-cast p1, Lkr/c$a;

    invoke-virtual {p0, p1, p2}, Lkr/c;->h(Lkr/c$a;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkr/c;->j(Landroid/view/ViewGroup;I)Lkr/c$a;

    move-result-object p1

    return-object p1
.end method
