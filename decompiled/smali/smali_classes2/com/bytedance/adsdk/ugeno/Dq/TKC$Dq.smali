.class Lcom/bytedance/adsdk/ugeno/Dq/TKC$Dq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/ugeno/Dq/TKC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Dq"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Landroid/view/View;Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;

    iget-boolean v0, p1, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;->Sj:Z

    iget-boolean v1, p2, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;->Sj:Z

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1

    :cond_1
    iget p1, p1, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;->HiB:I

    iget p2, p2, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;->HiB:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/adsdk/ugeno/Dq/TKC$Dq;->Sj(Landroid/view/View;Landroid/view/View;)I

    move-result p1

    return p1
.end method
