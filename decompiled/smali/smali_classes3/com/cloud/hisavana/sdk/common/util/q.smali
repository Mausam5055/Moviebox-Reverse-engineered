.class public final synthetic Lcom/cloud/hisavana/sdk/common/util/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroid/animation/ValueAnimator;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/graphics/drawable/GradientDrawable;

.field public final synthetic d:Landroid/animation/ArgbEvaluator;


# direct methods
.method public synthetic constructor <init>(Landroid/animation/ValueAnimator;Landroid/view/View;Landroid/graphics/drawable/GradientDrawable;Landroid/animation/ArgbEvaluator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/q;->a:Landroid/animation/ValueAnimator;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/util/q;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/util/q;->c:Landroid/graphics/drawable/GradientDrawable;

    iput-object p4, p0, Lcom/cloud/hisavana/sdk/common/util/q;->d:Landroid/animation/ArgbEvaluator;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/q;->a:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/util/q;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/util/q;->c:Landroid/graphics/drawable/GradientDrawable;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/util/q;->d:Landroid/animation/ArgbEvaluator;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/cloud/hisavana/sdk/common/util/r;->a(Landroid/animation/ValueAnimator;Landroid/view/View;Landroid/graphics/drawable/GradientDrawable;Landroid/animation/ArgbEvaluator;Landroid/animation/ValueAnimator;)V

    return-void
.end method
