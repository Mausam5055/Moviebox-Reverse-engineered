.class public Lcom/bytedance/sdk/component/HiB/HiB/sP;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/HiB/HiB/uA;


# instance fields
.field private Sj:[B

.field private sP:Lcom/bytedance/sdk/component/HiB/vS;


# direct methods
.method public constructor <init>([BLcom/bytedance/sdk/component/HiB/vS;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/HiB/sP;->Sj:[B

    iput-object p2, p0, Lcom/bytedance/sdk/component/HiB/HiB/sP;->sP:Lcom/bytedance/sdk/component/HiB/vS;

    return-void
.end method


# virtual methods
.method public Sj()Ljava/lang/String;
    .locals 1

    const-string v0, "image_type"

    return-object v0
.end method

.method public Sj(Lcom/bytedance/sdk/component/HiB/TKC/TKC;)V
    .locals 4

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->aa()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/HiB/sP;->Sj:[B

    array-length v1, v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Sj(I)V

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/HiB/sP;->Sj:[B

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/vS;->sP([B)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/sdk/component/HiB/HiB/Fmk;

    iget-object v2, p0, Lcom/bytedance/sdk/component/HiB/HiB/sP;->Sj:[B

    iget-object v3, p0, Lcom/bytedance/sdk/component/HiB/HiB/sP;->sP:Lcom/bytedance/sdk/component/HiB/vS;

    invoke-direct {v1, v2, v3, v0}, Lcom/bytedance/sdk/component/HiB/HiB/Fmk;-><init>(Ljava/lang/Object;Lcom/bytedance/sdk/component/HiB/vS;Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/HiB/sP;->Sj:[B

    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/vS;->Sj([B)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/bytedance/sdk/component/HiB/HiB/HiB;

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/HiB/sP;->Sj:[B

    iget-object v2, p0, Lcom/bytedance/sdk/component/HiB/HiB/sP;->sP:Lcom/bytedance/sdk/component/HiB/vS;

    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/component/HiB/HiB/HiB;-><init>([BLcom/bytedance/sdk/component/HiB/vS;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/bytedance/sdk/component/HiB/HiB/Fmk;

    iget-object v2, p0, Lcom/bytedance/sdk/component/HiB/HiB/sP;->Sj:[B

    iget-object v3, p0, Lcom/bytedance/sdk/component/HiB/HiB/sP;->sP:Lcom/bytedance/sdk/component/HiB/vS;

    invoke-direct {v1, v2, v3, v0}, Lcom/bytedance/sdk/component/HiB/HiB/Fmk;-><init>(Ljava/lang/Object;Lcom/bytedance/sdk/component/HiB/vS;Z)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/bytedance/sdk/component/HiB/HiB/Fmk;

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/HiB/sP;->Sj:[B

    iget-object v2, p0, Lcom/bytedance/sdk/component/HiB/HiB/sP;->sP:Lcom/bytedance/sdk/component/HiB/vS;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/vS;->sP([B)Z

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/bytedance/sdk/component/HiB/HiB/Fmk;-><init>(Ljava/lang/Object;Lcom/bytedance/sdk/component/HiB/vS;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/HiB/sP;->Sj:[B

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/vS;->Sj([B)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v1, Lcom/bytedance/sdk/component/HiB/HiB/HiB;

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/HiB/sP;->Sj:[B

    iget-object v2, p0, Lcom/bytedance/sdk/component/HiB/HiB/sP;->sP:Lcom/bytedance/sdk/component/HiB/vS;

    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/component/HiB/HiB/HiB;-><init>([BLcom/bytedance/sdk/component/HiB/vS;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/HiB/sP;->sP:Lcom/bytedance/sdk/component/HiB/vS;

    if-nez v0, :cond_5

    new-instance v1, Lcom/bytedance/sdk/component/HiB/HiB/Ym;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/HiB/HiB/Ym;-><init>()V

    goto :goto_0

    :cond_5
    new-instance v1, Lcom/bytedance/sdk/component/HiB/HiB/Dq;

    const-string v0, "not image format"

    const/4 v2, 0x0

    const/16 v3, 0x3e9

    invoke-direct {v1, v3, v0, v2}, Lcom/bytedance/sdk/component/HiB/HiB/Dq;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Sj(Lcom/bytedance/sdk/component/HiB/HiB/uA;)Z

    return-void
.end method
