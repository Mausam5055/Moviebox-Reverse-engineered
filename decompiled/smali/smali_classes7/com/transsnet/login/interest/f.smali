.class public final Lcom/transsnet/login/interest/f;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/login/interest/f$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Lkotlin/jvm/functions/Function1;

.field private final c:Ljava/util/ArrayList;

.field private final d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 12

    const-string v0, "dataList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/transsnet/login/interest/f;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/transsnet/login/interest/f;->b:Lkotlin/jvm/functions/Function1;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsnet/login/interest/f;->c:Ljava/util/ArrayList;

    sget p1, Lcom/transsnet/login/R$mipmap;->login_interest_animal_plant:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget p2, Lcom/transsnet/login/R$mipmap;->login_interest_sport:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v0, Lcom/transsnet/login/R$mipmap;->login_interest_food:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/transsnet/login/R$mipmap;->login_interest_game:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/transsnet/login/R$mipmap;->login_interest_transportation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/transsnet/login/R$mipmap;->login_interest_fitness:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/transsnet/login/R$mipmap;->login_interest_music:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/transsnet/login/R$mipmap;->login_interest_animation:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget v6, Lcom/transsnet/login/R$mipmap;->login_interest_art:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget v7, Lcom/transsnet/login/R$mipmap;->login_interest_travel:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget v8, Lcom/transsnet/login/R$mipmap;->login_interest_comedy:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget v9, Lcom/transsnet/login/R$mipmap;->login_interest_fashion:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0xc

    new-array v10, v10, [Ljava/lang/Integer;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 p1, 0x1

    aput-object p2, v10, p1

    const/4 p1, 0x2

    aput-object v0, v10, p1

    const/4 p1, 0x3

    aput-object v1, v10, p1

    const/4 p1, 0x4

    aput-object v2, v10, p1

    const/4 p1, 0x5

    aput-object v3, v10, p1

    const/4 p1, 0x6

    aput-object v4, v10, p1

    const/4 p1, 0x7

    aput-object v5, v10, p1

    const/16 p1, 0x8

    aput-object v6, v10, p1

    const/16 p1, 0x9

    aput-object v7, v10, p1

    const/16 p1, 0xa

    aput-object v8, v10, p1

    const/16 p1, 0xb

    aput-object v9, v10, p1

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/transsnet/login/interest/f;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic g(Lcom/transsnet/login/interest/f;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsnet/login/interest/f;->j(Lcom/transsnet/login/interest/f;ILandroid/view/View;)V

    return-void
.end method

.method private static final j(Lcom/transsnet/login/interest/f;ILandroid/view/View;)V
    .locals 2

    invoke-virtual {p2}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsnet/login/interest/f;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsnet/login/interest/f;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object p1, p0, Lcom/transsnet/login/interest/f;->b:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/transsnet/login/interest/f;->c:Ljava/util/ArrayList;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/transsnet/login/interest/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final h()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/login/interest/f;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public i(Lcom/transsnet/login/interest/f$a;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsnet/login/interest/f;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsnet/login/interest/f$a;->g()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/transsnet/login/interest/f$a;->f()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/transsnet/login/interest/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "get(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/transsnet/login/interest/f;->c:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v0, Lcom/transsnet/login/interest/e;

    invoke-direct {v0, p0, p2}, Lcom/transsnet/login/interest/e;-><init>(Lcom/transsnet/login/interest/f;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public k(Landroid/view/ViewGroup;I)Lcom/transsnet/login/interest/f$a;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/transsnet/login/interest/f$a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsnet/login/R$layout;->login_item_interest:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/transsnet/login/interest/f$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 0

    check-cast p1, Lcom/transsnet/login/interest/f$a;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/login/interest/f;->i(Lcom/transsnet/login/interest/f$a;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/login/interest/f;->k(Landroid/view/ViewGroup;I)Lcom/transsnet/login/interest/f$a;

    move-result-object p1

    return-object p1
.end method
