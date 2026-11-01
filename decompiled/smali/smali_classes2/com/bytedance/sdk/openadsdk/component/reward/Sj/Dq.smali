.class public Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;
.super Ljava/lang/Object;


# static fields
.field public static Sj:I = 0x0

.field public static TKC:I = 0x2

.field public static sP:I = 0x1


# instance fields
.field private final EjP:Z

.field private HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->pR()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->EjP:Z

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->vS(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;

    invoke-direct {p2, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;

    invoke-direct {p2, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    :goto_0
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;

    return-void

    :cond_1
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    invoke-direct {p2, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    return-void
.end method


# virtual methods
.method public Dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->sP()V

    :cond_0
    return-void
.end method

.method public Dq(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->EjP:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->sP:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->TEQ()Z

    move-result p1

    return p1

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Dq()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public EjP()Lcom/bytedance/sdk/openadsdk/sU/Dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->TzV()Lcom/bytedance/sdk/openadsdk/sU/Dq;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public EjP(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->EjP(Z)V

    :cond_0
    return-void
.end method

.method public EjP(I)Z
    .locals 3

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->EjP:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->uA()Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->uA()I

    move-result v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->TEQ()I

    move-result v2

    sub-int/2addr v0, v2

    if-lt v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public Fmk()V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->EjP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->EjP()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Ym()V

    :cond_1
    return-void
.end method

.method public HiB()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->vS()V

    :cond_0
    return-void
.end method

.method public HiB(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->EjP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;

    if-eqz v0, :cond_1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Sj(J)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Sj(J)V

    :cond_1
    return-void
.end method

.method public HiB(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->HiB(Z)V

    :cond_0
    return-void
.end method

.method public Jcg(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->EjP:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->TKC:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->vS()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_1

    sget v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->sP:I

    if-eq p1, v1, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->TKC()V

    :cond_1
    return-void
.end method

.method public Jcg()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Zq()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Sj(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Sj(I)V

    :cond_0
    return-void
.end method

.method public Sj(ILcom/bytedance/sdk/openadsdk/core/model/sU;Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Sj(ILcom/bytedance/sdk/openadsdk/core/model/sU;Z)V

    :cond_0
    return-void
.end method

.method public Sj(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Sj(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Sj(Landroid/webkit/DownloadListener;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Sj(Landroid/webkit/DownloadListener;)V

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/aa/vS;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->EjP:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->sP(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Sj(Lcom/bytedance/sdk/openadsdk/aa/vS;Z)V

    :cond_1
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/sP/HiB;)V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->EjP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Sj(Lcom/bytedance/sdk/openadsdk/core/sP/HiB;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Sj(Lcom/bytedance/sdk/openadsdk/core/sP/HiB;)V

    :cond_1
    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->TKC(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Sj(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Sj(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public Sj(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->sP(Z)V

    :cond_0
    return-void
.end method

.method public Sj(ZLjava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Sj(ZLjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public Sj()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->dNu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public TEQ()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->HiB()V

    :cond_0
    return-void
.end method

.method public TKC(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->sP(I)V

    :cond_0
    return-void
.end method

.method public TKC(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Sj(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public TKC(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Sj(Z)V

    :cond_0
    return-void
.end method

.method public TKC()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->uvD()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public TzV()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->TKC()V

    :cond_0
    return-void
.end method

.method public Ym()Lcom/bytedance/sdk/openadsdk/aa/HiB;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->sef()Lcom/bytedance/sdk/openadsdk/aa/HiB;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public Zq()V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->EjP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Sj()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Sj()V

    :cond_1
    return-void
.end method

.method public aa()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->EjP()V

    :cond_0
    return-void
.end method

.method public dNu()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Ym()V

    :cond_0
    return-void
.end method

.method public sP()F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->TEQ()I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public sP(I)I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->TKC(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public sP(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->sP(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sP(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->vS(Z)V

    :cond_0
    return-void
.end method

.method public sef()V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->EjP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Dq()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Fmk()V

    :cond_1
    return-void
.end method

.method public uA()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->uA()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public uvD()V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->EjP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->HiB()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->aa()V

    :cond_1
    return-void
.end method

.method public vS()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Jcg()V

    :cond_0
    return-void
.end method

.method public vS(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->EjP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Sj(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->HiB(I)V

    :cond_1
    return-void
.end method

.method public vS(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->TKC(Z)V

    :cond_0
    return-void
.end method
