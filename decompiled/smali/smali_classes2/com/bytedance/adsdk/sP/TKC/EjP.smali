.class public Lcom/bytedance/adsdk/sP/TKC/EjP;
.super Ljava/lang/Object;


# instance fields
.field private final EjP:D

.field private final HiB:Ljava/lang/String;

.field private final Sj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/TKC/sP/uvD;",
            ">;"
        }
    .end annotation
.end field

.field private final TKC:D

.field private final sP:C

.field private final vS:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;CDDLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/TKC/sP/uvD;",
            ">;CDD",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/TKC/EjP;->Sj:Ljava/util/List;

    iput-char p2, p0, Lcom/bytedance/adsdk/sP/TKC/EjP;->sP:C

    iput-wide p3, p0, Lcom/bytedance/adsdk/sP/TKC/EjP;->TKC:D

    iput-wide p5, p0, Lcom/bytedance/adsdk/sP/TKC/EjP;->EjP:D

    iput-object p7, p0, Lcom/bytedance/adsdk/sP/TKC/EjP;->HiB:Ljava/lang/String;

    iput-object p8, p0, Lcom/bytedance/adsdk/sP/TKC/EjP;->vS:Ljava/lang/String;

    return-void
.end method

.method public static Sj(CLjava/lang/String;Ljava/lang/String;)I
    .locals 0

    mul-int/lit8 p0, p0, 0x1f

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x1f

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public Sj()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/TKC/sP/uvD;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/EjP;->Sj:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-char v0, p0, Lcom/bytedance/adsdk/sP/TKC/EjP;->sP:C

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/EjP;->vS:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/TKC/EjP;->HiB:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/adsdk/sP/TKC/EjP;->Sj(CLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sP()D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/adsdk/sP/TKC/EjP;->EjP:D

    return-wide v0
.end method
