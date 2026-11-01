.class public Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP/TKC;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/HiB/dNu;


# instance fields
.field private final Sj:Lcom/bytedance/sdk/component/HiB/dNu;

.field private final sP:Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/HiB/dNu;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP/TKC;-><init>(Lcom/bytedance/sdk/component/HiB/dNu;Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj;)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/HiB/dNu;Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP/TKC;->Sj:Lcom/bytedance/sdk/component/HiB/dNu;

    iput-object p2, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP/TKC;->sP:Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj;

    return-void
.end method


# virtual methods
.method public Sj(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP/TKC;->Sj:Lcom/bytedance/sdk/component/HiB/dNu;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/HiB/Sj;->Sj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public bridge synthetic Sj(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP/TKC;->Sj(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic Sj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP/TKC;->Sj(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result p1

    return p1
.end method

.method public Sj(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP/TKC;->Sj:Lcom/bytedance/sdk/component/HiB/dNu;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/component/HiB/Sj;->Sj(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic sP(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP/TKC;->sP(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public sP(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP/TKC;->Sj:Lcom/bytedance/sdk/component/HiB/dNu;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/HiB/Sj;->sP(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
