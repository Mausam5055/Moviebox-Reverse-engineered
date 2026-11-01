.class public final Lhp/h;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroid/widget/RelativeLayout;

.field public final b:Lcom/tn/lib/view/bubbleview/BubbleTextView;

.field public final c:Landroid/widget/EditText;

.field public final d:Landroid/widget/EditText;

.field public final e:Landroid/widget/FrameLayout;

.field public final f:Landroid/widget/FrameLayout;

.field public final g:Landroid/widget/ImageView;

.field public final h:Landroid/widget/ImageView;

.field public final i:Landroid/widget/RelativeLayout;

.field public final j:Landroid/widget/LinearLayout;

.field public final k:Lcom/tn/lib/view/LoadingAnimView;

.field public final l:Lcom/transsion/publish/view/operation/OperationVerticalBarView;

.field public final m:Lcom/transsion/publish/view/operation/OperationBarView;

.field public final n:Landroid/widget/RatingBar;

.field public final o:Landroid/widget/RelativeLayout;

.field public final p:Landroid/widget/RelativeLayout;

.field public final q:Landroid/widget/RelativeLayout;

.field public final r:Landroidx/recyclerview/widget/RecyclerView;

.field public final s:Landroidx/recyclerview/widget/RecyclerView;

.field public final t:Lcom/transsion/publish/view/ObservableScrollView;

.field public final u:Landroid/widget/TextView;

.field public final v:Landroid/widget/TextView;

.field public final w:Landroid/widget/TextView;

.field public final x:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/tn/lib/view/bubbleview/BubbleTextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Lcom/tn/lib/view/LoadingAnimView;Lcom/transsion/publish/view/operation/OperationVerticalBarView;Lcom/transsion/publish/view/operation/OperationBarView;Landroid/widget/RatingBar;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/publish/view/ObservableScrollView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lhp/h;->a:Landroid/widget/RelativeLayout;

    move-object v1, p2

    iput-object v1, v0, Lhp/h;->b:Lcom/tn/lib/view/bubbleview/BubbleTextView;

    move-object v1, p3

    iput-object v1, v0, Lhp/h;->c:Landroid/widget/EditText;

    move-object v1, p4

    iput-object v1, v0, Lhp/h;->d:Landroid/widget/EditText;

    move-object v1, p5

    iput-object v1, v0, Lhp/h;->e:Landroid/widget/FrameLayout;

    move-object v1, p6

    iput-object v1, v0, Lhp/h;->f:Landroid/widget/FrameLayout;

    move-object v1, p7

    iput-object v1, v0, Lhp/h;->g:Landroid/widget/ImageView;

    move-object v1, p8

    iput-object v1, v0, Lhp/h;->h:Landroid/widget/ImageView;

    move-object v1, p9

    iput-object v1, v0, Lhp/h;->i:Landroid/widget/RelativeLayout;

    move-object v1, p10

    iput-object v1, v0, Lhp/h;->j:Landroid/widget/LinearLayout;

    move-object v1, p11

    iput-object v1, v0, Lhp/h;->k:Lcom/tn/lib/view/LoadingAnimView;

    move-object v1, p12

    iput-object v1, v0, Lhp/h;->l:Lcom/transsion/publish/view/operation/OperationVerticalBarView;

    move-object v1, p13

    iput-object v1, v0, Lhp/h;->m:Lcom/transsion/publish/view/operation/OperationBarView;

    move-object/from16 v1, p14

    iput-object v1, v0, Lhp/h;->n:Landroid/widget/RatingBar;

    move-object/from16 v1, p15

    iput-object v1, v0, Lhp/h;->o:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p16

    iput-object v1, v0, Lhp/h;->p:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p17

    iput-object v1, v0, Lhp/h;->q:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p18

    iput-object v1, v0, Lhp/h;->r:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v1, p19

    iput-object v1, v0, Lhp/h;->s:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v1, p20

    iput-object v1, v0, Lhp/h;->t:Lcom/transsion/publish/view/ObservableScrollView;

    move-object/from16 v1, p21

    iput-object v1, v0, Lhp/h;->u:Landroid/widget/TextView;

    move-object/from16 v1, p22

    iput-object v1, v0, Lhp/h;->v:Landroid/widget/TextView;

    move-object/from16 v1, p23

    iput-object v1, v0, Lhp/h;->w:Landroid/widget/TextView;

    move-object/from16 v1, p24

    iput-object v1, v0, Lhp/h;->x:Landroid/view/View;

    return-void
.end method

.method public static a(Landroid/view/View;)Lhp/h;
    .locals 28

    move-object/from16 v0, p0

    sget v1, Lcom/transsion/publish/R$id;->activity_tip:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/tn/lib/view/bubbleview/BubbleTextView;

    if-eqz v5, :cond_0

    sget v1, Lcom/transsion/publish/R$id;->et_des:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/EditText;

    if-eqz v6, :cond_0

    sget v1, Lcom/transsion/publish/R$id;->et_title:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/EditText;

    if-eqz v7, :cond_0

    sget v1, Lcom/transsion/publish/R$id;->fl_top:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_0

    sget v1, Lcom/transsion/publish/R$id;->fr_title:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/FrameLayout;

    if-eqz v9, :cond_0

    sget v1, Lcom/transsion/publish/R$id;->iv_cover:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    sget v1, Lcom/transsion/publish/R$id;->iv_cover_ic:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    sget v1, Lcom/transsion/publish/R$id;->ll_list:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/RelativeLayout;

    if-eqz v12, :cond_0

    sget v1, Lcom/transsion/publish/R$id;->ll_top:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_0

    sget v1, Lcom/transsion/publish/R$id;->loading_view:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/tn/lib/view/LoadingAnimView;

    if-eqz v14, :cond_0

    sget v1, Lcom/transsion/publish/R$id;->oper_vertical_view:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/transsion/publish/view/operation/OperationVerticalBarView;

    if-eqz v15, :cond_0

    sget v1, Lcom/transsion/publish/R$id;->oper_view:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/transsion/publish/view/operation/OperationBarView;

    if-eqz v16, :cond_0

    sget v1, Lcom/transsion/publish/R$id;->rb_star:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/RatingBar;

    if-eqz v17, :cond_0

    sget v1, Lcom/transsion/publish/R$id;->rl_add_cover:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/RelativeLayout;

    if-eqz v18, :cond_0

    move-object/from16 v19, v0

    check-cast v19, Landroid/widget/RelativeLayout;

    sget v1, Lcom/transsion/publish/R$id;->rl_star:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/RelativeLayout;

    if-eqz v20, :cond_0

    sget v1, Lcom/transsion/publish/R$id;->rv_link:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v21, :cond_0

    sget v1, Lcom/transsion/publish/R$id;->rv_select:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v22, :cond_0

    sget v1, Lcom/transsion/publish/R$id;->scrollView:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Lcom/transsion/publish/view/ObservableScrollView;

    if-eqz v23, :cond_0

    sget v1, Lcom/transsion/publish/R$id;->tv_click_stars:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroid/widget/TextView;

    if-eqz v24, :cond_0

    sget v1, Lcom/transsion/publish/R$id;->tv_star_tips:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Landroid/widget/TextView;

    if-eqz v25, :cond_0

    sget v1, Lcom/transsion/publish/R$id;->tv_title_tips:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Landroid/widget/TextView;

    if-eqz v26, :cond_0

    sget v1, Lcom/transsion/publish/R$id;->view_line2:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v27

    if-eqz v27, :cond_0

    new-instance v0, Lhp/h;

    move-object v3, v0

    move-object/from16 v4, v19

    invoke-direct/range {v3 .. v27}, Lhp/h;-><init>(Landroid/widget/RelativeLayout;Lcom/tn/lib/view/bubbleview/BubbleTextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Lcom/tn/lib/view/LoadingAnimView;Lcom/transsion/publish/view/operation/OperationVerticalBarView;Lcom/transsion/publish/view/operation/OperationBarView;Landroid/widget/RatingBar;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/publish/view/ObservableScrollView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V

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

.method public static c(Landroid/view/LayoutInflater;)Lhp/h;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lhp/h;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lhp/h;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lhp/h;
    .locals 2

    sget v0, Lcom/transsion/publish/R$layout;->fragment_film_review:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lhp/h;->a(Landroid/view/View;)Lhp/h;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lhp/h;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lhp/h;->b()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method
