.class public Lcom/bytedance/adsdk/ugeno/Dq/TKC;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/ugeno/Dq/TKC$Dq;,
        Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;,
        Lcom/bytedance/adsdk/ugeno/Dq/TKC$vS;,
        Lcom/bytedance/adsdk/ugeno/Dq/TKC$Jcg;,
        Lcom/bytedance/adsdk/ugeno/Dq/TKC$Sj;,
        Lcom/bytedance/adsdk/ugeno/Dq/TKC$HiB;,
        Lcom/bytedance/adsdk/ugeno/Dq/TKC$EjP;,
        Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;
    }
.end annotation


# static fields
.field private static final HiB:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;",
            ">;"
        }
    .end annotation
.end field

.field private static final kb:Lcom/bytedance/adsdk/ugeno/Dq/TKC$Dq;

.field static final sP:[I

.field private static final vS:Landroid/view/animation/Interpolator;


# instance fields
.field private Bml:I

.field private Chv:Lcom/bytedance/adsdk/ugeno/Dq/TKC$HiB;

.field private final Dq:Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

.field private EZ:Lcom/bytedance/adsdk/ugeno/Dq/TKC$EjP;

.field private Ei:I

.field EjP:I

.field private FPG:F

.field private Fm:Landroid/view/VelocityTracker;

.field private Fmk:Landroid/widget/Scroller;

.field private HpB:I

.field private IOh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ugeno/Dq/TKC$EjP;",
            ">;"
        }
    .end annotation
.end field

.field private JcM:I

.field private final Jcg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;",
            ">;"
        }
    .end annotation
.end field

.field private LD:I

.field private LqL:Z

.field private Mts:F

.field private MuB:I

.field private RiZ:I

.field private Sj:I

.field private TEQ:I

.field TKC:Lcom/bytedance/adsdk/ugeno/Dq/sP;

.field private TzV:I

.field private UHs:Z

.field private final Uc:Ljava/lang/Runnable;

.field private WMZ:F

.field private Wjd:F

.field private Yf:Z

.field private Ym:Landroid/os/Parcelable;

.field private Zq:Lcom/bytedance/adsdk/ugeno/Dq/TKC$vS;

.field private aNB:I

.field private aa:Ljava/lang/ClassLoader;

.field private cX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private dNu:Landroid/graphics/drawable/Drawable;

.field private db:Z

.field private dwU:Z

.field private dx:F

.field private fF:I

.field private gY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private ib:I

.field private jb:I

.field private kF:Z

.field private ley:I

.field private ndK:Landroid/widget/EdgeEffect;

.field private pfr:Lcom/bytedance/adsdk/ugeno/Dq/TKC$EjP;

.field private qRN:Landroid/widget/EdgeEffect;

.field private sU:F

.field private sdp:Z

.field private sef:Z

.field private final uA:Landroid/graphics/Rect;

.field private uP:Z

.field private uvD:I

.field private wE:Z

.field private xD:I

.field private xhi:I

.field private xu:I

.field private zR:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x10100b3

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->sP:[I

    new-instance v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC$1;

    invoke-direct {v0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC$1;-><init>()V

    sput-object v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->HiB:Ljava/util/Comparator;

    new-instance v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC$2;

    invoke-direct {v0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC$2;-><init>()V

    sput-object v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->vS:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC$Dq;

    invoke-direct {v0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC$Dq;-><init>()V

    sput-object v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->kb:Lcom/bytedance/adsdk/ugeno/Dq/TKC$Dq;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    new-instance p1, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    invoke-direct {p1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Dq:Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->uA:Landroid/graphics/Rect;

    const/4 p1, -0x1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TEQ:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Ym:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->aa:Ljava/lang/ClassLoader;

    const v0, -0x800001

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->sU:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->dx:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->ley:I

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->xD:I

    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->UHs:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->dwU:Z

    new-instance v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC$3;

    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC$3;-><init>(Lcom/bytedance/adsdk/ugeno/Dq/TKC;)V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Uc:Ljava/lang/Runnable;

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->xu:I

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj()V

    return-void
.end method

.method private Dq()Z
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->xD:I

    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TEQ()V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->ndK:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->qRN:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->ndK:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->qRN:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private EjP(I)Z
    .locals 7

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "onPageScrolled did not call superclass implementation"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->UHs:Z

    if-eqz p1, :cond_0

    return v2

    :cond_0
    iput-boolean v2, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->sdp:Z

    const/4 p1, 0x0

    invoke-virtual {p0, v2, p1, v2}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(IFI)V

    iget-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->sdp:Z

    if-eqz p1, :cond_1

    return v2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->uA()Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    move-result-object v0

    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->getClientWidth()I

    move-result v3

    iget v4, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->uvD:I

    add-int v5, v3, v4

    int-to-float v4, v4

    int-to-float v3, v3

    div-float/2addr v4, v3

    iget v6, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    int-to-float p1, p1

    div-float/2addr p1, v3

    iget v3, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->HiB:F

    sub-float/2addr p1, v3

    iget v0, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->EjP:F

    add-float/2addr v0, v4

    div-float/2addr p1, v0

    int-to-float v0, v5

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput-boolean v2, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->sdp:Z

    invoke-virtual {p0, v6, p1, v0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(IFI)V

    iget-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->sdp:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private HiB(I)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->pfr:Lcom/bytedance/adsdk/ugeno/Dq/TKC$EjP;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC$EjP;->TEQ(I)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->IOh:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->IOh:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/adsdk/ugeno/Dq/TKC$EjP;

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC$EjP;->TEQ(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EZ:Lcom/bytedance/adsdk/ugeno/Dq/TKC$EjP;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC$EjP;->TEQ(I)V

    :cond_3
    return-void
.end method

.method private Jcg()V
    .locals 4

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->aNB:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->cX:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->cX:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->cX:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->cX:Ljava/util/ArrayList;

    sget-object v1, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->kb:Lcom/bytedance/adsdk/ugeno/Dq/TKC$Dq;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method

.method private Sj(IFII)I
    .locals 1

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->HpB:I

    if-le p4, v0, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->jb:I

    if-le p4, v0, :cond_1

    if-lez p3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    iget p3, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP:I

    if-lt p1, p3, :cond_2

    const p3, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_2
    const p3, 0x3f19999a    # 0.6f

    :goto_0
    add-float/2addr p2, p3

    float-to-int p2, p2

    add-int/2addr p1, p2

    :goto_1
    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    iget-object p3, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    iget p2, p2, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    iget p3, p3, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_3
    return p1
.end method

.method private Sj(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    :goto_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-eq p2, p0, :cond_2

    check-cast p2, Landroid/view/ViewGroup;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private Sj(IIII)V
    .locals 1

    if-lez p2, :cond_1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Fmk:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Fmk:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->getCurrentItem()I

    move-result p2

    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->getClientWidth()I

    move-result p3

    mul-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->setFinalX(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    add-int/2addr p2, p4

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p3

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    int-to-float p1, p1

    mul-float/2addr p3, p1

    float-to-int p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    return-void

    :cond_1
    iget p2, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP:I

    invoke-virtual {p0, p2}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->sP(I)Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    move-result-object p2

    if-eqz p2, :cond_2

    iget p2, p2, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->HiB:F

    iget p3, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->dx:F

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    mul-float/2addr p2, p1

    float-to-int p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    :cond_3
    return-void
.end method

.method private Sj(IZIZ)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->sP(I)Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->getClientWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->sU:F

    iget v0, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->HiB:F

    iget v4, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->dx:F

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v2, v0

    float-to-int v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, v0, v1, p3}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(III)V

    if-eqz p4, :cond_3

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->HiB(I)V

    return-void

    :cond_1
    if-eqz p4, :cond_2

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->HiB(I)V

    :cond_2
    invoke-direct {p0, v1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(Z)V

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    invoke-direct {p0, v0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP(I)Z

    :cond_3
    return-void
.end method

.method private Sj(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->xD:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->WMZ:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->xD:I

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Fm:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private Sj(Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;ILcom/bytedance/adsdk/ugeno/Dq/TKC$sP;)V
    .locals 10

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/Dq/sP;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/Dq/sP;->Sj()I

    move-result v0

    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->getClientWidth()I

    move-result v1

    if-lez v1, :cond_0

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->uvD:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz p3, :cond_6

    iget v3, p3, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    iget v4, p1, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    if-ge v3, v4, :cond_3

    iget v4, p3, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->HiB:F

    iget p3, p3, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->EjP:F

    add-float/2addr v4, p3

    add-float/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    move p3, v1

    :goto_1
    iget v5, p1, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    if-gt v3, v5, :cond_6

    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p3, v5, :cond_6

    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    :goto_2
    iget v6, v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    if-le v3, v6, :cond_1

    iget-object v6, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge p3, v6, :cond_1

    add-int/lit8 p3, p3, 0x1

    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    goto :goto_2

    :cond_1
    :goto_3
    iget v6, v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    if-ge v3, v6, :cond_2

    iget-object v6, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/Dq/sP;

    invoke-virtual {v6, v3}, Lcom/bytedance/adsdk/ugeno/Dq/sP;->Sj(I)F

    move-result v6

    add-float/2addr v6, v2

    add-float/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    iput v4, v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->HiB:F

    iget v5, v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->EjP:F

    add-float/2addr v5, v2

    add-float/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-le v3, v4, :cond_6

    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget p3, p3, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->HiB:F

    add-int/lit8 v3, v3, -0x1

    :goto_4
    iget v5, p1, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    if-lt v3, v5, :cond_6

    if-ltz v4, :cond_6

    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    :goto_5
    iget v6, v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    if-ge v3, v6, :cond_4

    if-lez v4, :cond_4

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    goto :goto_5

    :cond_4
    :goto_6
    iget v6, v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    if-le v3, v6, :cond_5

    iget-object v6, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/Dq/sP;

    invoke-virtual {v6, v3}, Lcom/bytedance/adsdk/ugeno/Dq/sP;->Sj(I)F

    move-result v6

    add-float/2addr v6, v2

    sub-float/2addr p3, v6

    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    :cond_5
    iget v6, v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->EjP:F

    add-float/2addr v6, v2

    sub-float/2addr p3, v6

    iput p3, v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->HiB:F

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_6
    iget-object p3, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    iget v3, p1, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->HiB:F

    iget v4, p1, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    add-int/lit8 v5, v4, -0x1

    if-nez v4, :cond_7

    move v6, v3

    goto :goto_7

    :cond_7
    const v6, -0x800001

    :goto_7
    iput v6, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->sU:F

    add-int/lit8 v0, v0, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne v4, v0, :cond_8

    iget v4, p1, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->EjP:F

    add-float/2addr v4, v3

    sub-float/2addr v4, v6

    goto :goto_8

    :cond_8
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    :goto_8
    iput v4, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->dx:F

    add-int/lit8 v4, p2, -0x1

    :goto_9
    if-ltz v4, :cond_b

    iget-object v7, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    :goto_a
    iget v8, v7, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    if-le v5, v8, :cond_9

    iget-object v8, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/Dq/sP;

    add-int/lit8 v9, v5, -0x1

    invoke-virtual {v8, v5}, Lcom/bytedance/adsdk/ugeno/Dq/sP;->Sj(I)F

    move-result v5

    add-float/2addr v5, v2

    sub-float/2addr v3, v5

    move v5, v9

    goto :goto_a

    :cond_9
    iget v9, v7, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->EjP:F

    add-float/2addr v9, v2

    sub-float/2addr v3, v9

    iput v3, v7, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->HiB:F

    if-nez v8, :cond_a

    iput v3, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->sU:F

    :cond_a
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_9

    :cond_b
    iget v3, p1, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->HiB:F

    iget v4, p1, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->EjP:F

    add-float/2addr v3, v4

    add-float/2addr v3, v2

    iget p1, p1, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    :goto_b
    if-ge p2, p3, :cond_e

    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    :goto_c
    iget v5, v4, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    if-ge p1, v5, :cond_c

    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/Dq/sP;

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {v5, p1}, Lcom/bytedance/adsdk/ugeno/Dq/sP;->Sj(I)F

    move-result p1

    add-float/2addr p1, v2

    add-float/2addr v3, p1

    move p1, v7

    goto :goto_c

    :cond_c
    if-ne v5, v0, :cond_d

    iget v5, v4, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->EjP:F

    add-float/2addr v5, v3

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->dx:F

    :cond_d
    iput v3, v4, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->HiB:F

    iget v4, v4, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->EjP:F

    add-float/2addr v4, v2

    add-float/2addr v3, v4

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_e
    iput-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->dwU:Z

    return-void
.end method

.method private Sj(Z)V
    .locals 7

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->xu:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_2

    invoke-direct {p0, v3}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->setScrollingCacheEnabled(Z)V

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Fmk:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Fmk:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Fmk:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    iget-object v6, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Fmk:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    if-ne v1, v5, :cond_1

    if-eq v4, v6, :cond_2

    :cond_1
    invoke-virtual {p0, v5, v6}, Landroid/view/View;->scrollTo(II)V

    if-eq v5, v1, :cond_2

    invoke-direct {p0, v5}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP(I)Z

    :cond_2
    iput-boolean v3, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->wE:Z

    move v1, v3

    :goto_1
    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    iget-boolean v5, v4, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->TKC:Z

    if-eqz v5, :cond_3

    iput-boolean v3, v4, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->TKC:Z

    move v0, v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Uc:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Uc:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_6
    return-void
.end method

.method private Sj(FF)Z
    .locals 3

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->fF:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->fF:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    cmpg-float p1, p2, v1

    if-gez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private TEQ()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->LqL:Z

    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Yf:Z

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Fm:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Fm:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private TKC(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private static TKC(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC$Sj;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getClientWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private sP(IFI)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->pfr:Lcom/bytedance/adsdk/ugeno/Dq/TKC$EjP;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/adsdk/ugeno/Dq/TKC$EjP;->Sj(IFI)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->IOh:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->IOh:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/adsdk/ugeno/Dq/TKC$EjP;

    if-eqz v2, :cond_1

    invoke-interface {v2, p1, p2, p3}, Lcom/bytedance/adsdk/ugeno/Dq/TKC$EjP;->Sj(IFI)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EZ:Lcom/bytedance/adsdk/ugeno/Dq/TKC$EjP;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/adsdk/ugeno/Dq/TKC$EjP;->Sj(IFI)V

    :cond_3
    return-void
.end method

.method private sP(Z)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    if-eqz p1, :cond_0

    iget v3, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Bml:I

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sP(F)Z
    .locals 9

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->WMZ:F

    sub-float/2addr v0, p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->WMZ:F

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->getClientWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->sU:F

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->dx:F

    mul-float/2addr v2, v0

    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    iget v6, v3, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    if-eqz v6, :cond_0

    iget v1, v3, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->HiB:F

    mul-float/2addr v1, v0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v7

    :goto_0
    iget v6, v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    iget-object v8, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/Dq/sP;

    invoke-virtual {v8}, Lcom/bytedance/adsdk/ugeno/Dq/sP;->Sj()I

    move-result v8

    sub-int/2addr v8, v7

    if-eq v6, v8, :cond_1

    iget v2, v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->HiB:F

    mul-float/2addr v2, v0

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v7

    :goto_1
    cmpg-float v6, p1, v1

    if-gez v6, :cond_3

    if-eqz v3, :cond_2

    sub-float p1, v1, p1

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->ndK:Landroid/widget/EdgeEffect;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    move v4, v7

    :cond_2
    move p1, v1

    goto :goto_2

    :cond_3
    cmpl-float v1, p1, v2

    if-lez v1, :cond_5

    if-eqz v5, :cond_4

    sub-float/2addr p1, v2

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->qRN:Landroid/widget/EdgeEffect;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    move v4, v7

    :cond_4
    move p1, v2

    :cond_5
    :goto_2
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->WMZ:F

    float-to-int v1, p1

    int-to-float v2, v1

    sub-float/2addr p1, v2

    add-float/2addr v0, p1

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->WMZ:F

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/view/View;->scrollTo(II)V

    invoke-direct {p0, v1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP(I)Z

    return v4
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->uP:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->uP:Z

    :cond_0
    return-void
.end method

.method private uA()Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;
    .locals 13

    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->getClientWidth()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-lez v0, :cond_1

    iget v3, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->uvD:I

    int-to-float v3, v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move v8, v0

    move v9, v5

    move-object v7, v6

    move v6, v4

    move v4, v1

    :goto_2
    iget-object v10, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_7

    iget-object v10, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    if-nez v9, :cond_2

    iget v11, v10, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    add-int/2addr v6, v5

    if-eq v11, v6, :cond_2

    iget-object v10, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Dq:Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    add-float/2addr v1, v4

    add-float/2addr v1, v3

    iput v1, v10, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->HiB:F

    iput v6, v10, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/Dq/sP;

    invoke-virtual {v1, v6}, Lcom/bytedance/adsdk/ugeno/Dq/sP;->Sj(I)F

    move-result v1

    iput v1, v10, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->EjP:F

    add-int/lit8 v8, v8, -0x1

    :cond_2
    move-object v6, v10

    iget v1, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->HiB:F

    iget v4, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->EjP:F

    add-float/2addr v4, v1

    add-float/2addr v4, v3

    if-nez v9, :cond_4

    cmpl-float v9, v2, v1

    if-ltz v9, :cond_3

    goto :goto_3

    :cond_3
    return-object v7

    :cond_4
    :goto_3
    cmpg-float v4, v2, v4

    if-ltz v4, :cond_6

    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    if-ne v8, v4, :cond_5

    goto :goto_4

    :cond_5
    iget v4, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    iget v7, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->EjP:F

    add-int/lit8 v8, v8, 0x1

    move v9, v0

    move-object v12, v6

    move v6, v4

    move v4, v7

    move-object v7, v12

    goto :goto_2

    :cond_6
    :goto_4
    return-object v6

    :cond_7
    return-object v7
.end method

.method private vS()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;

    iget-boolean v1, v1, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;->Sj:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private vS(I)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->pfr:Lcom/bytedance/adsdk/ugeno/Dq/TKC$EjP;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC$EjP;->Ym(I)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->IOh:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->IOh:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/adsdk/ugeno/Dq/TKC$EjP;

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC$EjP;->Ym(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EZ:Lcom/bytedance/adsdk/ugeno/Dq/TKC$EjP;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC$EjP;->Ym(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method EjP()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(IZ)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method HiB()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/Dq/sP;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP:I

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/Dq/sP;->Sj()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(IZ)V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method Sj(F)F
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    const v0, 0x3ef1463b

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method Sj(II)Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;
    .locals 2

    new-instance v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    invoke-direct {v0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;-><init>()V

    iput p1, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/Dq/sP;

    invoke-virtual {v1, p0, p1}, Lcom/bytedance/adsdk/ugeno/Dq/sP;->Sj(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->Sj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/Dq/sP;

    invoke-virtual {v1, p1}, Lcom/bytedance/adsdk/ugeno/Dq/sP;->Sj(I)F

    move-result p1

    iput p1, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->EjP:F

    if-ltz p2, :cond_1

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v0
.end method

.method Sj(Landroid/view/View;)Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/Dq/sP;

    iget-object v3, v1, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->Sj:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lcom/bytedance/adsdk/ugeno/Dq/sP;->Sj(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method Sj()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->vS:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Fmk:Landroid/widget/Scroller;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->JcM:I

    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->jb:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Ei:I

    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->ndK:Landroid/widget/EdgeEffect;

    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->qRN:Landroid/widget/EdgeEffect;

    const/high16 v0, 0x41c80000    # 25.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->HpB:I

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->xhi:I

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->LD:I

    return-void
.end method

.method Sj(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP:I

    if-eq v2, v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->sP(I)Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    move-result-object v2

    iput v1, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v1, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/Dq/sP;

    if-nez v1, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg()V

    return-void

    :cond_1
    iget-boolean v1, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->wE:Z

    if-eqz v1, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg()V

    return-void

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget v1, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->ley:I

    iget v4, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP:I

    sub-int/2addr v4, v1

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v6, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/Dq/sP;

    invoke-virtual {v6}, Lcom/bytedance/adsdk/ugeno/Dq/sP;->Sj()I

    move-result v6

    add-int/lit8 v7, v6, -0x1

    iget v8, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP:I

    add-int/2addr v8, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v7, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj:I

    if-ne v6, v7, :cond_1c

    move v7, v5

    :goto_1
    iget-object v8, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    iget-object v8, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    iget v9, v8, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    iget v10, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP:I

    if-lt v9, v10, :cond_4

    if-ne v9, v10, :cond_5

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    :goto_2
    if-nez v8, :cond_6

    if-lez v6, :cond_6

    iget v8, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP:I

    invoke-virtual {v0, v8, v7}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(II)Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    move-result-object v8

    :cond_6
    const/4 v9, 0x0

    if-eqz v8, :cond_15

    add-int/lit8 v10, v7, -0x1

    if-ltz v10, :cond_7

    iget-object v11, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    goto :goto_3

    :cond_7
    const/4 v11, 0x0

    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->getClientWidth()I

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    if-gtz v12, :cond_8

    move v14, v9

    goto :goto_4

    :cond_8
    iget v14, v8, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->EjP:F

    sub-float v14, v13, v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v15

    int-to-float v15, v15

    int-to-float v3, v12

    div-float/2addr v15, v3

    add-float/2addr v14, v15

    :goto_4
    iget v3, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP:I

    add-int/lit8 v3, v3, -0x1

    move v15, v9

    :goto_5
    if-ltz v3, :cond_d

    cmpl-float v16, v15, v14

    if-ltz v16, :cond_a

    if-ge v3, v4, :cond_a

    if-eqz v11, :cond_d

    iget v5, v11, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    if-ne v3, v5, :cond_c

    iget-boolean v5, v11, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->TKC:Z

    if-nez v5, :cond_c

    iget-object v5, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v5, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/Dq/sP;

    iget-object v11, v11, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->Sj:Ljava/lang/Object;

    invoke-virtual {v5, v0, v3, v11}, Lcom/bytedance/adsdk/ugeno/Dq/sP;->Sj(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v7, v7, -0x1

    if-ltz v10, :cond_9

    iget-object v5, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    goto :goto_6

    :cond_9
    const/4 v5, 0x0

    :goto_6
    move-object v11, v5

    goto :goto_7

    :cond_a
    if-eqz v11, :cond_b

    iget v5, v11, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    if-ne v3, v5, :cond_b

    iget v5, v11, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->EjP:F

    add-float/2addr v15, v5

    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_9

    iget-object v5, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    goto :goto_6

    :cond_b
    add-int/lit8 v5, v10, 0x1

    invoke-virtual {v0, v3, v5}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(II)Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    move-result-object v5

    iget v5, v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->EjP:F

    add-float/2addr v15, v5

    add-int/lit8 v7, v7, 0x1

    if-ltz v10, :cond_9

    iget-object v5, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    goto :goto_6

    :cond_c
    :goto_7
    add-int/lit8 v3, v3, -0x1

    const/4 v5, 0x0

    goto :goto_5

    :cond_d
    iget v3, v8, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->EjP:F

    add-int/lit8 v4, v7, 0x1

    cmpg-float v5, v3, v13

    if-gez v5, :cond_14

    iget-object v5, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_e

    iget-object v5, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    goto :goto_8

    :cond_e
    const/4 v5, 0x0

    :goto_8
    if-gtz v12, :cond_f

    move v10, v9

    goto :goto_9

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v12

    div-float/2addr v10, v11

    add-float/2addr v10, v13

    :goto_9
    iget v11, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP:I

    :goto_a
    add-int/lit8 v11, v11, 0x1

    if-ge v11, v6, :cond_14

    cmpl-float v12, v3, v10

    if-ltz v12, :cond_11

    if-le v11, v1, :cond_11

    if-eqz v5, :cond_14

    iget v12, v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    if-ne v11, v12, :cond_13

    iget-boolean v12, v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->TKC:Z

    if-nez v12, :cond_13

    iget-object v12, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v12, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/Dq/sP;

    iget-object v5, v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->Sj:Ljava/lang/Object;

    invoke-virtual {v12, v0, v11, v5}, Lcom/bytedance/adsdk/ugeno/Dq/sP;->Sj(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget-object v5, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_10

    iget-object v5, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    goto :goto_b

    :cond_10
    const/4 v5, 0x0

    goto :goto_b

    :cond_11
    if-eqz v5, :cond_12

    iget v12, v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    if-ne v11, v12, :cond_12

    iget v5, v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->EjP:F

    add-float/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    iget-object v5, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_10

    iget-object v5, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    goto :goto_b

    :cond_12
    invoke-virtual {v0, v11, v4}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(II)Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    iget v5, v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->EjP:F

    add-float/2addr v3, v5

    iget-object v5, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_10

    iget-object v5, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    :cond_13
    :goto_b
    goto :goto_a

    :cond_14
    invoke-direct {v0, v8, v7, v2}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;ILcom/bytedance/adsdk/ugeno/Dq/TKC$sP;)V

    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_17

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;

    iput v2, v4, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;->vS:I

    iget-boolean v5, v4, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;->Sj:Z

    if-nez v5, :cond_16

    iget v5, v4, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;->TKC:F

    cmpl-float v5, v5, v9

    if-nez v5, :cond_16

    invoke-virtual {v0, v3}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(Landroid/view/View;)Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    move-result-object v3

    if-eqz v3, :cond_16

    iget v5, v3, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->EjP:F

    iput v5, v4, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;->TKC:F

    iget v3, v3, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    iput v3, v4, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;->HiB:I

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->sP(Landroid/view/View;)Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    move-result-object v3

    goto :goto_d

    :cond_18
    const/4 v3, 0x0

    :goto_d
    if-eqz v3, :cond_19

    iget v1, v3, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    iget v2, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP:I

    if-eq v1, v2, :cond_1b

    :cond_19
    const/4 v5, 0x0

    :goto_e
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v5, v1, :cond_1b

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(Landroid/view/View;)Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    move-result-object v2

    if-eqz v2, :cond_1a

    iget v2, v2, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    iget v3, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP:I

    if-ne v2, v3, :cond_1a

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_1b

    :cond_1a
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_1b
    return-void

    :cond_1c
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_f

    :catch_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    :goto_f
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Pager id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Pager class: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Problematic adapter: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/Dq/sP;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected Sj(IFI)V
    .locals 12

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->MuB:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v7, v1

    :goto_0
    if-ge v7, v6, :cond_5

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;

    iget-boolean v10, v9, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;->Sj:Z

    if-eqz v10, :cond_4

    iget v9, v9, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;->sP:I

    and-int/lit8 v9, v9, 0x7

    if-eq v9, v2, :cond_2

    const/4 v10, 0x3

    if-eq v9, v10, :cond_1

    const/4 v10, 0x5

    if-eq v9, v10, :cond_0

    move v9, v3

    goto :goto_2

    :cond_0
    sub-int v9, v5, v4

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v4, v10

    :goto_1
    move v11, v9

    move v9, v3

    move v3, v11

    goto :goto_2

    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int v9, v5, v9

    div-int/lit8 v9, v9, 0x2

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_1

    :goto_2
    add-int/2addr v3, v0

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v3, v10

    if-eqz v3, :cond_3

    invoke-virtual {v8, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_3
    move v3, v9

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->sP(IFI)V

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Chv:Lcom/bytedance/adsdk/ugeno/Dq/TKC$HiB;

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    :goto_3
    if-ge v1, p2, :cond_7

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;

    iget-boolean v0, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;->Sj:Z

    if-nez v0, :cond_6

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, p1

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->getClientWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Chv:Lcom/bytedance/adsdk/ugeno/Dq/TKC$HiB;

    invoke-interface {v3, p3, v0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC$HiB;->Sj(Landroid/view/View;F)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    iput-boolean v2, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->sdp:Z

    return-void
.end method

.method Sj(III)V
    .locals 8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Fmk:Landroid/widget/Scroller;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->sef:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Fmk:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Fmk:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartX()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Fmk:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-direct {p0, v1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->setScrollingCacheEnabled(Z)V

    :goto_1
    move v3, v0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int v5, p1, v3

    sub-int v6, p2, v4

    if-nez v5, :cond_3

    if-nez v6, :cond_3

    invoke-direct {p0, v1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(Z)V

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC()V

    invoke-virtual {p0, v1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->setScrollState(I)V

    return-void

    :cond_3
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->setScrollingCacheEnabled(Z)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->setScrollState(I)V

    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->getClientWidth()I

    move-result p1

    div-int/lit8 p2, p1, 0x2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float p2, p2

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(F)F

    move-result v0

    mul-float/2addr v0, p2

    add-float/2addr p2, v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-lez p3, :cond_4

    int-to-float p1, p3

    div-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_3

    :cond_4
    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/Dq/sP;

    iget p3, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP:I

    invoke-virtual {p2, p3}, Lcom/bytedance/adsdk/ugeno/Dq/sP;->Sj(I)F

    move-result p2

    mul-float/2addr p1, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->uvD:I

    int-to-float p3, p3

    add-float/2addr p1, p3

    div-float/2addr p2, p1

    add-float/2addr p2, v2

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p2, p1

    float-to-int p1, p2

    :goto_3
    const/16 p2, 0x258

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->sef:Z

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Fmk:Landroid/widget/Scroller;

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method public Sj(IZ)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->wE:Z

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(IZZ)V

    return-void
.end method

.method Sj(IZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(IZZI)V

    return-void
.end method

.method Sj(IZZI)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/Dq/sP;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/Dq/sP;->Sj()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    :cond_0
    if-nez p3, :cond_1

    iget p3, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP:I

    if-ne p3, p1, :cond_1

    iget-object p3, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_1

    invoke-direct {p0, v1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_1
    const/4 p3, 0x1

    if-gez p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/Dq/sP;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/Dq/sP;->Sj()I

    move-result v0

    if-lt p1, v0, :cond_3

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/Dq/sP;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/Dq/sP;->Sj()I

    move-result p1

    sub-int/2addr p1, p3

    :cond_3
    :goto_0
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->ley:I

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP:I

    add-int v3, v2, v0

    if-gt p1, v3, :cond_4

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_5

    :cond_4
    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    iput-boolean p3, v2, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->TKC:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP:I

    if-eq v0, p1, :cond_6

    move v1, p3

    :cond_6
    iget-boolean p3, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->UHs:Z

    if-eqz p3, :cond_8

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP:I

    if-eqz v1, :cond_7

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->HiB(I)V

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_8
    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(I)V

    invoke-direct {p0, p1, p2, p4, v1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(IZIZ)V

    return-void

    :cond_9
    :goto_2
    invoke-direct {p0, v1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->setScrollingCacheEnabled(Z)V

    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/Dq/TKC$EjP;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->IOh:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->IOh:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->IOh:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public Sj(ZLcom/bytedance/adsdk/ugeno/Dq/TKC$HiB;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(ZLcom/bytedance/adsdk/ugeno/Dq/TKC$HiB;I)V

    return-void
.end method

.method public Sj(ZLcom/bytedance/adsdk/ugeno/Dq/TKC$HiB;I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Chv:Lcom/bytedance/adsdk/ugeno/Dq/TKC$HiB;

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    if-eq v2, v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Chv:Lcom/bytedance/adsdk/ugeno/Dq/TKC$HiB;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    if-eqz v2, :cond_4

    if-eqz p1, :cond_3

    const/4 v1, 0x2

    :cond_3
    iput v1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->aNB:I

    iput p3, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Bml:I

    goto :goto_3

    :cond_4
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->aNB:I

    :goto_3
    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC()V

    :cond_5
    return-void
.end method

.method public Sj(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    const/4 v2, 0x2

    if-eq v0, v1, :cond_4

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC(I)Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC(I)Z

    move-result p1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->HiB()Z

    move-result p1

    goto :goto_1

    :cond_3
    const/16 p1, 0x42

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC(I)Z

    move-result p1

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP()Z

    move-result p1

    goto :goto_1

    :cond_5
    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC(I)Z

    move-result p1

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method protected Sj(Landroid/view/View;ZIII)Z
    .locals 12

    move-object v0, p1

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_1

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p4, v3

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_0

    add-int v8, p5, v4

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int v10, v6, v9

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    const/4 v8, 0x1

    move-object v6, p0

    move v9, p3

    invoke-virtual/range {v6 .. v11}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_0

    return v2

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move v1, p3

    neg-int v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method TKC()V
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP:I

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(I)V

    return-void
.end method

.method public TKC(I)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    :goto_0
    move-object v0, v1

    goto :goto_3

    :cond_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    :goto_1
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    if-ne v2, p0, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ViewPager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    :goto_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x42

    const/16 v3, 0x11

    if-eqz v1, :cond_8

    if-eq v1, v0, :cond_8

    if-ne p1, v3, :cond_6

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->uA:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->uA:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_5

    if-lt v2, v3, :cond_5

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP()Z

    move-result v0

    goto :goto_6

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_6

    :cond_6
    if-ne p1, v2, :cond_a

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->uA:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->uA:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_7

    if-le v2, v3, :cond_b

    :cond_7
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_6

    :cond_8
    if-eq p1, v3, :cond_c

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    goto :goto_5

    :cond_9
    if-eq p1, v2, :cond_b

    const/4 v0, 0x2

    if-ne p1, v0, :cond_a

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    goto :goto_6

    :cond_b
    :goto_4
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->HiB()Z

    move-result v0

    goto :goto_6

    :cond_c
    :goto_5
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP()Z

    move-result v0

    :goto_6
    if-eqz v0, :cond_d

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_d
    return v0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(Landroid/view/View;)Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v4, v4, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    iget v5, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40000

    if-ne v1, p2, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne v0, p2, :cond_5

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    :cond_4
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(Landroid/view/View;)Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, v2, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    iget v3, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    invoke-virtual {p0, p3}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_0
    move-object v0, p3

    check-cast v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;

    iget-boolean v1, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;->Sj:Z

    invoke-static {p1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC(Landroid/view/View;)Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;->Sj:Z

    iget-boolean v2, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->kF:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;->EjP:Z

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add pager decor view during layout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public canScrollHorizontally(I)Z
    .locals 4

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/Dq/sP;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->getClientWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    const/4 v3, 0x1

    if-gez p1, :cond_2

    int-to-float p1, v0

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->sU:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    if-le v2, p1, :cond_1

    return v3

    :cond_1
    return v1

    :cond_2
    if-lez p1, :cond_3

    int-to-float p1, v0

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->dx:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    if-ge v2, p1, :cond_3

    return v3

    :cond_3
    return v1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public computeScroll()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->sef:Z

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Fmk:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Fmk:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Fmk:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Fmk:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->scrollTo(II)V

    invoke-direct {p0, v2}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Fmk:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/view/View;->scrollTo(II)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void

    :cond_2
    invoke-direct {p0, v0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(Z)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(Landroid/view/View;)Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    move-result-object v4

    if-eqz v4, :cond_1

    iget v4, v4, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    iget v5, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP:I

    if-ne v4, v5, :cond_1

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/Dq/sP;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/Dq/sP;->Sj()I

    move-result v0

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->ndK:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->qRN:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    goto/16 :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->ndK:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->sU:F

    int-to-float v5, v2

    mul-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->ndK:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->ndK:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->qRN:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->dx:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->qRN:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->qRN:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_4
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->dNu:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;

    invoke-direct {v0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getAdapter()Lcom/bytedance/adsdk/ugeno/Dq/sP;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/Dq/sP;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->aNB:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    sub-int p2, p1, p2

    :cond_0
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->cX:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;

    iget p1, p1, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;->vS:I

    return p1
.end method

.method public getCurrentItem()I
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->ley:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->uvD:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->UHs:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Uc:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Fmk:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Fmk:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget v1, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->uvD:I

    if-lez v1, :cond_3

    iget-object v1, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->dNu:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/Dq/sP;

    if-eqz v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->uvD:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    iget-object v5, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    iget v7, v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->HiB:F

    iget-object v8, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget v9, v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    iget-object v10, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    add-int/lit8 v11, v8, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    iget v10, v10, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    :goto_0
    if-ge v9, v10, :cond_3

    :goto_1
    iget v11, v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    if-le v9, v11, :cond_0

    if-ge v6, v8, :cond_0

    iget-object v5, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    goto :goto_1

    :cond_0
    if-ne v9, v11, :cond_1

    iget v7, v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->HiB:F

    iget v11, v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->EjP:F

    add-float v12, v7, v11

    mul-float/2addr v12, v4

    add-float/2addr v7, v11

    add-float/2addr v7, v3

    goto :goto_2

    :cond_1
    iget-object v11, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/Dq/sP;

    invoke-virtual {v11, v9}, Lcom/bytedance/adsdk/ugeno/Dq/sP;->Sj(I)F

    move-result v11

    add-float v12, v7, v11

    mul-float/2addr v12, v4

    add-float/2addr v11, v3

    add-float/2addr v7, v11

    :goto_2
    iget v11, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->uvD:I

    int-to-float v11, v11

    add-float/2addr v11, v12

    int-to-float v13, v1

    cmpl-float v11, v11, v13

    if-lez v11, :cond_2

    iget-object v11, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->dNu:Landroid/graphics/drawable/Drawable;

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v13

    iget v14, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TzV:I

    iget v15, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->uvD:I

    int-to-float v15, v15

    add-float/2addr v15, v12

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    move/from16 v16, v3

    iget v3, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->RiZ:I

    invoke-virtual {v11, v13, v14, v15, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->dNu:Landroid/graphics/drawable/Drawable;

    move-object/from16 v11, p1

    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_2
    move-object/from16 v11, p1

    move/from16 v16, v3

    :goto_3
    add-int v3, v1, v2

    int-to-float v3, v3

    cmpl-float v3, v12, v3

    if-gtz v3, :cond_3

    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v16

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    const/4 v8, 0x0

    if-eq v0, v1, :cond_d

    const/4 v9, 0x1

    if-ne v0, v9, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz v0, :cond_2

    iget-boolean v1, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->LqL:Z

    if-eqz v1, :cond_1

    return v9

    :cond_1
    iget-boolean v1, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Yf:Z

    if-eqz v1, :cond_2

    return v8

    :cond_2
    const/4 v1, 0x2

    if-eqz v0, :cond_9

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    :cond_4
    iget v0, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->xD:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-eq v0, v1, :cond_b

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    iget v1, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->WMZ:F

    sub-float v1, v10, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    iget v0, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Wjd:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/4 v0, 0x0

    cmpl-float v14, v1, v0

    if-eqz v14, :cond_5

    iget v0, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->WMZ:F

    invoke-direct {p0, v0, v1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(FF)Z

    move-result v0

    if-nez v0, :cond_5

    float-to-int v3, v1

    float-to-int v4, v10

    float-to-int v5, v12

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_5

    iput v10, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->WMZ:F

    iput v12, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Mts:F

    iput-boolean v9, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Yf:Z

    return v8

    :cond_5
    iget v0, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->JcM:I

    int-to-float v1, v0

    cmpl-float v1, v11, v1

    if-lez v1, :cond_7

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v11, v1

    cmpl-float v1, v11, v13

    if-lez v1, :cond_7

    iput-boolean v9, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->LqL:Z

    invoke-direct {p0, v9}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC(Z)V

    invoke-virtual {p0, v9}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->setScrollState(I)V

    iget v0, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->FPG:F

    iget v1, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->JcM:I

    int-to-float v1, v1

    if-lez v14, :cond_6

    add-float/2addr v0, v1

    goto :goto_0

    :cond_6
    sub-float/2addr v0, v1

    :goto_0
    iput v0, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->WMZ:F

    iput v12, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Mts:F

    invoke-direct {p0, v9}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->setScrollingCacheEnabled(Z)V

    goto :goto_1

    :cond_7
    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_8

    iput-boolean v9, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Yf:Z

    :cond_8
    :goto_1
    iget-boolean v0, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->LqL:Z

    if-eqz v0, :cond_b

    invoke-direct {p0, v10}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->sP(F)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto :goto_2

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->FPG:F

    iput v0, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->WMZ:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Wjd:F

    iput v0, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Mts:F

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->xD:I

    iput-boolean v8, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Yf:Z

    iput-boolean v9, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->sef:Z

    iget-object v0, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Fmk:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    iget v0, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->xu:I

    if-ne v0, v1, :cond_a

    iget-object v0, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Fmk:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Fmk:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->xhi:I

    if-le v0, v1, :cond_a

    iget-object v0, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Fmk:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v8, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->wE:Z

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC()V

    iput-boolean v9, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->LqL:Z

    invoke-direct {p0, v9}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC(Z)V

    invoke-virtual {p0, v9}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->setScrollState(I)V

    goto :goto_2

    :cond_a
    invoke-direct {p0, v8}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(Z)V

    iput-boolean v8, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->LqL:Z

    :cond_b
    :goto_2
    iget-object v0, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Fm:Landroid/view/VelocityTracker;

    if-nez v0, :cond_c

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Fm:Landroid/view/VelocityTracker;

    :cond_c
    iget-object v0, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Fm:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean v0, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->LqL:Z

    return v0

    :cond_d
    :goto_3
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Dq()Z

    return v8
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    const/16 v12, 0x8

    if-ge v10, v1, :cond_7

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_6

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;

    iget-boolean v14, v12, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;->Sj:Z

    if-eqz v14, :cond_6

    iget v12, v12, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;->sP:I

    and-int/lit8 v14, v12, 0x7

    and-int/lit8 v12, v12, 0x70

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    const/4 v15, 0x3

    if-eq v14, v15, :cond_1

    const/4 v15, 0x5

    if-eq v14, v15, :cond_0

    move v14, v4

    goto :goto_2

    :cond_0
    sub-int v14, v2, v6

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v6, v15

    :goto_1
    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    goto :goto_2

    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v2, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_1

    :goto_2
    const/16 v15, 0x10

    if-eq v12, v15, :cond_5

    const/16 v15, 0x30

    if-eq v12, v15, :cond_4

    const/16 v15, 0x50

    if-eq v12, v15, :cond_3

    move v12, v5

    goto :goto_4

    :cond_3
    sub-int v12, v3, v7

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v12, v15

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v7, v15

    :goto_3
    move/from16 v17, v12

    move v12, v5

    move/from16 v5, v17

    goto :goto_4

    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v5

    goto :goto_4

    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v12, v3, v12

    div-int/lit8 v12, v12, 0x2

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_3

    :goto_4
    add-int/2addr v4, v8

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v4

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v9, v5, v16

    invoke-virtual {v13, v4, v5, v15, v9}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v11, v11, 0x1

    move v5, v12

    move v4, v14

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_7
    sub-int/2addr v2, v4

    sub-int/2addr v2, v6

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v1, :cond_a

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v12, :cond_9

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;

    iget-boolean v10, v9, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;->Sj:Z

    if-nez v10, :cond_9

    invoke-virtual {v0, v8}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(Landroid/view/View;)Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    move-result-object v10

    if-eqz v10, :cond_9

    int-to-float v13, v2

    iget v10, v10, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->HiB:F

    mul-float/2addr v10, v13

    float-to-int v10, v10

    add-int/2addr v10, v4

    iget-boolean v14, v9, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;->EjP:Z

    if-eqz v14, :cond_8

    const/4 v14, 0x0

    iput-boolean v14, v9, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;->EjP:Z

    iget v9, v9, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;->TKC:F

    mul-float/2addr v13, v9

    float-to-int v9, v13

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v9, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    sub-int v14, v3, v5

    sub-int/2addr v14, v7

    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v8, v9, v13}, Landroid/view/View;->measure(II)V

    :cond_8
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v10

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v5

    invoke-virtual {v8, v10, v5, v9, v13}, Landroid/view/View;->layout(IIII)V

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_a
    iput v5, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TzV:I

    sub-int/2addr v3, v7

    iput v3, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->RiZ:I

    iput v11, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->MuB:I

    iget-boolean v1, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->UHs:Z

    if-eqz v1, :cond_b

    iget v1, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(IZIZ)V

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    :goto_6
    iput-boolean v2, v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->UHs:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result p1

    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p2, p1, 0xa

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->LD:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->fF:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v2, v0

    :goto_0
    const/16 v3, 0x8

    const/4 v4, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    if-ge v2, v1, :cond_c

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v3, :cond_b

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;

    if-eqz v3, :cond_b

    iget-boolean v7, v3, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;->Sj:Z

    if-eqz v7, :cond_b

    iget v7, v3, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;->sP:I

    and-int/lit8 v8, v7, 0x7

    and-int/lit8 v7, v7, 0x70

    const/16 v9, 0x30

    if-eq v7, v9, :cond_1

    const/16 v9, 0x50

    if-ne v7, v9, :cond_0

    goto :goto_1

    :cond_0
    move v7, v0

    goto :goto_2

    :cond_1
    :goto_1
    move v7, v4

    :goto_2
    const/4 v9, 0x3

    if-eq v8, v9, :cond_3

    const/4 v9, 0x5

    if-ne v8, v9, :cond_2

    goto :goto_3

    :cond_2
    move v4, v0

    :cond_3
    :goto_3
    const/high16 v8, -0x80000000

    if-eqz v7, :cond_4

    move v9, v8

    move v8, v5

    goto :goto_4

    :cond_4
    if-eqz v4, :cond_5

    move v9, v5

    goto :goto_4

    :cond_5
    move v9, v8

    :goto_4
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x1

    const/4 v12, -0x2

    if-eq v10, v12, :cond_7

    if-eq v10, v11, :cond_6

    :goto_5
    move v8, v5

    goto :goto_6

    :cond_6
    move v10, p1

    goto :goto_5

    :cond_7
    move v10, p1

    :goto_6
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v12, :cond_9

    if-eq v3, v11, :cond_8

    goto :goto_7

    :cond_8
    move v3, p2

    goto :goto_7

    :cond_9
    move v3, p2

    move v5, v9

    :goto_7
    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v6, v8, v3}, Landroid/view/View;->measure(II)V

    if-eqz v7, :cond_a

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr p2, v3

    goto :goto_8

    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr p1, v3

    :cond_b
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_c
    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->zR:I

    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iput p2, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->ib:I

    iput-boolean v4, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->kF:Z

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC()V

    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->kF:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    :goto_9
    if-ge v0, p2, :cond_f

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_e

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;

    if-eqz v2, :cond_d

    iget-boolean v4, v2, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;->Sj:Z

    if-nez v4, :cond_e

    :cond_d
    int-to-float v4, p1

    iget v2, v2, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;->TKC:F

    mul-float/2addr v4, v2

    float-to-int v2, v4

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v4, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->ib:I

    invoke-virtual {v1, v2, v4}, Landroid/view/View;->measure(II)V

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_f
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v0

    move v0, v2

    move v4, v3

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    move v4, v1

    :goto_0
    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0, v5}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(Landroid/view/View;)Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    move-result-object v6

    if-eqz v6, :cond_1

    iget v6, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    iget v7, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP:I

    if-ne v6, v7, :cond_1

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v3

    :cond_1
    add-int/2addr v0, v4

    goto :goto_0

    :cond_2
    return v2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Lcom/bytedance/adsdk/ugeno/Dq/TKC$Jcg;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/bytedance/adsdk/ugeno/Dq/TKC$Jcg;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/Dq/Sj;->Sj()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/Dq/sP;

    if-eqz v0, :cond_1

    iget p1, p1, Lcom/bytedance/adsdk/ugeno/Dq/TKC$Jcg;->sP:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(IZZ)V

    return-void

    :cond_1
    iget v0, p1, Lcom/bytedance/adsdk/ugeno/Dq/TKC$Jcg;->sP:I

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TEQ:I

    iget-object v0, p1, Lcom/bytedance/adsdk/ugeno/Dq/TKC$Jcg;->TKC:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Ym:Landroid/os/Parcelable;

    iget-object p1, p1, Lcom/bytedance/adsdk/ugeno/Dq/TKC$Jcg;->EjP:Ljava/lang/ClassLoader;

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->aa:Ljava/lang/ClassLoader;

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/bytedance/adsdk/ugeno/Dq/TKC$Jcg;

    invoke-direct {v1, v0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC$Jcg;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP:I

    iput v0, v1, Lcom/bytedance/adsdk/ugeno/Dq/TKC$Jcg;->sP:I

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/Dq/sP;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/Dq/sP;->sP()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/adsdk/ugeno/Dq/TKC$Jcg;->TKC:Landroid/os/Parcelable;

    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    iget p2, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->uvD:I

    invoke-direct {p0, p1, p3, p2, p2}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->db:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/Dq/sP;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/Dq/sP;->Sj()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Fm:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Fm:Landroid/view/VelocityTracker;

    :cond_3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Fm:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_c

    const/4 v3, -0x1

    if-eq v0, v1, :cond_b

    const/4 v4, 0x2

    if-eq v0, v4, :cond_7

    const/4 v4, 0x3

    if-eq v0, v4, :cond_6

    const/4 v4, 0x5

    if-eq v0, v4, :cond_5

    const/4 v4, 0x6

    if-eq v0, v4, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(Landroid/view/MotionEvent;)V

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->xD:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-eq v0, v3, :cond_d

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->WMZ:F

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-eq v0, v3, :cond_d

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->WMZ:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->xD:I

    goto/16 :goto_1

    :cond_6
    iget-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->LqL:Z

    if-eqz p1, :cond_d

    iget p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP:I

    invoke-direct {p0, p1, v1, v2, v2}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(IZIZ)V

    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Dq()Z

    move-result v2

    goto/16 :goto_1

    :cond_7
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->LqL:Z

    if-nez v0, :cond_a

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->xD:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v3, :cond_8

    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Dq()Z

    move-result v2

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iget v5, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->WMZ:F

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget v6, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Mts:F

    sub-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->JcM:I

    int-to-float v7, v7

    cmpl-float v7, v5, v7

    if-lez v7, :cond_a

    cmpl-float v5, v5, v6

    if-lez v5, :cond_a

    iput-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->LqL:Z

    invoke-direct {p0, v1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC(Z)V

    iget v5, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->FPG:F

    sub-float/2addr v4, v5

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-lez v4, :cond_9

    iget v4, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->JcM:I

    int-to-float v4, v4

    add-float/2addr v5, v4

    goto :goto_0

    :cond_9
    iget v4, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->JcM:I

    int-to-float v4, v4

    sub-float/2addr v5, v4

    :goto_0
    iput v5, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->WMZ:F

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Mts:F

    invoke-virtual {p0, v1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->setScrollState(I)V

    invoke-direct {p0, v1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->setScrollingCacheEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_a
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->LqL:Z

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->xD:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-eq v0, v3, :cond_d

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->sP(F)Z

    move-result v2

    goto :goto_1

    :cond_b
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->LqL:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Fm:Landroid/view/VelocityTracker;

    iget v4, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Ei:I

    int-to-float v4, v4

    const/16 v5, 0x3e8

    invoke-virtual {v0, v5, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v4, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->xD:I

    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iput-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->wE:Z

    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->getClientWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v5

    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->uA()Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    move-result-object v6

    iget v7, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->uvD:I

    int-to-float v7, v7

    int-to-float v4, v4

    div-float/2addr v7, v4

    iget v8, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    iget v4, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->HiB:F

    sub-float/2addr v5, v4

    iget v4, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->EjP:F

    add-float/2addr v4, v7

    div-float/2addr v5, v4

    iget v4, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->xD:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-eq v4, v3, :cond_d

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->FPG:F

    sub-float/2addr p1, v2

    float-to-int p1, p1

    invoke-direct {p0, v8, v5, v0, p1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(IFII)I

    move-result p1

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(IZZI)V

    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Dq()Z

    move-result v2

    goto :goto_1

    :cond_c
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Fmk:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v2, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->wE:Z

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->FPG:F

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->WMZ:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Wjd:F

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Mts:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->xD:I

    :cond_d
    :goto_1
    if-eqz v2, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_e
    return v1

    :cond_f
    :goto_2
    return v2
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->kF:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method sP(I)Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    iget v2, v1, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method sP(Landroid/view/View;)Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;
    .locals 1

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    if-eqz v0, :cond_1

    instance-of p1, v0, Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(Landroid/view/View;)Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    move-result-object p1

    return-object p1
.end method

.method sP()V
    .locals 9

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/Dq/sP;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/Dq/sP;->Sj()I

    move-result v0

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj:I

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->ley:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    iget v2, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP:I

    move v5, v4

    :goto_1
    iget-object v6, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    iget-object v6, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    iget-object v7, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/Dq/sP;

    iget-object v8, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->Sj:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Lcom/bytedance/adsdk/ugeno/Dq/sP;->Sj(Ljava/lang/Object;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    const/4 v8, -0x2

    if-ne v7, v8, :cond_2

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/Dq/sP;

    iget v7, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    iget-object v8, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->Sj:Ljava/lang/Object;

    invoke-virtual {v1, p0, v7, v8}, Lcom/bytedance/adsdk/ugeno/Dq/sP;->Sj(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP:I

    iget v6, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    if-ne v1, v6, :cond_1

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v2, v1

    :cond_1
    :goto_2
    move v1, v3

    goto :goto_3

    :cond_2
    iget v8, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    if-eq v8, v7, :cond_4

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP:I

    if-ne v8, v1, :cond_3

    move v2, v7

    :cond_3
    iput v7, v6, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    goto :goto_2

    :cond_4
    :goto_3
    add-int/2addr v5, v3

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    sget-object v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->HiB:Ljava/util/Comparator;

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v1, v4

    :goto_4
    if-ge v1, v0, :cond_7

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;

    iget-boolean v6, v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;->Sj:Z

    if-nez v6, :cond_6

    const/4 v6, 0x0

    iput v6, v5, Lcom/bytedance/adsdk/ugeno/Dq/TKC$TKC;->TKC:F

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {p0, v2, v4, v3}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(IZZ)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_8
    return-void
.end method

.method public setAdapter(Lcom/bytedance/adsdk/ugeno/Dq/sP;)V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/Dq/sP;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/Dq/sP;->Sj(Landroid/database/DataSetObserver;)V

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;

    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/Dq/sP;

    iget v5, v3, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->sP:I

    iget-object v3, v3, Lcom/bytedance/adsdk/ugeno/Dq/TKC$sP;->Sj:Ljava/lang/Object;

    invoke-virtual {v4, p0, v5, v3}, Lcom/bytedance/adsdk/ugeno/Dq/sP;->Sj(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Jcg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->vS()V

    iput v2, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->EjP:I

    invoke-virtual {p0, v2, v2}, Landroid/view/View;->scrollTo(II)V

    :cond_1
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/Dq/sP;

    iput v2, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj:I

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Zq:Lcom/bytedance/adsdk/ugeno/Dq/TKC$vS;

    if-nez p1, :cond_2

    new-instance p1, Lcom/bytedance/adsdk/ugeno/Dq/TKC$vS;

    invoke-direct {p1, p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC$vS;-><init>(Lcom/bytedance/adsdk/ugeno/Dq/TKC;)V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Zq:Lcom/bytedance/adsdk/ugeno/Dq/TKC$vS;

    :cond_2
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/Dq/sP;

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Zq:Lcom/bytedance/adsdk/ugeno/Dq/TKC$vS;

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/Dq/sP;->Sj(Landroid/database/DataSetObserver;)V

    iput-boolean v2, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->wE:Z

    iget-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->UHs:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->UHs:Z

    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/Dq/sP;

    invoke-virtual {v3}, Lcom/bytedance/adsdk/ugeno/Dq/sP;->Sj()I

    move-result v3

    iput v3, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj:I

    iget v3, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TEQ:I

    if-ltz v3, :cond_3

    invoke-virtual {p0, v3, v2, v0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(IZZ)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TEQ:I

    iput-object v1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Ym:Landroid/os/Parcelable;

    iput-object v1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->aa:Ljava/lang/ClassLoader;

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->gY:Ljava/util/List;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->gY:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_2
    if-ge v2, p1, :cond_6

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->gY:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->wE:Z

    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->UHs:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(IZZ)V

    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 2

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Requested offscreen page limit "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " too small; defaulting to 1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ViewPager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    :cond_0
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->ley:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->ley:I

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC()V

    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Lcom/bytedance/adsdk/ugeno/Dq/TKC$EjP;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->pfr:Lcom/bytedance/adsdk/ugeno/Dq/TKC$EjP;

    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->uvD:I

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->uvD:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-direct {p0, v1, v1, p1, v0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->dNu:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method setScrollState(I)V
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->xu:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->xu:I

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Chv:Lcom/bytedance/adsdk/ugeno/Dq/TKC$HiB;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->sP(Z)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->vS(I)V

    return-void
.end method

.method public setScroller(Landroid/widget/Scroller;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Fmk:Landroid/widget/Scroller;

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->dNu:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
