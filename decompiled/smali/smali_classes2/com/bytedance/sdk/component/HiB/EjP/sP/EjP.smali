.class public Lcom/bytedance/sdk/component/HiB/EjP/sP/EjP;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/HiB/EjP/sP/vS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/component/HiB/EjP/sP/vS;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;[BLcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;)V
    .locals 5

    const-string v0, "decode failed bitmap null"

    const/16 v1, 0x3ea

    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->dNu()Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;->Sj(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;)Lcom/bytedance/sdk/component/HiB/EjP/TKC/sP/Sj;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/sP/Sj;->Sj([B)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->TEQ()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Sj()Ljava/lang/String;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    new-instance v0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/EjP;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/EjP;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, p1, p2, v3, v4}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/EjP;->Sj(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;Ljava/lang/Object;Ljava/util/Map;Z)Lcom/bytedance/sdk/component/HiB/EjP/TKC/EjP;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;->Sj(Lcom/bytedance/sdk/component/HiB/Ym;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->TzV()Lcom/bytedance/sdk/component/HiB/sP;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->TEQ()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3, p2}, Lcom/bytedance/sdk/component/HiB/EjP/sP/EjP;->Sj(Lcom/bytedance/sdk/component/HiB/sP;Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->TEQ()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Sj()Ljava/lang/String;

    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v1, v0, p2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;->Sj(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->TEQ()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Sj()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "decode failed:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v1, p1, p2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;->Sj(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/component/HiB/sP;Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/bytedance/sdk/component/HiB/sP;->HiB()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;->Sj(Lcom/bytedance/sdk/component/HiB/sP;)Lcom/bytedance/sdk/component/HiB/dNu;

    move-result-object p1

    invoke-interface {p1, p3, p4}, Lcom/bytedance/sdk/component/HiB/Sj;->Sj(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public Sj()Ljava/lang/String;
    .locals 1

    const-string v0, "decode"

    return-object v0
.end method

.method public Sj(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;Lcom/bytedance/sdk/component/HiB/RiZ;Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->sef()[B

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "imageData is empty"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x7d0

    invoke-virtual {p3, v1, p2, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;->Sj(ILjava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->aa()I

    move-result v1

    array-length v2, p2

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Sj(I)V

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v1, v2, :cond_4

    invoke-static {p2}, Lcom/bytedance/sdk/component/utils/vS;->sP([B)Z

    move-result v1

    invoke-static {p2, v0}, Lcom/bytedance/sdk/component/utils/Ym;->Sj([BI)Z

    move-result v2

    if-nez v1, :cond_3

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/bytedance/sdk/component/utils/vS;->Sj([B)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/HiB/EjP/sP/EjP;->Sj(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;[BLcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;)V

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/bytedance/sdk/component/HiB/EjP/TKC/EjP;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/EjP;-><init>()V

    invoke-virtual {v1, p1, p2, v3, v0}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/EjP;->Sj(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;Ljava/lang/Object;Ljava/util/Map;Z)Lcom/bytedance/sdk/component/HiB/EjP/TKC/EjP;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;->Sj(Lcom/bytedance/sdk/component/HiB/Ym;)V

    goto :goto_1

    :cond_3
    :goto_0
    new-instance v2, Lcom/bytedance/sdk/component/HiB/EjP/TKC/EjP;

    invoke-direct {v2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/EjP;-><init>()V

    invoke-virtual {v2, p1, p2, v3, v1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/EjP;->Sj(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;Ljava/lang/Object;Ljava/util/Map;Z)Lcom/bytedance/sdk/component/HiB/EjP/TKC/EjP;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;->Sj(Lcom/bytedance/sdk/component/HiB/Ym;)V

    goto :goto_1

    :cond_4
    new-instance v1, Lcom/bytedance/sdk/component/HiB/EjP/TKC/EjP;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/EjP;-><init>()V

    invoke-static {p2}, Lcom/bytedance/sdk/component/utils/vS;->sP([B)Z

    move-result v2

    invoke-virtual {v1, p1, p2, v3, v2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/EjP;->Sj(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;Ljava/lang/Object;Ljava/util/Map;Z)Lcom/bytedance/sdk/component/HiB/EjP/TKC/EjP;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;->Sj(Lcom/bytedance/sdk/component/HiB/Ym;)V

    goto :goto_1

    :cond_5
    invoke-static {p2}, Lcom/bytedance/sdk/component/utils/vS;->Sj([B)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/HiB/EjP/sP/EjP;->Sj(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;[BLcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;)V

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "not image format"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x3e9

    const-string v1, "result type is bit but data not image"

    invoke-virtual {p3, p2, v1, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;->Sj(ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return v0
.end method
