.class public final Lwm/n;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroid/widget/LinearLayout;

.field public final b:Landroid/view/View;

.field public final c:Lcom/tn/lib/view/RoundedLinearLayout;

.field public final d:Landroid/widget/RelativeLayout;

.field public final e:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final f:Landroidx/appcompat/widget/AppCompatImageView;

.field public final g:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final h:Landroidx/appcompat/widget/AppCompatTextView;

.field public final i:Landroidx/appcompat/widget/AppCompatTextView;

.field public final j:Landroid/widget/ImageView;

.field public final k:Landroidx/recyclerview/widget/RecyclerView;

.field public final l:Landroid/widget/ImageView;

.field public final m:Landroid/widget/LinearLayout;

.field public final n:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final o:Landroid/widget/TextView;

.field public final p:Landroid/widget/TextView;

.field public final q:Landroidx/appcompat/widget/AppCompatTextView;

.field public final r:Landroid/widget/TextView;

.field public final s:Landroidx/appcompat/widget/AppCompatTextView;

.field public final t:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/view/View;Lcom/tn/lib/view/RoundedLinearLayout;Landroid/widget/RelativeLayout;Lcom/google/android/material/imageview/ShapeableImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lwm/n;->a:Landroid/widget/LinearLayout;

    move-object v1, p2

    iput-object v1, v0, Lwm/n;->b:Landroid/view/View;

    move-object v1, p3

    iput-object v1, v0, Lwm/n;->c:Lcom/tn/lib/view/RoundedLinearLayout;

    move-object v1, p4

    iput-object v1, v0, Lwm/n;->d:Landroid/widget/RelativeLayout;

    move-object v1, p5

    iput-object v1, v0, Lwm/n;->e:Lcom/google/android/material/imageview/ShapeableImageView;

    move-object v1, p6

    iput-object v1, v0, Lwm/n;->f:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p7

    iput-object v1, v0, Lwm/n;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p8

    iput-object v1, v0, Lwm/n;->h:Landroidx/appcompat/widget/AppCompatTextView;

    move-object v1, p9

    iput-object v1, v0, Lwm/n;->i:Landroidx/appcompat/widget/AppCompatTextView;

    move-object v1, p10

    iput-object v1, v0, Lwm/n;->j:Landroid/widget/ImageView;

    move-object v1, p11

    iput-object v1, v0, Lwm/n;->k:Landroidx/recyclerview/widget/RecyclerView;

    move-object v1, p12

    iput-object v1, v0, Lwm/n;->l:Landroid/widget/ImageView;

    move-object v1, p13

    iput-object v1, v0, Lwm/n;->m:Landroid/widget/LinearLayout;

    move-object/from16 v1, p14

    iput-object v1, v0, Lwm/n;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v1, p15

    iput-object v1, v0, Lwm/n;->o:Landroid/widget/TextView;

    move-object/from16 v1, p16

    iput-object v1, v0, Lwm/n;->p:Landroid/widget/TextView;

    move-object/from16 v1, p17

    iput-object v1, v0, Lwm/n;->q:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v1, p18

    iput-object v1, v0, Lwm/n;->r:Landroid/widget/TextView;

    move-object/from16 v1, p19

    iput-object v1, v0, Lwm/n;->s:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v1, p20

    iput-object v1, v0, Lwm/n;->t:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lwm/n;
    .locals 23

    move-object/from16 v0, p0

    sget v1, Lcom/transsion/member/R$id;->avatar_bg:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    sget v1, Lcom/transsion/member/R$id;->bottom_container:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/tn/lib/view/RoundedLinearLayout;

    if-eqz v5, :cond_0

    sget v1, Lcom/transsion/member/R$id;->feedback_container:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_0

    sget v1, Lcom/transsion/member/R$id;->iv_avatar_premium:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v7, :cond_0

    sget v1, Lcom/transsion/member/R$id;->iv_back:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v8, :cond_0

    sget v1, Lcom/transsion/member/R$id;->iv_info:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v9, :cond_0

    sget v1, Lcom/transsion/member/R$id;->iv_name:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v10, :cond_0

    sget v1, Lcom/transsion/member/R$id;->iv_premium:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v11, :cond_0

    sget v1, Lcom/transsion/member/R$id;->iv_premium_icon:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_0

    sget v1, Lcom/transsion/member/R$id;->iv_sku_list:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v13, :cond_0

    sget v1, Lcom/transsion/member/R$id;->iv_zero_treasure:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/ImageView;

    if-eqz v14, :cond_0

    sget v1, Lcom/transsion/member/R$id;->member_top_container:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/LinearLayout;

    if-eqz v15, :cond_0

    sget v1, Lcom/transsion/member/R$id;->titleLayout:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v16, :cond_0

    sget v1, Lcom/transsion/member/R$id;->tv_agreement_content:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    sget v1, Lcom/transsion/member/R$id;->tv_agreement_title:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    sget v1, Lcom/transsion/member/R$id;->tv_member_date:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v19, :cond_0

    sget v1, Lcom/transsion/member/R$id;->tv_pay_btn:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    sget v1, Lcom/transsion/member/R$id;->tv_premium_info:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v21, :cond_0

    sget v1, Lcom/transsion/member/R$id;->tv_promo_code:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v22, :cond_0

    new-instance v1, Lwm/n;

    move-object v2, v1

    move-object v3, v0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct/range {v2 .. v22}, Lwm/n;-><init>(Landroid/widget/LinearLayout;Landroid/view/View;Lcom/tn/lib/view/RoundedLinearLayout;Landroid/widget/RelativeLayout;Lcom/google/android/material/imageview/ShapeableImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

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

.method public static c(Landroid/view/LayoutInflater;)Lwm/n;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lwm/n;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lwm/n;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lwm/n;
    .locals 2

    sget v0, Lcom/transsion/member/R$layout;->fragment_member_layout_new:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lwm/n;->a(Landroid/view/View;)Lwm/n;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lwm/n;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lwm/n;->b()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method
