.class public final Lgl/r;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Landroidx/appcompat/widget/AppCompatImageButton;

.field public final c:Landroid/widget/FrameLayout;

.field public final d:Landroid/widget/FrameLayout;

.field public final e:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final f:Landroidx/appcompat/widget/AppCompatImageView;

.field public final g:Landroidx/appcompat/widget/AppCompatImageView;

.field public final h:Landroidx/appcompat/widget/AppCompatImageView;

.field public final i:Landroidx/appcompat/widget/AppCompatImageView;

.field public final j:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final k:Lnet/lucode/hackware/magicindicator/MagicIndicator;

.field public final l:Landroid/widget/FrameLayout;

.field public final m:Landroid/widget/TextSwitcher;

.field public final n:Lcom/transsion/baseui/widget/BlurredSectorView;

.field public final o:Lcom/tn/lib/widget/TnTextView;

.field public final p:Lcom/tn/lib/widget/TnTextView;

.field public final q:Lcom/tn/lib/widget/TnTextView;

.field public final r:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final s:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatImageButton;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroid/widget/FrameLayout;Landroid/widget/TextSwitcher;Lcom/transsion/baseui/widget/BlurredSectorView;Lcom/tn/lib/widget/TnTextView;Lcom/tn/lib/widget/TnTextView;Lcom/tn/lib/widget/TnTextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lgl/r;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p2

    iput-object v1, v0, Lgl/r;->b:Landroidx/appcompat/widget/AppCompatImageButton;

    move-object v1, p3

    iput-object v1, v0, Lgl/r;->c:Landroid/widget/FrameLayout;

    move-object v1, p4

    iput-object v1, v0, Lgl/r;->d:Landroid/widget/FrameLayout;

    move-object v1, p5

    iput-object v1, v0, Lgl/r;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p6

    iput-object v1, v0, Lgl/r;->f:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p7

    iput-object v1, v0, Lgl/r;->g:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p8

    iput-object v1, v0, Lgl/r;->h:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p9

    iput-object v1, v0, Lgl/r;->i:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p10

    iput-object v1, v0, Lgl/r;->j:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p11

    iput-object v1, v0, Lgl/r;->k:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    move-object v1, p12

    iput-object v1, v0, Lgl/r;->l:Landroid/widget/FrameLayout;

    move-object v1, p13

    iput-object v1, v0, Lgl/r;->m:Landroid/widget/TextSwitcher;

    move-object/from16 v1, p14

    iput-object v1, v0, Lgl/r;->n:Lcom/transsion/baseui/widget/BlurredSectorView;

    move-object/from16 v1, p15

    iput-object v1, v0, Lgl/r;->o:Lcom/tn/lib/widget/TnTextView;

    move-object/from16 v1, p16

    iput-object v1, v0, Lgl/r;->p:Lcom/tn/lib/widget/TnTextView;

    move-object/from16 v1, p17

    iput-object v1, v0, Lgl/r;->q:Lcom/tn/lib/widget/TnTextView;

    move-object/from16 v1, p18

    iput-object v1, v0, Lgl/r;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v1, p19

    iput-object v1, v0, Lgl/r;->s:Landroidx/viewpager2/widget/ViewPager2;

    return-void
.end method

.method public static a(Landroid/view/View;)Lgl/r;
    .locals 23

    move-object/from16 v0, p0

    sget v1, Lcom/transsion/home/R$id;->btn_tab_menu:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz v5, :cond_0

    sget v1, Lcom/transsion/home/R$id;->flGameCenter:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_0

    sget v1, Lcom/transsion/home/R$id;->flPhoneCenter:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_0

    sget v1, Lcom/transsion/home/R$id;->gradeSelectorContainer:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v8, :cond_0

    sget v1, Lcom/transsion/home/R$id;->ivGradeArrow:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v9, :cond_0

    sget v1, Lcom/transsion/home/R$id;->iv_mb_logo:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v10, :cond_0

    sget v1, Lcom/transsion/home/R$id;->ivNovelEnter:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v11, :cond_0

    sget v1, Lcom/transsion/home/R$id;->ivUpdateApp:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v12, :cond_0

    sget v1, Lcom/transsion/home/R$id;->ll_tab:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v13, :cond_0

    sget v1, Lcom/transsion/home/R$id;->magic_indicator:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lnet/lucode/hackware/magicindicator/MagicIndicator;

    if-eqz v14, :cond_0

    sget v1, Lcom/transsion/home/R$id;->search_left_container:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/FrameLayout;

    if-eqz v15, :cond_0

    sget v1, Lcom/transsion/home/R$id;->text_switcher:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextSwitcher;

    if-eqz v16, :cond_0

    sget v1, Lcom/transsion/home/R$id;->trending_bottom_bg:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/transsion/baseui/widget/BlurredSectorView;

    if-eqz v17, :cond_0

    sget v1, Lcom/transsion/home/R$id;->tvGradeName:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/tn/lib/widget/TnTextView;

    if-eqz v18, :cond_0

    sget v1, Lcom/transsion/home/R$id;->tv_search:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/tn/lib/widget/TnTextView;

    if-eqz v19, :cond_0

    sget v1, Lcom/transsion/home/R$id;->tv_search_button:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lcom/tn/lib/widget/TnTextView;

    if-eqz v20, :cond_0

    sget v1, Lcom/transsion/home/R$id;->tv_search_container:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v21, :cond_0

    sget v1, Lcom/transsion/home/R$id;->view_pager:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v22, :cond_0

    new-instance v1, Lgl/r;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v3 .. v22}, Lgl/r;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatImageButton;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroid/widget/FrameLayout;Landroid/widget/TextSwitcher;Lcom/transsion/baseui/widget/BlurredSectorView;Lcom/tn/lib/widget/TnTextView;Lcom/tn/lib/widget/TnTextView;Lcom/tn/lib/widget/TnTextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/viewpager2/widget/ViewPager2;)V

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

.method public static c(Landroid/view/LayoutInflater;)Lgl/r;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lgl/r;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lgl/r;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lgl/r;
    .locals 2

    sget v0, Lcom/transsion/home/R$layout;->fragment_home:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lgl/r;->a(Landroid/view/View;)Lgl/r;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    iget-object v0, p0, Lgl/r;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lgl/r;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method
