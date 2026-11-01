.class Lcom/to/aboomy/pager2banner/Banner$c;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/to/aboomy/pager2banner/Banner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field final synthetic b:Lcom/to/aboomy/pager2banner/Banner;


# direct methods
.method private constructor <init>(Lcom/to/aboomy/pager2banner/Banner;)V
    .locals 0

    iput-object p1, p0, Lcom/to/aboomy/pager2banner/Banner$c;->b:Lcom/to/aboomy/pager2banner/Banner;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/to/aboomy/pager2banner/Banner;Lcom/to/aboomy/pager2banner/Banner$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/to/aboomy/pager2banner/Banner$c;-><init>(Lcom/to/aboomy/pager2banner/Banner;)V

    return-void
.end method

.method static synthetic g(Lcom/to/aboomy/pager2banner/Banner$c;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    iget-object p0, p0, Lcom/to/aboomy/pager2banner/Banner$c;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/Banner$c;->h()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/Banner$c;->h()I

    move-result v0

    iget-object v1, p0, Lcom/to/aboomy/pager2banner/Banner$c;->b:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v1}, Lcom/to/aboomy/pager2banner/Banner;->c(Lcom/to/aboomy/pager2banner/Banner;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/Banner$c;->h()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$c;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/to/aboomy/pager2banner/Banner$c;->b:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v1, p1}, Lcom/to/aboomy/pager2banner/Banner;->q(Lcom/to/aboomy/pager2banner/Banner;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$c;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/to/aboomy/pager2banner/Banner$c;->b:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v1, p1}, Lcom/to/aboomy/pager2banner/Banner;->q(Lcom/to/aboomy/pager2banner/Banner;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method h()I
    .locals 1

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$c;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method i(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$c;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/to/aboomy/pager2banner/Banner$c;->b:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v1}, Lcom/to/aboomy/pager2banner/Banner;->d(Lcom/to/aboomy/pager2banner/Banner;)Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$g;)V

    :cond_0
    iput-object p1, p0, Lcom/to/aboomy/pager2banner/Banner$c;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$c;->b:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v0}, Lcom/to/aboomy/pager2banner/Banner;->d(Lcom/to/aboomy/pager2banner/Banner;)Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$g;)V

    :cond_1
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 2

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$c;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/to/aboomy/pager2banner/Banner$c;->b:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v1, p2}, Lcom/to/aboomy/pager2banner/Banner;->q(Lcom/to/aboomy/pager2banner/Banner;I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 1

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$c;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object p1

    return-object p1
.end method
