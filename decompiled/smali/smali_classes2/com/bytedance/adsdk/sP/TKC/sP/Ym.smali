.class public Lcom/bytedance/adsdk/sP/TKC/sP/Ym;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/sP/TKC/sP/TKC;


# instance fields
.field private final EjP:Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

.field private final HiB:Z

.field private final Sj:Ljava/lang/String;

.field private final TKC:Lcom/bytedance/adsdk/sP/TKC/Sj/Fmk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/TKC/Sj/Fmk<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final sP:Lcom/bytedance/adsdk/sP/TKC/Sj/Fmk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/TKC/Sj/Fmk<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/adsdk/sP/TKC/Sj/Fmk;Lcom/bytedance/adsdk/sP/TKC/Sj/Fmk;Lcom/bytedance/adsdk/sP/TKC/Sj/sP;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/adsdk/sP/TKC/Sj/Fmk<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/bytedance/adsdk/sP/TKC/Sj/Fmk<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/bytedance/adsdk/sP/TKC/Sj/sP;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/TKC/sP/Ym;->Sj:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/sP/Ym;->sP:Lcom/bytedance/adsdk/sP/TKC/Sj/Fmk;

    iput-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/sP/Ym;->TKC:Lcom/bytedance/adsdk/sP/TKC/Sj/Fmk;

    iput-object p4, p0, Lcom/bytedance/adsdk/sP/TKC/sP/Ym;->EjP:Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    iput-boolean p5, p0, Lcom/bytedance/adsdk/sP/TKC/sP/Ym;->HiB:Z

    return-void
.end method


# virtual methods
.method public EjP()Lcom/bytedance/adsdk/sP/TKC/Sj/Fmk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/adsdk/sP/TKC/Sj/Fmk<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/sP/Ym;->sP:Lcom/bytedance/adsdk/sP/TKC/Sj/Fmk;

    return-object v0
.end method

.method public HiB()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/TKC/sP/Ym;->HiB:Z

    return v0
.end method

.method public Sj(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/Jcg;Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;)Lcom/bytedance/adsdk/sP/Sj/Sj/TKC;
    .locals 0

    new-instance p2, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;

    invoke-direct {p2, p1, p3, p0}, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;-><init>(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;Lcom/bytedance/adsdk/sP/TKC/sP/Ym;)V

    return-object p2
.end method

.method public Sj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/sP/Ym;->Sj:Ljava/lang/String;

    return-object v0
.end method

.method public TKC()Lcom/bytedance/adsdk/sP/TKC/Sj/Fmk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/adsdk/sP/TKC/Sj/Fmk<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/sP/Ym;->TKC:Lcom/bytedance/adsdk/sP/TKC/Sj/Fmk;

    return-object v0
.end method

.method public sP()Lcom/bytedance/adsdk/sP/TKC/Sj/sP;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/sP/Ym;->EjP:Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RectangleShape{position="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/sP/Ym;->sP:Lcom/bytedance/adsdk/sP/TKC/Sj/Fmk;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/sP/Ym;->TKC:Lcom/bytedance/adsdk/sP/TKC/Sj/Fmk;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
