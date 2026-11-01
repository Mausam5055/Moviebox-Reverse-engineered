.class public final Lgl/s;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroid/widget/LinearLayout;

.field public final b:Lgl/g0;

.field public final c:Landroidx/recyclerview/widget/RecyclerView;

.field public final d:Lcom/transsion/home/view/filter/popup/PopupFilterView;

.field public final e:Landroid/view/View;

.field public final f:Landroid/view/View;

.field public final g:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lgl/g0;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/view/filter/popup/PopupFilterView;Landroid/view/View;Landroid/view/View;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgl/s;->a:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lgl/s;->b:Lgl/g0;

    iput-object p3, p0, Lgl/s;->c:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p4, p0, Lgl/s;->d:Lcom/transsion/home/view/filter/popup/PopupFilterView;

    iput-object p5, p0, Lgl/s;->e:Landroid/view/View;

    iput-object p6, p0, Lgl/s;->f:Landroid/view/View;

    iput-object p7, p0, Lgl/s;->g:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-void
.end method

.method public static a(Landroid/view/View;)Lgl/s;
    .locals 10

    sget v0, Lcom/transsion/home/R$id;->ll_tab_movie:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lgl/g0;->a(Landroid/view/View;)Lgl/g0;

    move-result-object v4

    sget v0, Lcom/transsion/home/R$id;->movie_list:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsion/home/R$id;->popup_filter_view:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/transsion/home/view/filter/popup/PopupFilterView;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/home/R$id;->popup_filter_view_linear:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    sget v0, Lcom/transsion/home/R$id;->sub_movie_header_bg:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    sget v0, Lcom/transsion/home/R$id;->swipe_refresh:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v9, :cond_0

    new-instance v0, Lgl/s;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lgl/s;-><init>(Landroid/widget/LinearLayout;Lgl/g0;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/view/filter/popup/PopupFilterView;Landroid/view/View;Landroid/view/View;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Landroid/view/LayoutInflater;)Lgl/s;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lgl/s;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lgl/s;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lgl/s;
    .locals 2

    sget v0, Lcom/transsion/home/R$layout;->fragment_movie:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lgl/s;->a(Landroid/view/View;)Lgl/s;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lgl/s;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lgl/s;->b()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method
