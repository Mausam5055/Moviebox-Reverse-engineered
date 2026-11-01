.class public Lcom/bytedance/sdk/openadsdk/uA/HiB;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/HiB/RiZ;


# static fields
.field private static Sj:I


# instance fields
.field private EjP:Z

.field private final HiB:Ljava/lang/String;

.field private TKC:J

.field private sP:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/uA/HiB;->sP:J

    sget v0, Lcom/bytedance/sdk/openadsdk/uA/HiB;->Sj:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/bytedance/sdk/openadsdk/uA/HiB;->Sj:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "image_request_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/bytedance/sdk/openadsdk/uA/HiB;->Sj:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/uA/HiB;->HiB:Ljava/lang/String;

    return-void
.end method

.method private TKC(Ljava/lang/String;Lcom/bytedance/sdk/component/HiB/uA;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method


# virtual methods
.method public Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/HiB/uA;)V
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/uA/HiB;->EjP:Z

    if-nez v0, :cond_0

    invoke-interface {p2}, Lcom/bytedance/sdk/component/HiB/uA;->Sj()Ljava/lang/String;

    invoke-interface {p2}, Lcom/bytedance/sdk/component/HiB/uA;->sP()I

    invoke-interface {p2}, Lcom/bytedance/sdk/component/HiB/uA;->TKC()I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/uA/HiB;->EjP:Z

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/uA/HiB;->sP:J

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/uA/HiB;->TKC(Ljava/lang/String;Lcom/bytedance/sdk/component/HiB/uA;)Ljava/lang/String;

    return-void
.end method

.method public sP(Ljava/lang/String;Lcom/bytedance/sdk/component/HiB/uA;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/uA/HiB;->sP:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/uA/HiB;->TKC:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/uA/HiB;->TKC:J

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/uA/HiB;->TKC(Ljava/lang/String;Lcom/bytedance/sdk/component/HiB/uA;)Ljava/lang/String;

    return-void
.end method
