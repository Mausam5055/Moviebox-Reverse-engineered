.class public final Lho/l;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Landroid/widget/FrameLayout;

.field public final c:Landroidx/appcompat/widget/AppCompatImageView;

.field public final d:Landroidx/appcompat/widget/AppCompatImageView;

.field public final e:Landroidx/appcompat/widget/AppCompatImageView;

.field public final f:Landroidx/appcompat/widget/AppCompatImageView;

.field public final g:Landroid/widget/ImageView;

.field public final h:Lho/d;

.field public final i:Landroid/widget/LinearLayout;

.field public final j:Landroid/view/View;

.field public final k:Landroid/view/View;

.field public final l:Landroid/view/View;

.field public final m:Lho/f;

.field public final n:Lcom/tn/lib/view/SecondariesSeekBar;

.field public final o:Landroid/widget/TextView;

.field public final p:Landroid/view/ViewStub;

.field public final q:Landroid/view/ViewStub;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/ImageView;Lho/d;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lho/f;Lcom/tn/lib/view/SecondariesSeekBar;Landroid/widget/TextView;Landroid/view/ViewStub;Landroid/view/ViewStub;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lho/l;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p2

    iput-object v1, v0, Lho/l;->b:Landroid/widget/FrameLayout;

    move-object v1, p3

    iput-object v1, v0, Lho/l;->c:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p4

    iput-object v1, v0, Lho/l;->d:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p5

    iput-object v1, v0, Lho/l;->e:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p6

    iput-object v1, v0, Lho/l;->f:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p7

    iput-object v1, v0, Lho/l;->g:Landroid/widget/ImageView;

    move-object v1, p8

    iput-object v1, v0, Lho/l;->h:Lho/d;

    move-object v1, p9

    iput-object v1, v0, Lho/l;->i:Landroid/widget/LinearLayout;

    move-object v1, p10

    iput-object v1, v0, Lho/l;->j:Landroid/view/View;

    move-object v1, p11

    iput-object v1, v0, Lho/l;->k:Landroid/view/View;

    move-object v1, p12

    iput-object v1, v0, Lho/l;->l:Landroid/view/View;

    move-object v1, p13

    iput-object v1, v0, Lho/l;->m:Lho/f;

    move-object/from16 v1, p14

    iput-object v1, v0, Lho/l;->n:Lcom/tn/lib/view/SecondariesSeekBar;

    move-object/from16 v1, p15

    iput-object v1, v0, Lho/l;->o:Landroid/widget/TextView;

    move-object/from16 v1, p16

    iput-object v1, v0, Lho/l;->p:Landroid/view/ViewStub;

    move-object/from16 v1, p17

    iput-object v1, v0, Lho/l;->q:Landroid/view/ViewStub;

    return-void
.end method

.method public static a(Landroid/view/View;)Lho/l;
    .locals 21

    move-object/from16 v0, p0

    sget v1, Lcom/transsion/player/longvideo/R$id;->flUGCAutoPlayGroup:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    sget v1, Lcom/transsion/player/longvideo/R$id;->iv_back:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v6, :cond_0

    sget v1, Lcom/transsion/player/longvideo/R$id;->iv_float:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v7, :cond_0

    sget v1, Lcom/transsion/player/longvideo/R$id;->iv_middle_pause:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v8, :cond_0

    sget v1, Lcom/transsion/player/longvideo/R$id;->iv_middle_screen_change:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v9, :cond_0

    sget v1, Lcom/transsion/player/longvideo/R$id;->ivUGCAutoPlayBtn:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    sget v1, Lcom/transsion/player/longvideo/R$id;->layout_loading:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lho/d;->a(Landroid/view/View;)Lho/d;

    move-result-object v11

    sget v1, Lcom/transsion/player/longvideo/R$id;->ll_middle_bottom_controller:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    sget v1, Lcom/transsion/player/longvideo/R$id;->middle_gradient_bottom:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_0

    sget v1, Lcom/transsion/player/longvideo/R$id;->middle_gradient_top:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_0

    sget v1, Lcom/transsion/player/longvideo/R$id;->middle_guideline:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_0

    sget v1, Lcom/transsion/player/longvideo/R$id;->operatorLayout:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lho/f;->a(Landroid/view/View;)Lho/f;

    move-result-object v16

    sget v1, Lcom/transsion/player/longvideo/R$id;->seek_bar_middle:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/tn/lib/view/SecondariesSeekBar;

    if-eqz v17, :cond_0

    sget v1, Lcom/transsion/player/longvideo/R$id;->tv_middle_time:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    sget v1, Lcom/transsion/player/longvideo/R$id;->vs_forward_guide_middle:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/view/ViewStub;

    if-eqz v19, :cond_0

    sget v1, Lcom/transsion/player/longvideo/R$id;->vs_forward_middle:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/view/ViewStub;

    if-eqz v20, :cond_0

    new-instance v1, Lho/l;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v3 .. v20}, Lho/l;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/ImageView;Lho/d;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lho/f;Lcom/tn/lib/view/SecondariesSeekBar;Landroid/widget/TextView;Landroid/view/ViewStub;Landroid/view/ViewStub;)V

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
.method public b()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    iget-object v0, p0, Lho/l;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lho/l;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method
