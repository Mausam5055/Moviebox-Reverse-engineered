.class public final Lpy/t0;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroid/view/View;

.field public final b:Lcom/noober/background/view/BLFrameLayout;

.field public final c:Landroid/widget/ImageView;

.field public final d:Lcom/tn/lib/view/CircleProgressBar;


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/noober/background/view/BLFrameLayout;Landroid/widget/ImageView;Lcom/tn/lib/view/CircleProgressBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpy/t0;->a:Landroid/view/View;

    iput-object p2, p0, Lpy/t0;->b:Lcom/noober/background/view/BLFrameLayout;

    iput-object p3, p0, Lpy/t0;->c:Landroid/widget/ImageView;

    iput-object p4, p0, Lpy/t0;->d:Lcom/tn/lib/view/CircleProgressBar;

    return-void
.end method

.method public static a(Landroid/view/View;)Lpy/t0;
    .locals 4

    sget v0, Lcom/transsnet/downloader/R$id;->fl_guide_content:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/noober/background/view/BLFrameLayout;

    if-eqz v1, :cond_0

    sget v0, Lcom/transsnet/downloader/R$id;->iv_guide_close:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    sget v0, Lcom/transsnet/downloader/R$id;->progress_bar_guide_close:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tn/lib/view/CircleProgressBar;

    if-eqz v3, :cond_0

    new-instance v0, Lpy/t0;

    invoke-direct {v0, p0, v1, v2, v3}, Lpy/t0;-><init>(Landroid/view/View;Lcom/noober/background/view/BLFrameLayout;Landroid/widget/ImageView;Lcom/tn/lib/view/CircleProgressBar;)V

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


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lpy/t0;->a:Landroid/view/View;

    return-object v0
.end method
