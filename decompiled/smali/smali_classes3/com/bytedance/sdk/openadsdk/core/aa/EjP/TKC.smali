.class public Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;
.super Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC$Sj;,
        Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC$sP;
    }
.end annotation


# instance fields
.field private final EjP:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC$Sj;

.field private final Sj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC$sP;",
            ">;"
        }
    .end annotation
.end field

.field private TKC:I

.field private sP:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;->Sj:Ljava/util/List;

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;->sP:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;->TKC:I

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC$Sj;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC$Sj;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC$1;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;->EjP:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC$Sj;

    invoke-super {p0, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Lt5/a$a;)V

    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(I)V

    return-void
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;->Sj:Ljava/util/List;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;)I
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;->TKC:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;->TKC:I

    return v0
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;->sP:I

    return p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;->TKC:I

    return p0
.end method


# virtual methods
.method public Sj(Lt5/a$a;)V
    .locals 1

    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC$sP;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;->Sj:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;->Sj:Ljava/util/List;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC$sP;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Lt5/a$a;)V

    return-void
.end method

.method public TKC(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;->sP:I

    return-void
.end method

.method public dNu()J
    .locals 6

    invoke-super {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->dNu()J

    move-result-wide v0

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;->TKC:I

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    invoke-super {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->uvD()J

    move-result-wide v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public sU()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;->TKC:I

    return v0
.end method

.method public uvD()J
    .locals 4

    invoke-super {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->uvD()J

    move-result-wide v0

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;->sP:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method
