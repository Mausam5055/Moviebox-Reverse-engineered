.class public final Lpy/g0;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroid/widget/FrameLayout;

.field public final b:Lpy/s0;

.field public final c:Landroid/widget/ImageView;

.field public final d:Landroid/view/View;

.field public final e:Landroidx/appcompat/widget/LinearLayoutCompat;

.field public final f:Lcom/transsnet/downloader/widget/DownloadView;

.field public final g:Landroidx/appcompat/widget/AppCompatTextView;

.field public final h:Landroid/view/View;

.field public final i:Lcom/transsnet/downloader/widget/DownloadPathEntranceView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Lpy/s0;Landroid/widget/ImageView;Landroid/view/View;Landroidx/appcompat/widget/LinearLayoutCompat;Lcom/transsnet/downloader/widget/DownloadView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/view/View;Lcom/transsnet/downloader/widget/DownloadPathEntranceView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpy/g0;->a:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lpy/g0;->b:Lpy/s0;

    iput-object p3, p0, Lpy/g0;->c:Landroid/widget/ImageView;

    iput-object p4, p0, Lpy/g0;->d:Landroid/view/View;

    iput-object p5, p0, Lpy/g0;->e:Landroidx/appcompat/widget/LinearLayoutCompat;

    iput-object p6, p0, Lpy/g0;->f:Lcom/transsnet/downloader/widget/DownloadView;

    iput-object p7, p0, Lpy/g0;->g:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p8, p0, Lpy/g0;->h:Landroid/view/View;

    iput-object p9, p0, Lpy/g0;->i:Lcom/transsnet/downloader/widget/DownloadPathEntranceView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lpy/g0;
    .locals 12

    sget v0, Lcom/transsnet/downloader/R$id;->included_content:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lpy/s0;->a(Landroid/view/View;)Lpy/s0;

    move-result-object v4

    sget v0, Lcom/transsnet/downloader/R$id;->iv_close:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsnet/downloader/R$id;->line:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    sget v0, Lcom/transsnet/downloader/R$id;->ll_content:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/LinearLayoutCompat;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsnet/downloader/R$id;->tv_download:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/transsnet/downloader/widget/DownloadView;

    if-eqz v8, :cond_0

    sget v0, Lcom/transsnet/downloader/R$id;->tv_title:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v9, :cond_0

    sget v0, Lcom/transsnet/downloader/R$id;->v_bottom:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_0

    sget v0, Lcom/transsnet/downloader/R$id;->v_path_entrance:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/transsnet/downloader/widget/DownloadPathEntranceView;

    if-eqz v11, :cond_0

    new-instance v0, Lpy/g0;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lpy/g0;-><init>(Landroid/widget/FrameLayout;Lpy/s0;Landroid/widget/ImageView;Landroid/view/View;Landroidx/appcompat/widget/LinearLayoutCompat;Lcom/transsnet/downloader/widget/DownloadView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/view/View;Lcom/transsnet/downloader/widget/DownloadPathEntranceView;)V

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

.method public static c(Landroid/view/LayoutInflater;)Lpy/g0;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lpy/g0;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lpy/g0;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lpy/g0;
    .locals 2

    sget v0, Lcom/transsnet/downloader/R$layout;->fragment_download_res_single_res:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lpy/g0;->a(Landroid/view/View;)Lpy/g0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lpy/g0;->a:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lpy/g0;->b()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method
