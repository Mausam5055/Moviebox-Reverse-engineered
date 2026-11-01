.class Lcom/transsion/baseui/widget/shimmer/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/baseui/widget/shimmer/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/baseui/widget/shimmer/b;


# direct methods
.method constructor <init>(Lcom/transsion/baseui/widget/shimmer/b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baseui/widget/shimmer/b$a;->a:Lcom/transsion/baseui/widget/shimmer/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/baseui/widget/shimmer/b$a;->a:Lcom/transsion/baseui/widget/shimmer/b;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
