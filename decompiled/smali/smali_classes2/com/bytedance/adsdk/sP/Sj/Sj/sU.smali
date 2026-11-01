.class public Lcom/bytedance/adsdk/sP/Sj/Sj/sU;
.super Lcom/bytedance/adsdk/sP/Sj/Sj/Sj;


# instance fields
.field private Dq:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final EjP:Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;

.field private final HiB:Ljava/lang/String;

.field private final Jcg:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final vS:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;Lcom/bytedance/adsdk/sP/TKC/sP/TzV;)V
    .locals 11

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/TzV;->Jcg()Lcom/bytedance/adsdk/sP/TKC/sP/TzV$Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/sP/TzV$Sj;->Sj()Landroid/graphics/Paint$Cap;

    move-result-object v4

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/TzV;->Dq()Lcom/bytedance/adsdk/sP/TKC/sP/TzV$sP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/sP/TzV$sP;->Sj()Landroid/graphics/Paint$Join;

    move-result-object v5

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/TzV;->uA()F

    move-result v6

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/TzV;->TKC()Lcom/bytedance/adsdk/sP/TKC/Sj/EjP;

    move-result-object v7

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/TzV;->EjP()Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    move-result-object v8

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/TzV;->HiB()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/TzV;->vS()Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    move-result-object v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lcom/bytedance/adsdk/sP/Sj/Sj/Sj;-><init>(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLcom/bytedance/adsdk/sP/TKC/Sj/EjP;Lcom/bytedance/adsdk/sP/TKC/Sj/sP;Ljava/util/List;Lcom/bytedance/adsdk/sP/TKC/Sj/sP;)V

    iput-object p2, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/sU;->EjP:Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/TzV;->Sj()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/sU;->HiB:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/TzV;->TEQ()Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/sU;->vS:Z

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/TzV;->sP()Lcom/bytedance/adsdk/sP/TKC/Sj/Sj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/Sj/Sj;->Sj()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/sU;->Jcg:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {p1, p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;)V

    invoke-virtual {p2, p1}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V

    return-void
.end method


# virtual methods
.method public Sj(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/sU;->vS:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Sj;->sP:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/sU;->Jcg:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    check-cast v1, Lcom/bytedance/adsdk/sP/Sj/sP/sP;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/sP/Sj/sP/sP;->uA()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/sU;->Dq:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Sj;->sP:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/adsdk/sP/Sj/Sj/Sj;->Sj(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method
