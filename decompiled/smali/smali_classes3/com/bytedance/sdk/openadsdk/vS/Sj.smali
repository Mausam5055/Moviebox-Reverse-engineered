.class public Lcom/bytedance/sdk/openadsdk/vS/Sj;
.super Ljava/lang/Object;


# static fields
.field private static volatile Sj:Lcom/bytedance/sdk/openadsdk/vS/Sj;


# instance fields
.field private Dq:[I

.field private EjP:Z

.field private Fmk:Z

.field private HiB:[I

.field private Jcg:[I

.field private TEQ:Z

.field private TKC:Z

.field private Ym:Z

.field private Zq:I

.field private aa:[I

.field private dNu:Z

.field private sP:Z

.field private sef:Z

.field private uA:[I

.field private uvD:Z

.field private vS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/vS/Sj;->sP()V

    return-void
.end method

.method static synthetic Dq(Lcom/bytedance/sdk/openadsdk/vS/Sj;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/vS/Sj;->Ym:Z

    return p1
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/vS/Sj;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/vS/Sj;->sP:Z

    return p1
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/vS/Sj;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/vS/Sj;->aa:[I

    return-object p1
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/vS/Sj;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/vS/Sj;->TKC:Z

    return p1
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/vS/Sj;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/vS/Sj;->Dq:[I

    return-object p1
.end method

.method static synthetic Jcg(Lcom/bytedance/sdk/openadsdk/vS/Sj;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/vS/Sj;->TEQ:Z

    return p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/vS/Sj;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/vS/Sj;->Zq:I

    return p1
.end method

.method public static Sj()Lcom/bytedance/sdk/openadsdk/vS/Sj;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/vS/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/vS/Sj;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/TKC;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/vS/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/vS/Sj;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/vS/Sj;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/vS/Sj;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/vS/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/vS/Sj;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/vS/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/vS/Sj;

    return-object v0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/vS/Sj;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/vS/Sj;->sef:Z

    return p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/vS/Sj;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/vS/Sj;->sef:Z

    return p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/vS/Sj;[Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/vS/Sj;->Sj([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private Sj([Ljava/lang/String;)Z
    .locals 4

    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-string v3, "session"

    if-ne v0, v1, :cond_0

    aget-object p1, p1, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    if-ne v0, v2, :cond_1

    aget-object p1, p1, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/vS/Sj;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/vS/Sj;->HiB:[I

    return-object p1
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/vS/Sj;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/vS/Sj;->uvD:Z

    return p1
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/vS/Sj;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/vS/Sj;->Jcg:[I

    return-object p1
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/vS/Sj;[Ljava/lang/String;)[I
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/vS/Sj;->TKC([Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method private TKC([Ljava/lang/String;)[I
    .locals 7

    array-length v0, p1

    new-array v1, v0, [I

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v6, p1, v4

    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v1, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    :catch_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eq v5, v0, :cond_2

    new-array p1, v5, [I

    invoke-static {v1, v3, p1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_2
    return-object v1
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/vS/Sj;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/vS/Sj;->dNu:Z

    return p1
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/vS/Sj;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/vS/Sj;->vS:[I

    return-object p1
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/vS/Sj;[Ljava/lang/String;)[I
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/vS/Sj;->sP([Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method private sP([Ljava/lang/String;)[I
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    aget-object p1, p1, v1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/vS/Sj;->TKC([Ljava/lang/String;)[I

    move-result-object p1

    return-object p1

    :cond_0
    new-array p1, v1, [I

    return-object p1
.end method

.method static synthetic uA(Lcom/bytedance/sdk/openadsdk/vS/Sj;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/vS/Sj;->Fmk:Z

    return p1
.end method

.method static synthetic vS(Lcom/bytedance/sdk/openadsdk/vS/Sj;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/vS/Sj;->EjP:Z

    return p1
.end method

.method static synthetic vS(Lcom/bytedance/sdk/openadsdk/vS/Sj;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/vS/Sj;->uA:[I

    return-object p1
.end method


# virtual methods
.method public Dq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/vS/Sj;->EjP:Z

    return v0
.end method

.method public EjP()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/vS/Sj;->Zq:I

    return v0
.end method

.method public Fmk()[I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/vS/Sj;->uA:[I

    return-object v0
.end method

.method public HiB()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/vS/Sj;->uvD:Z

    return v0
.end method

.method public Jcg()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/vS/Sj;->TKC:Z

    return v0
.end method

.method public TEQ()[I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/vS/Sj;->vS:[I

    return-object v0
.end method

.method public TKC()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/vS/Sj;->sef:Z

    return v0
.end method

.method public TzV()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/vS/Sj;->dNu:Z

    return v0
.end method

.method public Ym()[I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/vS/Sj;->Jcg:[I

    return-object v0
.end method

.method public Zq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/vS/Sj;->Ym:Z

    return v0
.end method

.method public aa()[I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/vS/Sj;->Dq:[I

    return-object v0
.end method

.method public dNu()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/vS/Sj;->Fmk:Z

    return v0
.end method

.method public sP()V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->sP()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/vS/Sj$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/vS/Sj$1;-><init>(Lcom/bytedance/sdk/openadsdk/vS/Sj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sef()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/vS/Sj;->TEQ:Z

    return v0
.end method

.method public uA()[I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/vS/Sj;->HiB:[I

    return-object v0
.end method

.method public uvD()[I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/vS/Sj;->aa:[I

    return-object v0
.end method

.method public vS()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/vS/Sj;->sP:Z

    return v0
.end method
