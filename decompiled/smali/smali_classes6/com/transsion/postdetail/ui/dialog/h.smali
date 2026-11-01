.class public final Lcom/transsion/postdetail/ui/dialog/h;
.super Landroidx/appcompat/app/w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/ui/dialog/h$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/transsion/postdetail/ui/dialog/h$a;

.field private static final e:Ljava/util/List;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/lang/String;

.field private c:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/postdetail/ui/dialog/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/postdetail/ui/dialog/h$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/postdetail/ui/dialog/h;->d:Lcom/transsion/postdetail/ui/dialog/h$a;

    const-string v0, "dislike_user"

    const-string v1, "report"

    const-string v2, "dislike_post"

    const-string v3, "dislike_category"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/postdetail/ui/dialog/h;->e:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/postdetail/R$style;->NegativeFeedbackDialogTheme:I

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/w;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/transsion/postdetail/ui/dialog/h;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/transsion/postdetail/ui/dialog/h;->b:Ljava/lang/String;

    return-void
.end method

.method public static synthetic f(Lkotlin/jvm/internal/Ref$FloatRef;Landroid/view/View;FLcom/transsion/postdetail/ui/dialog/h;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/transsion/postdetail/ui/dialog/h;->m(Lkotlin/jvm/internal/Ref$FloatRef;Landroid/view/View;FLcom/transsion/postdetail/ui/dialog/h;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/transsion/postdetail/ui/dialog/h;ILcom/transsion/postdetail/bean/NegativeFeedbackAction;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/postdetail/ui/dialog/h;->o(Lcom/transsion/postdetail/ui/dialog/h;ILcom/transsion/postdetail/bean/NegativeFeedbackAction;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/dialog/h;->l(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private final i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "dialog_name"

    const-string v2, "post_feedback"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "module_name"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lhj/i;->a:Lhj/i;

    const-string v1, "feature_click"

    invoke-virtual {p2, p1, v1, v0}, Lhj/i;->F(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final k()V
    .locals 5

    sget v0, Lcom/transsion/postdetail/R$id;->dragHandle:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/w;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Lcom/transsion/postdetail/R$id;->llDialogRoot:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/w;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v2

    int-to-float v2, v2

    new-instance v3, Lcom/transsion/postdetail/ui/dialog/f;

    invoke-direct {v3, v0, v1}, Lcom/transsion/postdetail/ui/dialog/f;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    new-instance v3, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    new-instance v4, Lcom/transsion/postdetail/ui/dialog/g;

    invoke-direct {v4, v3, v1, v2, p0}, Lcom/transsion/postdetail/ui/dialog/g;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Landroid/view/View;FLcom/transsion/postdetail/ui/dialog/h;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private static final l(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    const/4 v0, 0x0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->right:I

    new-instance v0, Landroid/view/TouchDelegate;

    invoke-direct {v0, v1, p0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method

.method private static final m(Lkotlin/jvm/internal/Ref$FloatRef;Landroid/view/View;FLcom/transsion/postdetail/ui/dialog/h;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p5}, Landroid/view/MotionEvent;->getAction()I

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_3

    const/4 v1, 0x0

    if-eq p4, v0, :cond_1

    const/4 v2, 0x2

    if-eq p4, v2, :cond_0

    const/4 v2, 0x3

    if-eq p4, v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p5}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget p0, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float/2addr p2, p0

    invoke-static {p2, v1}, Lkotlin/ranges/RangesKt;->e(FF)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_1
    invoke-virtual {p5}, Landroid/view/MotionEvent;->getRawY()F

    move-result p4

    iget p0, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float/2addr p4, p0

    cmpl-float p0, p4, p2

    if-lez p0, :cond_2

    invoke-virtual {p3}, Landroidx/appcompat/app/w;->dismiss()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0xc8

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_3
    invoke-virtual {p5}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    :goto_0
    return v0
.end method

.method private final n()V
    .locals 12

    sget v0, Lcom/transsion/postdetail/R$id;->llOptions:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/w;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/postdetail/ui/dialog/h;->a:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_1
    check-cast v4, Lcom/transsion/postdetail/bean/NegativeFeedbackAction;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lcom/transsion/postdetail/R$layout;->item_negative_feedback_option:I

    invoke-virtual {v6, v7, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    sget v7, Lcom/transsion/postdetail/R$id;->ivOptionIcon:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v4}, Lcom/transsion/postdetail/bean/NegativeFeedbackAction;->getIconUrl()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    sget-object v9, Lej/f;->a:Lej/f$a;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "getContext(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v9

    invoke-virtual {v9, v8}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v8

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v8, v7}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    goto :goto_2

    :cond_3
    :goto_1
    sget v8, Lcom/transsion/postdetail/R$drawable;->ic_post_negative_feedback:I

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :goto_2
    sget v7, Lcom/transsion/postdetail/R$id;->tvOptionTitle:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v4}, Lcom/transsion/postdetail/bean/NegativeFeedbackAction;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez v3, :cond_4

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const-string v8, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x41800000    # 16.0f

    invoke-static {v8}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    new-instance v7, Lcom/transsion/postdetail/ui/dialog/e;

    invoke-direct {v7, p0, v3, v4}, Lcom/transsion/postdetail/ui/dialog/e;-><init>(Lcom/transsion/postdetail/ui/dialog/h;ILcom/transsion/postdetail/bean/NegativeFeedbackAction;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move v3, v5

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private static final o(Lcom/transsion/postdetail/ui/dialog/h;ILcom/transsion/postdetail/bean/NegativeFeedbackAction;Landroid/view/View;)V
    .locals 2

    iget-object p3, p0, Lcom/transsion/postdetail/ui/dialog/h;->b:Ljava/lang/String;

    sget-object v0, Lcom/transsion/postdetail/ui/dialog/h;->e:Ljava/util/List;

    if-ltz p1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p3, p1}, Lcom/transsion/postdetail/ui/dialog/h;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/dialog/h;->c:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/w;->dismiss()V

    return-void
.end method


# virtual methods
.method public final j(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/dialog/h;->c:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/appcompat/app/w;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/postdetail/R$layout;->dialog_negative_feedback:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/w;->setContentView(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    sget v0, Lcom/transsion/postdetail/R$style;->NegativeFeedbackDialogAnimation:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    const v0, 0x3ed70a3d    # 0.42f

    invoke-virtual {p1, v0}, Landroid/view/Window;->setDimAmount(F)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    :cond_0
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/dialog/h;->n()V

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/dialog/h;->k()V

    return-void
.end method
