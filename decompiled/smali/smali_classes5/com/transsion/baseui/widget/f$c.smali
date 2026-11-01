.class public final Lcom/transsion/baseui/widget/f$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/baseui/widget/f;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:F

.field final synthetic b:Lcom/transsion/baseui/widget/f;


# direct methods
.method constructor <init>(Lcom/transsion/baseui/widget/f;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baseui/widget/f$c;->b:Lcom/transsion/baseui/widget/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/transsion/baseui/widget/f$c;->a:F

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const-string p1, "e2"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/baseui/widget/f$c;->b:Lcom/transsion/baseui/widget/f;

    invoke-static {v0}, Lcom/transsion/baseui/widget/f;->b(Lcom/transsion/baseui/widget/f;)Lcom/transsion/baseui/widget/f$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/baseui/widget/f$a;->onLongPress(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    const-string v0, "e2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/baseui/widget/f$c;->b:Lcom/transsion/baseui/widget/f;

    invoke-static {v0}, Lcom/transsion/baseui/widget/f;->e(Lcom/transsion/baseui/widget/f;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    cmpl-float p3, p3, p4

    const/4 p4, 0x1

    if-lez p3, :cond_2

    iget-object p3, p0, Lcom/transsion/baseui/widget/f$c;->b:Lcom/transsion/baseui/widget/f;

    invoke-static {p3}, Lcom/transsion/baseui/widget/f;->g(Lcom/transsion/baseui/widget/f;)Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/transsion/baseui/widget/f$c;->b:Lcom/transsion/baseui/widget/f;

    invoke-static {p3}, Lcom/transsion/baseui/widget/f;->h(Lcom/transsion/baseui/widget/f;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/transsion/baseui/widget/f$c;->b:Lcom/transsion/baseui/widget/f;

    invoke-static {p3, p4}, Lcom/transsion/baseui/widget/f;->i(Lcom/transsion/baseui/widget/f;Z)V

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/transsion/baseui/widget/f$c;->b:Lcom/transsion/baseui/widget/f;

    invoke-static {p3}, Lcom/transsion/baseui/widget/f;->f(Lcom/transsion/baseui/widget/f;)Z

    :cond_3
    :goto_0
    iget-object p3, p0, Lcom/transsion/baseui/widget/f$c;->b:Lcom/transsion/baseui/widget/f;

    invoke-static {p3}, Lcom/transsion/baseui/widget/f;->f(Lcom/transsion/baseui/widget/f;)Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/transsion/baseui/widget/f$c;->b:Lcom/transsion/baseui/widget/f;

    invoke-static {p3}, Lcom/transsion/baseui/widget/f;->b(Lcom/transsion/baseui/widget/f;)Lcom/transsion/baseui/widget/f$a;

    move-result-object p3

    if-eqz p3, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-interface {p3, p1, p2}, Lcom/transsion/baseui/widget/f$a;->b(FF)V

    goto/16 :goto_1

    :cond_4
    iget-object p3, p0, Lcom/transsion/baseui/widget/f$c;->b:Lcom/transsion/baseui/widget/f;

    invoke-static {p3}, Lcom/transsion/baseui/widget/f;->c(Lcom/transsion/baseui/widget/f;)Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Lcom/transsion/baseui/widget/f$c;->b:Lcom/transsion/baseui/widget/f;

    invoke-static {p3}, Lcom/transsion/baseui/widget/f;->d(Lcom/transsion/baseui/widget/f;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget v1, p0, Lcom/transsion/baseui/widget/f$c;->a:F

    float-to-int v1, v1

    invoke-virtual {p3, v0, v1}, Lcom/transsion/baseui/widget/f;->p(Landroid/view/View;I)Z

    move-result p3

    if-eqz p3, :cond_5

    iget-object p3, p0, Lcom/transsion/baseui/widget/f$c;->b:Lcom/transsion/baseui/widget/f;

    invoke-static {p3, p4}, Lcom/transsion/baseui/widget/f;->j(Lcom/transsion/baseui/widget/f;Z)V

    iget-object p3, p0, Lcom/transsion/baseui/widget/f$c;->b:Lcom/transsion/baseui/widget/f;

    invoke-static {p3}, Lcom/transsion/baseui/widget/f;->b(Lcom/transsion/baseui/widget/f;)Lcom/transsion/baseui/widget/f$a;

    move-result-object p3

    if-eqz p3, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-interface {p3, p1, p2}, Lcom/transsion/baseui/widget/f$a;->c(FF)V

    goto :goto_1

    :cond_5
    iget-object p3, p0, Lcom/transsion/baseui/widget/f$c;->b:Lcom/transsion/baseui/widget/f;

    invoke-static {p3}, Lcom/transsion/baseui/widget/f;->d(Lcom/transsion/baseui/widget/f;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget v1, p0, Lcom/transsion/baseui/widget/f$c;->a:F

    float-to-int v1, v1

    invoke-virtual {p3, v0, v1}, Lcom/transsion/baseui/widget/f;->r(Landroid/view/View;I)Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p0, Lcom/transsion/baseui/widget/f$c;->b:Lcom/transsion/baseui/widget/f;

    invoke-static {p3, p4}, Lcom/transsion/baseui/widget/f;->k(Lcom/transsion/baseui/widget/f;Z)V

    iget-object p3, p0, Lcom/transsion/baseui/widget/f$c;->b:Lcom/transsion/baseui/widget/f;

    invoke-static {p3}, Lcom/transsion/baseui/widget/f;->b(Lcom/transsion/baseui/widget/f;)Lcom/transsion/baseui/widget/f$a;

    move-result-object p3

    if-eqz p3, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-interface {p3, p1, p2}, Lcom/transsion/baseui/widget/f$a;->d(FF)V

    goto :goto_1

    :cond_6
    iget-object p3, p0, Lcom/transsion/baseui/widget/f$c;->b:Lcom/transsion/baseui/widget/f;

    iget v0, p0, Lcom/transsion/baseui/widget/f$c;->a:F

    float-to-int v0, v0

    invoke-virtual {p3, v0}, Lcom/transsion/baseui/widget/f;->o(I)Z

    move-result p3

    if-eqz p3, :cond_7

    iget-object p3, p0, Lcom/transsion/baseui/widget/f$c;->b:Lcom/transsion/baseui/widget/f;

    invoke-static {p3, p4}, Lcom/transsion/baseui/widget/f;->j(Lcom/transsion/baseui/widget/f;Z)V

    iget-object p3, p0, Lcom/transsion/baseui/widget/f$c;->b:Lcom/transsion/baseui/widget/f;

    invoke-static {p3}, Lcom/transsion/baseui/widget/f;->b(Lcom/transsion/baseui/widget/f;)Lcom/transsion/baseui/widget/f$a;

    move-result-object p3

    if-eqz p3, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-interface {p3, p1, p2}, Lcom/transsion/baseui/widget/f$a;->c(FF)V

    goto :goto_1

    :cond_7
    iget-object p3, p0, Lcom/transsion/baseui/widget/f$c;->b:Lcom/transsion/baseui/widget/f;

    iget v0, p0, Lcom/transsion/baseui/widget/f$c;->a:F

    float-to-int v0, v0

    invoke-virtual {p3, v0}, Lcom/transsion/baseui/widget/f;->q(I)Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p0, Lcom/transsion/baseui/widget/f$c;->b:Lcom/transsion/baseui/widget/f;

    invoke-static {p3, p4}, Lcom/transsion/baseui/widget/f;->k(Lcom/transsion/baseui/widget/f;Z)V

    iget-object p3, p0, Lcom/transsion/baseui/widget/f$c;->b:Lcom/transsion/baseui/widget/f;

    invoke-static {p3}, Lcom/transsion/baseui/widget/f;->b(Lcom/transsion/baseui/widget/f;)Lcom/transsion/baseui/widget/f$a;

    move-result-object p3

    if-eqz p3, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-interface {p3, p1, p2}, Lcom/transsion/baseui/widget/f$a;->d(FF)V

    :cond_8
    :goto_1
    return p4

    :cond_9
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
