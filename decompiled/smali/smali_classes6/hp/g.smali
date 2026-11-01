.class public final Lhp/g;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Landroidx/constraintlayout/widget/Group;

.field public final c:Landroid/view/View;

.field public final d:Landroidx/appcompat/widget/AppCompatImageButton;

.field public final e:Landroid/widget/RelativeLayout;

.field public final f:Landroid/widget/ProgressBar;

.field public final g:Landroid/widget/TextView;

.field public final h:Landroid/widget/ImageView;

.field public final i:Landroid/widget/FrameLayout;

.field public final j:Landroid/widget/LinearLayout;

.field public final k:Landroid/widget/ImageView;

.field public final l:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final m:Landroid/widget/TextView;

.field public final n:Landroid/widget/TextView;

.field public final o:Landroid/widget/TextView;

.field public final p:Landroid/widget/TextView;

.field public final q:Lcom/transsion/publish/view/MatchParentVideoView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Group;Landroid/view/View;Landroidx/appcompat/widget/AppCompatImageButton;Landroid/widget/RelativeLayout;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/transsion/publish/view/MatchParentVideoView;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lhp/g;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p2

    iput-object v1, v0, Lhp/g;->b:Landroidx/constraintlayout/widget/Group;

    move-object v1, p3

    iput-object v1, v0, Lhp/g;->c:Landroid/view/View;

    move-object v1, p4

    iput-object v1, v0, Lhp/g;->d:Landroidx/appcompat/widget/AppCompatImageButton;

    move-object v1, p5

    iput-object v1, v0, Lhp/g;->e:Landroid/widget/RelativeLayout;

    move-object v1, p6

    iput-object v1, v0, Lhp/g;->f:Landroid/widget/ProgressBar;

    move-object v1, p7

    iput-object v1, v0, Lhp/g;->g:Landroid/widget/TextView;

    move-object v1, p8

    iput-object v1, v0, Lhp/g;->h:Landroid/widget/ImageView;

    move-object v1, p9

    iput-object v1, v0, Lhp/g;->i:Landroid/widget/FrameLayout;

    move-object v1, p10

    iput-object v1, v0, Lhp/g;->j:Landroid/widget/LinearLayout;

    move-object v1, p11

    iput-object v1, v0, Lhp/g;->k:Landroid/widget/ImageView;

    move-object v1, p12

    iput-object v1, v0, Lhp/g;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p13

    iput-object v1, v0, Lhp/g;->m:Landroid/widget/TextView;

    move-object/from16 v1, p14

    iput-object v1, v0, Lhp/g;->n:Landroid/widget/TextView;

    move-object/from16 v1, p15

    iput-object v1, v0, Lhp/g;->o:Landroid/widget/TextView;

    move-object/from16 v1, p16

    iput-object v1, v0, Lhp/g;->p:Landroid/widget/TextView;

    move-object/from16 v1, p17

    iput-object v1, v0, Lhp/g;->q:Lcom/transsion/publish/view/MatchParentVideoView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lhp/g;
    .locals 21

    move-object/from16 v0, p0

    sget v1, Lcom/transsion/publish/R$id;->bottomGroup:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/constraintlayout/widget/Group;

    if-eqz v5, :cond_0

    sget v1, Lcom/transsion/publish/R$id;->bottomLine:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    sget v1, Lcom/transsion/publish/R$id;->btn_back:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz v7, :cond_0

    sget v1, Lcom/transsion/publish/R$id;->clTitle:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_0

    sget v1, Lcom/transsion/publish/R$id;->clip_loading:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ProgressBar;

    if-eqz v9, :cond_0

    sget v1, Lcom/transsion/publish/R$id;->confirmTV:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    sget v1, Lcom/transsion/publish/R$id;->coverIV:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    sget v1, Lcom/transsion/publish/R$id;->fl_clear:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/FrameLayout;

    if-eqz v12, :cond_0

    sget v1, Lcom/transsion/publish/R$id;->llSelect:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_0

    sget v1, Lcom/transsion/publish/R$id;->playIV:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/ImageView;

    if-eqz v14, :cond_0

    move-object v15, v0

    check-cast v15, Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/transsion/publish/R$id;->selectNumTV:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    sget v1, Lcom/transsion/publish/R$id;->tv_delete:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    sget v1, Lcom/transsion/publish/R$id;->tvNumber:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    sget v1, Lcom/transsion/publish/R$id;->tvSelect:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    sget v1, Lcom/transsion/publish/R$id;->vv_video:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lcom/transsion/publish/view/MatchParentVideoView;

    if-eqz v20, :cond_0

    new-instance v0, Lhp/g;

    move-object v3, v0

    move-object v4, v15

    invoke-direct/range {v3 .. v20}, Lhp/g;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Group;Landroid/view/View;Landroidx/appcompat/widget/AppCompatImageButton;Landroid/widget/RelativeLayout;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/transsion/publish/view/MatchParentVideoView;)V

    return-object v0

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

.method public static c(Landroid/view/LayoutInflater;)Lhp/g;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lhp/g;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lhp/g;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lhp/g;
    .locals 2

    sget v0, Lcom/transsion/publish/R$layout;->activity_video_preview:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lhp/g;->a(Landroid/view/View;)Lhp/g;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    iget-object v0, p0, Lhp/g;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lhp/g;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method
