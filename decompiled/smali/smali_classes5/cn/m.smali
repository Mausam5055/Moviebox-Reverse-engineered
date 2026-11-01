.class public final Lcn/m;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Landroidx/appcompat/widget/AppCompatImageView;

.field public final c:Landroidx/appcompat/widget/AppCompatTextView;

.field public final d:Landroidx/appcompat/widget/AppCompatTextView;

.field public final e:Landroidx/appcompat/widget/AppCompatTextView;

.field public final f:Lcom/noober/background/view/BLTextView;

.field public final g:Landroid/widget/FrameLayout;

.field public final h:Landroid/widget/LinearLayout;

.field public final i:Landroid/widget/ProgressBar;

.field public final j:Lcom/transsion/moviedetail/view/WatchModeTipsView;

.field public final k:Landroidx/recyclerview/widget/RecyclerView;

.field public final l:Lcom/noober/background/view/BLTextView;

.field public final m:Lcom/noober/background/view/BLTextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/noober/background/view/BLTextView;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Lcom/transsion/moviedetail/view/WatchModeTipsView;Landroidx/recyclerview/widget/RecyclerView;Lcom/noober/background/view/BLTextView;Lcom/noober/background/view/BLTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/m;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcn/m;->b:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p3, p0, Lcn/m;->c:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p4, p0, Lcn/m;->d:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p5, p0, Lcn/m;->e:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p6, p0, Lcn/m;->f:Lcom/noober/background/view/BLTextView;

    iput-object p7, p0, Lcn/m;->g:Landroid/widget/FrameLayout;

    iput-object p8, p0, Lcn/m;->h:Landroid/widget/LinearLayout;

    iput-object p9, p0, Lcn/m;->i:Landroid/widget/ProgressBar;

    iput-object p10, p0, Lcn/m;->j:Lcom/transsion/moviedetail/view/WatchModeTipsView;

    iput-object p11, p0, Lcn/m;->k:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p12, p0, Lcn/m;->l:Lcom/noober/background/view/BLTextView;

    iput-object p13, p0, Lcn/m;->m:Lcom/noober/background/view/BLTextView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lcn/m;
    .locals 17

    move-object/from16 v0, p0

    sget v1, Lcom/transsion/moviedetail/R$id;->innerIcon:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v5, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->innerTvInfo:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v6, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->innerTvName:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v7, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->innerTvTitle:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v8, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->iv_seasons:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/noober/background/view/BLTextView;

    if-eqz v9, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->lf_loading:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->llLanguage:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->load_view:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ProgressBar;

    if-eqz v12, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->modeTipsLayout:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/transsion/moviedetail/view/WatchModeTipsView;

    if-eqz v13, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->resourceRv:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v14, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->tvLanguage:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/noober/background/view/BLTextView;

    if-eqz v15, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->tv_more:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/noober/background/view/BLTextView;

    if-eqz v16, :cond_0

    new-instance v1, Lcn/m;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcn/m;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/noober/background/view/BLTextView;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Lcom/transsion/moviedetail/view/WatchModeTipsView;Landroidx/recyclerview/widget/RecyclerView;Lcom/noober/background/view/BLTextView;Lcom/noober/background/view/BLTextView;)V

    return-object v1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static c(Landroid/view/LayoutInflater;)Lcn/m;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/m;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/m;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/m;
    .locals 2

    sget v0, Lcom/transsion/moviedetail/R$layout;->fragment_resource_detector_layout:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcn/m;->a(Landroid/view/View;)Lcn/m;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    iget-object v0, p0, Lcn/m;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcn/m;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method
