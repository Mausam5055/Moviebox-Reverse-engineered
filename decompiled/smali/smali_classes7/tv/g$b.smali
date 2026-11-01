.class public final Ltv/g$b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/g;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ltv/g;


# direct methods
.method constructor <init>(Ltv/g;)V
    .locals 0

    iput-object p1, p0, Ltv/g$b;->a:Ltv/g;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Ltv/g$b;->a:Ltv/g;

    invoke-static {v0}, Ltv/g;->b(Ltv/g;)Ltv/g$a;

    move-result-object v0

    invoke-interface {v0}, Ltv/g$a;->i()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_1

    :goto_0
    iget-object p1, p0, Ltv/g$b;->a:Ltv/g;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ltv/g;->f(Ltv/g;Z)V

    iget-object p1, p0, Ltv/g$b;->a:Ltv/g;

    invoke-static {p1}, Ltv/g;->g(Ltv/g;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Ltv/g$b;->a:Ltv/g;

    invoke-static {p1}, Ltv/g;->b(Ltv/g;)Ltv/g$a;

    move-result-object p1

    invoke-interface {p1}, Ltv/g$a;->d()V

    :goto_1
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ltv/g$b;->a:Ltv/g;

    invoke-static {v0}, Ltv/g;->d(Ltv/g;)V

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
