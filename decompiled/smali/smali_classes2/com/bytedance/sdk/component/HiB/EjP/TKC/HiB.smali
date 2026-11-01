.class public Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/HiB/Fmk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB$Sj;
    }
.end annotation


# instance fields
.field private Dq:Lcom/bytedance/sdk/component/HiB/sU;

.field private EjP:Lcom/bytedance/sdk/component/HiB/dNu;

.field private HiB:Lcom/bytedance/sdk/component/HiB/TzV;

.field private Jcg:Lcom/bytedance/sdk/component/HiB/sP;

.field private Sj:Lcom/bytedance/sdk/component/HiB/aa;

.field private TKC:Lcom/bytedance/sdk/component/HiB/EjP;

.field private sP:Ljava/util/concurrent/ExecutorService;

.field private uA:Lcom/bytedance/sdk/component/HiB/dx;

.field private vS:Lcom/bytedance/sdk/component/HiB/TKC;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB$Sj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB$Sj;->Sj(Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB$Sj;)Lcom/bytedance/sdk/component/HiB/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB;->Sj:Lcom/bytedance/sdk/component/HiB/aa;

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB$Sj;->sP(Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB$Sj;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB;->sP:Ljava/util/concurrent/ExecutorService;

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB$Sj;->TKC(Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB$Sj;)Lcom/bytedance/sdk/component/HiB/EjP;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB;->TKC:Lcom/bytedance/sdk/component/HiB/EjP;

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB$Sj;->EjP(Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB$Sj;)Lcom/bytedance/sdk/component/HiB/dNu;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB;->EjP:Lcom/bytedance/sdk/component/HiB/dNu;

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB$Sj;->HiB(Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB$Sj;)Lcom/bytedance/sdk/component/HiB/TzV;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB;->HiB:Lcom/bytedance/sdk/component/HiB/TzV;

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB$Sj;->vS(Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB$Sj;)Lcom/bytedance/sdk/component/HiB/TKC;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB;->vS:Lcom/bytedance/sdk/component/HiB/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB$Sj;->Jcg(Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB$Sj;)Lcom/bytedance/sdk/component/HiB/sP;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB;->Jcg:Lcom/bytedance/sdk/component/HiB/sP;

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB$Sj;->Dq(Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB$Sj;)Lcom/bytedance/sdk/component/HiB/sU;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB;->Dq:Lcom/bytedance/sdk/component/HiB/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB$Sj;->uA(Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB$Sj;)Lcom/bytedance/sdk/component/HiB/dx;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB;->uA:Lcom/bytedance/sdk/component/HiB/dx;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB$Sj;Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB;-><init>(Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB$Sj;)V

    return-void
.end method

.method public static Sj(Landroid/content/Context;)Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB;
    .locals 0

    new-instance p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB$Sj;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB$Sj;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB$Sj;->Sj()Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Dq()Lcom/bytedance/sdk/component/HiB/sP;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB;->Jcg:Lcom/bytedance/sdk/component/HiB/sP;

    return-object v0
.end method

.method public EjP()Lcom/bytedance/sdk/component/HiB/EjP;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB;->TKC:Lcom/bytedance/sdk/component/HiB/EjP;

    return-object v0
.end method

.method public HiB()Lcom/bytedance/sdk/component/HiB/dNu;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB;->EjP:Lcom/bytedance/sdk/component/HiB/dNu;

    return-object v0
.end method

.method public Jcg()Lcom/bytedance/sdk/component/HiB/TKC;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB;->vS:Lcom/bytedance/sdk/component/HiB/TKC;

    return-object v0
.end method

.method public Sj()Lcom/bytedance/sdk/component/HiB/aa;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB;->Sj:Lcom/bytedance/sdk/component/HiB/aa;

    return-object v0
.end method

.method public TKC()Lcom/bytedance/sdk/component/HiB/sU;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB;->Dq:Lcom/bytedance/sdk/component/HiB/sU;

    return-object v0
.end method

.method public sP()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB;->sP:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public uA()Lcom/bytedance/sdk/component/HiB/dx;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB;->uA:Lcom/bytedance/sdk/component/HiB/dx;

    return-object v0
.end method

.method public vS()Lcom/bytedance/sdk/component/HiB/TzV;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB;->HiB:Lcom/bytedance/sdk/component/HiB/TzV;

    return-object v0
.end method
