.class public final Lhk/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:Landroid/text/Spannable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/text/Spannable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhk/a;->a:Landroid/text/Spannable;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const-string v0, "textView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    instance-of v1, p1, Landroid/widget/TextView;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    move-object v4, p1

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    invoke-virtual {v4}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr p2, v5

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr p2, v5

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    const-string v5, "getLayout(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    float-to-int p2, p2

    invoke-virtual {v4, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p2

    invoke-virtual {v4, p2, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p2

    iget-object v3, p0, Lhk/a;->a:Landroid/text/Spannable;

    if-eqz v3, :cond_2

    const-class v4, Landroid/text/style/ClickableSpan;

    invoke-interface {v3, p2, p2, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/text/style/ClickableSpan;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    array-length v3, p2

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    if-nez v3, :cond_7

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    goto :goto_2

    :cond_4
    aget-object p2, p2, v2

    invoke-virtual {p2, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lhk/a;->a:Landroid/text/Spannable;

    if-eqz p1, :cond_6

    aget-object v0, p2, v2

    invoke-interface {p1, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lhk/a;->a:Landroid/text/Spannable;

    if-eqz v0, :cond_6

    aget-object p2, p2, v2

    invoke-interface {v0, p2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p2

    :try_start_0
    iget-object v0, p0, Lhk/a;->a:Landroid/text/Spannable;

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_6
    :goto_2
    return v1

    :cond_7
    iget-object p1, p0, Lhk/a;->a:Landroid/text/Spannable;

    invoke-static {p1}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    :goto_3
    return v2
.end method
