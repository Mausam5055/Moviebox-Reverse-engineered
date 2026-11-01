.class public Lcom/mbridge/msdk/video/dynview/wrapper/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mbridge_top_play_bg"

    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->a:Ljava/lang/String;

    const-string v0, "mbridge_top_finger_bg"

    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->b:Ljava/lang/String;

    const-string v0, "mbridge_bottom_play_bg"

    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->c:Ljava/lang/String;

    const-string v0, "mbridge_bottom_finger_bg"

    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->d:Ljava/lang/String;

    const-string v0, "mbridge_tv_count"

    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->e:Ljava/lang/String;

    const-string v0, "mbridge_sound_switch"

    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->f:Ljava/lang/String;

    const-string v0, "mbridge_top_control"

    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->g:Ljava/lang/String;

    const-string v0, "mbridge_tv_title"

    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->h:Ljava/lang/String;

    const-string v0, "mbridge_tv_desc"

    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->i:Ljava/lang/String;

    const-string v0, "mbridge_tv_install"

    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->j:Ljava/lang/String;

    const-string v0, "mbridge_sv_starlevel"

    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->k:Ljava/lang/String;

    const-string v0, "mbridge_sv_heat_count_level"

    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->l:Ljava/lang/String;

    const-string v0, "mbridge_tv_cta"

    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->m:Ljava/lang/String;

    const-string v0, "mbridge_native_ec_controller"

    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->n:Ljava/lang/String;

    const-string v0, "mbridge_reward_shape_choice_rl"

    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->o:Ljava/lang/String;

    const-string v0, "#FFFFFF"

    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->p:Ljava/lang/String;

    const-string v0, "#FF000000"

    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->q:Ljava/lang/String;

    const-string v0, "#40000000"

    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->r:Ljava/lang/String;

    const-string v0, "#CAEF79"

    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->s:Ljava/lang/String;

    const-string v0, "#2196F3"

    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->t:Ljava/lang/String;

    const-string v0, "#402196F3"

    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->u:Ljava/lang/String;

    const-string v0, "#8FC31F"

    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->v:Ljava/lang/String;

    const-string v0, "#03A9F4"

    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->w:Ljava/lang/String;

    const-string v0, "#FF89C120"

    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->x:Ljava/lang/String;

    const-string v0, "#FF2BAE5D"

    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->y:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->z:Z

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/view/View;Lcom/mbridge/msdk/video/dynview/c;)V
    .locals 4

    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->n:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/video/dynview/wrapper/b;->b(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    iget p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sget v0, Lcom/mbridge/msdk/video/dynview/constant/a;->a:I

    add-int/2addr p3, v0

    iget v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sget v1, Lcom/mbridge/msdk/video/dynview/constant/a;->b:I

    add-int/2addr v0, v1

    iget v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sget v2, Lcom/mbridge/msdk/video/dynview/constant/a;->c:I

    add-int/2addr v1, v2

    iget v2, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sget v3, Lcom/mbridge/msdk/video/dynview/constant/a;->d:I

    add-int/2addr v2, v3

    invoke-virtual {p2, p3, v1, v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    iget p3, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sget v0, Lcom/mbridge/msdk/video/dynview/constant/a;->a:I

    add-int/2addr p3, v0

    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sget v1, Lcom/mbridge/msdk/video/dynview/constant/a;->b:I

    add-int/2addr v0, v1

    iget v1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sget v2, Lcom/mbridge/msdk/video/dynview/constant/a;->c:I

    add-int/2addr v1, v2

    iget v2, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sget v3, Lcom/mbridge/msdk/video/dynview/constant/a;->d:I

    add-int/2addr v2, v3

    invoke-virtual {p2, p3, v1, v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/dynview/wrapper/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/dynview/wrapper/b;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    :goto_0
    if-eqz p1, :cond_2

    sget v0, Lcom/mbridge/msdk/video/dynview/constant/a;->a:I

    if-nez v0, :cond_1

    sget v0, Lcom/mbridge/msdk/video/dynview/constant/a;->b:I

    if-nez v0, :cond_1

    sget v0, Lcom/mbridge/msdk/video/dynview/constant/a;->c:I

    if-nez v0, :cond_1

    sget v0, Lcom/mbridge/msdk/video/dynview/constant/a;->d:I

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public a(Landroid/view/View;Lcom/mbridge/msdk/video/dynview/c;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;Lcom/mbridge/msdk/video/dynview/c;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/mbridge/msdk/video/dynview/c;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_c

    if-nez p2, :cond_1

    goto/16 :goto_4

    :cond_1
    const-string v1, "mbridge_reward_click_tv"

    if-eqz p3, :cond_3

    const-string v2, "is_dy_success"

    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    iput-boolean p3, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->z:Z

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->e:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/mbridge/msdk/video/dynview/wrapper/b;->a(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/mbridge/msdk/video/dynview/wrapper/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->e:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/mbridge/msdk/video/dynview/wrapper/b;->b(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/mbridge/msdk/video/dynview/wrapper/b;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_1

    :cond_3
    iget-object p3, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->e:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/mbridge/msdk/video/dynview/wrapper/b;->b(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/mbridge/msdk/video/dynview/wrapper/b;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    :goto_1
    if-eqz p3, :cond_4

    const-string v2, "mbridge_reward_shape_progress"

    const-string v3, "drawable"

    invoke-static {v0, v2, v3}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x41300000    # 11.0f

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_4
    if-eqz v1, :cond_6

    const/high16 p3, 0x41a00000    # 20.0f

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTextSize(F)V

    instance-of p3, v1, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeTextView;

    if-eqz p3, :cond_5

    new-instance p3, Lcom/mbridge/msdk/video/dynview/ui/b;

    invoke-direct {p3}, Lcom/mbridge/msdk/video/dynview/ui/b;-><init>()V

    invoke-virtual {p3, v1}, Lcom/mbridge/msdk/video/dynview/ui/b;->a(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object p3

    move-object v0, v1

    check-cast v0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeTextView;

    invoke-virtual {v0, p3}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeTextView;->setObjectAnimator(Landroid/animation/ObjectAnimator;)V

    :cond_5
    instance-of p3, v1, Lcom/mbridge/msdk/dycreator/baseview/MBTextView;

    if-eqz p3, :cond_6

    new-instance p3, Lcom/mbridge/msdk/video/dynview/ui/b;

    invoke-direct {p3}, Lcom/mbridge/msdk/video/dynview/ui/b;-><init>()V

    invoke-virtual {p3, v1}, Lcom/mbridge/msdk/video/dynview/ui/b;->a(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object p3

    move-object v0, v1

    check-cast v0, Lcom/mbridge/msdk/dycreator/baseview/MBTextView;

    invoke-virtual {v0, p3}, Lcom/mbridge/msdk/dycreator/baseview/MBTextView;->setAnimator(Landroid/animation/Animator;)V

    :cond_6
    iget-object p3, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->s:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/mbridge/msdk/video/dynview/c;->l()I

    move-result v2

    const/16 v3, 0x12e

    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v5, 0x3f800000    # 1.0f

    if-eq v2, v3, :cond_9

    const/16 v3, 0x322

    if-eq v2, v3, :cond_8

    const v3, 0x4c531a

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->s:Ljava/lang/String;

    const/high16 v4, 0x40a00000    # 5.0f

    :goto_2
    move v7, v5

    move-object v5, v0

    move-object v0, v2

    move v2, v7

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->v:Ljava/lang/String;

    iget-object p3, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->p:Ljava/lang/String;

    move-object v0, v2

    move-object v3, v0

    move v2, v5

    move-object v5, v3

    goto :goto_3

    :cond_8
    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->p:Ljava/lang/String;

    iget-object p3, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->r:Ljava/lang/String;

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x41c80000    # 25.0f

    move-object v5, v0

    move-object v0, v2

    move v2, v3

    move-object v3, v0

    goto :goto_3

    :cond_9
    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->t:Ljava/lang/String;

    iget-object v3, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->w:Ljava/lang/String;

    iget-object p3, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->u:Ljava/lang/String;

    goto :goto_2

    :goto_3
    if-eqz v1, :cond_a

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object p3

    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move v3, v4

    move-object v4, v5

    move-object v5, p3

    invoke-static/range {v1 .. v6}, Lcom/mbridge/msdk/video/dynview/util/drawable/a;->a(Landroid/view/View;FFLjava/lang/String;[Ljava/lang/String;Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    :cond_a
    invoke-virtual {p2}, Lcom/mbridge/msdk/video/dynview/c;->i()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_b

    invoke-virtual {p2}, Lcom/mbridge/msdk/video/dynview/c;->i()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p3, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p2}, Lcom/mbridge/msdk/video/dynview/c;->i()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/dynview/wrapper/b;->a(Landroid/view/View;)V

    :cond_c
    :goto_4
    return-void
.end method

.method public a(Landroid/view/View;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_6

    instance-of v0, p1, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeFramLayout;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeFramLayout;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_6

    if-eqz p2, :cond_0

    const-string v2, "is_dy_success"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->z:Z

    :cond_0
    iget-boolean p2, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->z:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->a:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/mbridge/msdk/video/dynview/wrapper/b;->a(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->b:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/mbridge/msdk/video/dynview/wrapper/b;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->c:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mbridge/msdk/video/dynview/wrapper/b;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->d:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/mbridge/msdk/video/dynview/wrapper/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->a:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/mbridge/msdk/video/dynview/wrapper/b;->b(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->b:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/mbridge/msdk/video/dynview/wrapper/b;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->c:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mbridge/msdk/video/dynview/wrapper/b;->b(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->d:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/mbridge/msdk/video/dynview/wrapper/b;->b(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    :goto_0
    const/4 v4, 0x0

    if-eqz p2, :cond_2

    new-instance v5, Lcom/mbridge/msdk/video/dynview/ui/b;

    invoke-direct {v5}, Lcom/mbridge/msdk/video/dynview/ui/b;-><init>()V

    invoke-virtual {v5, p2}, Lcom/mbridge/msdk/video/dynview/ui/b;->b(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    goto :goto_1

    :cond_2
    move-object p2, v4

    :goto_1
    if-eqz v2, :cond_3

    new-instance v5, Lcom/mbridge/msdk/video/dynview/ui/b;

    invoke-direct {v5}, Lcom/mbridge/msdk/video/dynview/ui/b;-><init>()V

    invoke-virtual {v5, v2}, Lcom/mbridge/msdk/video/dynview/ui/b;->c(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v4

    :goto_2
    if-eqz v3, :cond_4

    new-instance v5, Lcom/mbridge/msdk/video/dynview/ui/b;

    invoke-direct {v5}, Lcom/mbridge/msdk/video/dynview/ui/b;-><init>()V

    invoke-virtual {v5, v3}, Lcom/mbridge/msdk/video/dynview/ui/b;->b(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    goto :goto_3

    :cond_4
    move-object v3, v4

    :goto_3
    if-eqz p1, :cond_5

    new-instance v4, Lcom/mbridge/msdk/video/dynview/ui/b;

    invoke-direct {v4}, Lcom/mbridge/msdk/video/dynview/ui/b;-><init>()V

    invoke-virtual {v4, p1}, Lcom/mbridge/msdk/video/dynview/ui/b;->c(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    :cond_5
    if-eqz p2, :cond_6

    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    if-eqz v4, :cond_6

    const/4 p1, 0x4

    new-array p1, p1, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object p2, p1, v5

    const/4 p2, 0x1

    aput-object v3, p1, p2

    const/4 p2, 0x2

    aput-object v2, p1, p2

    const/4 p2, 0x3

    aput-object v4, p1, p2

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeFramLayout;->setAnimatorSet(Landroid/animation/AnimatorSet;)V

    :cond_6
    return-void
.end method

.method public b(Ljava/lang/String;)I
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, p1, v1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public b(Landroid/view/View;Lcom/mbridge/msdk/video/dynview/c;)V
    .locals 10

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/mbridge/msdk/video/dynview/c;->h()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->o:Ljava/lang/String;

    const-string v2, "drawable"

    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->h:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/mbridge/msdk/video/dynview/wrapper/b;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->q:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->i:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/mbridge/msdk/video/dynview/wrapper/b;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->q:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v1

    goto :goto_0

    :cond_2
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_0
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->j:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mbridge/msdk/video/dynview/wrapper/b;->b(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Lcom/mbridge/msdk/video/dynview/c;->i()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p2}, Lcom/mbridge/msdk/video/dynview/c;->i()Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/mbridge/msdk/video/module/MBridgeClickCTAView;

    if-eqz v4, :cond_3

    new-instance v4, Lcom/mbridge/msdk/video/dynview/ui/b;

    invoke-direct {v4}, Lcom/mbridge/msdk/video/dynview/ui/b;-><init>()V

    invoke-virtual {v4, v3}, Lcom/mbridge/msdk/video/dynview/ui/b;->a(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p2}, Lcom/mbridge/msdk/video/dynview/c;->i()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/mbridge/msdk/video/module/MBridgeClickCTAView;

    invoke-virtual {p2, v4}, Lcom/mbridge/msdk/video/module/MBridgeClickCTAView;->setObjectAnimator(Landroid/animation/ObjectAnimator;)V

    :cond_3
    instance-of p2, v3, Landroid/widget/TextView;

    if-eqz p2, :cond_4

    move-object v4, v3

    check-cast v4, Landroid/widget/TextView;

    iget-object p2, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->p:Ljava/lang/String;

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p2, 0x41700000    # 15.0f

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p2, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->v:Ljava/lang/String;

    iget-object v7, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->s:Ljava/lang/String;

    filled-new-array {p2, v7}, [Ljava/lang/String;

    move-result-object v8

    sget-object v9, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static/range {v4 .. v9}, Lcom/mbridge/msdk/video/dynview/util/drawable/a;->a(Landroid/view/View;FFLjava/lang/String;[Ljava/lang/String;Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_5

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {p2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1, v1, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void
.end method

.method public b(Landroid/view/View;Lcom/mbridge/msdk/video/dynview/c;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/mbridge/msdk/video/dynview/c;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_9

    if-eqz p3, :cond_0

    const-string v3, "is_dy_success"

    invoke-interface {p3, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    iput-boolean p3, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->z:Z

    :cond_0
    iget-boolean p3, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->z:Z

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->k:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/mbridge/msdk/video/dynview/wrapper/b;->a(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->m:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mbridge/msdk/video/dynview/wrapper/b;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    :goto_0
    move-object v9, v3

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->k:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/mbridge/msdk/video/dynview/wrapper/b;->b(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->m:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mbridge/msdk/video/dynview/wrapper/b;->b(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :goto_1
    if-eqz p3, :cond_3

    instance-of v3, p3, Lcom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Lcom/mbridge/msdk/video/dynview/c;->h()I

    move-result v3

    if-ne v3, v0, :cond_2

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_3
    :goto_2
    if-eqz p3, :cond_4

    instance-of v3, p3, Lcom/mbridge/msdk/dycreator/baseview/MBStarLevelLayoutView;

    if-eqz v3, :cond_4

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_4
    invoke-direct {p0, v2, p1, p2}, Lcom/mbridge/msdk/video/dynview/wrapper/b;->a(Landroid/content/Context;Landroid/view/View;Lcom/mbridge/msdk/video/dynview/c;)V

    if-eqz v9, :cond_9

    instance-of p3, v9, Landroid/widget/TextView;

    if-eqz p3, :cond_6

    move-object p3, v9

    check-cast p3, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->p:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p3, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->x:Ljava/lang/String;

    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->y:Ljava/lang/String;

    filled-new-array {p3, v2}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/mbridge/msdk/video/dynview/c;->l()I

    move-result p2

    const/16 p3, 0x516

    if-ne p2, p3, :cond_5

    const/16 p2, 0x19

    goto :goto_3

    :cond_5
    const/4 p2, 0x5

    :goto_3
    int-to-float v5, p2

    iget-object v6, p0, Lcom/mbridge/msdk/video/dynview/wrapper/b;->s:Ljava/lang/String;

    sget-object v8, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v3, v9

    invoke-static/range {v3 .. v8}, Lcom/mbridge/msdk/video/dynview/util/drawable/a;->a(Landroid/view/View;FFLjava/lang/String;[Ljava/lang/String;Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    :cond_6
    :try_start_0
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance p3, Lcom/mbridge/msdk/video/dynview/ui/b;

    invoke-direct {p3}, Lcom/mbridge/msdk/video/dynview/ui/b;-><init>()V

    invoke-virtual {p3, v9}, Lcom/mbridge/msdk/video/dynview/ui/b;->a(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object p3

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object p3, v0, v1

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance p3, Lcom/mbridge/msdk/video/dynview/wrapper/b$a;

    invoke-direct {p3, p0}, Lcom/mbridge/msdk/video/dynview/wrapper/b$a;-><init>(Lcom/mbridge/msdk/video/dynview/wrapper/b;)V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    instance-of p3, p1, Lcom/mbridge/msdk/dycreator/baseview/MBFrameLayout;

    if-eqz p3, :cond_7

    move-object p3, p1

    check-cast p3, Lcom/mbridge/msdk/dycreator/baseview/MBFrameLayout;

    invoke-virtual {p3, p2}, Lcom/mbridge/msdk/dycreator/baseview/MBFrameLayout;->setAnimator(Landroid/animation/Animator;)V

    goto :goto_4

    :catch_0
    move-exception p2

    goto :goto_5

    :cond_7
    :goto_4
    instance-of p3, p1, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeFramLayout;

    if-eqz p3, :cond_8

    move-object p3, p1

    check-cast p3, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeFramLayout;

    invoke-virtual {p3, p2}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeFramLayout;->setAnimatorSet(Landroid/animation/AnimatorSet;)V

    :cond_8
    instance-of p3, p1, Lcom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;

    if-eqz p3, :cond_9

    move-object p3, p1

    check-cast p3, Lcom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;

    invoke-virtual {p3, p2}, Lcom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;->setAnimatorSet(Landroid/animation/AnimatorSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :goto_5
    sget-boolean p3, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p3, :cond_9

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_6
    new-instance p2, Lcom/mbridge/msdk/video/dynview/ui/b;

    invoke-direct {p2}, Lcom/mbridge/msdk/video/dynview/ui/b;-><init>()V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, p1, v0, v1}, Lcom/mbridge/msdk/video/dynview/ui/b;->a(Landroid/view/View;J)V

    :cond_a
    return-void
.end method
