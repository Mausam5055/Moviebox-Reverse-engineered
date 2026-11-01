.class public final Lcom/transsion/ad/view/ScrollDetectFrameLayout;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/view/ScrollDetectFrameLayout$a;,
        Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\r\u0018\u00002\u00020\u0001:\u0002\u0014#B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0015\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001c\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u0019R\u0016\u0010\u001f\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\"\u001a\u00020\u00068\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008 \u0010!\u00a8\u0006$"
    }
    d2 = {
        "Lcom/transsion/ad/view/ScrollDetectFrameLayout;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Lcom/transsion/ad/view/ScrollDetectFrameLayout$a;",
        "listener",
        "",
        "setOnScrollListener",
        "(Lcom/transsion/ad/view/ScrollDetectFrameLayout$a;)V",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "dispatchTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "a",
        "Lcom/transsion/ad/view/ScrollDetectFrameLayout$a;",
        "scrollListener",
        "",
        "b",
        "F",
        "lastX",
        "c",
        "lastY",
        "d",
        "Z",
        "isScrolling",
        "e",
        "I",
        "defaultMinMovie",
        "ScrollDirection",
        "lib_ad_gpRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private a:Lcom/transsion/ad/view/ScrollDetectFrameLayout$a;

.field private b:F

.field private c:F

.field private d:Z

.field private final e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/ad/view/ScrollDetectFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/ad/view/ScrollDetectFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0xa

    iput p1, p0, Lcom/transsion/ad/view/ScrollDetectFrameLayout;->e:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/ad/view/ScrollDetectFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/ad/view/ScrollDetectFrameLayout;->b:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/transsion/ad/view/ScrollDetectFrameLayout;->c:F

    iput-boolean v1, p0, Lcom/transsion/ad/view/ScrollDetectFrameLayout;->d:Z

    goto/16 :goto_5

    :cond_2
    :goto_1
    const/4 v2, 0x1

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, p0, Lcom/transsion/ad/view/ScrollDetectFrameLayout;->b:F

    sub-float v3, v0, v3

    iget v4, p0, Lcom/transsion/ad/view/ScrollDetectFrameLayout;->c:F

    sub-float v4, v1, v4

    iget-boolean v5, p0, Lcom/transsion/ad/view/ScrollDetectFrameLayout;->d:Z

    if-nez v5, :cond_4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/transsion/ad/view/ScrollDetectFrameLayout;->e:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    iput-boolean v2, p0, Lcom/transsion/ad/view/ScrollDetectFrameLayout;->d:Z

    iget-object v2, p0, Lcom/transsion/ad/view/ScrollDetectFrameLayout;->a:Lcom/transsion/ad/view/ScrollDetectFrameLayout$a;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/transsion/ad/view/ScrollDetectFrameLayout$a;->b()V

    :cond_4
    iget-boolean v2, p0, Lcom/transsion/ad/view/ScrollDetectFrameLayout;->d:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    cmpl-float v2, v4, v2

    if-lez v2, :cond_5

    sget-object v2, Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;->DOWN:Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;

    goto :goto_2

    :cond_5
    sget-object v2, Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;->UP:Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;

    :goto_2
    iget-object v5, p0, Lcom/transsion/ad/view/ScrollDetectFrameLayout;->a:Lcom/transsion/ad/view/ScrollDetectFrameLayout$a;

    if-eqz v5, :cond_6

    invoke-interface {v5, v3, v4, v2}, Lcom/transsion/ad/view/ScrollDetectFrameLayout$a;->c(FFLcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;)V

    :cond_6
    iput v0, p0, Lcom/transsion/ad/view/ScrollDetectFrameLayout;->b:F

    iput v1, p0, Lcom/transsion/ad/view/ScrollDetectFrameLayout;->c:F

    goto :goto_5

    :cond_7
    :goto_3
    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v2, :cond_a

    :goto_4
    if-nez v0, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_c

    :cond_a
    iget-boolean v0, p0, Lcom/transsion/ad/view/ScrollDetectFrameLayout;->d:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/transsion/ad/view/ScrollDetectFrameLayout;->a:Lcom/transsion/ad/view/ScrollDetectFrameLayout$a;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/transsion/ad/view/ScrollDetectFrameLayout$a;->a()V

    :cond_b
    iput-boolean v1, p0, Lcom/transsion/ad/view/ScrollDetectFrameLayout;->d:Z

    :cond_c
    :goto_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final setOnScrollListener(Lcom/transsion/ad/view/ScrollDetectFrameLayout$a;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/ad/view/ScrollDetectFrameLayout;->a:Lcom/transsion/ad/view/ScrollDetectFrameLayout$a;

    return-void
.end method
