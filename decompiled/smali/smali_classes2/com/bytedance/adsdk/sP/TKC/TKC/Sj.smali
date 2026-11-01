.class public abstract Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/sP/Sj/Sj/HiB;
.implements Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;


# instance fields
.field private final Dq:Landroid/graphics/Matrix;

.field final EjP:Lcom/bytedance/adsdk/sP/Sj/sP/uvD;

.field private final Fmk:Landroid/graphics/Paint;

.field HiB:F

.field private final Jcg:Landroid/graphics/Path;

.field private final LD:Landroid/graphics/Matrix;

.field private LqL:Z

.field private final RiZ:Landroid/graphics/RectF;

.field final Sj:Landroid/graphics/Matrix;

.field private final TEQ:Landroid/graphics/Paint;

.field final TKC:Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;

.field private final TzV:Landroid/graphics/RectF;

.field private Yf:Landroid/graphics/Paint;

.field private final Ym:Landroid/graphics/Paint;

.field private final Zq:Landroid/graphics/RectF;

.field private final aa:Landroid/graphics/Paint;

.field private final dNu:Landroid/graphics/RectF;

.field private dx:Lcom/bytedance/adsdk/sP/Sj/sP/Dq;

.field private fF:F

.field private ib:Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;

.field private kF:Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;

.field private ley:Z

.field final sP:Lcom/bytedance/adsdk/sP/uA;

.field private final sU:Ljava/lang/String;

.field private final sef:Landroid/graphics/Paint;

.field private final uA:Landroid/graphics/Matrix;

.field private uP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;",
            ">;"
        }
    .end annotation
.end field

.field private final uvD:Landroid/graphics/RectF;

.field vS:Landroid/graphics/BlurMaskFilter;

.field private final wE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "**>;>;"
        }
    .end annotation
.end field

.field private zR:Lcom/bytedance/adsdk/sP/Sj/sP/EjP;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Jcg:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Dq:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->uA:Landroid/graphics/Matrix;

    new-instance v0, Lcom/bytedance/adsdk/sP/Sj/Sj;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/bytedance/adsdk/sP/Sj/Sj;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TEQ:Landroid/graphics/Paint;

    new-instance v0, Lcom/bytedance/adsdk/sP/Sj/Sj;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/adsdk/sP/Sj/Sj;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Ym:Landroid/graphics/Paint;

    new-instance v0, Lcom/bytedance/adsdk/sP/Sj/Sj;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v3}, Lcom/bytedance/adsdk/sP/Sj/Sj;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->aa:Landroid/graphics/Paint;

    new-instance v0, Lcom/bytedance/adsdk/sP/Sj/Sj;

    invoke-direct {v0, v1}, Lcom/bytedance/adsdk/sP/Sj/Sj;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Fmk:Landroid/graphics/Paint;

    new-instance v4, Lcom/bytedance/adsdk/sP/Sj/Sj;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Lcom/bytedance/adsdk/sP/Sj/Sj;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v4, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->sef:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Zq:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->uvD:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->dNu:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TzV:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->RiZ:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj:Landroid/graphics/Matrix;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->wE:Ljava/util/List;

    iput-boolean v1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->ley:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->HiB:F

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->LD:Landroid/graphics/Matrix;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->fF:F

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->sP:Lcom/bytedance/adsdk/sP/uA;

    iput-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TKC:Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;->vS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#draw"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->sU:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;->aa()Lcom/bytedance/adsdk/sP/TKC/TKC/HiB$sP;

    move-result-object p1

    sget-object v1, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB$sP;->TKC:Lcom/bytedance/adsdk/sP/TKC/TKC/HiB$sP;

    if-ne p1, v1, :cond_0

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {p1, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {p1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_0
    invoke-virtual {p2}, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;->Zq()Lcom/bytedance/adsdk/sP/TKC/Sj/aa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/Sj/aa;->TEQ()Lcom/bytedance/adsdk/sP/Sj/sP/uvD;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->EjP:Lcom/bytedance/adsdk/sP/Sj/sP/uvD;

    invoke-virtual {p1, p0}, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;)V

    invoke-virtual {p2}, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;->TEQ()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;->TEQ()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lcom/bytedance/adsdk/sP/Sj/sP/Dq;

    invoke-virtual {p2}, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;->TEQ()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bytedance/adsdk/sP/Sj/sP/Dq;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->dx:Lcom/bytedance/adsdk/sP/Sj/sP/Dq;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/Sj/sP/Dq;->sP()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {p2, p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->dx:Lcom/bytedance/adsdk/sP/Sj/sP/Dq;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/Sj/sP/Dq;->TKC()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {p0, p2}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V

    invoke-virtual {p2, p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;)V

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->aa()V

    return-void
.end method

.method private EjP(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/bytedance/adsdk/sP/Sj/sP/Sj;Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "Lcom/bytedance/adsdk/sP/TKC/sP/sef;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Zq:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Ym:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1}, Lcom/bytedance/adsdk/sP/vS/vS;->Sj(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Jcg:Landroid/graphics/Path;

    invoke-virtual {v0, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Jcg:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TEQ:Landroid/graphics/Paint;

    invoke-virtual {p4}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x40233333    # 2.55f

    mul-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Jcg:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TEQ:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private Fmk()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->sP:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->invalidateSelf()V

    return-void
.end method

.method private HiB(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/bytedance/adsdk/sP/Sj/sP/Sj;Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "Lcom/bytedance/adsdk/sP/TKC/sP/sef;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Zq:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Ym:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1}, Lcom/bytedance/adsdk/sP/vS/vS;->Sj(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Zq:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TEQ:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->aa:Landroid/graphics/Paint;

    invoke-virtual {p4}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    int-to-float p4, p4

    const v1, 0x40233333    # 2.55f

    mul-float/2addr p4, v1

    float-to-int p4, p4

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    iget-object p4, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Jcg:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Jcg:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Jcg:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->aa:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method static Sj(Lcom/bytedance/adsdk/sP/TKC/TKC/sP;Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/Jcg;Landroid/content/Context;)Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;
    .locals 6

    sget-object v0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj$2;->Sj:[I

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;->Ym()Lcom/bytedance/adsdk/sP/TKC/TKC/HiB$Sj;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;->Ym()Lcom/bytedance/adsdk/sP/TKC/TKC/HiB$Sj;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    new-instance p0, Lcom/bytedance/adsdk/sP/TKC/TKC/uA;

    invoke-direct {p0, p2, p1}, Lcom/bytedance/adsdk/sP/TKC/TKC/uA;-><init>(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/bytedance/adsdk/sP/TKC/TKC/vS;

    invoke-direct {p0, p2, p1}, Lcom/bytedance/adsdk/sP/TKC/TKC/vS;-><init>(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;)V

    return-object p0

    :pswitch_2
    const-string p0, "text:"

    invoke-static {p2, p1, p0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/bytedance/adsdk/sP/TKC/TKC/TKC;

    invoke-direct {p0, p2, p1, p4}, Lcom/bytedance/adsdk/sP/TKC/TKC/TKC;-><init>(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;Landroid/content/Context;)V

    return-object p0

    :cond_0
    const-string p0, "videoview:"

    invoke-static {p2, p1, p0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/bytedance/adsdk/sP/TKC/TKC/TEQ;

    invoke-direct {p0, p2, p1, p4}, Lcom/bytedance/adsdk/sP/TKC/TKC/TEQ;-><init>(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;Landroid/content/Context;)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/bytedance/adsdk/sP/TKC/TKC/EjP;

    invoke-direct {p0, p2, p1}, Lcom/bytedance/adsdk/sP/TKC/TKC/EjP;-><init>(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;

    invoke-direct {p0, p2, p1}, Lcom/bytedance/adsdk/sP/TKC/TKC/Dq;-><init>(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;)V

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/bytedance/adsdk/sP/TKC/TKC/sP;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;->Jcg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/bytedance/adsdk/sP/Jcg;->sP(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/adsdk/sP/TKC/TKC/sP;-><init>(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;Ljava/util/List;Lcom/bytedance/adsdk/sP/Jcg;Landroid/content/Context;)V

    return-object p0

    :pswitch_5
    new-instance p4, Lcom/bytedance/adsdk/sP/TKC/TKC/Jcg;

    invoke-direct {p4, p2, p1, p0, p3}, Lcom/bytedance/adsdk/sP/TKC/TKC/Jcg;-><init>(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;Lcom/bytedance/adsdk/sP/TKC/TKC/sP;Lcom/bytedance/adsdk/sP/Jcg;)V

    return-object p4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private Sj(Landroid/graphics/Canvas;)V
    .locals 10

    const-string v0, "Layer#clearLayer"

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/HiB;->Sj(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Zq:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v5, v2, v3

    iget v2, v1, Landroid/graphics/RectF;->top:F

    sub-float v6, v2, v3

    iget v2, v1, Landroid/graphics/RectF;->right:F

    add-float v7, v2, v3

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float v8, v1, v3

    iget-object v9, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->sef:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/HiB;->sP(Ljava/lang/String;)F

    return-void
.end method

.method private Sj(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 7

    const-string v0, "Layer#saveLayer"

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/HiB;->Sj(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Zq:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Ym:Landroid/graphics/Paint;

    const/16 v3, 0x13

    invoke-static {p1, v1, v2, v3}, Lcom/bytedance/adsdk/sP/vS/vS;->Sj(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-static {v0}, Lcom/bytedance/adsdk/sP/HiB;->sP(Ljava/lang/String;)F

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->dx:Lcom/bytedance/adsdk/sP/Sj/sP/Dq;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/sP/Sj/sP/Dq;->Sj()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->dx:Lcom/bytedance/adsdk/sP/Sj/sP/Dq;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/sP/Sj/sP/Dq;->Sj()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/adsdk/sP/TKC/sP/Dq;

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->dx:Lcom/bytedance/adsdk/sP/Sj/sP/Dq;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/sP/Sj/sP/Dq;->sP()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    iget-object v3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->dx:Lcom/bytedance/adsdk/sP/Sj/sP/Dq;

    invoke-virtual {v3}, Lcom/bytedance/adsdk/sP/Sj/sP/Dq;->TKC()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    sget-object v4, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj$2;->sP:[I

    invoke-virtual {v1}, Lcom/bytedance/adsdk/sP/TKC/sP/Dq;->Sj()Lcom/bytedance/adsdk/sP/TKC/sP/Dq$Sj;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/16 v5, 0xff

    const/4 v6, 0x1

    if-eq v4, v6, :cond_8

    const/4 v6, 0x2

    if-eq v4, v6, :cond_5

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/bytedance/adsdk/sP/TKC/sP/Dq;->EjP()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->sP(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/bytedance/adsdk/sP/Sj/sP/Sj;Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/bytedance/adsdk/sP/Sj/sP/Sj;Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/bytedance/adsdk/sP/TKC/sP/Dq;->EjP()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->HiB(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/bytedance/adsdk/sP/Sj/sP/Sj;Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->EjP(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/bytedance/adsdk/sP/Sj/sP/Sj;Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    iget-object v4, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TEQ:Landroid/graphics/Paint;

    const/high16 v6, -0x1000000

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TEQ:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Zq:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TEQ:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_6
    invoke-virtual {v1}, Lcom/bytedance/adsdk/sP/TKC/sP/Dq;->EjP()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TKC(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/bytedance/adsdk/sP/Sj/sP/Sj;Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V

    goto :goto_1

    :cond_7
    invoke-direct {p0, p1, p2, v2}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->sef()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TEQ:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Zq:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TEQ:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_9
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_a
    const-string p2, "Layer#restoreLayer"

    invoke-static {p2}, Lcom/bytedance/adsdk/sP/HiB;->Sj(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {p2}, Lcom/bytedance/adsdk/sP/HiB;->sP(Ljava/lang/String;)F

    return-void
.end method

.method private Sj(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "Lcom/bytedance/adsdk/sP/TKC/sP/sef;",
            "Landroid/graphics/Path;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Jcg:Landroid/graphics/Path;

    invoke-virtual {v0, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Jcg:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Jcg:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->aa:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private Sj(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/bytedance/adsdk/sP/Sj/sP/Sj;Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "Lcom/bytedance/adsdk/sP/TKC/sP/sef;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Jcg:Landroid/graphics/Path;

    invoke-virtual {v0, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Jcg:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TEQ:Landroid/graphics/Paint;

    invoke-virtual {p4}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x40233333    # 2.55f

    mul-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Jcg:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TEQ:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private Sj(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 10

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->dNu:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Jcg()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->dx:Lcom/bytedance/adsdk/sP/Sj/sP/Dq;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Sj/sP/Dq;->Sj()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_6

    iget-object v4, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->dx:Lcom/bytedance/adsdk/sP/Sj/sP/Dq;

    invoke-virtual {v4}, Lcom/bytedance/adsdk/sP/Sj/sP/Dq;->Sj()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/adsdk/sP/TKC/sP/Dq;

    iget-object v5, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->dx:Lcom/bytedance/adsdk/sP/Sj/sP/Dq;

    invoke-virtual {v5}, Lcom/bytedance/adsdk/sP/Sj/sP/Dq;->sP()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {v5}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Path;

    if-eqz v5, :cond_5

    iget-object v6, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Jcg:Landroid/graphics/Path;

    invoke-virtual {v6, v5}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v5, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Jcg:Landroid/graphics/Path;

    invoke-virtual {v5, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    sget-object v5, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj$2;->sP:[I

    invoke-virtual {v4}, Lcom/bytedance/adsdk/sP/TKC/sP/Dq;->Sj()Lcom/bytedance/adsdk/sP/TKC/sP/Dq$Sj;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lcom/bytedance/adsdk/sP/TKC/sP/Dq;->EjP()Z

    move-result v4

    if-eqz v4, :cond_2

    return-void

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Jcg:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->RiZ:Landroid/graphics/RectF;

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    if-nez v3, :cond_3

    iget-object v4, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->dNu:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->RiZ:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->dNu:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->RiZ:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget-object v6, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->dNu:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->RiZ:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget-object v7, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->dNu:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->RiZ:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget-object v8, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->dNu:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    iget-object v9, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->RiZ:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    :cond_4
    return-void

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->dNu:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_7
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->sP(Z)V

    return-void
.end method

.method private static Sj(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;->Jcg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/sP/uA;->vS(Ljava/lang/String;)Lcom/bytedance/adsdk/sP/TEQ;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/TEQ;->TEQ()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method static synthetic TKC(Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;)Lcom/bytedance/adsdk/sP/Sj/sP/EjP;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->zR:Lcom/bytedance/adsdk/sP/Sj/sP/EjP;

    return-object p0
.end method

.method private TKC(F)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->sP:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->wE()Lcom/bytedance/adsdk/sP/Jcg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Jcg;->TKC()Lcom/bytedance/adsdk/sP/TzV;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TKC:Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;->vS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/adsdk/sP/TzV;->Sj(Ljava/lang/String;F)V

    return-void
.end method

.method private TKC(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/bytedance/adsdk/sP/Sj/sP/Sj;Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "Lcom/bytedance/adsdk/sP/TKC/sP/sef;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Zq:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->aa:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1}, Lcom/bytedance/adsdk/sP/vS/vS;->Sj(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Zq:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TEQ:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->aa:Landroid/graphics/Paint;

    invoke-virtual {p4}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    int-to-float p4, p4

    const v1, 0x40233333    # 2.55f

    mul-float/2addr p4, v1

    float-to-int p4, p4

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    iget-object p4, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Jcg:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Jcg:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Jcg:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->aa:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private Zq()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->uP:Ljava/util/List;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->kF:Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->uP:Ljava/util/List;

    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->uP:Ljava/util/List;

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->kF:Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->uP:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->kF:Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private aa()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TKC:Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;->EjP()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    new-instance v0, Lcom/bytedance/adsdk/sP/Sj/sP/EjP;

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TKC:Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;->EjP()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/bytedance/adsdk/sP/Sj/sP/EjP;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->zR:Lcom/bytedance/adsdk/sP/Sj/sP/EjP;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj()V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->zR:Lcom/bytedance/adsdk/sP/Sj/sP/EjP;

    new-instance v2, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj$1;

    invoke-direct {v2, p0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj$1;-><init>(Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->zR:Lcom/bytedance/adsdk/sP/Sj/sP/EjP;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->sP(Z)V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->zR:Lcom/bytedance/adsdk/sP/Sj/sP/EjP;

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V

    return-void

    :cond_1
    invoke-direct {p0, v1}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->sP(Z)V

    return-void
.end method

.method private sP(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/bytedance/adsdk/sP/Sj/sP/Sj;Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "Lcom/bytedance/adsdk/sP/TKC/sP/sef;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Zq:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TEQ:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1}, Lcom/bytedance/adsdk/sP/vS/vS;->Sj(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Zq:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TEQ:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Jcg:Landroid/graphics/Path;

    invoke-virtual {v0, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Jcg:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TEQ:Landroid/graphics/Paint;

    invoke-virtual {p4}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x40233333    # 2.55f

    mul-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Jcg:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->aa:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private sP(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 4

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TKC()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TKC:Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;->aa()Lcom/bytedance/adsdk/sP/TKC/TKC/HiB$sP;

    move-result-object v0

    sget-object v1, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB$sP;->TKC:Lcom/bytedance/adsdk/sP/TKC/TKC/HiB$sP;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TzV:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->ib:Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TzV:Landroid/graphics/RectF;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p2, v3}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TzV:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_2
    return-void
.end method

.method private sP(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->ley:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->ley:Z

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Fmk()V

    :cond_0
    return-void
.end method

.method private sef()Z
    .locals 4

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->dx:Lcom/bytedance/adsdk/sP/Sj/sP/Dq;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Sj/sP/Dq;->sP()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->dx:Lcom/bytedance/adsdk/sP/Sj/sP/Dq;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/sP/Sj/sP/Dq;->Sj()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->dx:Lcom/bytedance/adsdk/sP/Sj/sP/Dq;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/sP/Sj/sP/Dq;->Sj()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/adsdk/sP/TKC/sP/Dq;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/sP/TKC/sP/Dq;->Sj()Lcom/bytedance/adsdk/sP/TKC/sP/Dq$Sj;

    move-result-object v2

    sget-object v3, Lcom/bytedance/adsdk/sP/TKC/sP/Dq$Sj;->EjP:Lcom/bytedance/adsdk/sP/TKC/sP/Dq$Sj;

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public Dq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->ley:Z

    return v0
.end method

.method public EjP()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->LD:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public HiB()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TKC:Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;->Jcg()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method Jcg()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->dx:Lcom/bytedance/adsdk/sP/Sj/sP/Dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Sj/sP/Dq;->sP()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Sj()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Fmk()V

    return-void
.end method

.method Sj(F)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->EjP:Lcom/bytedance/adsdk/sP/Sj/sP/uvD;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Sj(F)V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->dx:Lcom/bytedance/adsdk/sP/Sj/sP/Dq;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->dx:Lcom/bytedance/adsdk/sP/Sj/sP/Dq;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/sP/Sj/sP/Dq;->sP()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->dx:Lcom/bytedance/adsdk/sP/Sj/sP/Dq;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/sP/Sj/sP/Dq;->sP()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {v2, p1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->zR:Lcom/bytedance/adsdk/sP/Sj/sP/EjP;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(F)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->ib:Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(F)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->wE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->wE:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected Sj(I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->EjP:Lcom/bytedance/adsdk/sP/Sj/sP/uvD;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Sj()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->EjP:Lcom/bytedance/adsdk/sP/Sj/sP/uvD;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Sj()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    :goto_0
    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    int-to-float p1, p1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p1, v1

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->fF:F

    return-void
.end method

.method public Sj(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->sU:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/HiB;->Sj(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->ley:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TKC:Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;->zR()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Zq()V

    const-string v0, "Layer#parentMatrix"

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/HiB;->Sj(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->LD:Landroid/graphics/Matrix;

    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Dq:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Dq:Landroid/graphics/Matrix;

    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->uP:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Dq:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->uP:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;

    iget-object v3, v3, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->EjP:Lcom/bytedance/adsdk/sP/Sj/sP/uvD;

    invoke-virtual {v3}, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->EjP()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/bytedance/adsdk/sP/HiB;->sP(Ljava/lang/String;)F

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->EjP:Lcom/bytedance/adsdk/sP/Sj/sP/uvD;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Sj()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_2
    const/16 v0, 0x64

    :goto_1
    int-to-float p3, p3

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p3, v1

    int-to-float v0, v0

    mul-float/2addr p3, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p3, v0

    mul-float/2addr p3, v1

    float-to-int p3, p3

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TKC()Z

    move-result v0

    const-string v1, "Layer#drawLayer"

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Jcg()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Dq:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->EjP:Lcom/bytedance/adsdk/sP/Sj/sP/uvD;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->EjP()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    invoke-static {v1}, Lcom/bytedance/adsdk/sP/HiB;->Sj(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Dq:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->sP(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    invoke-static {v1}, Lcom/bytedance/adsdk/sP/HiB;->sP(Ljava/lang/String;)F

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->sU:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/adsdk/sP/HiB;->sP(Ljava/lang/String;)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TKC(F)V

    return-void

    :cond_3
    const-string v0, "Layer#computeBounds"

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/HiB;->Sj(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Zq:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Dq:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Zq:Landroid/graphics/RectF;

    invoke-direct {p0, v2, p2}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->sP(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Dq:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->EjP:Lcom/bytedance/adsdk/sP/Sj/sP/uvD;

    invoke-virtual {v3}, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->EjP()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Zq:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Dq:Landroid/graphics/Matrix;

    invoke-direct {p0, v2, v3}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->uvD:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->uA:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->uA:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->uA:Landroid/graphics/Matrix;

    invoke-virtual {v2, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->uA:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->uvD:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_4
    iget-object v2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Zq:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->uvD:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Zq:Landroid/graphics/RectF;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_5
    invoke-static {v0}, Lcom/bytedance/adsdk/sP/HiB;->sP(Ljava/lang/String;)F

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Zq:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_8

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Zq:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_8

    const-string v0, "Layer#saveLayer"

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/HiB;->Sj(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TEQ:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Zq:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TEQ:Landroid/graphics/Paint;

    invoke-static {p1, v2, v3}, Lcom/bytedance/adsdk/sP/vS/vS;->Sj(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/HiB;->sP(Ljava/lang/String;)F

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Landroid/graphics/Canvas;)V

    invoke-static {v1}, Lcom/bytedance/adsdk/sP/HiB;->Sj(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Dq:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v2, p3}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->sP(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    invoke-static {v1}, Lcom/bytedance/adsdk/sP/HiB;->sP(Ljava/lang/String;)F

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Jcg()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Dq:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v1}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    :cond_6
    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TKC()Z

    move-result v1

    const-string v2, "Layer#restoreLayer"

    if-eqz v1, :cond_7

    const-string v1, "Layer#drawMatte"

    invoke-static {v1}, Lcom/bytedance/adsdk/sP/HiB;->Sj(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/HiB;->Sj(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Zq:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Fmk:Landroid/graphics/Paint;

    const/16 v5, 0x13

    invoke-static {p1, v3, v4, v5}, Lcom/bytedance/adsdk/sP/vS/vS;->Sj(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/HiB;->sP(Ljava/lang/String;)F

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->ib:Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    invoke-static {v2}, Lcom/bytedance/adsdk/sP/HiB;->Sj(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {v2}, Lcom/bytedance/adsdk/sP/HiB;->sP(Ljava/lang/String;)F

    invoke-static {v1}, Lcom/bytedance/adsdk/sP/HiB;->sP(Ljava/lang/String;)F

    :cond_7
    invoke-static {v2}, Lcom/bytedance/adsdk/sP/HiB;->Sj(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {v2}, Lcom/bytedance/adsdk/sP/HiB;->sP(Ljava/lang/String;)F

    :cond_8
    iget-boolean p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->LqL:Z

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Yf:Landroid/graphics/Paint;

    if-eqz p2, :cond_9

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Yf:Landroid/graphics/Paint;

    const p3, -0x3d7fd

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Yf:Landroid/graphics/Paint;

    const/high16 p3, 0x40800000    # 4.0f

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Zq:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Yf:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Yf:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Yf:Landroid/graphics/Paint;

    const p3, 0x50ebebeb

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Zq:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Yf:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_9
    iget-object p1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->sU:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/adsdk/sP/HiB;->sP(Ljava/lang/String;)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TKC(F)V

    return-void

    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->sU:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/adsdk/sP/HiB;->sP(Ljava/lang/String;)F

    return-void
.end method

.method public Sj(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Zq:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Zq()V

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->uP:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj:Landroid/graphics/Matrix;

    iget-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->uP:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;

    iget-object p3, p3, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->EjP:Lcom/bytedance/adsdk/sP/Sj/sP/uvD;

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->EjP()Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->kF:Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj:Landroid/graphics/Matrix;

    iget-object p1, p1, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->EjP:Lcom/bytedance/adsdk/sP/Sj/sP/uvD;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->EjP()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_1
    iget-object p1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->EjP:Lcom/bytedance/adsdk/sP/Sj/sP/uvD;

    invoke-virtual {p2}, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->EjP()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "**>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->wE:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method Sj(Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->ib:Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;

    return-void
.end method

.method public Sj(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/Sj/Sj/TKC;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/Sj/Sj/TKC;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method Sj(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Yf:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/adsdk/sP/Sj/Sj;

    invoke-direct {v0}, Lcom/bytedance/adsdk/sP/Sj/Sj;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Yf:Landroid/graphics/Paint;

    :cond_0
    iput-boolean p1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->LqL:Z

    return-void
.end method

.method public TEQ()Lcom/bytedance/adsdk/sP/TKC/sP/Sj;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TKC:Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;->ib()Lcom/bytedance/adsdk/sP/TKC/sP/Sj;

    move-result-object v0

    return-object v0
.end method

.method TKC()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->ib:Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Ym()Lcom/bytedance/adsdk/sP/HiB/TEQ;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TKC:Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;->kF()Lcom/bytedance/adsdk/sP/HiB/TEQ;

    move-result-object v0

    return-object v0
.end method

.method public sP(F)Landroid/graphics/BlurMaskFilter;
    .locals 3

    iget v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->HiB:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->vS:Landroid/graphics/BlurMaskFilter;

    return-object p1

    :cond_0
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p1, v1

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->vS:Landroid/graphics/BlurMaskFilter;

    iput p1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->HiB:F

    return-object v0
.end method

.method sP()Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TKC:Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;

    return-object v0
.end method

.method public sP(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 0

    invoke-virtual {p0, p3}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(I)V

    return-void
.end method

.method sP(Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->kF:Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;

    return-void
.end method

.method public uA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TKC:Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;->vS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public vS()F
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->fF:F

    return v0
.end method
