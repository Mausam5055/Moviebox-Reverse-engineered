.class public Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sj"
.end annotation


# instance fields
.field private Dq:I

.field private EjP:Z

.field private HiB:I

.field private Jcg:I

.field private Sj:J

.field private TEQ:Z

.field private TKC:J

.field private Ym:Ly5/a;

.field private sP:J

.field private uA:I

.field private vS:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->EjP:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TEQ:Z

    return-void
.end method

.method private Fmk()V
    .locals 7

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj:J

    cmp-long v6, v4, v0

    if-lez v6, :cond_0

    rem-long/2addr v4, v0

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj:J

    :cond_0
    return-void
.end method


# virtual methods
.method public Dq()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Dq:I

    return v0
.end method

.method public EjP()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->HiB:I

    return v0
.end method

.method public EjP(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->uA:I

    return-void
.end method

.method public HiB()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->vS:I

    return v0
.end method

.method public Jcg()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Jcg:I

    return v0
.end method

.method public Sj()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj:J

    return-wide v0
.end method

.method public Sj(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->HiB:I

    return-void
.end method

.method public Sj(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj:J

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Fmk()V

    return-void
.end method

.method public Sj(Ly5/a;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Ym:Ly5/a;

    return-void
.end method

.method public Sj(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->EjP:Z

    return-void
.end method

.method public TEQ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TEQ:Z

    return v0
.end method

.method public TKC()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC:J

    return-wide v0
.end method

.method public TKC(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Jcg:I

    return-void
.end method

.method public TKC(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC:J

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Fmk()V

    return-void
.end method

.method public Ym()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->EjP:Z

    return v0
.end method

.method public aa()Ly5/a;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Ym:Ly5/a;

    return-object v0
.end method

.method public sP()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP:J

    return-wide v0
.end method

.method public sP(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->vS:I

    return-void
.end method

.method public sP(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP:J

    return-void
.end method

.method public uA()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->uA:I

    return v0
.end method

.method public vS()I
    .locals 6

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj:J

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    div-long/2addr v2, v0

    long-to-int v0, v2

    const/16 v1, 0x64

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method
