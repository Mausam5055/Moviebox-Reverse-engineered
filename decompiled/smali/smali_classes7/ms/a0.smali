.class public final Lms/a0;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroid/widget/LinearLayout;

.field public final b:Lms/d0;

.field public final c:Landroidx/recyclerview/widget/RecyclerView;

.field public final d:Lcom/transsion/shorttv/_channel/ui/widget/ShortTvPopupFilterView;

.field public final e:Landroid/view/View;

.field public final f:Landroid/view/View;

.field public final g:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lms/d0;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/shorttv/_channel/ui/widget/ShortTvPopupFilterView;Landroid/view/View;Landroid/view/View;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lms/a0;->a:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lms/a0;->b:Lms/d0;

    iput-object p3, p0, Lms/a0;->c:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p4, p0, Lms/a0;->d:Lcom/transsion/shorttv/_channel/ui/widget/ShortTvPopupFilterView;

    iput-object p5, p0, Lms/a0;->e:Landroid/view/View;

    iput-object p6, p0, Lms/a0;->f:Landroid/view/View;

    iput-object p7, p0, Lms/a0;->g:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-void
.end method

.method public static a(Landroid/view/View;)Lms/a0;
    .locals 10

    sget v0, Lcom/transsion/shorttv/R$id;->ll_tab_movie:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lms/d0;->a(Landroid/view/View;)Lms/d0;

    move-result-object v4

    sget v0, Lcom/transsion/shorttv/R$id;->movie_list:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsion/shorttv/R$id;->popup_filter_view:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/transsion/shorttv/_channel/ui/widget/ShortTvPopupFilterView;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/shorttv/R$id;->popup_filter_view_linear:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    sget v0, Lcom/transsion/shorttv/R$id;->sub_movie_header_bg:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    sget v0, Lcom/transsion/shorttv/R$id;->swipe_refresh:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v9, :cond_0

    new-instance v0, Lms/a0;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lms/a0;-><init>(Landroid/widget/LinearLayout;Lms/d0;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/shorttv/_channel/ui/widget/ShortTvPopupFilterView;Landroid/view/View;Landroid/view/View;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

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

.method public static c(Landroid/view/LayoutInflater;)Lms/a0;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lms/a0;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lms/a0;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lms/a0;
    .locals 2

    sget v0, Lcom/transsion/shorttv/R$layout;->short_tv_fragment_movie:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lms/a0;->a(Landroid/view/View;)Lms/a0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lms/a0;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lms/a0;->b()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method
