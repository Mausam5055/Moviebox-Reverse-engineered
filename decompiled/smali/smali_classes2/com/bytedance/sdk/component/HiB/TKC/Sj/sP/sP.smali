.class public Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/sP;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/HiB/dNu;


# instance fields
.field private Sj:I

.field private TKC:Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private sP:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/sP;->sP:I

    iput p2, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/sP;->Sj:I

    new-instance p2, Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/sP$1;

    invoke-direct {p2, p0, p1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/sP$1;-><init>(Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/sP;I)V

    iput-object p2, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/sP;->TKC:Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;

    return-void
.end method

.method public static Sj(Landroid/graphics/Bitmap;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p0

    return p0
.end method


# virtual methods
.method public Sj(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/sP;->TKC:Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->Sj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public bridge synthetic Sj(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/sP;->Sj(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic Sj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/sP;->Sj(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result p1

    return p1
.end method

.method public Sj(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/sP;->TKC:Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->Sj(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic sP(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/sP;->sP(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public sP(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/sP;->TKC:Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->Sj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
