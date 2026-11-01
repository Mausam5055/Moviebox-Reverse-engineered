.class Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;
.super Ljava/lang/Object;

# interfaces
.implements Lt5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/TKC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Sj"
.end annotation


# instance fields
.field private final Dq:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

.field private EjP:Landroid/os/CountDownTimer;

.field private HiB:Lu5/b$b;

.field private final Jcg:Lz5/a;

.field private final Sj:J

.field private TKC:I

.field private sP:J

.field private vS:J


# direct methods
.method public constructor <init>(JLz5/a;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->TKC:I

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->Sj:J

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->Jcg:Lz5/a;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->Dq:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    return-void
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;)Lu5/b$b;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->HiB:Lu5/b$b;

    return-object p0
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;)Lz5/a;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->Jcg:Lz5/a;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->TKC:I

    return p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->vS:J

    return-wide v0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->vS:J

    return-wide p1
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->sP:J

    return-wide v0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->Sj:J

    return-wide v0
.end method

.method static synthetic vS(Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;)Lcom/bytedance/sdk/openadsdk/EjP/Jcg;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->Dq:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    return-object p0
.end method


# virtual methods
.method public Dq()Z
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->TKC:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public EjP()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Fmk()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public HiB()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Jcg()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->TKC:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Sj(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->sP:J

    return-void
.end method

.method public Sj(Lu5/b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->HiB:Lu5/b$b;

    return-void
.end method

.method public Sj()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public TEQ()V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->TKC:I

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->vS:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->sP:J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->EjP:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->EjP:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method public TKC()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Ym()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->TKC:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->EjP:Landroid/os/CountDownTimer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->EjP:Landroid/os/CountDownTimer;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->HiB:Lu5/b$b;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->HiB:Lu5/b$b;

    :cond_1
    return-void
.end method

.method public Zq()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->vS:J

    return-wide v0
.end method

.method public aa()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public sP()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sef()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->Sj:J

    return-wide v0
.end method

.method public uA()V
    .locals 12

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->TKC:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->TKC:I

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->sef()J

    move-result-wide v10

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->sP:J

    sub-long v8, v10, v0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj$1;

    const-wide/16 v6, 0xc8

    move-object v2, v0

    move-object v3, p0

    move-wide v4, v8

    invoke-direct/range {v2 .. v11}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;JJJJ)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->EjP:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public vS()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->TKC:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
