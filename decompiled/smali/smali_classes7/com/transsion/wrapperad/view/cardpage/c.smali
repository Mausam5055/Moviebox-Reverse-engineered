.class public final synthetic Lcom/transsion/wrapperad/view/cardpage/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/AppCompatImageView;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/AppCompatImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/c;->a:Landroidx/appcompat/widget/AppCompatImageView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/c;->a:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->a(Landroidx/appcompat/widget/AppCompatImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
