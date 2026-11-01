.class public final Ljx/h;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Landroid/widget/FrameLayout;

.field public final c:Landroidx/appcompat/widget/AppCompatImageView;

.field public final d:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final e:Landroidx/appcompat/widget/AppCompatImageView;

.field public final f:Landroidx/appcompat/widget/AppCompatImageView;

.field public final g:Landroid/widget/LinearLayout;

.field public final h:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

.field public final i:Landroidx/appcompat/widget/AppCompatTextView;

.field public final j:Landroidx/appcompat/widget/AppCompatTextView;

.field public final k:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

.field public final l:Landroidx/appcompat/widget/AppCompatTextView;

.field public final m:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

.field public final n:Landroidx/appcompat/widget/AppCompatTextView;

.field public final o:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

.field public final p:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

.field public final q:Landroid/view/View;

.field public final r:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Landroidx/appcompat/widget/AppCompatImageView;Lcom/google/android/material/imageview/ShapeableImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Landroid/view/View;Landroid/view/View;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Ljx/h;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p2

    iput-object v1, v0, Ljx/h;->b:Landroid/widget/FrameLayout;

    move-object v1, p3

    iput-object v1, v0, Ljx/h;->c:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p4

    iput-object v1, v0, Ljx/h;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    move-object v1, p5

    iput-object v1, v0, Ljx/h;->e:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p6

    iput-object v1, v0, Ljx/h;->f:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p7

    iput-object v1, v0, Ljx/h;->g:Landroid/widget/LinearLayout;

    move-object v1, p8

    iput-object v1, v0, Ljx/h;->h:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    move-object v1, p9

    iput-object v1, v0, Ljx/h;->i:Landroidx/appcompat/widget/AppCompatTextView;

    move-object v1, p10

    iput-object v1, v0, Ljx/h;->j:Landroidx/appcompat/widget/AppCompatTextView;

    move-object v1, p11

    iput-object v1, v0, Ljx/h;->k:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    move-object v1, p12

    iput-object v1, v0, Ljx/h;->l:Landroidx/appcompat/widget/AppCompatTextView;

    move-object v1, p13

    iput-object v1, v0, Ljx/h;->m:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    move-object/from16 v1, p14

    iput-object v1, v0, Ljx/h;->n:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v1, p15

    iput-object v1, v0, Ljx/h;->o:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    move-object/from16 v1, p16

    iput-object v1, v0, Ljx/h;->p:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    move-object/from16 v1, p17

    iput-object v1, v0, Ljx/h;->q:Landroid/view/View;

    move-object/from16 v1, p18

    iput-object v1, v0, Ljx/h;->r:Landroid/view/View;

    return-void
.end method

.method public static a(Landroid/view/View;)Ljx/h;
    .locals 22

    move-object/from16 v0, p0

    sget v1, Lcom/transsion/videodetail/R$id;->extension_container:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    sget v1, Lcom/transsion/videodetail/R$id;->ivMovieContent:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v6, :cond_0

    sget v1, Lcom/transsion/videodetail/R$id;->ivMovieCover:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v7, :cond_0

    sget v1, Lcom/transsion/videodetail/R$id;->iv_preview:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v8, :cond_0

    sget v1, Lcom/transsion/videodetail/R$id;->iv_score:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v9, :cond_0

    sget v1, Lcom/transsion/videodetail/R$id;->ll_score:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_0

    sget v1, Lcom/transsion/videodetail/R$id;->tv_country:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    if-eqz v11, :cond_0

    sget v1, Lcom/transsion/videodetail/R$id;->tvMovieInfo:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v12, :cond_0

    sget v1, Lcom/transsion/videodetail/R$id;->tvMovieTitle:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v13, :cond_0

    sget v1, Lcom/transsion/videodetail/R$id;->tv_restrict:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    if-eqz v14, :cond_0

    sget v1, Lcom/transsion/videodetail/R$id;->tv_score:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v15, :cond_0

    sget v1, Lcom/transsion/videodetail/R$id;->tv_seasons:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    if-eqz v16, :cond_0

    sget v1, Lcom/transsion/videodetail/R$id;->tv_seasons_2:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v17, :cond_0

    sget v1, Lcom/transsion/videodetail/R$id;->tv_time:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    if-eqz v18, :cond_0

    sget v1, Lcom/transsion/videodetail/R$id;->tv_type:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    if-eqz v19, :cond_0

    sget v1, Lcom/transsion/videodetail/R$id;->v_detail_hot_zone:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_0

    sget v1, Lcom/transsion/videodetail/R$id;->v_seasons_line_2:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_0

    new-instance v1, Ljx/h;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v3 .. v21}, Ljx/h;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Landroidx/appcompat/widget/AppCompatImageView;Lcom/google/android/material/imageview/ShapeableImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Landroid/view/View;Landroid/view/View;)V

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

.method public static c(Landroid/view/LayoutInflater;)Ljx/h;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Ljx/h;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ljx/h;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ljx/h;
    .locals 2

    sget v0, Lcom/transsion/videodetail/R$layout;->fragment_subject_header:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Ljx/h;->a(Landroid/view/View;)Ljx/h;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    iget-object v0, p0, Ljx/h;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Ljx/h;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method
