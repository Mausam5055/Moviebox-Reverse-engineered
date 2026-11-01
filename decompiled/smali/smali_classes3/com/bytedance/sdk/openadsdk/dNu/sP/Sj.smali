.class public Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;
.super Ljava/lang/Object;


# instance fields
.field private Dq:Ljava/lang/String;

.field private EjP:I

.field private Fmk:Ljava/lang/String;

.field private HiB:I

.field private Jcg:Ljava/lang/String;

.field private Sj:J

.field private TEQ:J

.field private TKC:Ljava/lang/String;

.field private Ym:Ljava/lang/String;

.field private aa:I

.field private sP:Ljava/lang/String;

.field private uA:Ljava/lang/String;

.field private vS:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Sj:J

    const-string v0, ""

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->sP:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->TKC:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Jcg:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Dq:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->uA:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->TEQ:J

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Ym:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->aa:I

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Fmk:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Dq:Ljava/lang/String;

    return-object v0
.end method

.method public EjP()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->EjP:I

    return v0
.end method

.method public EjP(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->aa:I

    return-void
.end method

.method public EjP(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Dq:Ljava/lang/String;

    return-void
.end method

.method public Fmk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Fmk:Ljava/lang/String;

    return-object v0
.end method

.method public HiB()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->HiB:I

    return v0
.end method

.method public HiB(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->uA:Ljava/lang/String;

    return-void
.end method

.method public Jcg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Jcg:Ljava/lang/String;

    return-object v0
.end method

.method public Jcg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Fmk:Ljava/lang/String;

    return-void
.end method

.method public Sj()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Sj:J

    return-wide v0
.end method

.method public Sj(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->EjP:I

    return-void
.end method

.method public Sj(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Sj:J

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->sP:Ljava/lang/String;

    return-void
.end method

.method public TEQ()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->TEQ:J

    return-wide v0
.end method

.method public TKC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->TKC:Ljava/lang/String;

    return-object v0
.end method

.method public TKC(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->vS:I

    return-void
.end method

.method public TKC(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Jcg:Ljava/lang/String;

    return-void
.end method

.method public Ym()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Ym:Ljava/lang/String;

    return-object v0
.end method

.method public aa()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->aa:I

    return v0
.end method

.method public sP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->sP:Ljava/lang/String;

    return-object v0
.end method

.method public sP(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->HiB:I

    return-void
.end method

.method public sP(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->TEQ:J

    return-void
.end method

.method public sP(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->TKC:Ljava/lang/String;

    return-void
.end method

.method public uA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->uA:Ljava/lang/String;

    return-object v0
.end method

.method public vS()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->vS:I

    return v0
.end method

.method public vS(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Ym:Ljava/lang/String;

    return-void
.end method
