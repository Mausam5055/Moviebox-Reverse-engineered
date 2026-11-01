.class public Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;
.super Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/dynamic/EjP;
.implements Lcom/bytedance/sdk/component/adexpress/sP/Dq;
.implements Lcom/bytedance/sdk/component/adexpress/sP/Zq;
.implements Lcom/bytedance/sdk/openadsdk/core/Dq/sef;
.implements Lcom/bytedance/sdk/openadsdk/core/sP/Sj$Sj;


# static fields
.field public static zR:I = 0x1f4


# instance fields
.field private Bml:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

.field private Chv:Lcom/bytedance/sdk/component/adexpress/sP/uA;

.field protected final Dq:Landroid/content/Context;

.field private EZ:Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;

.field private final Ei:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private EjP:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

.field private FPG:Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;

.field private Fm:Z

.field protected Fmk:Z

.field private HiB:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

.field private HpB:Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;

.field private IOh:Lcom/bytedance/sdk/component/adexpress/sP/uvD;

.field private Ir:J

.field private JcM:F

.field private Jcg:Lcom/bytedance/sdk/openadsdk/core/Dq/uA;

.field private LD:Ljava/lang/String;

.field protected LqL:Lcom/bytedance/sdk/component/adexpress/sP/sP;

.field private Mts:Ljava/lang/String;

.field private MuB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/adexpress/sP/TEQ;",
            ">;"
        }
    .end annotation
.end field

.field protected RiZ:Ljava/lang/String;

.field private Sj:Z

.field protected TEQ:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private TKC:Lcom/bytedance/sdk/openadsdk/TKC/TKC;

.field protected TzV:I

.field private UHs:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

.field private Uc:F

.field private WMZ:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

.field private Wjd:Ljava/lang/String;

.field public Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/component/adexpress/sP/EjP<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field protected Zq:Lcom/bytedance/sdk/component/adexpress/sP/TKC;

.field private aNB:I

.field private aZ:Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;

.field public aa:Landroid/widget/FrameLayout;

.field private final cX:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;",
            ">;"
        }
    .end annotation
.end field

.field dNu:Z

.field private final db:Ljava/lang/Runnable;

.field private dwU:Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

.field protected dx:Landroid/view/ViewGroup;

.field private fF:F

.field private gR:F

.field private gY:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

.field public ib:Z

.field private jb:Lcom/bytedance/sdk/openadsdk/core/Dq/dx;

.field kF:I

.field private kb:F

.field ley:J

.field private final ndK:Ljava/lang/Runnable;

.field private pfr:Lcom/bytedance/sdk/component/adexpress/sP/vS;

.field private final qRN:Ljava/lang/Runnable;

.field private sP:I

.field protected sU:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sdp:Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;

.field protected sef:Z

.field protected uA:Ljava/lang/String;

.field uP:Z

.field protected uvD:Z

.field private vS:Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

.field public wE:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

.field private xD:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;

.field private final xhi:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private xu:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sP:I

    const-string v2, "embeded_ad"

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->LD:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sef:Z

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uvD:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->dNu:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TzV:I

    const-string v3, ""

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Mts:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ib:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Fm:Z

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kF:I

    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->wE:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ley:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ei:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->xhi:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->db:Ljava/lang/Runnable;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ndK:Ljava/lang/Runnable;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->qRN:Ljava/lang/Runnable;

    const/16 v0, 0x8

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aNB:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->cX:Landroid/util/SparseArray;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kb:F

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Uc:F

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->xu:F

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->gR:F

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ir:J

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TEQ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ib:Z

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;ZZ)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sP:I

    const-string v2, "embeded_ad"

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->LD:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sef:Z

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uvD:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->dNu:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TzV:I

    const-string v3, ""

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Mts:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ib:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Fm:Z

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kF:I

    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->wE:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ley:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ei:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->xhi:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->db:Ljava/lang/Runnable;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ndK:Ljava/lang/Runnable;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->qRN:Ljava/lang/Runnable;

    const/16 v0, 0x8

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aNB:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->cX:Landroid/util/SparseArray;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kb:F

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Uc:F

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->xu:F

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->gR:F

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ir:J

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TEQ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iput-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ib:Z

    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Fm:Z

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS()V

    return-void
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)F
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->JcM:F

    return p0
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)Lcom/bytedance/sdk/openadsdk/core/Dq/dx;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->jb:Lcom/bytedance/sdk/openadsdk/core/Dq/dx;

    return-object p0
.end method

.method private Jcg()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xhi()Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    const-string v2, "embeded_ad"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;->aa()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "width"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "height"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    int-to-float v1, v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->JcM:F

    int-to-float v0, v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->fF:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private RiZ()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->fF()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sP:I

    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sU()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->dx()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NativeExpressView"

    const-string v2, "NativeExpressView dynamicRender fail"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->JcM()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj:Z

    if-eqz v1, :cond_1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->UHs:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Bml:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    invoke-direct {v0, p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/sU;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;)V

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/sP/vS;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Bml:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    invoke-direct {v1, v2, v3, v0}, Lcom/bytedance/sdk/component/adexpress/sP/vS;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;Lcom/bytedance/sdk/component/adexpress/sP/Sj;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->pfr:Lcom/bytedance/sdk/component/adexpress/sP/vS;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->MuB:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->MuB:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/sP/aa;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->MuB:Ljava/util/List;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Chv:Lcom/bytedance/sdk/component/adexpress/sP/uA;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/sP/aa;-><init>(Ljava/util/List;Lcom/bytedance/sdk/component/adexpress/sP/uA;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sdp:Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Lcom/bytedance/sdk/openadsdk/core/Dq/dx;)Lcom/bytedance/sdk/openadsdk/core/Dq/dx;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->jb:Lcom/bytedance/sdk/openadsdk/core/Dq/dx;

    return-object p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Mts:Ljava/lang/String;

    return-object p1
.end method

.method public static Sj(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "width"

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "height"

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "left"

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "top"

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->zR()V

    return-void
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)F
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->fF:F

    return p0
.end method

.method private TzV()V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->DKa()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ph()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->UHs:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Bml:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    invoke-direct {v0, p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/sU;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;)V

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/sP/vS;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Bml:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    invoke-direct {v1, v2, v3, v0}, Lcom/bytedance/sdk/component/adexpress/sP/vS;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;Lcom/bytedance/sdk/component/adexpress/sP/Sj;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->pfr:Lcom/bytedance/sdk/component/adexpress/sP/vS;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->MuB:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/sP/aa;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->MuB:Ljava/util/List;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Chv:Lcom/bytedance/sdk/component/adexpress/sP/uA;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/sP/aa;-><init>(Ljava/util/List;Lcom/bytedance/sdk/component/adexpress/sP/uA;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sdp:Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->wE()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->RiZ()V

    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sU()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Bml:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->UHs:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->WMZ:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->dwU:Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/sP/uvD;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Bml:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    invoke-direct {v1, v2, v3, v0, p0}, Lcom/bytedance/sdk/component/adexpress/sP/uvD;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;Lcom/bytedance/sdk/component/adexpress/HiB/Sj;Lcom/bytedance/sdk/component/adexpress/sP/Dq;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->IOh:Lcom/bytedance/sdk/component/adexpress/sP/uvD;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->MuB:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NativeExpressView"

    const-string v2, "NativeExpressView dynamicRender fail"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->UHs:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Bml:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    invoke-direct {v0, p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/sU;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;)V

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/sP/vS;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Bml:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    invoke-direct {v1, v2, v3, v0}, Lcom/bytedance/sdk/component/adexpress/sP/vS;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;Lcom/bytedance/sdk/component/adexpress/sP/Sj;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->pfr:Lcom/bytedance/sdk/component/adexpress/sP/vS;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->MuB:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/sP/aa;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->MuB:Ljava/util/List;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Chv:Lcom/bytedance/sdk/component/adexpress/sP/uA;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/sP/aa;-><init>(Ljava/util/List;Lcom/bytedance/sdk/component/adexpress/sP/uA;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sdp:Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;

    return-void
.end method

.method private dNu()V
    .locals 12

    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/dNu;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/dNu;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->WMZ:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->LD:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;-><init>(Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Chv:Lcom/bytedance/sdk/component/adexpress/sP/uA;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->db()Z

    move-result v0

    const-wide/16 v1, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xhi()Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;->Ym()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "render_delay_time"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-wide v4, v1

    :goto_0
    const/4 v6, 0x0

    :try_start_1
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v7

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->LD:Ljava/lang/String;

    invoke-interface {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Fmk(Ljava/lang/String;)I

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v7, v3, :cond_1

    move v7, v3

    goto :goto_1

    :cond_1
    move v7, v6

    :goto_1
    :try_start_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v8

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->LD:Ljava/lang/String;

    invoke-interface {v8, v9}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->sef(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx()I

    move-result v8

    const/4 v9, 0x5

    if-eq v8, v9, :cond_2

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx()I

    move-result v8

    const/4 v9, 0x6

    if-eq v8, v9, :cond_2

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->DKj()I

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v9, 0x3

    if-ne v8, v9, :cond_3

    :cond_2
    move v7, v3

    goto :goto_2

    :catch_1
    move v7, v6

    :catch_2
    :cond_3
    :goto_2
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const-wide/16 v4, 0x2710

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getRenderTimeout()I

    move-result v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object v5

    invoke-virtual {v5}, Ly5/b;->K()D

    move-result-wide v8

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object v5

    invoke-virtual {v5}, Ly5/b;->N()I

    move-result v5

    int-to-double v10, v5

    mul-double/2addr v8, v10

    goto :goto_3

    :cond_4
    const-wide/16 v8, 0x0

    :goto_3
    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kF:I

    const/4 v10, -0x1

    if-eq v5, v10, :cond_5

    double-to-int v10, v8

    if-ge v5, v10, :cond_5

    goto :goto_4

    :cond_5
    move v3, v6

    :goto_4
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uP:Z

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    new-instance v3, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    invoke-direct {v3}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;-><init>()V

    goto :goto_6

    :cond_7
    :goto_5
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;-><init>()V

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;->Sj(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;

    :cond_8
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Chv:Lcom/bytedance/sdk/component/adexpress/sP/uA;

    check-cast v5, Lcom/bytedance/adsdk/ugeno/core/Zq;

    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;->Sj(Lcom/bytedance/adsdk/ugeno/core/Zq;)Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->fF:F

    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;->Sj(F)Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->JcM:F

    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;->sP(F)Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;

    :goto_6
    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->HiB(Z)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Lip()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->TKC(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->mZN()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->EjP(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Chv:Lcom/bytedance/sdk/component/adexpress/sP/uA;

    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/uA;)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dU()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->EjP(I)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->Sj(I)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->RrR()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->sP(Z)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    move-result-object v4

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Fm:Z

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->TKC(Z)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Mts()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->sP(I)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->Sj(J)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sdp()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->TKC(I)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->Sj(Ljava/util/Map;)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->EjP(Z)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kF:I

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->HiB(I)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uP:Z

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->Sj(Z)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->Sj(D)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->gR()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->vS(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->fAj()Lcom/bytedance/sdk/openadsdk/core/model/sP;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sP;->Sj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->Jcg(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->fAj()Lcom/bytedance/sdk/openadsdk/core/model/sP;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sP;->sP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->Dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$5;

    invoke-direct {v2, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Z)V

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/HiB;)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;)V

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->Sj()Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Bml:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    return-void
.end method

.method private dx()V
    .locals 15

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->DKa()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ley()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v9, Lcom/bytedance/sdk/openadsdk/core/vS/Sj/Sj;

    invoke-direct {v9}, Lcom/bytedance/sdk/openadsdk/core/vS/Sj/Sj;-><init>()V

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sP:I

    if-eqz v0, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ib:Z

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Bml:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    move-object v6, v1

    check-cast v6, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    move-object v2, v0

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;ZLcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;Landroid/view/ViewGroup;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Bml:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    invoke-direct {v1, v2, v0, p0, v3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;Lcom/bytedance/sdk/component/adexpress/sP/Dq;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->EZ:Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->MuB:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ib:Z

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Bml:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    move-object v6, v1

    check-cast v6, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    move-object v2, v0

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;ZLcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->gY:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Bml:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    invoke-direct {v1, v2, v0, p0, v3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;Lcom/bytedance/sdk/component/adexpress/sP/Dq;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->EZ:Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->MuB:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Jcg;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Jcg;-><init>()V

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/sP/sP;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Bml:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    iget-object v12, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->UHs:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    iget-boolean v13, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ib:Z

    new-instance v14, Lcom/bytedance/sdk/openadsdk/core/Dq/vS;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    move-object v2, v14

    move-object v4, v12

    move v5, v13

    move-object v6, v0

    move-object v7, v11

    move-object v8, v9

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/core/Dq/vS;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;ZLcom/bytedance/sdk/component/adexpress/dynamic/HiB/Dq;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;Lcom/bytedance/sdk/component/adexpress/dynamic/vS/Sj;)V

    move-object v2, v1

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    move v6, v13

    move-object v7, v0

    move-object v8, p0

    move-object v10, v14

    invoke-direct/range {v2 .. v10}, Lcom/bytedance/sdk/component/adexpress/sP/sP;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;ZLcom/bytedance/sdk/component/adexpress/dynamic/HiB/Dq;Lcom/bytedance/sdk/component/adexpress/sP/Dq;Lcom/bytedance/sdk/component/adexpress/dynamic/vS/Sj;Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->LqL:Lcom/bytedance/sdk/component/adexpress/sP/sP;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->MuB:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Bml:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->UHs:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->WMZ:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->dwU:Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/sP/uvD;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Bml:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    invoke-direct {v1, v2, v3, v0, p0}, Lcom/bytedance/sdk/component/adexpress/sP/uvD;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;Lcom/bytedance/sdk/component/adexpress/HiB/Sj;Lcom/bytedance/sdk/component/adexpress/sP/Dq;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->IOh:Lcom/bytedance/sdk/component/adexpress/sP/uvD;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->MuB:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private getAdSlotType()I
    .locals 6

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "interaction"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_1
    const-string v5, "fullscreen_interstitial_ad"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v4, v0

    goto :goto_0

    :sswitch_2
    const-string v5, "open_ad"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v4, v1

    goto :goto_0

    :sswitch_3
    const-string v5, "rewarded_video"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move v4, v2

    goto :goto_0

    :sswitch_4
    const-string v5, "banner_ad"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    const/4 v0, 0x5

    return v0

    :pswitch_0
    return v1

    :pswitch_1
    const/16 v0, 0x8

    :pswitch_2
    return v0

    :pswitch_3
    const/4 v0, 0x7

    return v0

    :pswitch_4
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x65146dea -> :sswitch_4
        -0x514cfef6 -> :sswitch_3
        -0x4b4ad1c8 -> :sswitch_2
        -0x2d935a6e -> :sswitch_1
        0x6deace12 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private ib()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    return v0
.end method

.method private kF()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->MuB:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->db:Ljava/lang/Runnable;

    return-object p0
.end method

.method private sU()V
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->HiB()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Dq/aa;->Sj()V

    :cond_0
    return-void
.end method

.method private uP()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->MuB:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private wE()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    const-string v1, "fullscreen_interstitial_ad"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    const-string v1, "rewarded_video"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "open_ad"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->sP(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    const-string v1, "embeded_ad"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

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

.method private zR()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ei:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->wE:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/LD;->Sj(Landroid/view/View;)F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;->Sj(JF)V

    :cond_0
    return-void
.end method


# virtual methods
.method public Dq()V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Dq()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sef()Lcom/bytedance/sdk/openadsdk/core/model/dNu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->EjP()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/component/utils/uA;->sP()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$6;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)V

    const-wide/16 v3, 0x3e8

    int-to-long v5, v0

    mul-long/2addr v5, v3

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->Sj(J)V

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Zq;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/EjP;)V

    :cond_4
    return-void
.end method

.method public EjP()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Fmk()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/sU;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public HiB()V
    .locals 0

    return-void
.end method

.method public HiB(I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->sP(I)V

    :cond_0
    return-void
.end method

.method public Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lorg/json/JSONObject;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getRenderEngineCacheType()I

    move-result v0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xhi()Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "engine_version"

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xhi()Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;->sef()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xhi()Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;->Fmk()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ndK()Lcom/bytedance/sdk/openadsdk/core/model/LqL;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string p2, "v3"

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_2
    const-string p2, "v1"

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    :goto_0
    const-string p2, "engine_type"

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :goto_2
    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public Sj()V
    .locals 0

    return-void
.end method

.method public Sj(I)V
    .locals 0

    return-void
.end method

.method public Sj(ILcom/bytedance/sdk/component/adexpress/sP/sef;)V
    .locals 0

    return-void
.end method

.method public Sj(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public Sj(IZZ)V
    .locals 2

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->dNu:Z

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->qRN:Ljava/lang/Runnable;

    invoke-virtual {p0, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ndK:Ljava/lang/Runnable;

    invoke-virtual {p0, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide/16 v0, 0x32

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ndK:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ndK:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->qRN:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->qRN:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public Sj(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/TKC;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const-string v0, "click_type"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "trigger Class2 method1"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v4, v5, v6

    const-string v4, "ClickCreativeListener"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, -0x1

    if-eq v3, v4, :cond_17

    if-nez p3, :cond_0

    goto/16 :goto_7

    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v5

    const-string v8, "click_scence"

    if-eqz v5, :cond_1

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    move-object/from16 v5, p3

    check-cast v5, Lcom/bytedance/sdk/openadsdk/core/model/sef;

    iget-object v8, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v8

    if-eqz v8, :cond_2

    :try_start_0
    iget-object v8, v5, Lcom/bytedance/sdk/openadsdk/core/model/sef;->dNu:Lorg/json/JSONObject;

    if-eqz v8, :cond_2

    invoke-virtual {v8, v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v9, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "pag_json_data"

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v0, v8}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS:Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

    if-eqz v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getDynamicShowType()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->EjP(I)V

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS:Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Ljava/util/Map;)V

    :cond_3
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Jcg:Lcom/bytedance/sdk/openadsdk/core/Dq/uA;

    if-eqz v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getDynamicShowType()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->EjP(I)V

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Jcg:Lcom/bytedance/sdk/openadsdk/core/Dq/uA;

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Ljava/util/Map;)V

    :cond_4
    iget v10, v5, Lcom/bytedance/sdk/openadsdk/core/model/sef;->Sj:F

    iget v11, v5, Lcom/bytedance/sdk/openadsdk/core/model/sef;->sP:F

    iget v12, v5, Lcom/bytedance/sdk/openadsdk/core/model/sef;->TKC:F

    iget v13, v5, Lcom/bytedance/sdk/openadsdk/core/model/sef;->EjP:F

    iget-boolean v15, v5, Lcom/bytedance/sdk/openadsdk/core/model/sef;->Zq:Z

    iget-object v0, v5, Lcom/bytedance/sdk/openadsdk/core/model/sef;->sef:Landroid/util/SparseArray;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    move-object v14, v0

    goto :goto_4

    :cond_6
    :goto_3
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->cX:Landroid/util/SparseArray;

    goto :goto_2

    :goto_4
    iget-object v0, v5, Lcom/bytedance/sdk/openadsdk/core/model/sef;->Ym:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v2, :cond_7

    move-object v9, v1

    goto :goto_5

    :cond_7
    if-eq v2, v1, :cond_8

    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    :cond_8
    move-object v9, v2

    :goto_5
    iput v3, v5, Lcom/bytedance/sdk/openadsdk/core/model/sef;->aa:I

    if-eqz v4, :cond_9

    iget-object v2, v5, Lcom/bytedance/sdk/openadsdk/core/model/sef;->Fmk:Lorg/json/JSONObject;

    if-nez v2, :cond_9

    iput-object v4, v5, Lcom/bytedance/sdk/openadsdk/core/model/sef;->Fmk:Lorg/json/JSONObject;

    :cond_9
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj()V

    return-void

    :pswitch_2
    iget-boolean v0, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ib:Z

    xor-int/2addr v0, v6

    const-string v2, "dynamicClick"

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(ZLjava/lang/String;)V

    return-void

    :pswitch_3
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aa:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_a

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v16 .. v23}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_a
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ib()I

    move-result v2

    if-ne v2, v6, :cond_b

    if-nez v15, :cond_b

    return-void

    :cond_b
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    const-string v2, "embeded_ad"

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ib()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Fmk:Z

    if-nez v2, :cond_c

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS:Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

    if-eqz v2, :cond_d

    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sef;)V

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS:Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS:Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

    invoke-virtual/range {v8 .. v15}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->Sj(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V

    goto :goto_6

    :cond_c
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Jcg:Lcom/bytedance/sdk/openadsdk/core/Dq/uA;

    if-eqz v2, :cond_d

    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/core/Dq/uA;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sef;)V

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Jcg:Lcom/bytedance/sdk/openadsdk/core/Dq/uA;

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Jcg:Lcom/bytedance/sdk/openadsdk/core/Dq/uA;

    invoke-virtual/range {v8 .. v15}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V

    :cond_d
    :goto_6
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->HiB:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

    if-eqz v0, :cond_17

    iget-boolean v2, v5, Lcom/bytedance/sdk/openadsdk/core/model/sef;->TzV:Z

    if-nez v2, :cond_17

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/api/PAGAdWrapperListener;->onAdClicked()V

    return-void

    :pswitch_4
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->EjP:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_e
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TKC:Lcom/bytedance/sdk/openadsdk/TKC/TKC;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->Sj()V

    return-void

    :cond_f
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Wjd:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    return-void

    :pswitch_5
    iget v2, v5, Lcom/bytedance/sdk/openadsdk/core/model/sef;->uvD:I

    if-lez v2, :cond_10

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/fF;->Sj(Z)V

    :cond_10
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS:Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

    if-eqz v2, :cond_12

    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sef;)V

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS:Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v5, Lcom/bytedance/sdk/openadsdk/core/model/sef;->dNu:Lorg/json/JSONObject;

    if-eqz v0, :cond_11

    const-string v2, "is_ceiling_page"

    invoke-virtual {v0, v2, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS:Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->EjP(Z)V

    :cond_11
    iget-object v8, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS:Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

    invoke-virtual/range {v8 .. v15}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->Sj(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V

    :cond_12
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->HiB:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

    if-eqz v0, :cond_13

    iget-boolean v2, v5, Lcom/bytedance/sdk/openadsdk/core/model/sef;->TzV:Z

    if-nez v2, :cond_13

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/api/PAGAdWrapperListener;->onAdClicked()V

    :cond_13
    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/fF;->Sj(Z)V

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/16 v2, 0x9

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    return-void

    :pswitch_6
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aa:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_14

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v16 .. v23}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_14
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ib()I

    move-result v2

    if-ne v2, v6, :cond_15

    if-nez v15, :cond_15

    return-void

    :cond_15
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Jcg:Lcom/bytedance/sdk/openadsdk/core/Dq/uA;

    if-eqz v2, :cond_16

    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/core/Dq/uA;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sef;)V

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Jcg:Lcom/bytedance/sdk/openadsdk/core/Dq/uA;

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Jcg:Lcom/bytedance/sdk/openadsdk/core/Dq/uA;

    invoke-virtual/range {v8 .. v15}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V

    :cond_16
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->HiB:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

    if-eqz v0, :cond_17

    iget-boolean v2, v5, Lcom/bytedance/sdk/openadsdk/core/model/sef;->TzV:Z

    if-nez v2, :cond_17

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/api/PAGAdWrapperListener;->onAdClicked()V

    :cond_17
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Sj(Lcom/bytedance/sdk/component/adexpress/sP/EjP;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->FPG:Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS()Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Ym()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->dx:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->FPG:Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;->Sj()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->FPG:Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;->sP()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->dx:Landroid/view/ViewGroup;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/adexpress/sP/EjP;Lcom/bytedance/sdk/component/adexpress/sP/sef;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/adexpress/sP/EjP<",
            "+",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/sdk/component/adexpress/sP/sef;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ei:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aNB:I

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS(I)V

    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/sP/EjP;->TKC()I

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/sP/EjP;->TKC()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(I)V

    :cond_1
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/sP/EjP;->TKC()I

    move-result v0

    if-eq v0, v1, :cond_7

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/sP/EjP;->HiB()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, v3

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v1, :cond_4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/sP/EjP;->HiB()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_6
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/sP/EjP;->HiB()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ley:J

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/sP/EjP;->TKC()I

    move-result v6

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(JJLjava/lang/String;I)V

    :cond_8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Chv:Lcom/bytedance/sdk/component/adexpress/sP/uA;

    if-eqz p1, :cond_9

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Ym()V

    :cond_9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->HiB:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

    if-eqz p1, :cond_a

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->EjP()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->HiB()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-interface {p1, p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;->onRenderSuccess(Landroid/view/View;FF)V

    :cond_a
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    instance-of p1, p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Zq;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uvD()V

    :cond_b
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/sef;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getDynamicShowType()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TKC(I)Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB;->Sj(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;)V

    :cond_c
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->jb:Lcom/bytedance/sdk/openadsdk/core/Dq/dx;

    if-eqz p1, :cond_d

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/dx;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method protected Sj(Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;)V
    .locals 0

    return-void
.end method

.method public Sj(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method protected Sj(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public Sj(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected Sj(Lcom/bytedance/sdk/component/adexpress/sP/sef;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public TEQ()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->dwU:Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->sP()Lcom/bytedance/sdk/component/uA/vS;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->dwU:Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->vS()V

    :cond_0
    return-void
.end method

.method public TKC()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected TKC(I)Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;-><init>(I)V

    return-object v0
.end method

.method public Ym()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->HpB:Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->sP()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sef()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->MuB:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/adexpress/sP/TEQ;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/adexpress/sP/TEQ;->Sj()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/kF/Sj/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TKC:Lcom/bytedance/sdk/openadsdk/TKC/TKC;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->EjP:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TEQ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->HiB:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS:Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Zq:Lcom/bytedance/sdk/component/adexpress/sP/TKC;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Jcg:Lcom/bytedance/sdk/openadsdk/core/Dq/uA;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->FPG:Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;->TKC()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :goto_2
    const-string v1, "NativeExpressView"

    const-string v2, "detach error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public Zq()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ei:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public a_(I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Chv:Lcom/bytedance/sdk/component/adexpress/sP/uA;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/sP/uA;->Dq()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Chv:Lcom/bytedance/sdk/component/adexpress/sP/uA;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/sP/uA;->uA()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Chv:Lcom/bytedance/sdk/component/adexpress/sP/uA;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Ym()V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->HiB:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/Dq;->Sj(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;->onRenderFail(Landroid/view/View;Ljava/lang/String;I)V

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->jb:Lcom/bytedance/sdk/openadsdk/core/Dq/dx;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/dx;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public aa()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aa:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aa:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS:Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->sP(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS:Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS:Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->TKC(I)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Jcg:Lcom/bytedance/sdk/openadsdk/core/Dq/uA;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->sP(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Jcg:Lcom/bytedance/sdk/openadsdk/core/Dq/uA;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Jcg:Lcom/bytedance/sdk/openadsdk/core/Dq/uA;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->TKC(I)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v1, -0x1

    :cond_2
    :goto_0
    move v5, v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x4

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->xu:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kb:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->xu:F

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->gR:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Uc:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->gR:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kb:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Uc:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ir:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0xc8

    cmp-long v0, v0, v4

    if-lez v0, :cond_6

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->xu:F

    const/high16 v1, 0x41000000    # 8.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_5

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->gR:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    :cond_5
    move v5, v2

    goto :goto_1

    :cond_6
    move v5, v3

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kb:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Uc:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ir:J

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->cX:Landroid/util/SparseArray;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v3

    float-to-double v6, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v3

    float-to-double v8, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;-><init>(IDDJ)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_8
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getAdShowTime()Lcom/bytedance/sdk/openadsdk/EjP/Jcg;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->wE:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    return-object v0
.end method

.method public getBrandBannerController()Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->HpB:Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;

    return-object v0
.end method

.method public getClickCreativeListener()Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS:Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

    return-object v0
.end method

.method public getClickListener()Lcom/bytedance/sdk/openadsdk/core/Dq/uA;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Jcg:Lcom/bytedance/sdk/openadsdk/core/Dq/uA;

    return-object v0
.end method

.method public getClosedListenerKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Wjd:Ljava/lang/String;

    return-object v0
.end method

.method public getDynamicShowType()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/sP/EjP;->TKC()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getExpectExpressHeight()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->JcM:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    return v0
.end method

.method public getExpectExpressWidth()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->fF:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    return v0
.end method

.method public getJsObject()Lcom/bytedance/sdk/openadsdk/core/Yf;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->dwU:Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->uvD()Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRenderEngineCacheType()I
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Zq()Lcom/bytedance/sdk/openadsdk/core/Dq/TEQ;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TEQ;->Sj()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getRenderTimeout()I
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->uP()I

    move-result v0

    return v0
.end method

.method public getUgenTemplateErrorReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Mts:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoProgress()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aZ:Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->getVideoProgress()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWebView()Lcom/bytedance/sdk/component/uA/vS;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->dwU:Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Sj()Lcom/bytedance/sdk/component/uA/vS;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->zR()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kF()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->xhi:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Wjd:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->xD:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/uA;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->xhi:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Wjd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/uA;->vS(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uP()V

    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(IZZ)V

    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishTemporaryDetach()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->zR()V

    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onStartTemporaryDetach()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/16 v2, 0x8

    if-ge v0, v1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->onWindowVisibilityChanged(I)V

    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->zR()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/kF/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Z)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(IZZ)V

    return-void
.end method

.method public onvideoComplate()V
    .locals 0

    return-void
.end method

.method public sP()V
    .locals 0

    return-void
.end method

.method public sP(I)V
    .locals 0

    return-void
.end method

.method protected sP(II)V
    .locals 9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    const-string v1, "banner_ad"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kF:I

    const-string v1, "open_ad"

    const/4 v2, 0x0

    if-lt p2, v0, :cond_1

    if-ltz v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uP:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->EjP()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kF:I

    if-gt p2, v1, :cond_6

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kF:I

    int-to-double v3, v1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object v1

    invoke-virtual {v1}, Ly5/b;->K()D

    move-result-wide v5

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object v1

    invoke-virtual {v1}, Ly5/b;->N()I

    move-result v1

    int-to-double v7, v1

    mul-double/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    int-to-double v5, p2

    sub-double/2addr v3, v5

    double-to-int p2, v3

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kF:I

    sub-int p2, v1, p2

    goto :goto_1

    :cond_6
    move p2, v2

    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->LqL:Lcom/bytedance/sdk/component/adexpress/sP/sP;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/sP/sP;->sP()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->LqL:Lcom/bytedance/sdk/component/adexpress/sP/sP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/sP/sP;->sP()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0, p2, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP;->setTime(Ljava/lang/CharSequence;IIZ)V

    :cond_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    instance-of v3, v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    if-eqz v3, :cond_8

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->setTime(Ljava/lang/CharSequence;IIZ)V

    :cond_8
    return-void
.end method

.method public sP(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->uvD()Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "time"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "flag"

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "onVideoPaused"

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public sef()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getVideoProgress()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->HiB(J)V

    :cond_0
    return-void
.end method

.method public setBackupListener(Lcom/bytedance/sdk/component/adexpress/sP/TKC;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Zq:Lcom/bytedance/sdk/component/adexpress/sP/TKC;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->pfr:Lcom/bytedance/sdk/component/adexpress/sP/vS;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/adexpress/sP/vS;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/TKC;)V

    :cond_0
    return-void
.end method

.method public setBannerClickClosedListener(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->xD:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;

    return-void
.end method

.method public setClickCreativeListener(Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS:Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/sP/Sj$Sj;)V

    :cond_0
    return-void
.end method

.method public setClickListener(Lcom/bytedance/sdk/openadsdk/core/Dq/uA;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Jcg:Lcom/bytedance/sdk/openadsdk/core/Dq/uA;

    return-void
.end method

.method public setClosedListenerKey(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Wjd:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->HpB:Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->Sj(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDislike(Lcom/bytedance/sdk/openadsdk/TKC/TKC;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/sU;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/sP/EjP;->HiB()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->setDislikeInner(Lcom/bytedance/sdk/openadsdk/core/uP;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->HpB:Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/uP;)V

    :cond_1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TKC:Lcom/bytedance/sdk/openadsdk/TKC/TKC;

    return-void
.end method

.method public setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->HiB:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->HpB:Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;)V

    :cond_0
    return-void
.end method

.method public setJsbLandingPageOpenListener(Lcom/bytedance/sdk/openadsdk/core/widget/HiB;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->dwU:Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getJsObject()Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getJsObject()Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/widget/HiB;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->gY:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/widget/HiB;)V

    :cond_1
    return-void
.end method

.method public setOuterDislike(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/sU;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/sP/EjP;->HiB()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->setDislikeOuter(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->HpB:Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    :cond_1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->EjP:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    return-void
.end method

.method public setSoundMute(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ib:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->LqL:Lcom/bytedance/sdk/component/adexpress/sP/sP;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/sP/sP;->sP()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->LqL:Lcom/bytedance/sdk/component/adexpress/sP/sP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/sP/sP;->sP()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP;->setSoundMute(Z)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->setSoundMute(Z)V

    :cond_1
    return-void
.end method

.method public setTime(Ljava/lang/CharSequence;IIZ)V
    .locals 0

    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sP(II)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->FPG:Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;->Sj(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setTimeUpdate(I)V
    .locals 0

    return-void
.end method

.method public setVastVideoHelper(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aZ:Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;

    return-void
.end method

.method public setVideoFrameChangeListener(Lcom/bytedance/sdk/openadsdk/aa/Jcg;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->dwU:Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getJsObject()Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getJsObject()Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/aa/Jcg;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    :cond_0
    return-void
.end method

.method public uA()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ley:J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->hzV()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->HpB:Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;

    if-nez v0, :cond_1

    const/16 v0, 0x6a

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->a_(I)V

    return-void

    :cond_1
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/Zq;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->HpB:Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->Sj()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->WMZ:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/EjP;->Sj()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sdp:Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;

    if-eqz v0, :cond_3

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/Zq;)V

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sdp:Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;->Sj()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public uvD()V
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->FPG:Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/sef;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->FPG:Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$7;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/Sj;)V

    return-void
.end method

.method protected vS()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sU:Ljava/util/HashSet;

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->UHs:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TEQ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedWidth()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->fF:F

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TEQ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedHeight()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->JcM:F

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Jcg()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TEQ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->LD:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    const-string v1, "fullscreen_interstitial_ad"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kF:I

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->LD:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->RiZ(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kF:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    const-string v1, "rewarded_video"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sP()I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sP()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kF:I

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->LD:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->TEQ(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kF:I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    const-string v1, "open_ad"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TKC()I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TKC()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kF:I

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->LD:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->zR(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kF:I

    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kF:I

    if-gez v0, :cond_5

    const/4 v0, 0x5

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kF:I

    :cond_5
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->hzV()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->HpB:Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;

    return-void

    :cond_6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->dNu()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->MuB:Ljava/util/List;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TzV()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->IOh:Lcom/bytedance/sdk/component/adexpress/sP/uvD;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/sP/uvD;->sP()Lcom/bytedance/sdk/component/adexpress/HiB/Sj;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->dwU:Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    :cond_7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getJsObject()Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->vS(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public vS(I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Sj(I)V

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aNB:I

    :cond_0
    return-void
.end method
