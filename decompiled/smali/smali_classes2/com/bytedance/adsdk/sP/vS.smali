.class public Lcom/bytedance/adsdk/sP/vS;
.super Landroid/widget/ImageView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/sP/vS$Sj;,
        Lcom/bytedance/adsdk/sP/vS$sP;,
        Lcom/bytedance/adsdk/sP/vS$EjP;,
        Lcom/bytedance/adsdk/sP/vS$TKC;
    }
.end annotation


# static fields
.field private static final Sj:Ljava/lang/String; = "vS"

.field private static final sP:Lcom/bytedance/adsdk/sP/Ym;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Ym<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Dq:Ljava/lang/String;

.field private final EjP:Lcom/bytedance/adsdk/sP/Ym;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Ym<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final Fmk:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bytedance/adsdk/sP/vS$EjP;",
            ">;"
        }
    .end annotation
.end field

.field private HiB:Lcom/bytedance/adsdk/sP/Ym;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Ym<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final Jcg:Lcom/bytedance/adsdk/sP/uA;

.field private LD:Lcom/bytedance/adsdk/sP/vS$Sj;

.field private final LqL:Ljava/lang/Runnable;

.field private RiZ:Landroid/os/Handler;

.field private TEQ:Z

.field private final TKC:Lcom/bytedance/adsdk/sP/Ym;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Ym<",
            "Lcom/bytedance/adsdk/sP/Jcg;",
            ">;"
        }
    .end annotation
.end field

.field private TzV:I

.field private Yf:Lcom/bytedance/adsdk/sP/vS$sP;

.field private Ym:Z

.field private Zq:Lcom/bytedance/adsdk/sP/Fmk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Fmk<",
            "Lcom/bytedance/adsdk/sP/Jcg;",
            ">;"
        }
    .end annotation
.end field

.field private aa:Z

.field private final dNu:Landroid/os/Handler;

.field private dx:Lcom/bytedance/adsdk/sP/TKC/TKC/TKC;

.field private ib:I

.field private kF:I

.field private ley:Lorg/json/JSONArray;

.field private sU:J

.field private final sef:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private uA:I

.field private uP:I

.field private uvD:Lcom/bytedance/adsdk/sP/Jcg;

.field private vS:I

.field private wE:Ljava/lang/String;

.field private zR:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/adsdk/sP/vS$1;

    invoke-direct {v0}, Lcom/bytedance/adsdk/sP/vS$1;-><init>()V

    sput-object v0, Lcom/bytedance/adsdk/sP/vS;->sP:Lcom/bytedance/adsdk/sP/Ym;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/bytedance/adsdk/sP/vS$6;

    invoke-direct {p1, p0}, Lcom/bytedance/adsdk/sP/vS$6;-><init>(Lcom/bytedance/adsdk/sP/vS;)V

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/vS;->TKC:Lcom/bytedance/adsdk/sP/Ym;

    new-instance p1, Lcom/bytedance/adsdk/sP/vS$7;

    invoke-direct {p1, p0}, Lcom/bytedance/adsdk/sP/vS$7;-><init>(Lcom/bytedance/adsdk/sP/vS;)V

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/vS;->EjP:Lcom/bytedance/adsdk/sP/Ym;

    const/4 p1, 0x0

    iput p1, p0, Lcom/bytedance/adsdk/sP/vS;->vS:I

    new-instance v0, Lcom/bytedance/adsdk/sP/uA;

    invoke-direct {v0}, Lcom/bytedance/adsdk/sP/uA;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    iput-boolean p1, p0, Lcom/bytedance/adsdk/sP/vS;->TEQ:Z

    iput-boolean p1, p0, Lcom/bytedance/adsdk/sP/vS;->Ym:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/adsdk/sP/vS;->aa:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Fmk:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->sef:Ljava/util/Set;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->dNu:Landroid/os/Handler;

    iput p1, p0, Lcom/bytedance/adsdk/sP/vS;->TzV:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/adsdk/sP/vS;->sU:J

    new-instance p1, Lcom/bytedance/adsdk/sP/vS$4;

    invoke-direct {p1, p0}, Lcom/bytedance/adsdk/sP/vS$4;-><init>(Lcom/bytedance/adsdk/sP/vS;)V

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/vS;->LqL:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS;->Dq()V

    return-void
.end method

.method static synthetic Dq(Lcom/bytedance/adsdk/sP/vS;)Lcom/bytedance/adsdk/sP/vS$Sj;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/adsdk/sP/vS;->LD:Lcom/bytedance/adsdk/sP/vS$Sj;

    return-object p0
.end method

.method private Dq()V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSaveEnabled(Z)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/adsdk/sP/vS;->aa:Z

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/sP/vS;->setFallbackResource(I)V

    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/bytedance/adsdk/sP/vS;->setImageAssetsFolder(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/bytedance/adsdk/sP/vS;->Sj(FZ)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/bytedance/adsdk/sP/vS;->Sj(ZLandroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/sP/vS;->setIgnoreDisabledSystemAnimations(Z)V

    iget-object v3, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/adsdk/sP/vS/vS;->Sj(Landroid/content/Context;)F

    move-result v4

    cmpl-float v2, v4, v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bytedance/adsdk/sP/uA;->Sj(Ljava/lang/Boolean;)V

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS;->uA()V

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS;->TEQ()V

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS;->aa()V

    return-void
.end method

.method private EjP(Landroid/graphics/Matrix;FFFF)V
    .locals 4

    cmpl-float v0, p4, p2

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-gez v0, :cond_2

    cmpl-float v0, p5, p3

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    div-float v0, p4, p5

    div-float v3, p2, p3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    div-float/2addr p2, p4

    invoke-virtual {p1, p2, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    mul-float/2addr p5, p2

    sub-float/2addr p3, p5

    div-float/2addr p3, v1

    invoke-virtual {p1, v2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :cond_1
    div-float/2addr p3, p5

    invoke-virtual {p1, p3, p3}, Landroid/graphics/Matrix;->preScale(FF)Z

    mul-float/2addr p4, p3

    sub-float/2addr p2, p4

    div-float/2addr p2, v1

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :cond_2
    :goto_0
    div-float v0, p4, p5

    div-float v3, p2, p3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_3

    div-float/2addr p2, p4

    invoke-virtual {p1, p2, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    mul-float/2addr p5, p2

    sub-float/2addr p3, p5

    div-float/2addr p3, v1

    invoke-virtual {p1, v2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :cond_3
    div-float/2addr p3, p5

    invoke-virtual {p1, p3, p3}, Landroid/graphics/Matrix;->preScale(FF)Z

    mul-float/2addr p4, p3

    sub-float/2addr p2, p4

    div-float/2addr p2, v1

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method static synthetic EjP(Lcom/bytedance/adsdk/sP/vS;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS;->Ym()V

    return-void
.end method

.method static synthetic Fmk(Lcom/bytedance/adsdk/sP/vS;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/adsdk/sP/vS;->RiZ:Landroid/os/Handler;

    return-object p0
.end method

.method private Fmk()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Zq:Lcom/bytedance/adsdk/sP/Fmk;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/vS;->TKC:Lcom/bytedance/adsdk/sP/Ym;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/sP/Fmk;->sP(Lcom/bytedance/adsdk/sP/Ym;)Lcom/bytedance/adsdk/sP/Fmk;

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Zq:Lcom/bytedance/adsdk/sP/Fmk;

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/vS;->EjP:Lcom/bytedance/adsdk/sP/Ym;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/sP/Fmk;->EjP(Lcom/bytedance/adsdk/sP/Ym;)Lcom/bytedance/adsdk/sP/Fmk;

    :cond_0
    return-void
.end method

.method static synthetic HiB(Lcom/bytedance/adsdk/sP/vS;)I
    .locals 2

    iget v0, p0, Lcom/bytedance/adsdk/sP/vS;->TzV:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/adsdk/sP/vS;->TzV:I

    return v0
.end method

.method static synthetic Jcg(Lcom/bytedance/adsdk/sP/vS;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/adsdk/sP/vS;->TzV:I

    return p0
.end method

.method static synthetic Jcg()Lcom/bytedance/adsdk/sP/Ym;
    .locals 1

    sget-object v0, Lcom/bytedance/adsdk/sP/vS;->sP:Lcom/bytedance/adsdk/sP/Ym;

    return-object v0
.end method

.method static synthetic RiZ(Lcom/bytedance/adsdk/sP/vS;)Lcom/bytedance/adsdk/sP/TKC/TKC/TKC;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/adsdk/sP/vS;->dx:Lcom/bytedance/adsdk/sP/TKC/TKC/TKC;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/adsdk/sP/vS;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/adsdk/sP/vS;->vS:I

    return p0
.end method

.method static synthetic Sj(Lcom/bytedance/adsdk/sP/vS;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/vS;->RiZ:Landroid/os/Handler;

    return-object p1
.end method

.method private Sj(I)Lcom/bytedance/adsdk/sP/Fmk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bytedance/adsdk/sP/Fmk<",
            "Lcom/bytedance/adsdk/sP/Jcg;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/adsdk/sP/Fmk;

    new-instance v1, Lcom/bytedance/adsdk/sP/vS$13;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/adsdk/sP/vS$13;-><init>(Lcom/bytedance/adsdk/sP/vS;I)V

    const/4 p1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/bytedance/adsdk/sP/Fmk;-><init>(Ljava/util/concurrent/Callable;Z)V

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/vS;->aa:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/adsdk/sP/Dq;->Sj(Landroid/content/Context;I)Lcom/bytedance/adsdk/sP/Fmk;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/bytedance/adsdk/sP/Dq;->Sj(Landroid/content/Context;ILjava/lang/String;)Lcom/bytedance/adsdk/sP/Fmk;

    move-result-object p1

    return-object p1
.end method

.method private Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/sP/TEQ;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->wE()Lcom/bytedance/adsdk/sP/Jcg;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Jcg;->uvD()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/adsdk/sP/TEQ;

    return-object p1

    :cond_1
    return-object v1
.end method

.method private Sj(Landroid/view/MotionEvent;)Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->sP()Lcom/bytedance/adsdk/sP/TKC/TKC/sP;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/bytedance/adsdk/sP/vS;->Sj(Lcom/bytedance/adsdk/sP/TKC/TKC/sP;Landroid/view/MotionEvent;)Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;

    move-result-object p1

    return-object p1
.end method

.method private Sj(Lcom/bytedance/adsdk/sP/TKC/TKC/sP;Landroid/view/MotionEvent;)Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;
    .locals 5

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/TKC/sP;->aa()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;

    instance-of v1, v0, Lcom/bytedance/adsdk/sP/TKC/TKC/sP;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Dq()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->vS()F

    move-result v1

    cmpg-float v1, v1, v2

    if-lez v1, :cond_0

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->EjP()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40400000    # 3.0f

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_0

    check-cast v0, Lcom/bytedance/adsdk/sP/TKC/TKC/sP;

    invoke-direct {p0, v0, p2}, Lcom/bytedance/adsdk/sP/vS;->Sj(Lcom/bytedance/adsdk/sP/TKC/TKC/sP;Landroid/view/MotionEvent;)Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Dq()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->vS()F

    move-result v1

    cmpg-float v1, v1, v2

    if-lez v1, :cond_0

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/bytedance/adsdk/sP/uA;->Jcg()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->EjP()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/sP/uA;->LD()Landroid/graphics/RectF;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v1, v2}, Lcom/bytedance/adsdk/sP/vS;->Sj(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->EjP()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v3}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    invoke-direct {p0, v1, v2}, Lcom/bytedance/adsdk/sP/vS;->sP(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_3
    :goto_0
    invoke-direct {p0, p2, v1}, Lcom/bytedance/adsdk/sP/vS;->Sj(Landroid/view/MotionEvent;Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method private Sj(Lcom/bytedance/adsdk/sP/TKC/TKC/sP;Ljava/lang/String;)Lcom/bytedance/adsdk/sP/TKC/TKC/TKC;
    .locals 2

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/TKC/sP;->aa()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;

    instance-of v1, v0, Lcom/bytedance/adsdk/sP/TKC/TKC/sP;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/bytedance/adsdk/sP/TKC/TKC/sP;

    invoke-direct {p0, v0, p2}, Lcom/bytedance/adsdk/sP/vS;->Sj(Lcom/bytedance/adsdk/sP/TKC/TKC/sP;Ljava/lang/String;)Lcom/bytedance/adsdk/sP/TKC/TKC/TKC;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->uA()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/bytedance/adsdk/sP/TKC/TKC/TKC;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/bytedance/adsdk/sP/TKC/TKC/TKC;

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private Sj(FZ)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/bytedance/adsdk/sP/vS;->Fmk:Ljava/util/Set;

    sget-object v0, Lcom/bytedance/adsdk/sP/vS$EjP;->sP:Lcom/bytedance/adsdk/sP/vS$EjP;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p2, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {p2, p1}, Lcom/bytedance/adsdk/sP/uA;->EjP(F)V

    return-void
.end method

.method private Sj(J)V
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS;->getGlobalConfig()Lcom/bytedance/adsdk/sP/Jcg$Sj;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/vS;->LD:Lcom/bytedance/adsdk/sP/vS$Sj;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "duration"

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/bytedance/adsdk/sP/Jcg$Sj;->sP:Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, v0, Lcom/bytedance/adsdk/sP/Jcg$Sj;->sP:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private Sj(Landroid/graphics/Matrix;FFFF)V
    .locals 3

    div-float v0, p4, p5

    div-float v1, p2, p3

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-ltz v0, :cond_0

    div-float/2addr p3, p5

    invoke-virtual {p1, p3, p3}, Landroid/graphics/Matrix;->preScale(FF)Z

    mul-float/2addr p4, p3

    sub-float/2addr p4, p2

    div-float/2addr p4, v2

    neg-float p2, p4

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :cond_0
    div-float/2addr p2, p4

    invoke-virtual {p1, p2, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    mul-float/2addr p5, p2

    sub-float/2addr p5, p3

    div-float/2addr p5, v2

    neg-float p2, p5

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private Sj(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/4 p2, 0x0

    cmpl-float v0, v3, p2

    if-eqz v0, :cond_5

    cmpl-float v0, v4, p2

    if-eqz v0, :cond_5

    cmpl-float v0, v5, p2

    if-eqz v0, :cond_5

    cmpl-float p2, v6, p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    sget-object v0, Lcom/bytedance/adsdk/sP/vS$5;->Sj:[I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/adsdk/sP/vS;->EjP(Landroid/graphics/Matrix;FFFF)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/adsdk/sP/vS;->TKC(Landroid/graphics/Matrix;FFFF)V

    goto :goto_0

    :cond_3
    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/adsdk/sP/vS;->sP(Landroid/graphics/Matrix;FFFF)V

    goto :goto_0

    :cond_4
    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/adsdk/sP/vS;->Sj(Landroid/graphics/Matrix;FFFF)V

    :goto_0
    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/adsdk/sP/vS;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/adsdk/sP/vS;->Sj(J)V

    return-void
.end method

.method private Sj(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS;->getGlobalEvent()Lcom/bytedance/adsdk/sP/Jcg$sP;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CSJNO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p2, v0, Lcom/bytedance/adsdk/sP/Jcg$sP;->Sj:Ljava/lang/String;

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_1
    const-string v1, "CSJLELNO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p3, v0, Lcom/bytedance/adsdk/sP/Jcg$sP;->TKC:Lorg/json/JSONArray;

    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    :cond_3
    return-void
.end method

.method private Sj([[I)V
    .locals 3

    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    aget-object p1, p1, v0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    if-ltz v0, :cond_1

    if-ltz p1, :cond_1

    const-string v1, "--==--- inel enter, play anim, startframe: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS;->uvD()V

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS;->Sj()V

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/sP/vS;->setFrame(I)V

    new-instance v0, Lcom/bytedance/adsdk/sP/vS$12;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/adsdk/sP/vS$12;-><init>(Lcom/bytedance/adsdk/sP/vS;I)V

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/sP/vS;->Sj(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method private Sj(Landroid/view/MotionEvent;Landroid/graphics/RectF;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v2, p2, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_1

    iget v2, p2, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    iget v1, p2, Landroid/graphics/RectF;->top:F

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method static synthetic TEQ(Lcom/bytedance/adsdk/sP/vS;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/adsdk/sP/vS;->sU:J

    return-wide v0
.end method

.method private TEQ()V
    .locals 1

    new-instance v0, Lcom/bytedance/adsdk/sP/vS$9;

    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/sP/vS$9;-><init>(Lcom/bytedance/adsdk/sP/vS;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/sP/vS;->Sj(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private TKC(Ljava/lang/String;)Lcom/bytedance/adsdk/sP/TKC/TKC/TKC;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->sP()Lcom/bytedance/adsdk/sP/TKC/TKC/sP;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/bytedance/adsdk/sP/vS;->Sj(Lcom/bytedance/adsdk/sP/TKC/TKC/sP;Ljava/lang/String;)Lcom/bytedance/adsdk/sP/TKC/TKC/TKC;

    move-result-object p1

    return-object p1
.end method

.method private TKC(Landroid/graphics/Matrix;FFFF)V
    .locals 0

    sub-float/2addr p2, p4

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p2, p4

    sub-float/2addr p3, p5

    div-float/2addr p3, p4

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method static synthetic TKC(Lcom/bytedance/adsdk/sP/vS;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS;->sef()V

    return-void
.end method

.method static synthetic TzV(Lcom/bytedance/adsdk/sP/vS;)I
    .locals 2

    iget v0, p0, Lcom/bytedance/adsdk/sP/vS;->zR:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/bytedance/adsdk/sP/vS;->zR:I

    return v0
.end method

.method private TzV()V
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS;->EjP()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bytedance/adsdk/sP/vS;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {p0, v1}, Lcom/bytedance/adsdk/sP/vS;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->Fmk()V

    :cond_0
    return-void
.end method

.method static synthetic Ym(Lcom/bytedance/adsdk/sP/vS;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS;->getPlayDelayedELExpressTimeS()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private Ym()V
    .locals 4

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS;->getGlobalConfig()Lcom/bytedance/adsdk/sP/Jcg$Sj;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, v0, Lcom/bytedance/adsdk/sP/Jcg$Sj;->HiB:I

    if-lez v1, :cond_2

    iget-object v1, v0, Lcom/bytedance/adsdk/sP/Jcg$Sj;->vS:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/bytedance/adsdk/sP/Jcg$Sj;->Jcg:Lorg/json/JSONArray;

    if-eqz v1, :cond_2

    :cond_0
    iget v1, v0, Lcom/bytedance/adsdk/sP/Jcg$Sj;->HiB:I

    int-to-float v2, v1

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS;->getMaxFrame()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS;->getMaxFrame()F

    move-result v1

    float-to-int v1, v1

    :cond_1
    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS;->getMaxFrame()F

    move-result v2

    div-float/2addr v1, v2

    new-instance v2, Lcom/bytedance/adsdk/sP/vS$10;

    invoke-direct {v2, p0, v1, v0}, Lcom/bytedance/adsdk/sP/vS$10;-><init>(Lcom/bytedance/adsdk/sP/vS;FLcom/bytedance/adsdk/sP/Jcg$Sj;)V

    invoke-virtual {p0, v2}, Lcom/bytedance/adsdk/sP/vS;->Sj(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_2
    return-void
.end method

.method private Zq()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->dNu:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/vS;->LqL:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic Zq(Lcom/bytedance/adsdk/sP/vS;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS;->Zq()V

    return-void
.end method

.method static synthetic aa(Lcom/bytedance/adsdk/sP/vS;)Lcom/bytedance/adsdk/sP/uA;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    return-object p0
.end method

.method private aa()V
    .locals 1

    new-instance v0, Lcom/bytedance/adsdk/sP/vS$11;

    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/sP/vS$11;-><init>(Lcom/bytedance/adsdk/sP/vS;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/sP/vS;->Sj(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic dNu(Lcom/bytedance/adsdk/sP/vS;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/adsdk/sP/vS;->ib:I

    return p0
.end method

.method private dNu()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->uvD:Lcom/bytedance/adsdk/sP/Jcg;

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->TEQ()V

    return-void
.end method

.method static synthetic dx(Lcom/bytedance/adsdk/sP/vS;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/adsdk/sP/vS;->uP:I

    return p0
.end method

.method private getGlobalConfig()Lcom/bytedance/adsdk/sP/Jcg$Sj;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->wE()Lcom/bytedance/adsdk/sP/Jcg;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Jcg;->Ym()Lcom/bytedance/adsdk/sP/Jcg$Sj;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getGlobalEvent()Lcom/bytedance/adsdk/sP/Jcg$sP;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->wE()Lcom/bytedance/adsdk/sP/Jcg;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Jcg;->TEQ()Lcom/bytedance/adsdk/sP/Jcg$sP;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getPlayDelayedELExpressTimeS()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->wE()Lcom/bytedance/adsdk/sP/Jcg;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Jcg;->uA()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic ib(Lcom/bytedance/adsdk/sP/vS;)Lorg/json/JSONArray;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/adsdk/sP/vS;->ley:Lorg/json/JSONArray;

    return-object p0
.end method

.method private sP(Ljava/lang/String;)Lcom/bytedance/adsdk/sP/Fmk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bytedance/adsdk/sP/Fmk<",
            "Lcom/bytedance/adsdk/sP/Jcg;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/adsdk/sP/Fmk;

    new-instance v1, Lcom/bytedance/adsdk/sP/vS$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/adsdk/sP/vS$2;-><init>(Lcom/bytedance/adsdk/sP/vS;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/bytedance/adsdk/sP/Fmk;-><init>(Ljava/util/concurrent/Callable;Z)V

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/vS;->aa:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/adsdk/sP/Dq;->sP(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/adsdk/sP/Fmk;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/bytedance/adsdk/sP/Dq;->sP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/adsdk/sP/Fmk;

    move-result-object p1

    return-object p1
.end method

.method static synthetic sP(Lcom/bytedance/adsdk/sP/vS;)Lcom/bytedance/adsdk/sP/Ym;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/adsdk/sP/vS;->HiB:Lcom/bytedance/adsdk/sP/Ym;

    return-object p0
.end method

.method private sP(Landroid/graphics/Matrix;FFFF)V
    .locals 3

    cmpl-float v0, p4, p2

    const/high16 v1, 0x40000000    # 2.0f

    if-gez v0, :cond_1

    cmpl-float v0, p5, p3

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr p2, p4

    div-float/2addr p2, v1

    sub-float/2addr p3, p5

    div-float/2addr p3, v1

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :cond_1
    :goto_0
    div-float v0, p4, p5

    div-float v2, p2, p3

    cmpl-float v0, v0, v2

    const/4 v2, 0x0

    if-ltz v0, :cond_2

    div-float/2addr p2, p4

    invoke-virtual {p1, p2, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    mul-float/2addr p5, p2

    sub-float/2addr p3, p5

    div-float/2addr p3, v1

    invoke-virtual {p1, v2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :cond_2
    div-float/2addr p3, p5

    invoke-virtual {p1, p3, p3}, Landroid/graphics/Matrix;->preScale(FF)Z

    mul-float/2addr p4, p3

    sub-float/2addr p2, p4

    div-float/2addr p2, v1

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private sP(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v6, v0

    const/4 v0, 0x0

    cmpl-float v1, v3, v0

    if-eqz v1, :cond_5

    cmpl-float v1, v4, v0

    if-eqz v1, :cond_5

    cmpl-float v1, v5, v0

    if-eqz v1, :cond_5

    cmpl-float v0, v6, v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sget-object v1, Lcom/bytedance/adsdk/sP/vS$5;->Sj:[I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/adsdk/sP/vS;->EjP(Landroid/graphics/Matrix;FFFF)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/adsdk/sP/vS;->TKC(Landroid/graphics/Matrix;FFFF)V

    goto :goto_0

    :cond_3
    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/adsdk/sP/vS;->sP(Landroid/graphics/Matrix;FFFF)V

    goto :goto_0

    :cond_4
    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/adsdk/sP/vS;->Sj(Landroid/graphics/Matrix;FFFF)V

    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method static synthetic sU(Lcom/bytedance/adsdk/sP/vS;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/adsdk/sP/vS;->kF:I

    return p0
.end method

.method private sef()V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->uvD:Lcom/bytedance/adsdk/sP/Jcg;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->kF()Lcom/bytedance/adsdk/sP/sU;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/vS;->uvD:Lcom/bytedance/adsdk/sP/Jcg;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/sP/Jcg;->Dq()Lcom/bytedance/adsdk/sP/Jcg$TKC;

    move-result-object v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    iget v2, v1, Lcom/bytedance/adsdk/sP/Jcg$TKC;->Sj:I

    if-gez v2, :cond_0

    const-string v0, "--==--- timer fail, ke is invalid: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_0
    iget-object v3, v1, Lcom/bytedance/adsdk/sP/Jcg$TKC;->HiB:[I

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    array-length v5, v3

    const/4 v6, 0x2

    if-lt v5, v6, :cond_1

    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v3, v3, v6

    goto :goto_0

    :cond_1
    move v3, v4

    move v5, v3

    :goto_0
    iget-object v6, v1, Lcom/bytedance/adsdk/sP/Jcg$TKC;->TKC:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/bytedance/adsdk/sP/sU;->Sj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/bytedance/adsdk/sP/Jcg$TKC;->EjP:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/bytedance/adsdk/sP/sU;->Sj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move v6, v4

    :catch_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "--==--- prepare timer, startS: "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", lenS: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/bytedance/adsdk/sP/Jcg$TKC;->sP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "--==--- timer, id:"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/bytedance/adsdk/sP/Jcg$TKC;->sP:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/bytedance/adsdk/sP/Jcg$TKC;->sP:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bytedance/adsdk/sP/vS;->TKC(Ljava/lang/String;)Lcom/bytedance/adsdk/sP/TKC/TKC/TKC;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v7, v1, Lcom/bytedance/adsdk/sP/Jcg$TKC;->vS:Ljava/lang/String;

    iput-object v7, p0, Lcom/bytedance/adsdk/sP/vS;->wE:Ljava/lang/String;

    iget-object v1, v1, Lcom/bytedance/adsdk/sP/Jcg$TKC;->Jcg:Lorg/json/JSONArray;

    iput-object v1, p0, Lcom/bytedance/adsdk/sP/vS;->ley:Lorg/json/JSONArray;

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->dx:Lcom/bytedance/adsdk/sP/TKC/TKC/TKC;

    iput v6, p0, Lcom/bytedance/adsdk/sP/vS;->zR:I

    sub-int v1, v6, v4

    iput v1, p0, Lcom/bytedance/adsdk/sP/vS;->ib:I

    iput v5, p0, Lcom/bytedance/adsdk/sP/vS;->kF:I

    iput v3, p0, Lcom/bytedance/adsdk/sP/vS;->uP:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/bytedance/adsdk/sP/vS;->zR:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/sP/TKC/TKC/TKC;->Sj(Ljava/lang/String;)V

    new-instance v0, Lcom/bytedance/adsdk/sP/vS$3;

    invoke-direct {v0, p0, v2, v6, v4}, Lcom/bytedance/adsdk/sP/vS$3;-><init>(Lcom/bytedance/adsdk/sP/vS;III)V

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/sP/vS;->Sj(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "--==--- timer fail, id is invalid: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/bytedance/adsdk/sP/Jcg$TKC;->sP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    return-void
.end method

.method static synthetic sef(Lcom/bytedance/adsdk/sP/vS;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/adsdk/sP/vS;->aa:Z

    return p0
.end method

.method private setCompositionTask(Lcom/bytedance/adsdk/sP/Fmk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/sP/Fmk<",
            "Lcom/bytedance/adsdk/sP/Jcg;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Fmk:Ljava/util/Set;

    sget-object v1, Lcom/bytedance/adsdk/sP/vS$EjP;->Sj:Lcom/bytedance/adsdk/sP/vS$EjP;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS;->dNu()V

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS;->Fmk()V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->TKC:Lcom/bytedance/adsdk/sP/Ym;

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/sP/Fmk;->Sj(Lcom/bytedance/adsdk/sP/Ym;)Lcom/bytedance/adsdk/sP/Fmk;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->EjP:Lcom/bytedance/adsdk/sP/Ym;

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/sP/Fmk;->TKC(Lcom/bytedance/adsdk/sP/Ym;)Lcom/bytedance/adsdk/sP/Fmk;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/vS;->Zq:Lcom/bytedance/adsdk/sP/Fmk;

    return-void
.end method

.method static synthetic uA(Lcom/bytedance/adsdk/sP/vS;)Lcom/bytedance/adsdk/sP/vS$sP;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/adsdk/sP/vS;->Yf:Lcom/bytedance/adsdk/sP/vS$sP;

    return-object p0
.end method

.method private uA()V
    .locals 1

    new-instance v0, Lcom/bytedance/adsdk/sP/vS$8;

    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/sP/vS$8;-><init>(Lcom/bytedance/adsdk/sP/vS;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/sP/vS;->Sj(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic uvD(Lcom/bytedance/adsdk/sP/vS;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/adsdk/sP/vS;->zR:I

    return p0
.end method

.method private uvD()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->dNu:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic vS(Lcom/bytedance/adsdk/sP/vS;)Lcom/bytedance/adsdk/sP/Jcg$Sj;
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS;->getGlobalConfig()Lcom/bytedance/adsdk/sP/Jcg$Sj;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zR(Lcom/bytedance/adsdk/sP/vS;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/adsdk/sP/vS;->wE:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public EjP()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->zR()Z

    move-result v0

    return v0
.end method

.method public HiB()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Fmk:Ljava/util/Set;

    sget-object v1, Lcom/bytedance/adsdk/sP/vS$EjP;->vS:Lcom/bytedance/adsdk/sP/vS$EjP;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->ley()V

    return-void
.end method

.method public Sj(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/adsdk/sP/uA;->Sj(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public Sj()V
    .locals 4

    iget-wide v0, p0, Lcom/bytedance/adsdk/sP/vS;->sU:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/adsdk/sP/vS;->sU:J

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Fmk:Ljava/util/Set;

    sget-object v1, Lcom/bytedance/adsdk/sP/vS$EjP;->vS:Lcom/bytedance/adsdk/sP/vS$EjP;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->Ym()V

    return-void
.end method

.method public Sj(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/uA;->Sj(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public Sj(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/uA;->Sj(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public Sj(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/sP/Dq;->Sj(Ljava/io/InputStream;Ljava/lang/String;)Lcom/bytedance/adsdk/sP/Fmk;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/sP/vS;->setCompositionTask(Lcom/bytedance/adsdk/sP/Fmk;)V

    return-void
.end method

.method public Sj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lcom/bytedance/adsdk/sP/vS;->Sj(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public Sj(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/uA;->HiB(I)V

    return-void
.end method

.method public Sj(ZLandroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/adsdk/sP/uA;->Sj(ZLandroid/content/Context;)V

    return-void
.end method

.method public TKC()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->TzV()V

    return-void
.end method

.method public getClipToCompositionBounds()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->TKC()Z

    move-result v0

    return v0
.end method

.method public getComposition()Lcom/bytedance/adsdk/sP/Jcg;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->uvD:Lcom/bytedance/adsdk/sP/Jcg;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->uvD:Lcom/bytedance/adsdk/sP/Jcg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Jcg;->HiB()F

    move-result v0

    float-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFrame()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->RiZ()I

    move-result v0

    return v0
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->EjP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaintainOriginalImageBounds()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->HiB()Z

    move-result v0

    return v0
.end method

.method public getMaxFrame()F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->Zq()F

    move-result v0

    return v0
.end method

.method public getMinFrame()F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->sef()F

    move-result v0

    return v0
.end method

.method public getPerformanceTracker()Lcom/bytedance/adsdk/sP/TzV;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->Dq()Lcom/bytedance/adsdk/sP/TzV;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->Yf()F

    move-result v0

    return v0
.end method

.method public getRenderMode()Lcom/bytedance/adsdk/sP/RiZ;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->vS()Lcom/bytedance/adsdk/sP/RiZ;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatCount()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->dx()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->sU()I

    move-result v0

    return v0
.end method

.method public getSpeed()F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->uvD()F

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageView;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lcom/bytedance/adsdk/sP/uA;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->vS()Lcom/bytedance/adsdk/sP/RiZ;

    move-result-object v0

    sget-object v1, Lcom/bytedance/adsdk/sP/RiZ;->TKC:Lcom/bytedance/adsdk/sP/RiZ;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    if-ne v0, v1, :cond_0

    invoke-super {p0, v1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/vS;->Ym:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->Ym()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS;->uvD()V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->RiZ:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS;->TKC()V

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS;->sP()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Lcom/bytedance/adsdk/sP/vS$TKC;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/bytedance/adsdk/sP/vS$TKC;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p1, Lcom/bytedance/adsdk/sP/vS$TKC;->Sj:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Dq:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Fmk:Ljava/util/Set;

    sget-object v1, Lcom/bytedance/adsdk/sP/vS$EjP;->Sj:Lcom/bytedance/adsdk/sP/vS$EjP;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Dq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Dq:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/sP/vS;->setAnimation(Ljava/lang/String;)V

    :cond_1
    iget v0, p1, Lcom/bytedance/adsdk/sP/vS$TKC;->sP:I

    iput v0, p0, Lcom/bytedance/adsdk/sP/vS;->uA:I

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Fmk:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/bytedance/adsdk/sP/vS;->uA:I

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/sP/vS;->setAnimation(I)V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Fmk:Ljava/util/Set;

    sget-object v1, Lcom/bytedance/adsdk/sP/vS$EjP;->sP:Lcom/bytedance/adsdk/sP/vS$EjP;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p1, Lcom/bytedance/adsdk/sP/vS$TKC;->TKC:F

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/adsdk/sP/vS;->Sj(FZ)V

    :cond_3
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Fmk:Ljava/util/Set;

    sget-object v1, Lcom/bytedance/adsdk/sP/vS$EjP;->vS:Lcom/bytedance/adsdk/sP/vS$EjP;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lcom/bytedance/adsdk/sP/vS$TKC;->EjP:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS;->Sj()V

    :cond_4
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Fmk:Ljava/util/Set;

    sget-object v1, Lcom/bytedance/adsdk/sP/vS$EjP;->HiB:Lcom/bytedance/adsdk/sP/vS$EjP;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/bytedance/adsdk/sP/vS$TKC;->HiB:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/sP/vS;->setImageAssetsFolder(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Fmk:Ljava/util/Set;

    sget-object v1, Lcom/bytedance/adsdk/sP/vS$EjP;->TKC:Lcom/bytedance/adsdk/sP/vS$EjP;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p1, Lcom/bytedance/adsdk/sP/vS$TKC;->vS:I

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/sP/vS;->setRepeatMode(I)V

    :cond_6
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Fmk:Ljava/util/Set;

    sget-object v1, Lcom/bytedance/adsdk/sP/vS$EjP;->EjP:Lcom/bytedance/adsdk/sP/vS$EjP;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget p1, p1, Lcom/bytedance/adsdk/sP/vS$TKC;->Jcg:I

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/sP/vS;->setRepeatCount(I)V

    :cond_7
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/bytedance/adsdk/sP/vS$TKC;

    invoke-direct {v1, v0}, Lcom/bytedance/adsdk/sP/vS$TKC;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Dq:Ljava/lang/String;

    iput-object v0, v1, Lcom/bytedance/adsdk/sP/vS$TKC;->Sj:Ljava/lang/String;

    iget v0, p0, Lcom/bytedance/adsdk/sP/vS;->uA:I

    iput v0, v1, Lcom/bytedance/adsdk/sP/vS$TKC;->sP:I

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->Yf()F

    move-result v0

    iput v0, v1, Lcom/bytedance/adsdk/sP/vS$TKC;->TKC:F

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->ib()Z

    move-result v0

    iput-boolean v0, v1, Lcom/bytedance/adsdk/sP/vS$TKC;->EjP:Z

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->EjP()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/adsdk/sP/vS$TKC;->HiB:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->sU()I

    move-result v0

    iput v0, v1, Lcom/bytedance/adsdk/sP/vS$TKC;->vS:I

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->dx()I

    move-result v0

    iput v0, v1, Lcom/bytedance/adsdk/sP/vS$TKC;->Jcg:I

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/sP/vS;->Sj(Landroid/view/MotionEvent;)Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->uA()Ljava/lang/String;

    move-result-object v3

    instance-of v4, v0, Lcom/bytedance/adsdk/sP/TKC/TKC/sP;

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS;->getGlobalConfig()Lcom/bytedance/adsdk/sP/Jcg$Sj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS;->getGlobalConfig()Lcom/bytedance/adsdk/sP/Jcg$Sj;

    move-result-object v0

    iget v0, v0, Lcom/bytedance/adsdk/sP/Jcg$Sj;->Sj:I

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    if-eqz v3, :cond_2

    const-string v4, "CSJCLOSE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS;->uvD()V

    :cond_2
    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->HiB()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/adsdk/sP/vS;->Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/sP/TEQ;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TEQ;->HiB()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TEQ;->Jcg()Lorg/json/JSONArray;

    move-result-object v4

    invoke-direct {p0, v3, v2, v4}, Lcom/bytedance/adsdk/sP/vS;->Sj(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TEQ;->vS()[[I

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/bytedance/adsdk/sP/vS;->Sj([[I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS;->getGlobalEvent()Lcom/bytedance/adsdk/sP/Jcg$sP;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS;->getGlobalEvent()Lcom/bytedance/adsdk/sP/Jcg$sP;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/adsdk/sP/Jcg$sP;->sP:[[I

    if-eqz v0, :cond_4

    invoke-direct {p0, v0}, Lcom/bytedance/adsdk/sP/vS;->Sj([[I)V

    :cond_4
    :goto_0
    if-eqz v3, :cond_5

    const-string v0, "CSJNTP"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_6
    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS;->getGlobalConfig()Lcom/bytedance/adsdk/sP/Jcg$Sj;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS;->getGlobalConfig()Lcom/bytedance/adsdk/sP/Jcg$Sj;

    move-result-object v0

    iget v0, v0, Lcom/bytedance/adsdk/sP/Jcg$Sj;->Sj:I

    if-ne v0, v2, :cond_7

    return v1

    :cond_7
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public sP()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->dNu()V

    return-void
.end method

.method public sP(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/uA;->sP(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public sP(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/uA;->sP(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public setAnimation(I)V
    .locals 1

    iput p1, p0, Lcom/bytedance/adsdk/sP/vS;->uA:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Dq:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/sP/vS;->Sj(I)Lcom/bytedance/adsdk/sP/Fmk;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/sP/vS;->setCompositionTask(Lcom/bytedance/adsdk/sP/Fmk;)V

    return-void
.end method

.method public setAnimation(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/vS;->Dq:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/adsdk/sP/vS;->uA:I

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/sP/vS;->sP(Ljava/lang/String;)Lcom/bytedance/adsdk/sP/Fmk;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/sP/vS;->setCompositionTask(Lcom/bytedance/adsdk/sP/Fmk;)V

    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/adsdk/sP/vS;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAnimationFromUrl(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/vS;->aa:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/adsdk/sP/Dq;->Sj(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/adsdk/sP/Fmk;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/bytedance/adsdk/sP/Dq;->Sj(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/adsdk/sP/Fmk;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/sP/vS;->setCompositionTask(Lcom/bytedance/adsdk/sP/Fmk;)V

    return-void
.end method

.method public setApplyingOpacityToLayersEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/uA;->HiB(Z)V

    return-void
.end method

.method public setCacheComposition(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/adsdk/sP/vS;->aa:Z

    return-void
.end method

.method public setClipToCompositionBounds(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/uA;->Sj(Z)V

    return-void
.end method

.method public setComposition(Lcom/bytedance/adsdk/sP/Jcg;)V
    .locals 3

    sget-boolean v0, Lcom/bytedance/adsdk/sP/HiB;->Sj:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/adsdk/sP/vS;->Sj:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Set Composition \n"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/vS;->uvD:Lcom/bytedance/adsdk/sP/Jcg;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/adsdk/sP/vS;->TEQ:Z

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/adsdk/sP/uA;->Sj(Lcom/bytedance/adsdk/sP/Jcg;Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/adsdk/sP/vS;->TEQ:Z

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS;->TzV()V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    invoke-virtual {p0, p0, p1}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/vS;->sef:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setDefaultFontFileExtension(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/uA;->Jcg(Ljava/lang/String;)V

    return-void
.end method

.method public setFailureListener(Lcom/bytedance/adsdk/sP/Ym;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/sP/Ym<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/vS;->HiB:Lcom/bytedance/adsdk/sP/Ym;

    return-void
.end method

.method public setFallbackResource(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/adsdk/sP/vS;->vS:I

    return-void
.end method

.method public setFontAssetDelegate(Lcom/bytedance/adsdk/sP/TKC;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/uA;->Sj(Lcom/bytedance/adsdk/sP/TKC;)V

    return-void
.end method

.method public setFontMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/uA;->Sj(Ljava/util/Map;)V

    return-void
.end method

.method public setFrame(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/uA;->TKC(I)V

    return-void
.end method

.method public setIgnoreDisabledSystemAnimations(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/uA;->Jcg(Z)V

    return-void
.end method

.method public setImageAssetDelegate(Lcom/bytedance/adsdk/sP/EjP;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/uA;->Sj(Lcom/bytedance/adsdk/sP/EjP;)V

    return-void
.end method

.method public setImageAssetsFolder(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/uA;->Sj(Ljava/lang/String;)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS;->Fmk()V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS;->Fmk()V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS;->Fmk()V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setLottieAnimListener(Lcom/bytedance/adsdk/sP/vS$Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/vS;->LD:Lcom/bytedance/adsdk/sP/vS$Sj;

    return-void
.end method

.method public setLottieClicklistener(Lcom/bytedance/adsdk/sP/vS$sP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/vS;->Yf:Lcom/bytedance/adsdk/sP/vS$sP;

    return-void
.end method

.method public setMaintainOriginalImageBounds(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/uA;->sP(Z)V

    return-void
.end method

.method public setMaxFrame(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/uA;->sP(I)V

    return-void
.end method

.method public setMaxFrame(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/uA;->TKC(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxProgress(F)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/uA;->sP(F)V

    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/uA;->EjP(Ljava/lang/String;)V

    return-void
.end method

.method public setMinFrame(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/uA;->Sj(I)V

    return-void
.end method

.method public setMinFrame(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/uA;->sP(Ljava/lang/String;)V

    return-void
.end method

.method public setMinProgress(F)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/uA;->Sj(F)V

    return-void
.end method

.method public setOutlineMasksAndMattes(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/uA;->EjP(Z)V

    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/uA;->TKC(Z)V

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/bytedance/adsdk/sP/vS;->Sj(FZ)V

    return-void
.end method

.method public setRenderMode(Lcom/bytedance/adsdk/sP/RiZ;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/uA;->Sj(Lcom/bytedance/adsdk/sP/RiZ;)V

    return-void
.end method

.method public setRepeatCount(I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Fmk:Ljava/util/Set;

    sget-object v1, Lcom/bytedance/adsdk/sP/vS$EjP;->EjP:Lcom/bytedance/adsdk/sP/vS$EjP;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/uA;->HiB(I)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Fmk:Ljava/util/Set;

    sget-object v1, Lcom/bytedance/adsdk/sP/vS$EjP;->TKC:Lcom/bytedance/adsdk/sP/vS$EjP;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/uA;->EjP(I)V

    return-void
.end method

.method public setSafeMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/uA;->vS(Z)V

    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/uA;->TKC(F)V

    return-void
.end method

.method public setTextDelegate(Lcom/bytedance/adsdk/sP/sU;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/uA;->Sj(Lcom/bytedance/adsdk/sP/sU;)V

    return-void
.end method

.method public setUseCompositionFrameRate(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/uA;->Dq(Z)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/uA;->Sj(Landroid/view/View;)V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/vS;->TEQ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    if-ne p1, v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->zR()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS;->vS()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/vS;->TEQ:Z

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/bytedance/adsdk/sP/uA;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->zR()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->LqL()V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public vS()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/adsdk/sP/vS;->Ym:Z

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS;->Jcg:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->LqL()V

    return-void
.end method
