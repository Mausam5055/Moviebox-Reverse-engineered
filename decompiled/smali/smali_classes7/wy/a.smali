.class public Lwy/a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;


# instance fields
.field private a:Lcom/transsnet/login/country/SelectCountryViewModel;

.field private b:Ljava/util/List;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsnet/login/country/SelectCountryViewModel;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p3, p0, Lwy/a;->b:Ljava/util/List;

    iput-object p1, p0, Lwy/a;->c:Landroid/content/Context;

    iput-object p2, p0, Lwy/a;->a:Lcom/transsnet/login/country/SelectCountryViewModel;

    return-void
.end method


# virtual methods
.method public g(Lwy/c;I)V
    .locals 1

    iget-object v0, p0, Lwy/a;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lwy/a;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsnet/loginapi/bean/Country;

    iget-object v0, p0, Lwy/a;->a:Lcom/transsnet/login/country/SelectCountryViewModel;

    invoke-virtual {p1, p2, v0}, Lwy/c;->g(Lcom/transsnet/loginapi/bean/Country;Lcom/transsnet/login/country/SelectCountryViewModel;)V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lwy/a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public h(Landroid/view/ViewGroup;I)Lwy/c;
    .locals 2

    iget-object p2, p0, Lwy/a;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsnet/login/R$layout;->login_item_country:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_0

    new-instance p2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    new-instance p2, Lwy/c;

    invoke-direct {p2, p1}, Lwy/c;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public i(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lwy/a;->b:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 0

    check-cast p1, Lwy/c;

    invoke-virtual {p0, p1, p2}, Lwy/a;->g(Lwy/c;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lwy/a;->h(Landroid/view/ViewGroup;I)Lwy/c;

    move-result-object p1

    return-object p1
.end method
