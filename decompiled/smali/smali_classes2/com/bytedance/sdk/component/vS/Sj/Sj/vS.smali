.class public Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/vS/Sj/Sj/EjP;


# instance fields
.field private Dq:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

.field private EjP:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/sP;

.field private Fmk:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

.field private HiB:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/Jcg;

.field private Jcg:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/vS;

.field Sj:Lcom/bytedance/sdk/component/vS/Sj/Sj/HiB;

.field private TEQ:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

.field private TKC:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/Sj;

.field private Ym:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

.field private aa:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

.field private sP:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/HiB;

.field private sef:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uA:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

.field private vS:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/TKC;


# direct methods
.method public constructor <init>(Ljava/util/Queue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->sef:Ljava/util/Queue;

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->EjP()Lcom/bytedance/sdk/component/vS/Sj/Sj/HiB;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->Sj:Lcom/bytedance/sdk/component/vS/Sj/Sj/HiB;

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->Sj()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->aa()Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->Dq:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    new-instance v1, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/HiB;

    invoke-direct {v1, v0, p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/HiB;-><init>(Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;Ljava/util/Queue;)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->sP:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/HiB;

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->HiB()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->TEQ()Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->TEQ()Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->TEQ:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Fmk()Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->TEQ:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    :goto_0
    new-instance v0, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/sP;

    iget-object v1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->TEQ:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/sP;-><init>(Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;Ljava/util/Queue;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->EjP:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/sP;

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->sP()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Fmk()Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->uA:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    new-instance v1, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/Sj;

    invoke-direct {v1, v0, p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/Sj;-><init>(Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;Ljava/util/Queue;)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->TKC:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/Sj;

    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->TKC()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Fmk()Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->Ym:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    new-instance v1, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/Jcg;

    invoke-direct {v1, v0, p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/Jcg;-><init>(Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;Ljava/util/Queue;)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->HiB:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/Jcg;

    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->EjP()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->sef()Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->aa:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    new-instance v1, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/TKC;

    invoke-direct {v1, v0, p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/TKC;-><init>(Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;Ljava/util/Queue;)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->vS:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/TKC;

    :cond_5
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->vS()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Zq()Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->Fmk:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    new-instance v1, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/vS;

    invoke-direct {v1, v0, p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/vS;-><init>(Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;Ljava/util/Queue;)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->Jcg:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/vS;

    :cond_6
    return-void
.end method


# virtual methods
.method public Sj(IILjava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->Sj()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->sP:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/HiB;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/EjP;->sP(II)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->sP:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/HiB;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/EjP;->Sj(II)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;->EjP:Lcom/bytedance/sdk/component/vS/Sj/sP/Sj/Sj;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj/Sj;->TzV()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/vS/Sj/TKC/sP;->Sj(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return-object p3

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->HiB()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->EjP:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/sP;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/EjP;->sP(II)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->EjP:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/sP;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/EjP;->Sj(II)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    return-object p3

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->sP()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->TKC:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/Sj;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/EjP;->sP(II)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->TKC:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/Sj;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/EjP;->Sj(II)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object p1, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;->EjP:Lcom/bytedance/sdk/component/vS/Sj/sP/Sj/Sj;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj/Sj;->RiZ()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/vS/Sj/TKC/sP;->Sj(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return-object p3

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->TKC()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->HiB:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/Jcg;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/EjP;->sP(II)Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->HiB:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/Jcg;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/EjP;->Sj(II)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object p1, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;->EjP:Lcom/bytedance/sdk/component/vS/Sj/sP/Sj/Sj;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj/Sj;->sU()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/vS/Sj/TKC/sP;->Sj(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return-object p3

    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->EjP()Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->vS:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/TKC;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/EjP;->sP(II)Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->vS:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/TKC;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/EjP;->Sj(II)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_4

    sget-object p1, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;->EjP:Lcom/bytedance/sdk/component/vS/Sj/sP/Sj/Sj;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj/Sj;->dx()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/vS/Sj/TKC/sP;->Sj(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return-object p3

    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->vS()Z

    move-result p3

    if-eqz p3, :cond_5

    iget-object p3, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->Jcg:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/vS;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/EjP;->sP(II)Z

    move-result p3

    if-eqz p3, :cond_5

    iget-object p3, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->Jcg:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/vS;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/EjP;->Sj(II)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_5

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public Sj(IJ)V
    .locals 0

    return-void
.end method

.method public Sj(ILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->HiB()B

    move-result v1

    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->EjP()B

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->Sj()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->sP:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/HiB;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/EjP;->Sj(ILjava/util/List;)V

    return-void

    :cond_0
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne v0, v3, :cond_1

    if-ne v1, v4, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->HiB()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->EjP:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/sP;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/EjP;->Sj(ILjava/util/List;)V

    return-void

    :cond_1
    if-nez v0, :cond_2

    if-ne v1, v4, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->sP()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->TKC:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/Sj;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/EjP;->Sj(ILjava/util/List;)V

    return-void

    :cond_2
    if-ne v0, v2, :cond_3

    if-ne v1, v4, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->TKC()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->HiB:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/Jcg;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/EjP;->Sj(ILjava/util/List;)V

    return-void

    :cond_3
    if-ne v0, v2, :cond_4

    if-ne v1, v3, :cond_4

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->EjP()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->vS:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/TKC;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/EjP;->Sj(ILjava/util/List;)V

    return-void

    :cond_4
    if-ne v0, v4, :cond_5

    if-ne v1, v3, :cond_5

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->vS()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->Jcg:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/vS;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/EjP;->Sj(ILjava/util/List;)V

    :cond_5
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;I)V
    .locals 5

    :try_start_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->EjP()B

    move-result p2

    invoke-interface {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->HiB()B

    move-result v0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->Sj()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p2, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->sP:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/HiB;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/EjP;->Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;)V

    return-void

    :cond_0
    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne p2, v2, :cond_1

    if-ne v0, v3, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->HiB()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object p2, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->EjP:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/sP;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/EjP;->Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    if-ne v0, v3, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->sP()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object p2, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->TKC:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/Sj;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/EjP;->Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;)V

    return-void

    :cond_2
    if-ne p2, v1, :cond_3

    if-ne v0, v3, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->TKC()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object p2, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->HiB:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/Jcg;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/EjP;->Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;)V

    return-void

    :cond_3
    if-ne p2, v1, :cond_4

    if-ne v0, v2, :cond_4

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->EjP()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p2, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->vS:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/TKC;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/EjP;->Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;)V

    return-void

    :cond_4
    if-ne p2, v3, :cond_5

    if-ne v0, v2, :cond_5

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->vS()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->Jcg:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/vS;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/EjP;->Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_5
    return-void
.end method

.method public Sj(IZ)Z
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->Sj()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->sP:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/HiB;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->Dq:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;->Sj()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/EjP;->sP(II)Z

    move-result p2

    if-nez p2, :cond_5

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->HiB()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->EjP:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/sP;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->TEQ:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;->Sj()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/EjP;->sP(II)Z

    move-result p2

    if-nez p2, :cond_5

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->sP()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->TKC:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/Sj;

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->uA:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;->Sj()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/EjP;->sP(II)Z

    move-result p2

    if-nez p2, :cond_5

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->TKC()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->HiB:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/Jcg;

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->Ym:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;->Sj()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/EjP;->sP(II)Z

    move-result p2

    if-nez p2, :cond_5

    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->EjP()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->vS:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/TKC;

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->aa:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;->Sj()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/EjP;->sP(II)Z

    move-result p2

    if-nez p2, :cond_5

    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->vS()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->Jcg:Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/vS;

    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/vS;->Fmk:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;->Sj()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/sP/EjP;->sP(II)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    const/4 p1, 0x1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method
