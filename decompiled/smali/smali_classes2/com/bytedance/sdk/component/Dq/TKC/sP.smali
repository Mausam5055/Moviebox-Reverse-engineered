.class public abstract Lcom/bytedance/sdk/component/Dq/TKC/sP;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/bytedance/sdk/component/Dq/TKC/sP;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private EjP:J

.field private HiB:J

.field private Sj:I

.field private TKC:Ljava/lang/Runnable;

.field private sP:Ljava/lang/String;

.field private vS:J


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bytedance/sdk/component/Dq/TKC/sP;->Sj:I

    iput-object p2, p0, Lcom/bytedance/sdk/component/Dq/TKC/sP;->sP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/bytedance/sdk/component/Dq/TKC/sP;->Sj:I

    iput-object p1, p0, Lcom/bytedance/sdk/component/Dq/TKC/sP;->sP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/bytedance/sdk/component/Dq/TKC/sP;->Sj:I

    iput-object p1, p0, Lcom/bytedance/sdk/component/Dq/TKC/sP;->sP:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/sdk/component/Dq/TKC/sP;->TKC:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public Dq()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/Dq/TKC/sP;->TKC:Ljava/lang/Runnable;

    return-object v0
.end method

.method public EjP()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/Dq/TKC/sP;->HiB:J

    return-wide v0
.end method

.method public HiB()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/Dq/TKC/sP;->vS:J

    return-wide v0
.end method

.method public Jcg()J
    .locals 4

    iget-wide v0, p0, Lcom/bytedance/sdk/component/Dq/TKC/sP;->vS:J

    iget-wide v2, p0, Lcom/bytedance/sdk/component/Dq/TKC/sP;->HiB:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public Sj()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/Dq/TKC/sP;->Sj:I

    return v0
.end method

.method public Sj(Lcom/bytedance/sdk/component/Dq/TKC/sP;)I
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Dq/TKC/sP;->Sj()I

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Dq/TKC/sP;->Sj()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Dq/TKC/sP;->Sj()I

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Dq/TKC/sP;->Sj()I

    move-result p1

    if-lt v0, p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public Sj(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/Dq/TKC/sP;->Sj:I

    return-void
.end method

.method public Sj(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/component/Dq/TKC/sP;->EjP:J

    return-void
.end method

.method public TKC()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/Dq/TKC/sP;->EjP:J

    return-wide v0
.end method

.method public TKC(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/component/Dq/TKC/sP;->vS:J

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/bytedance/sdk/component/Dq/TKC/sP;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/Dq/TKC/sP;->Sj(Lcom/bytedance/sdk/component/Dq/TKC/sP;)I

    move-result p1

    return p1
.end method

.method public sP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/Dq/TKC/sP;->sP:Ljava/lang/String;

    return-object v0
.end method

.method public sP(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/component/Dq/TKC/sP;->HiB:J

    return-void
.end method

.method public vS()J
    .locals 4

    iget-wide v0, p0, Lcom/bytedance/sdk/component/Dq/TKC/sP;->HiB:J

    iget-wide v2, p0, Lcom/bytedance/sdk/component/Dq/TKC/sP;->EjP:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
