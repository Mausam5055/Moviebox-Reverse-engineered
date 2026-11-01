.class public final Lpy/k0;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroid/widget/FrameLayout;

.field public final b:Landroid/widget/FrameLayout;

.field public final c:Lcom/transsion/wrapperad/view/NativeSlideshowView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/transsion/wrapperad/view/NativeSlideshowView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpy/k0;->a:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lpy/k0;->b:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lpy/k0;->c:Lcom/transsion/wrapperad/view/NativeSlideshowView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lpy/k0;
    .locals 3

    move-object v0, p0

    check-cast v0, Landroid/widget/FrameLayout;

    sget v1, Lcom/transsnet/downloader/R$id;->nativeSlideshowView:I

    invoke-static {p0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/wrapperad/view/NativeSlideshowView;

    if-eqz v2, :cond_0

    new-instance p0, Lpy/k0;

    invoke-direct {p0, v0, v0, v2}, Lpy/k0;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/transsion/wrapperad/view/NativeSlideshowView;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Landroid/view/LayoutInflater;)Lpy/k0;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lpy/k0;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lpy/k0;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lpy/k0;
    .locals 2

    sget v0, Lcom/transsnet/downloader/R$layout;->fragment_top_card_ad_layout:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lpy/k0;->a(Landroid/view/View;)Lpy/k0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lpy/k0;->a:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lpy/k0;->b()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method
