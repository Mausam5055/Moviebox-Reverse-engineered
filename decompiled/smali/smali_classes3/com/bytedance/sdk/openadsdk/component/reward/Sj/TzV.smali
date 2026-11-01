.class public Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/aa/uA;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$Sj;,
        Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$TKC;,
        Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$sP;,
        Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$EjP;
    }
.end annotation


# instance fields
.field private Bml:Z

.field private Chv:Lcom/bytedance/sdk/openadsdk/common/EjP;

.field protected Dq:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

.field private EZ:Z

.field private Ei:Z

.field protected EjP:Ljava/lang/String;

.field private final FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

.field private Fm:Z

.field private Fmk:I

.field HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

.field private HpB:Z

.field private volatile IOh:I

.field private JcM:F

.field Jcg:Ljava/lang/String;

.field private LD:Z

.field private LqL:J

.field private Mts:Z

.field private volatile MuB:I

.field private RiZ:Z

.field Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

.field public TEQ:Z

.field protected TKC:Z

.field private TzV:Lcom/bytedance/sdk/component/uA/vS;

.field private UHs:I

.field private WMZ:Lcom/bytedance/sdk/openadsdk/common/Fmk;

.field private Wjd:Z

.field private Yf:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;",
            ">;"
        }
    .end annotation
.end field

.field private final Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private Zq:I

.field private aNB:Ljava/lang/String;

.field private final aa:Ljava/lang/String;

.field private cX:Z

.field private dNu:Lcom/bytedance/sdk/component/uA/vS;

.field private db:J

.field private dwU:Ljava/lang/String;

.field private dx:Z

.field private fF:F

.field private gY:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS$Sj;

.field private ib:Z

.field private jb:Z

.field private kF:Landroid/view/View;

.field private kb:I

.field private ley:F

.field private volatile ndK:I

.field private pfr:J

.field private qRN:I

.field sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

.field private final sU:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private sdp:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

.field private final sef:Z

.field uA:Z

.field private uP:Landroid/view/View;

.field private uvD:I

.field vS:I

.field private wE:F

.field private xD:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;

.field private xhi:J

.field private zR:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TKC:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->RiZ:Z

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sU:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->vS:I

    const-string v2, ""

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Jcg:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->uA:Z

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Yf:Landroid/util/SparseArray;

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->LD:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->fF:F

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->JcM:F

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Wjd:Z

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->xhi:J

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->ndK:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->UHs:I

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->MuB:I

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->IOh:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->pfr:J

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TEQ:Z

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->kb:I

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HiB:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->aa:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->EjP:Z

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sef:Z

    return-void
.end method

.method static synthetic Dq(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EZ:Z

    return p0
.end method

.method static synthetic Dq(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->RiZ:Z

    return p1
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;F)F
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->JcM:F

    return p1
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    return-object p0
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->zR:Z

    return p1
.end method

.method static synthetic Fmk(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->MuB:I

    return p0
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS$Sj;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->gY:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS$Sj;

    return-object p0
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Bml:Z

    return p1
.end method

.method static synthetic JcM(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sef:Z

    return p0
.end method

.method static synthetic Jcg(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->xD:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;

    return-object p0
.end method

.method static synthetic Jcg(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->LD:Z

    return p1
.end method

.method static synthetic LD(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->uP:Landroid/view/View;

    return-object p0
.end method

.method static synthetic LqL(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->RiZ:Z

    return p0
.end method

.method static synthetic RiZ(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Lcom/bytedance/sdk/openadsdk/common/EjP;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Chv:Lcom/bytedance/sdk/openadsdk/common/EjP;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;F)F
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->wE:F

    return p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->kb:I

    return p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->LqL:J

    return-wide p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Yf:Landroid/util/SparseArray;

    return-object p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->uP:Landroid/view/View;

    return-object p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Lcom/bytedance/sdk/component/uA/vS;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    return-object p0
.end method

.method private static Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;III)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tY()F

    move-result v0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    const-string v2, "&"

    const-string v3, "?"

    if-ne p2, v1, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "orientation=portrait"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "height="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "&width="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "&aspect_ratio="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Jcg(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/HiB;->Sj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method private Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$EjP;)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_b

    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$7;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$7;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)V

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->UHs:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/EjP/TEQ;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->sP(Z)Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS$Sj;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->gY:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS$Sj;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu()Z

    move-result v2

    const-string v3, "landingpage_endcard"

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->aa:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->sP(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->TKC(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    new-instance v4, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$8;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$8;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->EjP()Lcom/bytedance/sdk/openadsdk/sU/Dq;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Lcom/bytedance/sdk/openadsdk/sU/Dq;)V

    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->aa:Ljava/lang/String;

    invoke-static {v2, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/component/uA/vS;Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/common/EjP;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Chv:Lcom/bytedance/sdk/openadsdk/common/EjP;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object p1, v3

    :cond_2
    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/common/EjP;->Sj(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/component/uA/vS;)V

    :cond_4
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$9;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Chv:Lcom/bytedance/sdk/openadsdk/common/EjP;

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ei()Z

    move-result v2

    const/4 v12, 0x0

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Jcg(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    move v10, v12

    goto :goto_2

    :cond_6
    :goto_1
    move v10, v1

    :goto_2
    move-object v3, p1

    move-object v4, p0

    move-object v11, p2

    invoke-direct/range {v3 .. v11}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$9;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/Yf;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/common/EjP;Lcom/bytedance/sdk/openadsdk/EjP/Ym;ZLcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$EjP;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->xD:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/component/uA/vS;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->xD:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->xD:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sef:Z

    if-eqz v2, :cond_7

    const-string v2, "rewarded_video"

    goto :goto_3

    :cond_7
    const-string v2, "fullscreen_interstitial_ad"

    :goto_3
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Sj(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ei()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz p1, :cond_9

    new-instance v8, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$11;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Chv:Lcom/bytedance/sdk/openadsdk/common/EjP;

    move-object v2, v8

    move-object v3, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$11;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Lcom/bytedance/sdk/openadsdk/core/Yf;Lcom/bytedance/sdk/openadsdk/EjP/Ym;Lcom/bytedance/sdk/openadsdk/common/EjP;Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$EjP;)V

    invoke-virtual {p1, v8}, Lcom/bytedance/sdk/component/uA/vS;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    :cond_9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/component/uA/vS;)V

    const/16 p1, 0x18

    if-lt v0, p1, :cond_a

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    const/4 p2, 0x0

    invoke-virtual {p1, v1, p2}, Lcom/bytedance/sdk/component/uA/vS;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_a
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/uA/vS;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {p1, v12}, Lcom/bytedance/sdk/component/uA/vS;->setDisplayZoomControls(Z)V

    :cond_b
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Wjd:Z

    return p1
.end method

.method private Sj(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ei()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ".mp4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic TEQ(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->qRN:I

    return p0
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;F)F
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->fF:F

    return p1
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Wjd:Z

    return p0
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HpB:Z

    return p1
.end method

.method static synthetic TzV(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sU:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic Yf(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->LD:Z

    return p0
.end method

.method static synthetic Ym(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->ndK:I

    return p0
.end method

.method static synthetic Zq(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sdp:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    return-object p0
.end method

.method static synthetic aa(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->IOh:I

    return p0
.end method

.method static synthetic dNu(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)I
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->ndK:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->ndK:I

    return v0
.end method

.method private db()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    const-string v1, "showPlayableEndCardOverlay"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HpB:Lcom/bytedance/sdk/component/utils/LqL;

    const/16 v1, 0x258

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HpB:Lcom/bytedance/sdk/component/utils/LqL;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$5;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xu:Lcom/bytedance/sdk/openadsdk/utils/Fmk;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/Fmk;->Sj(J)V

    :cond_0
    return-void
.end method

.method static synthetic dx(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)F
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->wE:F

    return p0
.end method

.method static synthetic fF(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->kF:Landroid/view/View;

    return-object p0
.end method

.method static synthetic ib(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)F
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->fF:F

    return p0
.end method

.method static synthetic kF(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)F
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->JcM:F

    return p0
.end method

.method static synthetic ley(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Yf:Landroid/util/SparseArray;

    return-object p0
.end method

.method private ndK()Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Jcg(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/EjP/dNu;

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sef:Z

    if-eqz v2, :cond_1

    const-string v2, "rewarded_video"

    goto :goto_1

    :cond_1
    const-string v2, "fullscreen_interstitial_ad"

    :goto_1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-direct {v1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/EjP/dNu;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    return-object v1
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;F)F
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->ley:F

    return p1
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EZ:Z

    return p1
.end method

.method static synthetic sU(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->LqL:J

    return-wide v0
.end method

.method static synthetic sef(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)I
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->MuB:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->MuB:I

    return v0
.end method

.method static synthetic uA(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dwU:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic uP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Mts:Z

    return p0
.end method

.method static synthetic uvD(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)I
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->IOh:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->IOh:I

    return v0
.end method

.method static synthetic vS(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->xhi()V

    return-void
.end method

.method static synthetic vS(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dx:Z

    return p1
.end method

.method static synthetic wE(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Lcom/bytedance/sdk/openadsdk/common/Fmk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->WMZ:Lcom/bytedance/sdk/openadsdk/common/Fmk;

    return-object p0
.end method

.method private xhi()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Fm:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->cX:Z

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HpB:Lcom/bytedance/sdk/component/utils/LqL;

    const/16 v3, 0x258

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HpB:Lcom/bytedance/sdk/component/utils/LqL;

    const/16 v3, 0x2bc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HpB:Lcom/bytedance/sdk/component/utils/LqL;

    const/16 v3, 0x384

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->EjP(Z)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->RiZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->kb:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Zq()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UmR()Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UmR()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Dq(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->TEQ()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$Sj;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    invoke-direct {v2, v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$Sj;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;Landroid/view/View;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method static synthetic zR(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)F
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->ley:F

    return p0
.end method


# virtual methods
.method public Dq()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sU:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->zR:Z

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->zR:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->db()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->TKC(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    sget v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->TKC:I

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->Jcg(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/core/Yf;ZZ)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/Yf;Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/core/Yf;Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->uvD()V

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->zR:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setVisibility(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-boolean v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ndK:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/core/Yf;ZZ)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/Yf;Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/core/Yf;Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HpB:Lcom/bytedance/sdk/component/utils/LqL;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->kb:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB;->TKC(Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->kb:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->kF()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->Sj()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->Sj(I)V

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB;->EjP()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xu:Lcom/bytedance/sdk/openadsdk/utils/Fmk;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Dq:I

    int-to-long v3, v0

    invoke-interface {v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/Fmk;->Sj(J)V

    :cond_4
    :goto_0
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->cX:Z

    return-void
.end method

.method public Ei()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Fm:Z

    return v0
.end method

.method public EjP(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB(Z)V

    return-void
.end method

.method public EjP()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ei:Z

    return v0
.end method

.method public FPG()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    return-void
.end method

.method public Fm()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public Fmk()Lcom/bytedance/sdk/openadsdk/core/Yf;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    return-object v0
.end method

.method public HiB()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->vS()V

    return-void
.end method

.method public HiB(Z)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->HiB(Z)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "endcard_mute"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    const-string v1, "volumeChange"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public HpB()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TEQ:Z

    return v0
.end method

.method public JcM()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Dq:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/TKC;->TEQ()V

    :cond_0
    return-void
.end method

.method public Jcg()V
    .locals 9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ly5/b;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->aNB:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->aNB:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Fmk:I

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->uvD:I

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Zq:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->aNB:Ljava/lang/String;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$3;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ei()Z

    move-result v1

    const/4 v8, 0x1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Jcg(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    move v7, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v7, v8

    :goto_1
    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/Yf;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/EjP/Ym;Z)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$4;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    invoke-direct {v1, p0, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Lcom/bytedance/sdk/openadsdk/core/Yf;Lcom/bytedance/sdk/openadsdk/EjP/Ym;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->aNB:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/sU;->Sj(Lcom/bytedance/sdk/component/uA/vS;Ljava/lang/String;)V

    iput-boolean v8, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->zR:Z

    return-void
.end method

.method public Jcg(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->cX:Z

    return-void
.end method

.method public LD()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->uA:Z

    return v0
.end method

.method public LqL()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Dq:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/TKC;->Jcg()V

    :cond_0
    return-void
.end method

.method public Mts()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    return-void
.end method

.method public RiZ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dx:Z

    return v0
.end method

.method public Sj()V
    .locals 4

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->ib:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->ib:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sdp:I

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Fmk:I

    iget v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->IOh:I

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Zq:I

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->pfr:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->uvD:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->pfr:J

    return-void
.end method

.method public Sj(F)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;F)V

    return-void
.end method

.method public Sj(I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ei()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Jcg(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setLandingPage(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Jcg(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->aa:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v1, "landingpage_endcard"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setTag(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->hif()Lcom/bytedance/sdk/component/uA/sP/Sj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setMaterialMeta(Lcom/bytedance/sdk/component/uA/sP/Sj;)V

    :cond_3
    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Dq(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Jcg()V

    :cond_4
    return-void
.end method

.method public Sj(II)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "width"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "height"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    const-string p2, "resize"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "TTAD.RFWVM"

    const-string v0, ""

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public Sj(Landroid/webkit/DownloadListener;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/uA/vS;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/uA/vS;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->Sj(Z)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->sP(Z)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->Sj(Landroid/webkit/WebView;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/16 v2, 0x1bca

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/TzV;->Sj(Landroid/webkit/WebView;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setUserAgentString(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/uA/vS;->setMixedContentMode(I)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/aa/vS;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;)V
    .locals 9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Jcg(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    const/4 v2, 0x2

    const-string v3, "click_scence"

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->ndK()Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Dq:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    invoke-direct {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/Yf;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->jb:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Lip()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Lcom/bytedance/sdk/component/uA/vS;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/Yf;->TKC(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->mZN()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/Yf;->EjP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TT()Z

    move-result v5

    const/4 v6, 0x5

    const/4 v7, 0x7

    if-eqz v5, :cond_2

    move v5, v7

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(I)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v4

    new-instance v5, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$sP;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    invoke-direct {v5, v8}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$sP;-><init>(Landroid/view/View;)V

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/aa/Sj;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->HiB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/component/uA/vS;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu()Z

    move-result v5

    const-string v8, "landingpage_endcard"

    if-eqz v5, :cond_3

    move-object v5, v8

    goto :goto_2

    :cond_3
    move-object v5, p2

    :goto_2
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Dq:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    new-instance v4, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$16;

    invoke-direct {v4, p0, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$16;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;)V

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/widget/HiB;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object p3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$15;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$15;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)V

    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/Yf$Sj;)V

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Dq(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/Yf;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->jb:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Lcom/bytedance/sdk/component/uA/vS;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->TKC(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->mZN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->EjP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TT()Z

    move-result v2

    if-eqz v2, :cond_5

    move v6, v7

    :cond_5
    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(I)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$sP;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    invoke-direct {v2, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$sP;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/aa/Sj;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/component/uA/vS;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->HiB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object p2, v8

    :cond_6
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Dq:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object p2

    new-instance p3, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$18;

    invoke-direct {p3, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$18;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)V

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/widget/HiB;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object p2

    new-instance p3, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$17;

    invoke-direct {p3, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$17;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)V

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/Yf$Sj;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    new-instance p3, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$TKC;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$TKC;-><init>(Lcom/bytedance/sdk/component/uA/vS;Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$1;)V

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/aa/Ym;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    new-instance p3, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$TKC;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    invoke-direct {p3, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$TKC;-><init>(Lcom/bytedance/sdk/component/uA/vS;Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$1;)V

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/aa/Ym;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->TEQ()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-boolean p3, p3, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Chv:Z

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Z)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/aa/vS;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->Ym()Lcom/bytedance/sdk/openadsdk/aa/HiB;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/aa/HiB;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$19;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$19;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/aa/TKC;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->jb:Z

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->HiB(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->TEQ()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$2;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/aa/TKC;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/common/Fmk;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->WMZ:Lcom/bytedance/sdk/openadsdk/common/Fmk;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/Yf;Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Z)Lcom/bytedance/sdk/openadsdk/core/Yf;

    :cond_1
    :goto_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/Yf;ZZ)V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "endcard_mute"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "endcard_show"

    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HS:Lcom/bytedance/sdk/openadsdk/activity/vS;

    if-eqz p2, :cond_0

    const-string v1, "multi_ads_show"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Dq()I

    move-result p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    const-string p2, "endcard_control_event"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V

    if-eqz p3, :cond_1

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dx:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EZ:Z

    return-void

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EZ:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$12;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$12;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)V

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$EjP;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TzV(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/component/uA/vS;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$13;

    invoke-direct {v0, p0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$13;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->Sj(Landroid/webkit/DownloadListener;)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Chv:Z

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->TKC(Z)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$14;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$14;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method public Sj(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TKC:Z

    return-void
.end method

.method public Sj(ZILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Dq:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/EjP;->sP()V

    return-void

    :cond_1
    invoke-interface {v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/EjP;->Sj(ILjava/lang/String;)V

    return-void
.end method

.method public Sj(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p0, v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/core/Yf;ZZ)V

    return-void
.end method

.method public TEQ()Lcom/bytedance/sdk/component/uA/vS;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    return-object v0
.end method

.method public TKC(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/Yf;Z)V

    return-void
.end method

.method public TKC()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HpB:Z

    return v0
.end method

.method public TzV()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sU:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public WMZ()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->uA()Z

    move-result v0

    return v0
.end method

.method public Wjd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dx:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sU:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Yf()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(J)V

    :cond_0
    return-void
.end method

.method public Ym()Lcom/bytedance/sdk/component/uA/vS;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    return-object v0
.end method

.method public Zq()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ly5/b;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EjP:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Fmk(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EjP:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EjP:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Fmk:I

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->uvD:I

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Zq:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EjP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EjP:Ljava/lang/String;

    const-string v1, "use_second_endcard=1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->jb:Z

    :cond_2
    return-void
.end method

.method public aa()Lcom/bytedance/sdk/openadsdk/core/Yf;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    return-object v0
.end method

.method public dNu()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EjP:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    const-string v2, "show_landingpage"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method

.method public dx()V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->Zq()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->Zq()V

    :cond_1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->xhi:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->db:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->xhi:J

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->db:J

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->xhi:J

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Z)Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/Yf;Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/core/Yf;ZZ)V

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Dq(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Z)Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/Yf;Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/core/Yf;ZZ)V

    :cond_4
    return-void
.end method

.method public fF()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Dq:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/sP;->TKC()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Dq:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/TKC;->EjP()V

    :cond_0
    return-void
.end method

.method public ib()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->vS:I

    return v0
.end method

.method public jb()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->HiB()V

    :cond_0
    return-void
.end method

.method public kF()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Jcg:Ljava/lang/String;

    return-object v0
.end method

.method public ley()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Dq:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/TKC;->Dq()V

    :cond_0
    return-void
.end method

.method sP()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->kF:Landroid/view/View;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Jcg:Z

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Mts:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->WMZ:Lcom/bytedance/sdk/openadsdk/common/Fmk;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/common/Fmk;->EjP()Lcom/bytedance/sdk/component/uA/vS;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xD:Lcom/bytedance/sdk/openadsdk/component/reward/view/Jcg;

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/Zq;->sef:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/uA/vS;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->HiB()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xD:Lcom/bytedance/sdk/openadsdk/component/reward/view/Jcg;

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/Zq;->uvD:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/uA/vS;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Jcg(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Dq(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->HiB()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setDisplayZoomControls(Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setLandingPage(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Jcg(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->aa:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string v1, "landingpage_endcard"

    :goto_2
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setTag(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    new-instance v1, Lcom/bytedance/sdk/component/uA/vS$Sj;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/uA/vS$Sj;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->hif()Lcom/bytedance/sdk/component/uA/sP/Sj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setMaterialMeta(Lcom/bytedance/sdk/component/uA/sP/Sj;)V

    :cond_5
    return-void
.end method

.method public sP(I)V
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->kb:I

    if-gtz v0, :cond_0

    if-lez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EjP(Z)V

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EjP(Z)V

    :cond_1
    :goto_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->kb:I

    return-void
.end method

.method public sP(Lcom/bytedance/sdk/openadsdk/core/Yf;Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->EjP(Z)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "viewStatus"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "viewableChange"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public sP(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/core/Yf;Z)V

    return-void
.end method

.method public sU()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Dq:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/TKC;->uA()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Dq()V

    :cond_1
    return-void
.end method

.method public sef()Lcom/bytedance/sdk/openadsdk/EjP/Ym;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    return-object v0
.end method

.method public uA()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    const-string v1, "showPlayableEndCardOverlay"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HpB:Lcom/bytedance/sdk/component/utils/LqL;

    const/16 v1, 0x258

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HpB:Lcom/bytedance/sdk/component/utils/LqL;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$6;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$6;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xu:Lcom/bytedance/sdk/openadsdk/utils/Fmk;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/Fmk;->Sj(J)V

    :cond_0
    return-void
.end method

.method public uP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EjP:Ljava/lang/String;

    return-object v0
.end method

.method public uvD()V
    .locals 12

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/JcM;->Sj(Landroid/webkit/WebView;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/JcM;->Sj(Landroid/webkit/WebView;)V

    :cond_1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->db:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-lez v4, :cond_4

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->xhi:J

    cmp-long v2, v6, v2

    if-lez v2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->xhi:J

    sub-long/2addr v2, v6

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->db:J

    :cond_2
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "endcard_overlay_render_type"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x7

    goto :goto_0

    :cond_3
    move v1, v5

    :goto_0
    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->aa:Ljava/lang/String;

    const-string v8, "second_endcard_duration"

    iget-wide v10, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->db:J

    invoke-static/range {v6 .. v11}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J)V

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Dq:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Dq:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;->Sj(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Dq:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;->aa()V

    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->aa()V

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->aa()V

    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    if-eqz v0, :cond_a

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ei()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Jcg(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    move v5, v1

    :cond_9
    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->EjP(Z)V

    :cond_a
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils$AudioInfoReceiver;->sP(Lcom/bytedance/sdk/openadsdk/aa/uA;)V

    return-void
.end method

.method public vS()V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ei:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Za()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sdp:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->eMB()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dwU:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Jcg/sP;->Sj()Lcom/bytedance/sdk/openadsdk/Jcg/sP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/Jcg/sP;->sP()Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sdp:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Jcg/sP;->Sj()Lcom/bytedance/sdk/openadsdk/Jcg/sP;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sdp:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dwU:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/Jcg/sP;->Sj(Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->qRN:I

    if-lez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->UHs:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dwU:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->UHs:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(I)V

    :cond_2
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->pfr:J

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sdp:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dwU:Ljava/lang/String;

    const-string v5, "landingpage_endcard"

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/EjP/TKC$Sj;->Sj(JLcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EjP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EjP:Ljava/lang/String;

    const-string v2, "play.google.com/store"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->vS(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "preLoadEndCardForce: return mShouldPreloadEndCard "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TKC:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",webViewIsLoading "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Bml:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TKC:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EjP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Bml:Z

    if-eqz v0, :cond_6

    return-void

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EjP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&is_pre_render=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->EjP()V

    :cond_7
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Jcg(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    :cond_8
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/sU;->Sj(Lcom/bytedance/sdk/component/uA/vS;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->Sj(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Bml:Z

    return-void

    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->WMZ:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->TKC()V

    :cond_a
    return-void

    :cond_b
    :goto_1
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->uA:Z

    return-void
.end method

.method public vS(Z)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ei:Z

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "endcard_overlay_render_type"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->aa:Ljava/lang/String;

    const-string v3, "use_second_endcard"

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->xhi:J

    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->WMZ:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Dq()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->aa:Ljava/lang/String;

    const-string v2, "endcard_close_skip"

    invoke-static {p1, v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    const-string v0, "click_endcard_close"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xu:Lcom/bytedance/sdk/openadsdk/utils/Fmk;

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Dq:I

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/Fmk;->Sj(J)V

    return-void
.end method

.method public wE()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->jb:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ei:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->WMZ:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->aa()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->jb:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ei:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sU:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dx:Z

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public xD()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->cX:Z

    return v0
.end method

.method public zR()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->Fmk()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->Fmk()V

    :cond_1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->xhi:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->xhi:J

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Ym()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Z)Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/Yf;Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/core/Yf;ZZ)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TEQ(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Fm:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UmR()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->uA()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Z)Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/Yf;Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p0, v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/core/Yf;ZZ)V

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Dq(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Ym()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Z)Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/Yf;Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/core/Yf;ZZ)V

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Fm:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UmR()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->db()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Z)Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/Yf;Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p0, v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/core/Yf;ZZ)V

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Jcg()V

    :cond_7
    return-void
.end method
