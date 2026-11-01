.class public final Lpy/v;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroid/widget/LinearLayout;

.field public final b:Landroid/widget/FrameLayout;

.field public final c:Lcom/transsnet/downloader/widget/DownloadPanelForYouFootView;

.field public final d:Landroid/widget/LinearLayout;

.field public final e:Landroidx/recyclerview/widget/RecyclerView;

.field public final f:Landroidx/core/widget/NestedScrollView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Lcom/transsnet/downloader/widget/DownloadPanelForYouFootView;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/core/widget/NestedScrollView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpy/v;->a:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lpy/v;->b:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lpy/v;->c:Lcom/transsnet/downloader/widget/DownloadPanelForYouFootView;

    iput-object p4, p0, Lpy/v;->d:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lpy/v;->e:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p6, p0, Lpy/v;->f:Landroidx/core/widget/NestedScrollView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lpy/v;
    .locals 9

    sget v0, Lcom/transsnet/downloader/R$id;->fl_empty_root:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsnet/downloader/R$id;->foot_for_you:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/transsnet/downloader/widget/DownloadPanelForYouFootView;

    if-eqz v5, :cond_0

    move-object v6, p0

    check-cast v6, Landroid/widget/LinearLayout;

    sget v0, Lcom/transsnet/downloader/R$id;->recycler_view:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsnet/downloader/R$id;->sv_empty_root:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/core/widget/NestedScrollView;

    if-eqz v8, :cond_0

    new-instance p0, Lpy/v;

    move-object v2, p0

    move-object v3, v6

    invoke-direct/range {v2 .. v8}, Lpy/v;-><init>(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Lcom/transsnet/downloader/widget/DownloadPanelForYouFootView;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/core/widget/NestedScrollView;)V

    return-object p0

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

.method public static c(Landroid/view/LayoutInflater;)Lpy/v;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lpy/v;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lpy/v;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lpy/v;
    .locals 2

    sget v0, Lcom/transsnet/downloader/R$layout;->fragment_download_list:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lpy/v;->a(Landroid/view/View;)Lpy/v;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lpy/v;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lpy/v;->b()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method
