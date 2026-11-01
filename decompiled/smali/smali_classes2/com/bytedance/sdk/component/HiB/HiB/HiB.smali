.class public Lcom/bytedance/sdk/component/HiB/HiB/HiB;
.super Lcom/bytedance/sdk/component/HiB/HiB/Sj;


# instance fields
.field private Sj:[B

.field private sP:Lcom/bytedance/sdk/component/HiB/vS;


# direct methods
.method public constructor <init>([BLcom/bytedance/sdk/component/HiB/vS;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/HiB/HiB/Sj;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/HiB/HiB;->Sj:[B

    iput-object p2, p0, Lcom/bytedance/sdk/component/HiB/HiB/HiB;->sP:Lcom/bytedance/sdk/component/HiB/vS;

    return-void
.end method

.method private Sj(ILjava/lang/String;Ljava/lang/Throwable;Lcom/bytedance/sdk/component/HiB/TKC/TKC;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/HiB/HiB;->sP:Lcom/bytedance/sdk/component/HiB/vS;

    if-nez v0, :cond_0

    new-instance p1, Lcom/bytedance/sdk/component/HiB/HiB/Ym;

    invoke-direct {p1}, Lcom/bytedance/sdk/component/HiB/HiB/Ym;-><init>()V

    invoke-virtual {p4, p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Sj(Lcom/bytedance/sdk/component/HiB/HiB/uA;)Z

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/HiB/HiB/Dq;

    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/HiB/HiB/Dq;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p4, v0}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Sj(Lcom/bytedance/sdk/component/HiB/HiB/uA;)Z

    return-void
.end method


# virtual methods
.method public Sj()Ljava/lang/String;
    .locals 1

    const-string v0, "decode"

    return-object v0
.end method

.method public Sj(Lcom/bytedance/sdk/component/HiB/TKC/TKC;)V
    .locals 6

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->TzV()Lcom/bytedance/sdk/component/HiB/TKC/vS;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/HiB/TKC/vS;->Sj(Lcom/bytedance/sdk/component/HiB/TKC/TKC;)Lcom/bytedance/sdk/component/HiB/TKC/sP/Sj;

    move-result-object v1

    const/16 v2, 0x3ea

    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->dx()Lcom/bytedance/sdk/component/HiB/sef;

    iget-object v3, p0, Lcom/bytedance/sdk/component/HiB/HiB/HiB;->Sj:[B

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/HiB/TKC/sP/Sj;->Sj([B)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v3, Lcom/bytedance/sdk/component/HiB/HiB/Fmk;

    iget-object v4, p0, Lcom/bytedance/sdk/component/HiB/HiB/HiB;->sP:Lcom/bytedance/sdk/component/HiB/vS;

    const/4 v5, 0x0

    invoke-direct {v3, v1, v4, v5}, Lcom/bytedance/sdk/component/HiB/HiB/Fmk;-><init>(Ljava/lang/Object;Lcom/bytedance/sdk/component/HiB/vS;Z)V

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Sj(Lcom/bytedance/sdk/component/HiB/HiB/uA;)Z

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->TEQ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->RiZ()Lcom/bytedance/sdk/component/HiB/sP;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/component/HiB/TKC/vS;->Sj(Lcom/bytedance/sdk/component/HiB/sP;)Lcom/bytedance/sdk/component/HiB/dNu;

    move-result-object v0

    invoke-interface {v0, v3, v1}, Lcom/bytedance/sdk/component/HiB/Sj;->Sj(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    const-string v0, "decode failed bitmap null"

    const/4 v1, 0x0

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/bytedance/sdk/component/HiB/HiB/HiB;->Sj(ILjava/lang/String;Ljava/lang/Throwable;Lcom/bytedance/sdk/component/HiB/TKC/TKC;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "decode failed:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1, v0, p1}, Lcom/bytedance/sdk/component/HiB/HiB/HiB;->Sj(ILjava/lang/String;Ljava/lang/Throwable;Lcom/bytedance/sdk/component/HiB/TKC/TKC;)V

    return-void
.end method
