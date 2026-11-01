.class public Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/Dq/TKC/vS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sj"
.end annotation


# instance fields
.field private Dq:I

.field private EjP:I

.field private HiB:J

.field private Jcg:Ljava/util/concurrent/TimeUnit;

.field private Sj:Ljava/lang/String;

.field private TEQ:Z

.field private TKC:I

.field private Ym:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private aa:Ljava/util/concurrent/ThreadFactory;

.field private sP:I

.field private uA:I

.field private vS:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "cache"

    iput-object v0, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->sP:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->TKC:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->EjP:I

    const-wide/16 v1, 0x7530

    iput-wide v1, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->HiB:J

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->vS:Z

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v1, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Jcg:Ljava/util/concurrent/TimeUnit;

    const/4 v1, -0x1

    iput v1, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Dq:I

    const/16 v1, 0x14

    iput v1, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->uA:I

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->TEQ:Z

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Ym:Ljava/util/concurrent/BlockingQueue;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->aa:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method static synthetic Dq(Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->EjP:I

    return p0
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Ym:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;)Ljava/util/concurrent/ThreadFactory;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->aa:Ljava/util/concurrent/ThreadFactory;

    return-object p0
.end method

.method static synthetic Jcg(Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->TKC:I

    return p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->sP:I

    return p0
.end method

.method static synthetic TEQ(Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->TEQ:Z

    return p0
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;)Ljava/util/concurrent/TimeUnit;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Jcg:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method static synthetic Ym(Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->vS:Z

    return p0
.end method

.method static synthetic aa(Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Dq:I

    return p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->HiB:J

    return-wide v0
.end method

.method static synthetic uA(Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->uA:I

    return p0
.end method

.method static synthetic vS(Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public EjP(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->uA:I

    return-object p0
.end method

.method public HiB(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Dq:I

    return-object p0
.end method

.method public Sj(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->sP:I

    return-object p0
.end method

.method public Sj(J)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->HiB:J

    return-object p0
.end method

.method public Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj:Ljava/lang/String;

    return-object p0
.end method

.method public Sj(Z)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->vS:Z

    return-object p0
.end method

.method public Sj()Lcom/bytedance/sdk/component/Dq/TKC/vS;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->aa:Ljava/util/concurrent/ThreadFactory;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/component/Dq/TKC/EjP;

    iget-object v1, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/Dq/TKC/EjP;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->aa:Ljava/util/concurrent/ThreadFactory;

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->sP:I

    if-gez v0, :cond_1

    const/16 v0, 0x8

    iput v0, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->sP:I

    :cond_1
    iget v0, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->sP:I

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Ym:Ljava/util/concurrent/BlockingQueue;

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Ym:Ljava/util/concurrent/BlockingQueue;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Ym:Ljava/util/concurrent/BlockingQueue;

    :cond_3
    iget v0, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->TKC:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_4

    iput v1, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->TKC:I

    :cond_4
    iget v0, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->TKC:I

    iget v2, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->sP:I

    if-ge v0, v2, :cond_5

    iput v2, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->TKC:I

    :cond_5
    iget v0, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->uA:I

    if-gez v0, :cond_6

    const/16 v0, 0x14

    iput v0, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->uA:I

    :cond_6
    iget v0, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->uA:I

    if-le v0, v1, :cond_7

    iput v1, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->uA:I

    :cond_7
    new-instance v0, Lcom/bytedance/sdk/component/Dq/TKC/vS;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/component/Dq/TKC/vS;-><init>(Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;Lcom/bytedance/sdk/component/Dq/TKC/vS$1;)V

    return-object v0
.end method

.method public TKC(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->EjP:I

    return-object p0
.end method

.method public sP(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->TKC:I

    return-object p0
.end method

.method public sP(Z)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->TEQ:Z

    return-object p0
.end method
