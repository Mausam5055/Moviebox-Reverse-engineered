.class final Lcom/bytedance/adsdk/ugeno/Dq/TKC$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/ugeno/Dq/TKC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;",
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
.method public Sj(Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;)I
    .locals 0

    iget p1, p1, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    iget p2, p2, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    check-cast p2, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/adsdk/ugeno/Dq/TKC$1;->Sj(Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;)I

    move-result p1

    return p1
.end method
