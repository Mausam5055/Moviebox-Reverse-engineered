.class public Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private Dq:I

.field public EjP:I

.field private Fmk:I

.field private HiB:Ly5/b;

.field private Jcg:Ljava/lang/String;

.field private RiZ:I

.field public Sj:Ljava/lang/String;

.field private TEQ:I

.field public final TKC:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private TzV:I

.field private Ym:Ljava/lang/String;

.field private Zq:J

.field private aa:I

.field private dNu:Z

.field private dx:I

.field private ib:I

.field private kF:Lorg/json/JSONObject;

.field public sP:I

.field private sU:I

.field private sef:Ljava/lang/String;

.field private uA:I

.field private uvD:Z

.field private vS:Ly5/b;

.field private zR:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ly5/b;Ly5/b;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x32000

    iput v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Dq:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->uA:I

    iput v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TEQ:I

    iput v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TzV:I

    iput v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->RiZ:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TKC:Ljava/util/HashMap;

    const/16 v1, 0x2710

    iput v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sU:I

    iput v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->dx:I

    iput v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->zR:I

    iput v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->ib:I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->kF:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Jcg:Ljava/lang/String;

    iput-object p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->HiB:Ly5/b;

    iput-object p3, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->vS:Ly5/b;

    iput p4, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TzV:I

    iput p5, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->RiZ:I

    return-void
.end method


# virtual methods
.method public Dq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->uvD:Z

    return v0
.end method

.method public EjP(I)V
    .locals 0

    iput p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sU:I

    return-void
.end method

.method public EjP(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj:Ljava/lang/String;

    return-void
.end method

.method public EjP()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->dNu:Z

    return v0
.end method

.method public Fmk()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Ym()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->vS:Ly5/b;

    invoke-virtual {v0}, Ly5/b;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->HiB:Ly5/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ly5/b;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public HiB()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->aa:I

    return v0
.end method

.method public declared-synchronized HiB(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TKC:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public HiB(I)V
    .locals 0

    iput p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->dx:I

    return-void
.end method

.method public Jcg()J
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Zq:J

    return-wide v0
.end method

.method public Jcg(I)V
    .locals 0

    iput p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->ib:I

    return-void
.end method

.method public RiZ()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->ib:I

    return v0
.end method

.method public Sj()I
    .locals 3

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->kF:Lorg/json/JSONObject;

    const-string v1, "pitaya_cache_size"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Sj(I)V
    .locals 0

    iput p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->aa:I

    return-void
.end method

.method public Sj(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Zq:J

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Jcg:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized Sj(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TKC:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public Sj(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->uvD:Z

    return-void
.end method

.method public TEQ()Z
    .locals 1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Ym()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->vS:Ly5/b;

    invoke-virtual {v0}, Ly5/b;->B()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->HiB:Ly5/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ly5/b;->B()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public TKC()I
    .locals 1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Ym()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->vS:Ly5/b;

    invoke-virtual {v0}, Ly5/b;->y()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->HiB:Ly5/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ly5/b;->y()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public TKC(I)V
    .locals 0

    iput p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sP:I

    return-void
.end method

.method public TKC(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sef:Ljava/lang/String;

    return-void
.end method

.method public TzV()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->zR:I

    return v0
.end method

.method public Ym()Z
    .locals 3

    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->RiZ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->vS:Ly5/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ly5/b;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lt5/b;->j()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TzV:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public Zq()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TzV:I

    return v0
.end method

.method public aa()F
    .locals 1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Ym()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->vS:Ly5/b;

    invoke-virtual {v0}, Ly5/b;->a()F

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->HiB:Ly5/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ly5/b;->a()F

    move-result v0

    return v0

    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public dNu()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->dx:I

    return v0
.end method

.method public dx()Ly5/b;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->vS:Ly5/b;

    return-object v0
.end method

.method public sP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Jcg:Ljava/lang/String;

    return-object v0
.end method

.method public sP(I)V
    .locals 0

    iput p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Fmk:I

    return-void
.end method

.method public sP(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Ym:Ljava/lang/String;

    return-void
.end method

.method public sU()Ly5/b;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->HiB:Ly5/b;

    return-object v0
.end method

.method public sef()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Ym()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->vS:Ly5/b;

    invoke-virtual {v0}, Ly5/b;->G()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->HiB:Ly5/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ly5/b;->G()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public uA()J
    .locals 2

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Ym()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->vS:Ly5/b;

    invoke-virtual {v0}, Ly5/b;->g()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->HiB:Ly5/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ly5/b;->g()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public uvD()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sU:I

    return v0
.end method

.method public vS()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Fmk:I

    return v0
.end method

.method public vS(I)V
    .locals 0

    iput p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->zR:I

    return-void
.end method
