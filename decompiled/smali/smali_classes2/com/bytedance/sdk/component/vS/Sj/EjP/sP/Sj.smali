.class public Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;
.super Ljava/lang/Object;


# instance fields
.field private Sj:I

.field private sP:I


# direct methods
.method constructor <init>(IIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lt p2, p1, :cond_0

    iput p1, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;->Sj:I

    iput p2, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;->sP:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "atMostBatchSendCount should meet a condition (atMostBatchSendCount >= maxCacheCount)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static EjP()Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;
    .locals 5

    new-instance v0, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    const/16 v1, 0x64

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;-><init>(IIJ)V

    return-object v0
.end method

.method public static HiB()Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;
    .locals 5

    new-instance v0, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    const/16 v1, 0x64

    const-wide/32 v2, 0xa4cb800

    const/4 v4, 0x3

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;-><init>(IIJ)V

    return-object v0
.end method

.method public static TKC()Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;
    .locals 5

    new-instance v0, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    const/16 v1, 0x64

    const-wide/32 v2, 0xa4cb800

    const/4 v4, 0x1

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;-><init>(IIJ)V

    return-object v0
.end method


# virtual methods
.method public Sj()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;->Sj:I

    return v0
.end method

.method public sP()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;->sP:I

    return v0
.end method
