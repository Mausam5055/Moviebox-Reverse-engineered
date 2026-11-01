.class public final Lpy/d0;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroid/widget/FrameLayout;

.field public final b:Lpy/z0;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Lpy/z0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpy/d0;->a:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lpy/d0;->b:Lpy/z0;

    return-void
.end method

.method public static a(Landroid/view/View;)Lpy/d0;
    .locals 2

    sget v0, Lcom/transsnet/downloader/R$id;->included_content:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lpy/z0;->a(Landroid/view/View;)Lpy/z0;

    move-result-object v0

    new-instance v1, Lpy/d0;

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0, v0}, Lpy/d0;-><init>(Landroid/widget/FrameLayout;Lpy/z0;)V

    return-object v1

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

.method public static c(Landroid/view/LayoutInflater;)Lpy/d0;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lpy/d0;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lpy/d0;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lpy/d0;
    .locals 2

    sget v0, Lcom/transsnet/downloader/R$layout;->fragment_download_res_path_setting:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lpy/d0;->a(Landroid/view/View;)Lpy/d0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lpy/d0;->a:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lpy/d0;->b()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method
