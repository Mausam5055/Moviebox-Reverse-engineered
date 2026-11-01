.class public final Lbq/o;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Lcom/google/android/material/appbar/AppBarLayout;

.field public final c:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final d:Lcom/tn/lib/view/expand/ExpandView;

.field public final e:Landroid/widget/FrameLayout;

.field public final f:Landroidx/constraintlayout/widget/Group;

.field public final g:Landroidx/appcompat/widget/AppCompatImageView;

.field public final h:Landroidx/appcompat/widget/AppCompatImageView;

.field public final i:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final j:Landroidx/appcompat/widget/AppCompatImageView;

.field public final k:Landroid/widget/ImageView;

.field public final l:Landroid/widget/LinearLayout;

.field public final m:Lnet/lucode/hackware/magicindicator/MagicIndicator;

.field public final n:Lcom/transsion/baseui/widget/PileLayout;

.field public final o:Landroidx/appcompat/widget/AppCompatTextView;

.field public final p:Lcom/transsion/baseui/widget/GradientTextView;

.field public final q:Landroidx/appcompat/widget/AppCompatTextView;

.field public final r:Lcom/tn/lib/view/RoomJoinAnimationView;

.field public final s:Landroid/view/View;

.field public final t:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/tn/lib/view/expand/ExpandView;Landroid/widget/FrameLayout;Landroidx/constraintlayout/widget/Group;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/google/android/material/imageview/ShapeableImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lnet/lucode/hackware/magicindicator/MagicIndicator;Lcom/transsion/baseui/widget/PileLayout;Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/baseui/widget/GradientTextView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/tn/lib/view/RoomJoinAnimationView;Landroid/view/View;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lbq/o;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p2

    iput-object v1, v0, Lbq/o;->b:Lcom/google/android/material/appbar/AppBarLayout;

    move-object v1, p3

    iput-object v1, v0, Lbq/o;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p4

    iput-object v1, v0, Lbq/o;->d:Lcom/tn/lib/view/expand/ExpandView;

    move-object v1, p5

    iput-object v1, v0, Lbq/o;->e:Landroid/widget/FrameLayout;

    move-object v1, p6

    iput-object v1, v0, Lbq/o;->f:Landroidx/constraintlayout/widget/Group;

    move-object v1, p7

    iput-object v1, v0, Lbq/o;->g:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p8

    iput-object v1, v0, Lbq/o;->h:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p9

    iput-object v1, v0, Lbq/o;->i:Lcom/google/android/material/imageview/ShapeableImageView;

    move-object v1, p10

    iput-object v1, v0, Lbq/o;->j:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p11

    iput-object v1, v0, Lbq/o;->k:Landroid/widget/ImageView;

    move-object v1, p12

    iput-object v1, v0, Lbq/o;->l:Landroid/widget/LinearLayout;

    move-object v1, p13

    iput-object v1, v0, Lbq/o;->m:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    move-object/from16 v1, p14

    iput-object v1, v0, Lbq/o;->n:Lcom/transsion/baseui/widget/PileLayout;

    move-object/from16 v1, p15

    iput-object v1, v0, Lbq/o;->o:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v1, p16

    iput-object v1, v0, Lbq/o;->p:Lcom/transsion/baseui/widget/GradientTextView;

    move-object/from16 v1, p17

    iput-object v1, v0, Lbq/o;->q:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v1, p18

    iput-object v1, v0, Lbq/o;->r:Lcom/tn/lib/view/RoomJoinAnimationView;

    move-object/from16 v1, p19

    iput-object v1, v0, Lbq/o;->s:Landroid/view/View;

    move-object/from16 v1, p20

    iput-object v1, v0, Lbq/o;->t:Landroidx/viewpager2/widget/ViewPager2;

    return-void
.end method

.method public static a(Landroid/view/View;)Lbq/o;
    .locals 24

    move-object/from16 v0, p0

    sget v1, Lcom/transsion/room/R$id;->app_bar:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v5, :cond_0

    sget v1, Lcom/transsion/room/R$id;->cl_top_content:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v6, :cond_0

    sget v1, Lcom/transsion/room/R$id;->ev_room_des:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/tn/lib/view/expand/ExpandView;

    if-eqz v7, :cond_0

    sget v1, Lcom/transsion/room/R$id;->fl_tab:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_0

    sget v1, Lcom/transsion/room/R$id;->group_member:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/constraintlayout/widget/Group;

    if-eqz v9, :cond_0

    sget v1, Lcom/transsion/room/R$id;->iv_back:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v10, :cond_0

    sget v1, Lcom/transsion/room/R$id;->iv_publish:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v11, :cond_0

    sget v1, Lcom/transsion/room/R$id;->iv_room_cover:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v12, :cond_0

    sget v1, Lcom/transsion/room/R$id;->iv_share:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v13, :cond_0

    sget v1, Lcom/transsion/room/R$id;->iv_top_bg:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/ImageView;

    if-eqz v14, :cond_0

    sget v1, Lcom/transsion/room/R$id;->ll_header_root:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/LinearLayout;

    if-eqz v15, :cond_0

    sget v1, Lcom/transsion/room/R$id;->magic_indicator:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lnet/lucode/hackware/magicindicator/MagicIndicator;

    if-eqz v16, :cond_0

    sget v1, Lcom/transsion/room/R$id;->pl_member_ic:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/transsion/baseui/widget/PileLayout;

    if-eqz v17, :cond_0

    sget v1, Lcom/transsion/room/R$id;->tv_member:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v18, :cond_0

    sget v1, Lcom/transsion/room/R$id;->tv_post:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/transsion/baseui/widget/GradientTextView;

    if-eqz v19, :cond_0

    sget v1, Lcom/transsion/room/R$id;->tv_title:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v20, :cond_0

    sget v1, Lcom/transsion/room/R$id;->v_join:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Lcom/tn/lib/view/RoomJoinAnimationView;

    if-eqz v21, :cond_0

    sget v1, Lcom/transsion/room/R$id;->v_title_bar_bg:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_0

    sget v1, Lcom/transsion/room/R$id;->view_pager:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v23, :cond_0

    new-instance v1, Lbq/o;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v3 .. v23}, Lbq/o;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/tn/lib/view/expand/ExpandView;Landroid/widget/FrameLayout;Landroidx/constraintlayout/widget/Group;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/google/android/material/imageview/ShapeableImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lnet/lucode/hackware/magicindicator/MagicIndicator;Lcom/transsion/baseui/widget/PileLayout;Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/baseui/widget/GradientTextView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/tn/lib/view/RoomJoinAnimationView;Landroid/view/View;Landroidx/viewpager2/widget/ViewPager2;)V

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

.method public static c(Landroid/view/LayoutInflater;)Lbq/o;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lbq/o;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lbq/o;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lbq/o;
    .locals 2

    sget v0, Lcom/transsion/room/R$layout;->fragment_room_detail_new:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lbq/o;->a(Landroid/view/View;)Lbq/o;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    iget-object v0, p0, Lbq/o;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lbq/o;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method
