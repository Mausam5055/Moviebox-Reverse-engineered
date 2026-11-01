.class public Lcom/bytedance/sdk/openadsdk/component/reward/TKC;
.super Ljava/lang/Object;

# interfaces
.implements Lu5/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;
    }
.end annotation


# instance fields
.field private Dq:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;

.field private EjP:Z

.field private HiB:Z

.field private final Jcg:Lz5/a;

.field private final Sj:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

.field private TKC:J

.field private sP:Z

.field private final vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->sP:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->TKC:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->EjP:Z

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/TKC;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Jcg:Lz5/a;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object p1

    const-wide/16 v3, 0xa

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ly5/b;->K()D

    move-result-wide v5

    double-to-long v5, v5

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    cmp-long v0, v5, v0

    if-gtz v0, :cond_1

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-virtual {p1, v0, v1}, Ly5/b;->n(D)V

    goto :goto_1

    :cond_1
    move-wide v3, v5

    :goto_1
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    const-wide/16 v0, 0x3e8

    mul-long/2addr v3, v0

    invoke-direct {p1, v3, v4, v2, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;-><init>(JLz5/a;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    return-void
.end method


# virtual methods
.method public Dq()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->sef()J

    move-result-wide v0

    return-wide v0
.end method

.method public EjP()V
    .locals 0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->TKC()V

    return-void
.end method

.method public EjP(Z)V
    .locals 0

    return-void
.end method

.method public Fmk()Lu5/c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public HiB()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->Zq()J

    move-result-wide v0

    return-wide v0
.end method

.method public Jcg()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Sj()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->TEQ()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->HiB()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Dq()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->vS()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP(J)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Jcg:Lz5/a;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lz5/a;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Dq:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;->Sj(I)V

    :cond_0
    return-void
.end method

.method public Sj(J)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->Sj(J)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Dq:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;

    return-void
.end method

.method public Sj(Lu5/b$a;)V
    .locals 0

    return-void
.end method

.method public Sj(Lu5/b$b;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->Sj(Lu5/b$b;)V

    return-void
.end method

.method public Sj(Lu5/b$d;)V
    .locals 0

    return-void
.end method

.method public Sj(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->sP:Z

    return-void
.end method

.method public Sj(ZI)V
    .locals 0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->TKC()V

    return-void
.end method

.method public Sj(ZLjava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->EjP:Z

    return-void
.end method

.method public Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Dq()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->EjP:Z

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Jcg()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Jcg()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->Sj(J)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Jcg:Lz5/a;

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lz5/a;Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->uA()V

    const/4 p1, 0x1

    return p1
.end method

.method public TEQ()I
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->sP(Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lc6/a;->a(JJ)I

    move-result v0

    return v0
.end method

.method public TKC()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->Ym()V

    return-void
.end method

.method public TKC(J)V
    .locals 0

    return-void
.end method

.method public TKC(Z)V
    .locals 0

    return-void
.end method

.method public TzV()Lz5/a;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Jcg:Lz5/a;

    return-object v0
.end method

.method public Ym()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Zq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->HiB:Z

    return v0
.end method

.method public aa()Lt5/a;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    return-object v0
.end method

.method public dNu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sP()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->uA()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->HiB()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Dq()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->vS()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP(J)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Jcg:Lz5/a;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->sP(Lz5/a;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Dq:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;->Sj(I)V

    :cond_0
    return-void
.end method

.method public sP(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->TKC:J

    return-void
.end method

.method public sP(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V
    .locals 0

    return-void
.end method

.method public sP(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->HiB:Z

    return-void
.end method

.method public sef()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->EjP:Z

    return v0
.end method

.method public uA()J
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->HiB()J

    move-result-wide v0

    return-wide v0
.end method

.method public uvD()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public vS()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
