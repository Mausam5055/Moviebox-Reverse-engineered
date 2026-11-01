.class public final Lgl/c0;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Landroid/view/View;

.field public final c:Landroid/widget/LinearLayout;

.field public final d:Landroid/widget/LinearLayout;

.field public final e:Landroid/widget/LinearLayout;

.field public final f:Landroid/widget/ImageView;

.field public final g:Landroid/widget/ImageView;

.field public final h:Landroid/widget/ImageView;

.field public final i:Lcom/noober/background/view/BLFrameLayout;

.field public final j:Landroid/widget/FrameLayout;

.field public final k:Landroid/widget/ProgressBar;

.field public final l:Landroidx/recyclerview/widget/RecyclerView;

.field public final m:Landroid/view/View;

.field public final n:Landroid/widget/LinearLayout;

.field public final o:Landroid/view/View;

.field public final p:Landroid/widget/TextView;

.field public final q:Landroid/widget/TextView;

.field public final r:Landroid/widget/TextView;

.field public final s:Landroid/view/ViewStub;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/noober/background/view/BLFrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ProgressBar;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/ViewStub;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lgl/c0;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p2

    iput-object v1, v0, Lgl/c0;->b:Landroid/view/View;

    move-object v1, p3

    iput-object v1, v0, Lgl/c0;->c:Landroid/widget/LinearLayout;

    move-object v1, p4

    iput-object v1, v0, Lgl/c0;->d:Landroid/widget/LinearLayout;

    move-object v1, p5

    iput-object v1, v0, Lgl/c0;->e:Landroid/widget/LinearLayout;

    move-object v1, p6

    iput-object v1, v0, Lgl/c0;->f:Landroid/widget/ImageView;

    move-object v1, p7

    iput-object v1, v0, Lgl/c0;->g:Landroid/widget/ImageView;

    move-object v1, p8

    iput-object v1, v0, Lgl/c0;->h:Landroid/widget/ImageView;

    move-object v1, p9

    iput-object v1, v0, Lgl/c0;->i:Lcom/noober/background/view/BLFrameLayout;

    move-object v1, p10

    iput-object v1, v0, Lgl/c0;->j:Landroid/widget/FrameLayout;

    move-object v1, p11

    iput-object v1, v0, Lgl/c0;->k:Landroid/widget/ProgressBar;

    move-object v1, p12

    iput-object v1, v0, Lgl/c0;->l:Landroidx/recyclerview/widget/RecyclerView;

    move-object v1, p13

    iput-object v1, v0, Lgl/c0;->m:Landroid/view/View;

    move-object/from16 v1, p14

    iput-object v1, v0, Lgl/c0;->n:Landroid/widget/LinearLayout;

    move-object/from16 v1, p15

    iput-object v1, v0, Lgl/c0;->o:Landroid/view/View;

    move-object/from16 v1, p16

    iput-object v1, v0, Lgl/c0;->p:Landroid/widget/TextView;

    move-object/from16 v1, p17

    iput-object v1, v0, Lgl/c0;->q:Landroid/widget/TextView;

    move-object/from16 v1, p18

    iput-object v1, v0, Lgl/c0;->r:Landroid/widget/TextView;

    move-object/from16 v1, p19

    iput-object v1, v0, Lgl/c0;->s:Landroid/view/ViewStub;

    return-void
.end method

.method public static a(Landroid/view/View;)Lgl/c0;
    .locals 22

    move-object/from16 v0, p0

    sget v1, Lcom/transsion/home/R$id;->bottomGradient:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    sget v1, Lcom/transsion/home/R$id;->btnHelp:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    sget v1, Lcom/transsion/home/R$id;->btnSetting:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    sget v1, Lcom/transsion/home/R$id;->fsControls:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    sget v1, Lcom/transsion/home/R$id;->ivBack:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    sget v1, Lcom/transsion/home/R$id;->ivFullscreen:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    sget v1, Lcom/transsion/home/R$id;->ivTapLock:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    sget v1, Lcom/transsion/home/R$id;->liveBadge:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/noober/background/view/BLFrameLayout;

    if-eqz v11, :cond_0

    sget v1, Lcom/transsion/home/R$id;->playerLayout:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/FrameLayout;

    if-eqz v12, :cond_0

    sget v1, Lcom/transsion/home/R$id;->playerLoading:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/ProgressBar;

    if-eqz v13, :cond_0

    sget v1, Lcom/transsion/home/R$id;->rvChannels:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v14, :cond_0

    sget v1, Lcom/transsion/home/R$id;->statusBarPlaceholder:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_0

    sget v1, Lcom/transsion/home/R$id;->tapToLockLayout:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/LinearLayout;

    if-eqz v16, :cond_0

    sget v1, Lcom/transsion/home/R$id;->topGradient:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_0

    sget v1, Lcom/transsion/home/R$id;->tvChannelName:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    sget v1, Lcom/transsion/home/R$id;->tvLiveBadge:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    sget v1, Lcom/transsion/home/R$id;->tvTapToLock:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    sget v1, Lcom/transsion/home/R$id;->vsLoadFail:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/view/ViewStub;

    if-eqz v21, :cond_0

    new-instance v1, Lgl/c0;

    move-object v2, v1

    move-object v3, v0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v2 .. v21}, Lgl/c0;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/noober/background/view/BLFrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ProgressBar;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/ViewStub;)V

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

.method public static c(Landroid/view/LayoutInflater;)Lgl/c0;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lgl/c0;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lgl/c0;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lgl/c0;
    .locals 2

    sget v0, Lcom/transsion/home/R$layout;->fragment_tv_live_detail_layout:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lgl/c0;->a(Landroid/view/View;)Lgl/c0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    iget-object v0, p0, Lgl/c0;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lgl/c0;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method
