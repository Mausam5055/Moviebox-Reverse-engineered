.class public Lcom/bytedance/adsdk/sP/TKC/sP;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/sP/TKC/sP$Sj;
    }
.end annotation


# instance fields
.field public Dq:I

.field public EjP:Lcom/bytedance/adsdk/sP/TKC/sP$Sj;

.field public Fmk:Landroid/graphics/PointF;

.field public HiB:I

.field public Jcg:F

.field public Sj:Ljava/lang/String;

.field public TEQ:F

.field public TKC:F

.field public Ym:Z

.field public aa:Landroid/graphics/PointF;

.field public sP:Ljava/lang/String;

.field public uA:I

.field public vS:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FLcom/bytedance/adsdk/sP/TKC/sP$Sj;IFFIIFZLandroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p0 .. p13}, Lcom/bytedance/adsdk/sP/TKC/sP;->Sj(Ljava/lang/String;Ljava/lang/String;FLcom/bytedance/adsdk/sP/TKC/sP$Sj;IFFIIFZLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void
.end method


# virtual methods
.method public Sj(Ljava/lang/String;Ljava/lang/String;FLcom/bytedance/adsdk/sP/TKC/sP$Sj;IFFIIFZLandroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/TKC/sP;->Sj:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/sP;->sP:Ljava/lang/String;

    iput p3, p0, Lcom/bytedance/adsdk/sP/TKC/sP;->TKC:F

    iput-object p4, p0, Lcom/bytedance/adsdk/sP/TKC/sP;->EjP:Lcom/bytedance/adsdk/sP/TKC/sP$Sj;

    iput p5, p0, Lcom/bytedance/adsdk/sP/TKC/sP;->HiB:I

    iput p6, p0, Lcom/bytedance/adsdk/sP/TKC/sP;->vS:F

    iput p7, p0, Lcom/bytedance/adsdk/sP/TKC/sP;->Jcg:F

    iput p8, p0, Lcom/bytedance/adsdk/sP/TKC/sP;->Dq:I

    iput p9, p0, Lcom/bytedance/adsdk/sP/TKC/sP;->uA:I

    iput p10, p0, Lcom/bytedance/adsdk/sP/TKC/sP;->TEQ:F

    iput-boolean p11, p0, Lcom/bytedance/adsdk/sP/TKC/sP;->Ym:Z

    iput-object p12, p0, Lcom/bytedance/adsdk/sP/TKC/sP;->aa:Landroid/graphics/PointF;

    iput-object p13, p0, Lcom/bytedance/adsdk/sP/TKC/sP;->Fmk:Landroid/graphics/PointF;

    return-void
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/sP;->Sj:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/sP;->sP:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    int-to-float v0, v0

    iget v1, p0, Lcom/bytedance/adsdk/sP/TKC/sP;->TKC:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/sP;->EjP:Lcom/bytedance/adsdk/sP/TKC/sP$Sj;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bytedance/adsdk/sP/TKC/sP;->HiB:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/bytedance/adsdk/sP/TKC/sP;->vS:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    mul-int/lit8 v0, v0, 0x1f

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bytedance/adsdk/sP/TKC/sP;->Dq:I

    add-int/2addr v0, v1

    return v0
.end method
