.class public final Lcn/p;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Landroid/widget/FrameLayout;

.field public final c:Landroid/widget/FrameLayout;

.field public final d:Lcom/transsion/moviedetail/view/InfoExtendView;

.field public final e:Landroidx/appcompat/widget/AppCompatImageView;

.field public final f:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final g:Landroid/view/View;

.field public final h:Landroidx/appcompat/widget/AppCompatImageView;

.field public final i:Landroid/widget/LinearLayout;

.field public final j:Landroidx/appcompat/widget/AppCompatImageView;

.field public final k:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

.field public final l:Landroidx/appcompat/widget/LinearLayoutCompat;

.field public final m:Landroidx/appcompat/widget/AppCompatTextView;

.field public final n:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

.field public final o:Landroidx/appcompat/widget/AppCompatTextView;

.field public final p:Landroidx/appcompat/widget/AppCompatTextView;

.field public final q:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

.field public final r:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

.field public final s:Landroid/view/View;

.field public final t:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/transsion/moviedetail/view/InfoExtendView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/google/android/material/imageview/ShapeableImageView;Landroid/view/View;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Landroidx/appcompat/widget/LinearLayoutCompat;Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Landroid/view/View;Landroid/view/View;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcn/p;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p2

    iput-object v1, v0, Lcn/p;->b:Landroid/widget/FrameLayout;

    move-object v1, p3

    iput-object v1, v0, Lcn/p;->c:Landroid/widget/FrameLayout;

    move-object v1, p4

    iput-object v1, v0, Lcn/p;->d:Lcom/transsion/moviedetail/view/InfoExtendView;

    move-object v1, p5

    iput-object v1, v0, Lcn/p;->e:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p6

    iput-object v1, v0, Lcn/p;->f:Lcom/google/android/material/imageview/ShapeableImageView;

    move-object v1, p7

    iput-object v1, v0, Lcn/p;->g:Landroid/view/View;

    move-object v1, p8

    iput-object v1, v0, Lcn/p;->h:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p9

    iput-object v1, v0, Lcn/p;->i:Landroid/widget/LinearLayout;

    move-object v1, p10

    iput-object v1, v0, Lcn/p;->j:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p11

    iput-object v1, v0, Lcn/p;->k:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    move-object v1, p12

    iput-object v1, v0, Lcn/p;->l:Landroidx/appcompat/widget/LinearLayoutCompat;

    move-object v1, p13

    iput-object v1, v0, Lcn/p;->m:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcn/p;->n:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcn/p;->o:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcn/p;->p:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcn/p;->q:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcn/p;->r:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcn/p;->s:Landroid/view/View;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcn/p;->t:Landroid/view/View;

    return-void
.end method

.method public static a(Landroid/view/View;)Lcn/p;
    .locals 24

    move-object/from16 v0, p0

    sget v1, Lcom/transsion/moviedetail/R$id;->fl_starring:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->game_container:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->infoExtendView:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/transsion/moviedetail/view/InfoExtendView;

    if-eqz v7, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->ivMovieContent:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v8, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->ivMovieCover:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v9, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->ivMovieCoverMask:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->iv_score:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v11, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->ll_score:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->tv_close:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v13, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->tv_country:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    if-eqz v14, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->tv_header_toolbar:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroidx/appcompat/widget/LinearLayoutCompat;

    if-eqz v15, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->tvMovieTitle:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v16, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->tv_restrict:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    if-eqz v17, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->tv_score:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v18, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->tv_seasons:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v19, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->tv_time:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    if-eqz v20, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->tv_type:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    if-eqz v21, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->v_seasons_line:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->view_separator:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v23

    if-eqz v23, :cond_0

    new-instance v1, Lcn/p;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v3 .. v23}, Lcn/p;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/transsion/moviedetail/view/InfoExtendView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/google/android/material/imageview/ShapeableImageView;Landroid/view/View;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Landroidx/appcompat/widget/LinearLayoutCompat;Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Landroid/view/View;Landroid/view/View;)V

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

.method public static c(Landroid/view/LayoutInflater;)Lcn/p;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/p;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/p;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/p;
    .locals 2

    sget v0, Lcom/transsion/moviedetail/R$layout;->fragment_subject_detail_info_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcn/p;->a(Landroid/view/View;)Lcn/p;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    iget-object v0, p0, Lcn/p;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcn/p;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method
