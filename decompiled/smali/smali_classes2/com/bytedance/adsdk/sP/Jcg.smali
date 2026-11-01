.class public Lcom/bytedance/adsdk/sP/Jcg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/sP/Jcg$Sj;,
        Lcom/bytedance/adsdk/sP/Jcg$sP;,
        Lcom/bytedance/adsdk/sP/Jcg$TKC;
    }
.end annotation


# instance fields
.field private Dq:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;",
            ">;"
        }
    .end annotation
.end field

.field private EjP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/adsdk/sP/TEQ;",
            ">;"
        }
    .end annotation
.end field

.field private Fmk:F

.field private HiB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/adsdk/sP/TKC/TKC;",
            ">;"
        }
    .end annotation
.end field

.field private Jcg:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/adsdk/sP/TKC/EjP;",
            ">;"
        }
    .end annotation
.end field

.field private RiZ:Lcom/bytedance/adsdk/sP/Jcg$sP;

.field private final Sj:Lcom/bytedance/adsdk/sP/TzV;

.field private TEQ:Landroid/graphics/Rect;

.field private TKC:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;",
            ">;>;"
        }
    .end annotation
.end field

.field private TzV:Lcom/bytedance/adsdk/sP/Jcg$Sj;

.field private Ym:F

.field private Zq:I

.field private aa:F

.field private dNu:Ljava/lang/String;

.field private final sP:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sef:Z

.field private uA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;",
            ">;"
        }
    .end annotation
.end field

.field private uvD:Lcom/bytedance/adsdk/sP/Jcg$TKC;

.field private vS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/TKC/vS;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/adsdk/sP/TzV;

    invoke-direct {v0}, Lcom/bytedance/adsdk/sP/TzV;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Jcg;->Sj:Lcom/bytedance/adsdk/sP/TzV;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Jcg;->sP:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/adsdk/sP/Jcg;->Zq:I

    const-string v0, ""

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Jcg;->dNu:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Dq()Lcom/bytedance/adsdk/sP/Jcg$TKC;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Jcg;->uvD:Lcom/bytedance/adsdk/sP/Jcg$TKC;

    return-object v0
.end method

.method public EjP()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Jcg;->TEQ:Landroid/graphics/Rect;

    return-object v0
.end method

.method public Fmk()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Jcg;->uA:Ljava/util/List;

    return-object v0
.end method

.method public HiB()F
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/Jcg;->dNu()F

    move-result v0

    iget v1, p0, Lcom/bytedance/adsdk/sP/Jcg;->Fmk:F

    div-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    long-to-float v0, v0

    return v0
.end method

.method public Jcg()F
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/sP/Jcg;->aa:F

    return v0
.end method

.method public Sj(F)F
    .locals 2

    iget v0, p0, Lcom/bytedance/adsdk/sP/Jcg;->Ym:F

    iget v1, p0, Lcom/bytedance/adsdk/sP/Jcg;->aa:F

    invoke-static {v0, v1, p1}, Lcom/bytedance/adsdk/sP/vS/HiB;->Sj(FFF)F

    move-result p1

    return p1
.end method

.method public Sj(J)Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Jcg;->Dq:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;

    return-object p1
.end method

.method public Sj(I)V
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/sP/Jcg;->Zq:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/bytedance/adsdk/sP/Jcg;->Zq:I

    return-void
.end method

.method public Sj(Landroid/graphics/Rect;FFFLjava/util/List;Landroid/util/LongSparseArray;Ljava/util/Map;Ljava/util/Map;Landroid/util/SparseArray;Ljava/util/Map;Ljava/util/List;Lcom/bytedance/adsdk/sP/Jcg$TKC;Ljava/lang/String;Lcom/bytedance/adsdk/sP/Jcg$Sj;Lcom/bytedance/adsdk/sP/Jcg$sP;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "FFF",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;",
            ">;",
            "Landroid/util/LongSparseArray<",
            "Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/adsdk/sP/TEQ;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/adsdk/sP/TKC/EjP;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/adsdk/sP/TKC/TKC;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/TKC/vS;",
            ">;",
            "Lcom/bytedance/adsdk/sP/Jcg$TKC;",
            "Ljava/lang/String;",
            "Lcom/bytedance/adsdk/sP/Jcg$Sj;",
            "Lcom/bytedance/adsdk/sP/Jcg$sP;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/bytedance/adsdk/sP/Jcg;->TEQ:Landroid/graphics/Rect;

    move v1, p2

    iput v1, v0, Lcom/bytedance/adsdk/sP/Jcg;->Ym:F

    move v1, p3

    iput v1, v0, Lcom/bytedance/adsdk/sP/Jcg;->aa:F

    move v1, p4

    iput v1, v0, Lcom/bytedance/adsdk/sP/Jcg;->Fmk:F

    move-object v1, p5

    iput-object v1, v0, Lcom/bytedance/adsdk/sP/Jcg;->uA:Ljava/util/List;

    move-object v1, p6

    iput-object v1, v0, Lcom/bytedance/adsdk/sP/Jcg;->Dq:Landroid/util/LongSparseArray;

    move-object v1, p7

    iput-object v1, v0, Lcom/bytedance/adsdk/sP/Jcg;->TKC:Ljava/util/Map;

    move-object v1, p8

    iput-object v1, v0, Lcom/bytedance/adsdk/sP/Jcg;->EjP:Ljava/util/Map;

    move-object v1, p9

    iput-object v1, v0, Lcom/bytedance/adsdk/sP/Jcg;->Jcg:Landroid/util/SparseArray;

    move-object v1, p10

    iput-object v1, v0, Lcom/bytedance/adsdk/sP/Jcg;->HiB:Ljava/util/Map;

    move-object v1, p11

    iput-object v1, v0, Lcom/bytedance/adsdk/sP/Jcg;->vS:Ljava/util/List;

    move-object v1, p12

    iput-object v1, v0, Lcom/bytedance/adsdk/sP/Jcg;->uvD:Lcom/bytedance/adsdk/sP/Jcg$TKC;

    move-object v1, p13

    iput-object v1, v0, Lcom/bytedance/adsdk/sP/Jcg;->dNu:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/bytedance/adsdk/sP/Jcg;->TzV:Lcom/bytedance/adsdk/sP/Jcg$Sj;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/bytedance/adsdk/sP/Jcg;->RiZ:Lcom/bytedance/adsdk/sP/Jcg$sP;

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Jcg;->sP:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public Sj(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/adsdk/sP/Jcg;->sef:Z

    return-void
.end method

.method public Sj()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/Jcg;->sef:Z

    return v0
.end method

.method public TEQ()Lcom/bytedance/adsdk/sP/Jcg$sP;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Jcg;->RiZ:Lcom/bytedance/adsdk/sP/Jcg$sP;

    return-object v0
.end method

.method public TKC(Ljava/lang/String;)Lcom/bytedance/adsdk/sP/TKC/vS;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Jcg;->vS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/Jcg;->vS:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/adsdk/sP/TKC/vS;

    invoke-virtual {v2, p1}, Lcom/bytedance/adsdk/sP/TKC/vS;->Sj(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public TKC()Lcom/bytedance/adsdk/sP/TzV;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Jcg;->Sj:Lcom/bytedance/adsdk/sP/TzV;

    return-object v0
.end method

.method public Ym()Lcom/bytedance/adsdk/sP/Jcg$Sj;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Jcg;->TzV:Lcom/bytedance/adsdk/sP/Jcg$Sj;

    return-object v0
.end method

.method public Zq()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/adsdk/sP/TKC/TKC;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Jcg;->HiB:Ljava/util/Map;

    return-object v0
.end method

.method public aa()F
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/sP/Jcg;->Fmk:F

    return v0
.end method

.method public dNu()F
    .locals 2

    iget v0, p0, Lcom/bytedance/adsdk/sP/Jcg;->aa:F

    iget v1, p0, Lcom/bytedance/adsdk/sP/Jcg;->Ym:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public sP()I
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/sP/Jcg;->Zq:I

    return v0
.end method

.method public sP(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Jcg;->TKC:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public sP(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Jcg;->Sj:Lcom/bytedance/adsdk/sP/TzV;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/TzV;->Sj(Z)V

    return-void
.end method

.method public sef()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/adsdk/sP/TKC/EjP;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Jcg;->Jcg:Landroid/util/SparseArray;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LottieComposition:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Jcg;->uA:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;->Sj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Jcg;->dNu:Ljava/lang/String;

    return-object v0
.end method

.method public uvD()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/adsdk/sP/TEQ;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Jcg;->EjP:Ljava/util/Map;

    return-object v0
.end method

.method public vS()F
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/sP/Jcg;->Ym:F

    return v0
.end method
