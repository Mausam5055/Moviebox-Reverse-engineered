.class Lwa/f$a;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwa/f;->h(Landroidx/activity/b;Landroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lwa/f;


# direct methods
.method constructor <init>(Lwa/f;)V
    .locals 0

    iput-object p1, p0, Lwa/f$a;->a:Lwa/f;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lwa/f$a;->a:Lwa/f;

    iget-object p1, p1, Lwa/a;->b:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lwa/f$a;->a:Lwa/f;

    invoke-virtual {p1, v0}, Lwa/f;->k(F)V

    return-void
.end method
