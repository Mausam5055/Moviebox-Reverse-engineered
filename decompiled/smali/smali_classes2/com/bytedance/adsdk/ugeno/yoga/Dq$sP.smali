.class public Lcom/bytedance/adsdk/ugeno/yoga/Dq$sP;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/yoga/uA;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/ugeno/yoga/Dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "sP"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private Sj(Lcom/bytedance/adsdk/ugeno/yoga/TEQ;)I
    .locals 1

    sget-object v0, Lcom/bytedance/adsdk/ugeno/yoga/TEQ;->TKC:Lcom/bytedance/adsdk/ugeno/yoga/TEQ;

    if-ne p1, v0, :cond_0

    const/high16 p1, -0x80000000

    return p1

    :cond_0
    sget-object v0, Lcom/bytedance/adsdk/ugeno/yoga/TEQ;->sP:Lcom/bytedance/adsdk/ugeno/yoga/TEQ;

    if-ne p1, v0, :cond_1

    const/high16 p1, 0x40000000    # 2.0f

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public Sj(Lcom/bytedance/adsdk/ugeno/yoga/aa;FLcom/bytedance/adsdk/ugeno/yoga/TEQ;FLcom/bytedance/adsdk/ugeno/yoga/TEQ;)J
    .locals 1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->uA()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/bytedance/adsdk/ugeno/yoga/Dq;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    float-to-int p2, p2

    invoke-direct {p0, p3}, Lcom/bytedance/adsdk/ugeno/yoga/Dq$sP;->Sj(Lcom/bytedance/adsdk/ugeno/yoga/TEQ;)I

    move-result p3

    invoke-static {p2, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    float-to-int p3, p4

    invoke-direct {p0, p5}, Lcom/bytedance/adsdk/ugeno/yoga/Dq$sP;->Sj(Lcom/bytedance/adsdk/ugeno/yoga/TEQ;)I

    move-result p4

    invoke-static {p3, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-static {p2, p1}, Lcom/bytedance/adsdk/ugeno/yoga/Ym;->Sj(II)J

    move-result-wide p1

    return-wide p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-static {p1, p1}, Lcom/bytedance/adsdk/ugeno/yoga/Ym;->Sj(II)J

    move-result-wide p1

    return-wide p1
.end method
