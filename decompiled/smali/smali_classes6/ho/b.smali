.class public final Lho/b;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroid/widget/FrameLayout;

.field public final b:Lcom/transsion/player/longvideo/member/ResolutionAdView;

.field public final c:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final d:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final e:Landroidx/appcompat/widget/AppCompatImageView;

.field public final f:Landroidx/appcompat/widget/AppCompatImageView;

.field public final g:Landroidx/appcompat/widget/AppCompatImageView;

.field public final h:Landroid/widget/LinearLayout;

.field public final i:Landroid/widget/LinearLayout;

.field public final j:Landroid/widget/LinearLayout;

.field public final k:Landroid/widget/TextView;

.field public final l:Landroid/widget/TextView;

.field public final m:Landroidx/appcompat/widget/AppCompatTextView;

.field public final n:Landroid/widget/TextView;

.field public final o:Landroid/widget/TextView;

.field public final p:Landroid/widget/TextView;

.field public final q:Landroid/widget/TextView;

.field public final r:Landroid/widget/TextView;

.field public final s:Landroid/view/View;

.field public final t:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Lcom/transsion/player/longvideo/member/ResolutionAdView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lho/b;->a:Landroid/widget/FrameLayout;

    move-object v1, p2

    iput-object v1, v0, Lho/b;->b:Lcom/transsion/player/longvideo/member/ResolutionAdView;

    move-object v1, p3

    iput-object v1, v0, Lho/b;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p4

    iput-object v1, v0, Lho/b;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p5

    iput-object v1, v0, Lho/b;->e:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p6

    iput-object v1, v0, Lho/b;->f:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p7

    iput-object v1, v0, Lho/b;->g:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p8

    iput-object v1, v0, Lho/b;->h:Landroid/widget/LinearLayout;

    move-object v1, p9

    iput-object v1, v0, Lho/b;->i:Landroid/widget/LinearLayout;

    move-object v1, p10

    iput-object v1, v0, Lho/b;->j:Landroid/widget/LinearLayout;

    move-object v1, p11

    iput-object v1, v0, Lho/b;->k:Landroid/widget/TextView;

    move-object v1, p12

    iput-object v1, v0, Lho/b;->l:Landroid/widget/TextView;

    move-object v1, p13

    iput-object v1, v0, Lho/b;->m:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v1, p14

    iput-object v1, v0, Lho/b;->n:Landroid/widget/TextView;

    move-object/from16 v1, p15

    iput-object v1, v0, Lho/b;->o:Landroid/widget/TextView;

    move-object/from16 v1, p16

    iput-object v1, v0, Lho/b;->p:Landroid/widget/TextView;

    move-object/from16 v1, p17

    iput-object v1, v0, Lho/b;->q:Landroid/widget/TextView;

    move-object/from16 v1, p18

    iput-object v1, v0, Lho/b;->r:Landroid/widget/TextView;

    move-object/from16 v1, p19

    iput-object v1, v0, Lho/b;->s:Landroid/view/View;

    move-object/from16 v1, p20

    iput-object v1, v0, Lho/b;->t:Landroid/view/View;

    return-void
.end method

.method public static a(Landroid/view/View;)Lho/b;
    .locals 24

    move-object/from16 v0, p0

    sget v1, Lcom/transsion/player/longvideo/R$id;->cardAdView:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/transsion/player/longvideo/member/ResolutionAdView;

    if-eqz v5, :cond_0

    sget v1, Lcom/transsion/player/longvideo/R$id;->clMemberModule:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v6, :cond_0

    sget v1, Lcom/transsion/player/longvideo/R$id;->clPayModule:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v7, :cond_0

    sget v1, Lcom/transsion/player/longvideo/R$id;->ivClose:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v8, :cond_0

    sget v1, Lcom/transsion/player/longvideo/R$id;->ivPremium:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v9, :cond_0

    sget v1, Lcom/transsion/player/longvideo/R$id;->ivTypeLotteryDisableTop:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v10, :cond_0

    sget v1, Lcom/transsion/player/longvideo/R$id;->llOrModule:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    sget v1, Lcom/transsion/player/longvideo/R$id;->llTypeLottery:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    sget v1, Lcom/transsion/player/longvideo/R$id;->llTypeLotteryDisable:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_0

    sget v1, Lcom/transsion/player/longvideo/R$id;->tvMoneyDes:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    sget v1, Lcom/transsion/player/longvideo/R$id;->tvMoneyNum:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    sget v1, Lcom/transsion/player/longvideo/R$id;->tvOr:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v16, :cond_0

    sget v1, Lcom/transsion/player/longvideo/R$id;->tvPremium:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    sget v1, Lcom/transsion/player/longvideo/R$id;->tvTitle11:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    sget v1, Lcom/transsion/player/longvideo/R$id;->tvTitle12:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    sget v1, Lcom/transsion/player/longvideo/R$id;->tvTitle21:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    sget v1, Lcom/transsion/player/longvideo/R$id;->tvTitle22:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_0

    sget v1, Lcom/transsion/player/longvideo/R$id;->viewLineL:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_0

    sget v1, Lcom/transsion/player/longvideo/R$id;->viewLineR:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v23

    if-eqz v23, :cond_0

    new-instance v1, Lho/b;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-direct/range {v3 .. v23}, Lho/b;-><init>(Landroid/widget/FrameLayout;Lcom/transsion/player/longvideo/member/ResolutionAdView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V

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

.method public static c(Landroid/view/LayoutInflater;)Lho/b;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lho/b;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lho/b;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lho/b;
    .locals 2

    sget v0, Lcom/transsion/player/longvideo/R$layout;->long_vod_fragment_resolution_unlock:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lho/b;->a(Landroid/view/View;)Lho/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lho/b;->a:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lho/b;->b()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method
