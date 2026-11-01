.class public final Lcn/c;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Lcom/google/android/material/appbar/AppBarLayout;

.field public final c:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final d:Lcom/transsion/moviedetail/view/InfoExtendView;

.field public final e:Landroidx/appcompat/widget/AppCompatImageView;

.field public final f:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final g:Landroidx/appcompat/widget/AppCompatImageView;

.field public final h:Lcom/transsion/moviedetail/view/MovieDetailShareView;

.field public final i:Landroidx/appcompat/widget/AppCompatImageView;

.field public final j:Landroidx/appcompat/widget/AppCompatImageView;

.field public final k:Landroidx/recyclerview/widget/RecyclerView;

.field public final l:Landroid/widget/Space;

.field public final m:Landroidx/appcompat/widget/Toolbar;

.field public final n:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

.field public final o:Landroid/widget/TextView;

.field public final p:Landroidx/appcompat/widget/AppCompatTextView;

.field public final q:Landroidx/appcompat/widget/AppCompatTextView;

.field public final r:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/transsion/moviedetail/view/InfoExtendView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/google/android/material/imageview/ShapeableImageView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsion/moviedetail/view/MovieDetailShareView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/Space;Landroidx/appcompat/widget/Toolbar;Lcom/google/android/material/appbar/CollapsingToolbarLayout;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcn/c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p2

    iput-object v1, v0, Lcn/c;->b:Lcom/google/android/material/appbar/AppBarLayout;

    move-object v1, p3

    iput-object v1, v0, Lcn/c;->c:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-object v1, p4

    iput-object v1, v0, Lcn/c;->d:Lcom/transsion/moviedetail/view/InfoExtendView;

    move-object v1, p5

    iput-object v1, v0, Lcn/c;->e:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p6

    iput-object v1, v0, Lcn/c;->f:Lcom/google/android/material/imageview/ShapeableImageView;

    move-object v1, p7

    iput-object v1, v0, Lcn/c;->g:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p8

    iput-object v1, v0, Lcn/c;->h:Lcom/transsion/moviedetail/view/MovieDetailShareView;

    move-object v1, p9

    iput-object v1, v0, Lcn/c;->i:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p10

    iput-object v1, v0, Lcn/c;->j:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p11

    iput-object v1, v0, Lcn/c;->k:Landroidx/recyclerview/widget/RecyclerView;

    move-object v1, p12

    iput-object v1, v0, Lcn/c;->l:Landroid/widget/Space;

    move-object v1, p13

    iput-object v1, v0, Lcn/c;->m:Landroidx/appcompat/widget/Toolbar;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcn/c;->n:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcn/c;->o:Landroid/widget/TextView;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcn/c;->p:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcn/c;->q:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcn/c;->r:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lcn/c;
    .locals 22

    move-object/from16 v0, p0

    sget v1, Lcom/transsion/moviedetail/R$id;->appBar:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v5, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->cdl:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v6, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->infoExtendView:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/transsion/moviedetail/view/InfoExtendView;

    if-eqz v7, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->ivBack:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v8, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->ivCoverSmall:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v9, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->ivDownload:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v10, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->ivShare:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/transsion/moviedetail/view/MovieDetailShareView;

    if-eqz v11, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->iv_staff:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v12, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->iv_want_see:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v13, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->rv:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v14, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->sp:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/Space;

    if-eqz v15, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->toolbar:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroidx/appcompat/widget/Toolbar;

    if-eqz v16, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->toolbar_layout:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v17, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->tv_filmography:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->tv_staff_desc:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v19, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->tv_staff_name:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v20, :cond_0

    sget v1, Lcom/transsion/moviedetail/R$id;->tvTitle:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v21, :cond_0

    new-instance v1, Lcn/c;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v3 .. v21}, Lcn/c;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/transsion/moviedetail/view/InfoExtendView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/google/android/material/imageview/ShapeableImageView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsion/moviedetail/view/MovieDetailShareView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/Space;Landroidx/appcompat/widget/Toolbar;Lcom/google/android/material/appbar/CollapsingToolbarLayout;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

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

.method public static c(Landroid/view/LayoutInflater;)Lcn/c;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/c;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/c;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/c;
    .locals 2

    sget v0, Lcom/transsion/moviedetail/R$layout;->activity_movie_staff:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcn/c;->a(Landroid/view/View;)Lcn/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    iget-object v0, p0, Lcn/c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcn/c;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method
