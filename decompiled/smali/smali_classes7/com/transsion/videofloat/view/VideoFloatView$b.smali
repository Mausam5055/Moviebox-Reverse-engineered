.class public final Lcom/transsion/videofloat/view/VideoFloatView$b;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/videofloat/view/VideoFloatView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/videofloat/view/VideoFloatView;


# direct methods
.method constructor <init>(Lcom/transsion/videofloat/view/VideoFloatView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/videofloat/view/VideoFloatView$b;->a:Lcom/transsion/videofloat/view/VideoFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/videofloat/view/VideoFloatView$b;->a:Lcom/transsion/videofloat/view/VideoFloatView;

    invoke-static {v0}, Lcom/transsion/videofloat/view/VideoFloatView;->access$onSpaceClick(Lcom/transsion/videofloat/view/VideoFloatView;)V

    return-void
.end method

.method public b(FF)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/videofloat/view/VideoFloatView$b;->a:Lcom/transsion/videofloat/view/VideoFloatView;

    invoke-static {v0}, Lcom/transsion/videofloat/view/VideoFloatView;->access$getWindowLp$p(Lcom/transsion/videofloat/view/VideoFloatView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/videofloat/view/VideoFloatView$b;->a:Lcom/transsion/videofloat/view/VideoFloatView;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    float-to-int p1, p1

    add-int/2addr v2, p1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    float-to-int p2, p2

    add-int/2addr p1, p2

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v1}, Lcom/transsion/videofloat/view/VideoFloatView;->access$getScreenWidth$p(Lcom/transsion/videofloat/view/VideoFloatView;)I

    move-result p1

    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr p1, p2

    invoke-static {v1}, Lcom/transsion/videofloat/view/VideoFloatView;->access$getScreenHeight$p(Lcom/transsion/videofloat/view/VideoFloatView;)I

    move-result p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr p2, v2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v3, 0x0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    invoke-static {v2, v3, p1}, Lkotlin/ranges/RangesKt;->m(III)I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-lez p2, :cond_1

    goto :goto_1

    :cond_1
    move p2, v3

    :goto_1
    invoke-static {p1, v3, p2}, Lkotlin/ranges/RangesKt;->m(III)I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v1}, Lcom/transsion/videofloat/view/VideoFloatView;->access$getWindowManager$p(Lcom/transsion/videofloat/view/VideoFloatView;)Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1, v1, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)V
    .locals 3

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/videofloat/view/VideoFloatView$b;->a:Lcom/transsion/videofloat/view/VideoFloatView;

    invoke-static {v0}, Lcom/transsion/videofloat/view/VideoFloatView;->access$getWindowLp$p(Lcom/transsion/videofloat/view/VideoFloatView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/transsion/videofloat/view/VideoFloatView$b;->a:Lcom/transsion/videofloat/view/VideoFloatView;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    mul-float/2addr v2, p1

    float-to-int p1, v2

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v1}, Lcom/transsion/videofloat/view/VideoFloatView;->access$getScreenWidth$p(Lcom/transsion/videofloat/view/VideoFloatView;)I

    move-result v2

    if-le p1, v2, :cond_0

    invoke-static {v1}, Lcom/transsion/videofloat/view/VideoFloatView;->access$getScreenWidth$p(Lcom/transsion/videofloat/view/VideoFloatView;)I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_0
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v1}, Lcom/transsion/videofloat/view/VideoFloatView;->access$getDefMinWidth$p(Lcom/transsion/videofloat/view/VideoFloatView;)I

    move-result v2

    if-ge p1, v2, :cond_1

    invoke-static {v1}, Lcom/transsion/videofloat/view/VideoFloatView;->access$getDefMinWidth$p(Lcom/transsion/videofloat/view/VideoFloatView;)I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_1
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v1, p1}, Lcom/transsion/videofloat/view/VideoFloatView;->access$updateSubtitleSize(Lcom/transsion/videofloat/view/VideoFloatView;I)V

    invoke-static {v1}, Lcom/transsion/videofloat/view/VideoFloatView;->access$getFloatBean$p(Lcom/transsion/videofloat/view/VideoFloatView;)Lpx/a;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lpx/a;->i()Lcom/transsion/videofloat/bean/FloatPlayType;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    sget-object v2, Lcom/transsion/videofloat/bean/FloatPlayType;->SHORT_TV:Lcom/transsion/videofloat/bean/FloatPlayType;

    if-ne p1, v2, :cond_3

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    mul-int/lit8 p1, p1, 0x10

    div-int/lit8 p1, p1, 0x9

    goto :goto_1

    :cond_3
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    mul-int/lit8 p1, p1, 0x9

    div-int/lit8 p1, p1, 0x10

    :goto_1
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {v1}, Lcom/transsion/videofloat/view/VideoFloatView;->access$getWindowManager$p(Lcom/transsion/videofloat/view/VideoFloatView;)Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1, v1, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method
