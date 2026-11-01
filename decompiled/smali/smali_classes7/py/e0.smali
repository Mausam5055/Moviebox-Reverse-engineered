.class public final Lpy/e0;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Lcom/noober/background/view/BLConstraintLayout;

.field public final b:Landroidx/appcompat/widget/AppCompatImageView;

.field public final c:Landroidx/appcompat/widget/AppCompatImageView;

.field public final d:Landroidx/appcompat/widget/AppCompatTextView;

.field public final e:Landroidx/appcompat/widget/AppCompatTextView;

.field public final f:Landroidx/appcompat/widget/AppCompatTextView;

.field public final g:Lcom/noober/background/view/BLView;


# direct methods
.method private constructor <init>(Lcom/noober/background/view/BLConstraintLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/noober/background/view/BLView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpy/e0;->a:Lcom/noober/background/view/BLConstraintLayout;

    iput-object p2, p0, Lpy/e0;->b:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p3, p0, Lpy/e0;->c:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p4, p0, Lpy/e0;->d:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p5, p0, Lpy/e0;->e:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p6, p0, Lpy/e0;->f:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p7, p0, Lpy/e0;->g:Lcom/noober/background/view/BLView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lpy/e0;
    .locals 10

    sget v0, Lcom/transsnet/downloader/R$id;->iv_ad:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsnet/downloader/R$id;->iv_close:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsnet/downloader/R$id;->tv_ep:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsnet/downloader/R$id;->tv_unlock:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsnet/downloader/R$id;->tv_watch:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v8, :cond_0

    sget v0, Lcom/transsnet/downloader/R$id;->v_bg:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/noober/background/view/BLView;

    if-eqz v9, :cond_0

    new-instance v0, Lpy/e0;

    move-object v3, p0

    check-cast v3, Lcom/noober/background/view/BLConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lpy/e0;-><init>(Lcom/noober/background/view/BLConstraintLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/noober/background/view/BLView;)V

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

.method public static c(Landroid/view/LayoutInflater;)Lpy/e0;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lpy/e0;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lpy/e0;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lpy/e0;
    .locals 2

    sget v0, Lcom/transsnet/downloader/R$layout;->fragment_download_res_short_tv_ad:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lpy/e0;->a(Landroid/view/View;)Lpy/e0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Lcom/noober/background/view/BLConstraintLayout;
    .locals 1

    iget-object v0, p0, Lpy/e0;->a:Lcom/noober/background/view/BLConstraintLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lpy/e0;->b()Lcom/noober/background/view/BLConstraintLayout;

    move-result-object v0

    return-object v0
.end method
