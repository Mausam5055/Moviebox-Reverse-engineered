.class public final Lwm/k;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroid/widget/FrameLayout;

.field public final b:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final c:Landroid/widget/LinearLayout;

.field public final d:Landroidx/appcompat/widget/AppCompatImageView;

.field public final e:Landroidx/appcompat/widget/AppCompatImageView;

.field public final f:Landroid/widget/LinearLayout;

.field public final g:Landroid/widget/LinearLayout;

.field public final h:Landroid/widget/LinearLayout;

.field public final i:Landroid/widget/TextView;

.field public final j:Lcom/transsion/baseui/widget/GradientTextView;

.field public final k:Landroid/widget/TextView;

.field public final l:Landroid/widget/TextView;

.field public final m:Landroidx/appcompat/widget/AppCompatTextView;

.field public final n:Landroid/widget/TextView;

.field public final o:Landroid/widget/TextView;

.field public final p:Landroid/widget/TextView;

.field public final q:Landroid/widget/TextView;

.field public final r:Landroidx/appcompat/widget/AppCompatTextView;

.field public final s:Landroid/widget/TextView;

.field public final t:Landroid/widget/TextView;

.field public final u:Landroid/widget/TextView;

.field public final v:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/transsion/baseui/widget/GradientTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lwm/k;->a:Landroid/widget/FrameLayout;

    move-object v1, p2

    iput-object v1, v0, Lwm/k;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p3

    iput-object v1, v0, Lwm/k;->c:Landroid/widget/LinearLayout;

    move-object v1, p4

    iput-object v1, v0, Lwm/k;->d:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p5

    iput-object v1, v0, Lwm/k;->e:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p6

    iput-object v1, v0, Lwm/k;->f:Landroid/widget/LinearLayout;

    move-object v1, p7

    iput-object v1, v0, Lwm/k;->g:Landroid/widget/LinearLayout;

    move-object v1, p8

    iput-object v1, v0, Lwm/k;->h:Landroid/widget/LinearLayout;

    move-object v1, p9

    iput-object v1, v0, Lwm/k;->i:Landroid/widget/TextView;

    move-object v1, p10

    iput-object v1, v0, Lwm/k;->j:Lcom/transsion/baseui/widget/GradientTextView;

    move-object v1, p11

    iput-object v1, v0, Lwm/k;->k:Landroid/widget/TextView;

    move-object v1, p12

    iput-object v1, v0, Lwm/k;->l:Landroid/widget/TextView;

    move-object v1, p13

    iput-object v1, v0, Lwm/k;->m:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v1, p14

    iput-object v1, v0, Lwm/k;->n:Landroid/widget/TextView;

    move-object/from16 v1, p15

    iput-object v1, v0, Lwm/k;->o:Landroid/widget/TextView;

    move-object/from16 v1, p16

    iput-object v1, v0, Lwm/k;->p:Landroid/widget/TextView;

    move-object/from16 v1, p17

    iput-object v1, v0, Lwm/k;->q:Landroid/widget/TextView;

    move-object/from16 v1, p18

    iput-object v1, v0, Lwm/k;->r:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v1, p19

    iput-object v1, v0, Lwm/k;->s:Landroid/widget/TextView;

    move-object/from16 v1, p20

    iput-object v1, v0, Lwm/k;->t:Landroid/widget/TextView;

    move-object/from16 v1, p21

    iput-object v1, v0, Lwm/k;->u:Landroid/widget/TextView;

    move-object/from16 v1, p22

    iput-object v1, v0, Lwm/k;->v:Landroid/widget/TextView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lwm/k;
    .locals 26

    move-object/from16 v0, p0

    sget v1, Lcom/transsion/member/R$id;->clContent:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v5, :cond_0

    sget v1, Lcom/transsion/member/R$id;->clEquitiesList:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    sget v1, Lcom/transsion/member/R$id;->ivClose:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v7, :cond_0

    sget v1, Lcom/transsion/member/R$id;->ivIcon:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v8, :cond_0

    sget v1, Lcom/transsion/member/R$id;->llDiscount:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    sget v1, Lcom/transsion/member/R$id;->llTime:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_0

    sget v1, Lcom/transsion/member/R$id;->llTitle:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    sget v1, Lcom/transsion/member/R$id;->tvBillingPeriod:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    sget v1, Lcom/transsion/member/R$id;->tvDiscountPrice:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/transsion/baseui/widget/GradientTextView;

    if-eqz v13, :cond_0

    sget v1, Lcom/transsion/member/R$id;->tvDiscountRate:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    sget v1, Lcom/transsion/member/R$id;->tvEndsIn:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    sget v1, Lcom/transsion/member/R$id;->tvExclusive:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v16, :cond_0

    sget v1, Lcom/transsion/member/R$id;->tvHM:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    sget v1, Lcom/transsion/member/R$id;->tvHour:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    sget v1, Lcom/transsion/member/R$id;->tvMS:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    sget v1, Lcom/transsion/member/R$id;->tvMinute:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    sget v1, Lcom/transsion/member/R$id;->tvNewUserOffer:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v21, :cond_0

    sget v1, Lcom/transsion/member/R$id;->tvOriginalPrice:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/TextView;

    if-eqz v22, :cond_0

    sget v1, Lcom/transsion/member/R$id;->tvPayNow:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/widget/TextView;

    if-eqz v23, :cond_0

    sget v1, Lcom/transsion/member/R$id;->tvPremiumDesc:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroid/widget/TextView;

    if-eqz v24, :cond_0

    sget v1, Lcom/transsion/member/R$id;->tvSecond:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Landroid/widget/TextView;

    if-eqz v25, :cond_0

    new-instance v1, Lwm/k;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-direct/range {v3 .. v25}, Lwm/k;-><init>(Landroid/widget/FrameLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/transsion/baseui/widget/GradientTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

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


# virtual methods
.method public b()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lwm/k;->a:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lwm/k;->b()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method
