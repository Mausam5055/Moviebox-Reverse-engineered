.class public final Lpy/y0;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroid/view/View;

.field public final b:Landroidx/appcompat/widget/AppCompatImageView;

.field public final c:Landroidx/appcompat/widget/AppCompatTextView;

.field public final d:Landroidx/appcompat/widget/AppCompatTextView;

.field public final e:Landroidx/appcompat/widget/AppCompatTextView;

.field public final f:Lcom/noober/background/view/BLTextView;

.field public final g:Landroid/widget/LinearLayout;

.field public final h:Landroidx/recyclerview/widget/RecyclerView;

.field public final i:Lcom/noober/background/view/BLTextView;

.field public final j:Landroid/widget/Space;

.field public final k:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/noober/background/view/BLTextView;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/noober/background/view/BLTextView;Landroid/widget/Space;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpy/y0;->a:Landroid/view/View;

    iput-object p2, p0, Lpy/y0;->b:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p3, p0, Lpy/y0;->c:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p4, p0, Lpy/y0;->d:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p5, p0, Lpy/y0;->e:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p6, p0, Lpy/y0;->f:Lcom/noober/background/view/BLTextView;

    iput-object p7, p0, Lpy/y0;->g:Landroid/widget/LinearLayout;

    iput-object p8, p0, Lpy/y0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p9, p0, Lpy/y0;->i:Lcom/noober/background/view/BLTextView;

    iput-object p10, p0, Lpy/y0;->j:Landroid/widget/Space;

    iput-object p11, p0, Lpy/y0;->k:Landroid/view/View;

    return-void
.end method

.method public static a(Landroid/view/View;)Lpy/y0;
    .locals 14

    sget v0, Lcom/transsnet/downloader/R$id;->innerIcon:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsnet/downloader/R$id;->innerTvInfo:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsnet/downloader/R$id;->innerTvName:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsnet/downloader/R$id;->innerTvTitle:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsnet/downloader/R$id;->iv_seasons:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/noober/background/view/BLTextView;

    if-eqz v8, :cond_0

    sget v0, Lcom/transsnet/downloader/R$id;->llLanguage:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    sget v0, Lcom/transsnet/downloader/R$id;->quality_recycler_view:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v10, :cond_0

    sget v0, Lcom/transsnet/downloader/R$id;->tvLanguage:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/noober/background/view/BLTextView;

    if-eqz v11, :cond_0

    sget v0, Lcom/transsnet/downloader/R$id;->v_bottom_space:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/Space;

    if-eqz v12, :cond_0

    sget v0, Lcom/transsnet/downloader/R$id;->v_line:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_0

    new-instance v0, Lpy/y0;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v13}, Lpy/y0;-><init>(Landroid/view/View;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/noober/background/view/BLTextView;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/noober/background/view/BLTextView;Landroid/widget/Space;Landroid/view/View;)V

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

    iget-object v0, p0, Lpy/y0;->a:Landroid/view/View;

    return-object v0
.end method
