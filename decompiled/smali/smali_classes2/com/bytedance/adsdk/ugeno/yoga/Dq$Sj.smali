.class public Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;
.super Landroid/view/ViewGroup$LayoutParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/ugeno/yoga/Dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sj"
.end annotation


# instance fields
.field private Dq:F

.field private EjP:F

.field private Fmk:F

.field private HiB:F

.field private Jcg:F

.field private RiZ:F

.field Sj:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private TEQ:F

.field private TKC:F

.field private TzV:F

.field private Ym:F

.field private Zq:F

.field private aa:F

.field private dNu:F

.field sP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sef:F

.field private uA:F

.field private uvD:F

.field private vS:F


# direct methods
.method public constructor <init>(II)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->Sj:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->sP:Landroid/util/SparseArray;

    const/4 v0, -0x1

    const/4 v1, -0x2

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    if-ltz p1, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->Sj:Landroid/util/SparseArray;

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/16 v3, 0xf

    invoke-virtual {v2, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    if-eq p2, v1, :cond_2

    if-eq p2, v0, :cond_2

    if-ltz p2, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->Sj:Landroid/util/SparseArray;

    int-to-float p2, p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/16 v0, 0x10

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    instance-of v0, p1, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;

    iget-object v0, p1, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->Sj:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->Sj:Landroid/util/SparseArray;

    iget-object p1, p1, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->sP:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->sP:Landroid/util/SparseArray;

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->Sj:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->sP:Landroid/util/SparseArray;

    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->Sj:Landroid/util/SparseArray;

    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->Sj:Landroid/util/SparseArray;

    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public Dq(F)V
    .locals 2

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->sef:F

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->Sj:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public EjP(F)V
    .locals 2

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->TEQ:F

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->Sj:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public Fmk(F)V
    .locals 2

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->HiB:F

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->Sj:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/16 v1, 0x13

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public HiB(F)V
    .locals 2

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->Ym:F

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->Sj:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public Jcg(F)V
    .locals 2

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->Fmk:F

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->Sj:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public Sj(F)V
    .locals 2

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->Jcg:F

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->Sj:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public TEQ(F)V
    .locals 2

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->uvD:F

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->Sj:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public TKC(F)V
    .locals 2

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->uA:F

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->Sj:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public Ym(F)V
    .locals 2

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->TKC:F

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->Sj:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/16 v1, 0x11

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public Zq(F)V
    .locals 2

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->dNu:F

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->Sj:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/16 v1, 0x19

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public aa(F)V
    .locals 2

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->EjP:F

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->Sj:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public dNu(F)V
    .locals 2

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->RiZ:F

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->Sj:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/16 v1, 0x1c

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public sP(F)V
    .locals 2

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->Dq:F

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->Sj:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public sef(F)V
    .locals 2

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->vS:F

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->Sj:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/16 v1, 0x14

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public uA(F)V
    .locals 2

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->Zq:F

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->Sj:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public uvD(F)V
    .locals 2

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->TzV:F

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->Sj:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/16 v1, 0x1b

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public vS(F)V
    .locals 2

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->aa:F

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->Sj:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
