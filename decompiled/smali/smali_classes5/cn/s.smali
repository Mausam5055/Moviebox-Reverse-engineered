.class public final Lcn/s;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Landroid/widget/FrameLayout;

.field public final c:Landroidx/appcompat/widget/AppCompatImageView;

.field public final d:Landroidx/appcompat/widget/AppCompatImageView;

.field public final e:Landroid/widget/LinearLayout;

.field public final f:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

.field public final g:Landroidx/appcompat/widget/AppCompatTextView;

.field public final h:Landroidx/appcompat/widget/LinearLayoutCompat;

.field public final i:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

.field public final j:Landroidx/appcompat/widget/AppCompatImageView;

.field public final k:Landroidx/appcompat/widget/AppCompatTextView;

.field public final l:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

.field public final m:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

.field public final n:Lcom/transsion/moviedetail/view/CustomTextViewGroup;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/LinearLayoutCompat;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Lcom/transsion/moviedetail/view/CustomTextViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/s;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcn/s;->b:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcn/s;->c:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p4, p0, Lcn/s;->d:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p5, p0, Lcn/s;->e:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lcn/s;->f:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    iput-object p7, p0, Lcn/s;->g:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p8, p0, Lcn/s;->h:Landroidx/appcompat/widget/LinearLayoutCompat;

    iput-object p9, p0, Lcn/s;->i:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    iput-object p10, p0, Lcn/s;->j:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p11, p0, Lcn/s;->k:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p12, p0, Lcn/s;->l:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    iput-object p13, p0, Lcn/s;->m:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    iput-object p14, p0, Lcn/s;->n:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    return-void
.end method

.method public static a(Landroid/view/View;)Lcn/s;
    .locals 18

    move-object/from16 v0, p0

    sget v1, Lcom/transsion/moviedetail/R$id;->extension_container:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->ivMovieContent:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v6, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->iv_score:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v7, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->ll_score:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->tv_country:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    if-eqz v9, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->tvMovieTitle:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v10, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->tv_movie_title_container:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/appcompat/widget/LinearLayoutCompat;

    if-eqz v11, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->tv_restrict:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    if-eqz v12, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->tv_right:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v13, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->tv_score:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v14, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->tv_seasons:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    if-eqz v15, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->tv_time:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    if-eqz v16, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->tv_type:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    if-eqz v17, :cond_0

    new-instance v1, Lcn/s;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v17}, Lcn/s;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/LinearLayoutCompat;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Lcom/transsion/moviedetail/view/CustomTextViewGroup;)V

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

.method public static c(Landroid/view/LayoutInflater;)Lcn/s;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/s;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/s;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/s;
    .locals 2

    sget v0, Lcom/transsion/moviedetail/R$layout;->fragment_subject_header:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcn/s;->a(Landroid/view/View;)Lcn/s;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    iget-object v0, p0, Lcn/s;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcn/s;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method
