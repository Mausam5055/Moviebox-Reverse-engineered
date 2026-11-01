.class public final Lvp/d;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Landroidx/appcompat/widget/AppCompatImageView;

.field public final c:Landroidx/appcompat/widget/AppCompatImageView;

.field public final d:Landroidx/appcompat/widget/AppCompatImageView;

.field public final e:Landroidx/recyclerview/widget/RecyclerView;

.field public final f:Lvp/h;

.field public final g:Lcom/transsion/rewardscenter/view/PrizeFlowView;

.field public final h:Landroidx/cardview/widget/CardView;

.field public final i:Landroidx/cardview/widget/CardView;

.field public final j:Lcom/transsion/rewardscenter/prize/PrizeListView;

.field public final k:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final l:Landroidx/cardview/widget/CardView;

.field public final m:Lcom/transsion/rewardscenter/redeem/RedeemView;

.field public final n:Landroidx/cardview/widget/CardView;

.field public final o:Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;

.field public final p:Landroidx/cardview/widget/CardView;

.field public final q:Landroidx/core/widget/NestedScrollView;

.field public final r:Landroidx/appcompat/widget/AppCompatTextView;

.field public final s:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final t:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/recyclerview/widget/RecyclerView;Lvp/h;Lcom/transsion/rewardscenter/view/PrizeFlowView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Lcom/transsion/rewardscenter/prize/PrizeListView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/cardview/widget/CardView;Lcom/transsion/rewardscenter/redeem/RedeemView;Landroidx/cardview/widget/CardView;Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;Landroidx/cardview/widget/CardView;Landroidx/core/widget/NestedScrollView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lvp/d;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p2

    iput-object v1, v0, Lvp/d;->b:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p3

    iput-object v1, v0, Lvp/d;->c:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p4

    iput-object v1, v0, Lvp/d;->d:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p5

    iput-object v1, v0, Lvp/d;->e:Landroidx/recyclerview/widget/RecyclerView;

    move-object v1, p6

    iput-object v1, v0, Lvp/d;->f:Lvp/h;

    move-object v1, p7

    iput-object v1, v0, Lvp/d;->g:Lcom/transsion/rewardscenter/view/PrizeFlowView;

    move-object v1, p8

    iput-object v1, v0, Lvp/d;->h:Landroidx/cardview/widget/CardView;

    move-object v1, p9

    iput-object v1, v0, Lvp/d;->i:Landroidx/cardview/widget/CardView;

    move-object v1, p10

    iput-object v1, v0, Lvp/d;->j:Lcom/transsion/rewardscenter/prize/PrizeListView;

    move-object v1, p11

    iput-object v1, v0, Lvp/d;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p12

    iput-object v1, v0, Lvp/d;->l:Landroidx/cardview/widget/CardView;

    move-object v1, p13

    iput-object v1, v0, Lvp/d;->m:Lcom/transsion/rewardscenter/redeem/RedeemView;

    move-object/from16 v1, p14

    iput-object v1, v0, Lvp/d;->n:Landroidx/cardview/widget/CardView;

    move-object/from16 v1, p15

    iput-object v1, v0, Lvp/d;->o:Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;

    move-object/from16 v1, p16

    iput-object v1, v0, Lvp/d;->p:Landroidx/cardview/widget/CardView;

    move-object/from16 v1, p17

    iput-object v1, v0, Lvp/d;->q:Landroidx/core/widget/NestedScrollView;

    move-object/from16 v1, p18

    iput-object v1, v0, Lvp/d;->r:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v1, p19

    iput-object v1, v0, Lvp/d;->s:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v1, p20

    iput-object v1, v0, Lvp/d;->t:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lvp/d;
    .locals 24

    move-object/from16 v0, p0

    sget v1, Lcom/transsion/rewardscenter/R$id;->iv_back:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v5, :cond_0

    sget v1, Lcom/transsion/rewardscenter/R$id;->iv_banner:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v6, :cond_0

    sget v1, Lcom/transsion/rewardscenter/R$id;->iv_prize_triangle:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v7, :cond_0

    sget v1, Lcom/transsion/rewardscenter/R$id;->iv_task_list:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v8, :cond_0

    sget v1, Lcom/transsion/rewardscenter/R$id;->member_info:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lvp/h;->a(Landroid/view/View;)Lvp/h;

    move-result-object v9

    sget v1, Lcom/transsion/rewardscenter/R$id;->prize_flow:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/transsion/rewardscenter/view/PrizeFlowView;

    if-eqz v10, :cond_0

    sget v1, Lcom/transsion/rewardscenter/R$id;->rc_banner_card:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/cardview/widget/CardView;

    if-eqz v11, :cond_0

    sget v1, Lcom/transsion/rewardscenter/R$id;->rc_prize_card:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroidx/cardview/widget/CardView;

    if-eqz v12, :cond_0

    sget v1, Lcom/transsion/rewardscenter/R$id;->rc_prize_list_view:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/transsion/rewardscenter/prize/PrizeListView;

    if-eqz v13, :cond_0

    sget v1, Lcom/transsion/rewardscenter/R$id;->rc_prize_section:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v14, :cond_0

    sget v1, Lcom/transsion/rewardscenter/R$id;->rc_redeem_card:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroidx/cardview/widget/CardView;

    if-eqz v15, :cond_0

    sget v1, Lcom/transsion/rewardscenter/R$id;->rc_redeem_view:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/transsion/rewardscenter/redeem/RedeemView;

    if-eqz v16, :cond_0

    sget v1, Lcom/transsion/rewardscenter/R$id;->rc_task_card:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroidx/cardview/widget/CardView;

    if-eqz v17, :cond_0

    sget v1, Lcom/transsion/rewardscenter/R$id;->rc_task_view:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;

    if-eqz v18, :cond_0

    sget v1, Lcom/transsion/rewardscenter/R$id;->rv_task_card:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroidx/cardview/widget/CardView;

    if-eqz v19, :cond_0

    sget v1, Lcom/transsion/rewardscenter/R$id;->scroll_view:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroidx/core/widget/NestedScrollView;

    if-eqz v20, :cond_0

    sget v1, Lcom/transsion/rewardscenter/R$id;->title:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v21, :cond_0

    sget v1, Lcom/transsion/rewardscenter/R$id;->titleLayout:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v22, :cond_0

    sget v1, Lcom/transsion/rewardscenter/R$id;->tv_terms:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v23, :cond_0

    new-instance v1, Lvp/d;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v3 .. v23}, Lvp/d;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/recyclerview/widget/RecyclerView;Lvp/h;Lcom/transsion/rewardscenter/view/PrizeFlowView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Lcom/transsion/rewardscenter/prize/PrizeListView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/cardview/widget/CardView;Lcom/transsion/rewardscenter/redeem/RedeemView;Landroidx/cardview/widget/CardView;Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;Landroidx/cardview/widget/CardView;Landroidx/core/widget/NestedScrollView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatTextView;)V

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

.method public static c(Landroid/view/LayoutInflater;)Lvp/d;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lvp/d;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lvp/d;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lvp/d;
    .locals 2

    sget v0, Lcom/transsion/rewardscenter/R$layout;->fragment_rewards_center:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lvp/d;->a(Landroid/view/View;)Lvp/d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    iget-object v0, p0, Lvp/d;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lvp/d;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method
