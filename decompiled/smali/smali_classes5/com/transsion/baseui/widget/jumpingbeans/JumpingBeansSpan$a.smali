.class Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan$a;->a:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4

    iget v0, p0, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan$a;->a:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    div-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method
