.class public Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;
.super Ljava/lang/Object;


# instance fields
.field public Bml:J

.field public Chv:Z

.field public Dq:I

.field public EZ:Z

.field public final Ei:Landroid/content/Context;

.field public final EjP:Z

.field public final FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB;

.field public final Fm:Landroid/app/Activity;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final Fmk:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public HS:Lcom/bytedance/sdk/openadsdk/activity/vS;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final HiB:Ljava/lang/String;

.field public final HpB:Lcom/bytedance/sdk/component/utils/LqL;

.field public IOh:I

.field public Ir:Z

.field public final JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

.field public final Jcg:Z

.field public final LD:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

.field public final LqL:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;

.field public final Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public MuB:F

.field public final RiZ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final Sj:I

.field public final TEQ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private TFd:J

.field public final TKC:Z

.field public final TzV:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public UHs:I

.field public Uc:Z

.field public final WMZ:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

.field public final Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

.field public final Yf:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

.field public final Ym:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final Zq:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public aNB:Lcom/bytedance/sdk/openadsdk/common/Fmk;

.field public aZ:Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;

.field public final aa:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public cX:Z

.field public final dNu:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public db:Ljava/lang/String;

.field public dwU:Z

.field public final dx:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public fF:Lcom/bytedance/sdk/openadsdk/aa/TEQ;

.field public gR:Z

.field public gY:Z

.field public final ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final jb:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

.field public final kF:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP;

.field public kb:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

.field public final ley:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;

.field private mZN:J

.field public ndK:Z

.field public pfr:I

.field public qRN:Z

.field public final sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field public final sU:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public sdp:I

.field public final sef:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public tz:Lcom/bytedance/sdk/openadsdk/component/reward/Ym;

.field public uA:I

.field public final uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

.field public final uvD:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final vS:I

.field public final wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

.field public final xD:Lcom/bytedance/sdk/openadsdk/component/reward/view/Jcg;

.field public final xhi:Z

.field public xu:Lcom/bytedance/sdk/openadsdk/utils/Fmk;

.field public final zR:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/bytedance/sdk/component/utils/LqL;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;I)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bytedance/sdk/openadsdk/core/model/sU;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Dq:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uA:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->TEQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ym:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->aa:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fmk:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sef:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Zq:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uvD:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->dNu:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->TzV:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->RiZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sU:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->dx:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->zR:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->qRN:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sdp:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Bml:J

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->jb:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object p4

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ei:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Sj:I

    const/4 v2, 0x2

    if-eqz p5, :cond_1

    if-ne p5, v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    :goto_1
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xhi:Z

    if-eqz p5, :cond_3

    if-ne p5, v1, :cond_2

    goto :goto_2

    :cond_2
    move v3, v0

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v1

    :goto_3
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Uc:Z

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HpB:Lcom/bytedance/sdk/component/utils/LqL;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xD()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    move-result p2

    const/4 v3, 0x7

    if-ne p2, v3, :cond_4

    move v0, v1

    :cond_4
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->EjP:Z

    if-eqz v0, :cond_5

    const-string p2, "rewarded_video"

    goto :goto_4

    :cond_5
    const-string p2, "fullscreen_interstitial_ad"

    :goto_4
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HiB:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EjP()Z

    move-result p2

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->cX:Z

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TEQ(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Jcg:Z

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->If()I

    move-result p2

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->vS:I

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->dNu(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ndK:Z

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->sef(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->TKC:Z

    if-ne p5, v2, :cond_6

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Fmk;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Fmk;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    goto :goto_5

    :cond_6
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    :goto_5
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ley:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;

    if-ne p5, v2, :cond_7

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/view/Ym;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Ym;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    goto :goto_6

    :cond_7
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EjP()Z

    move-result p2

    if-eqz p2, :cond_8

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    goto :goto_6

    :cond_8
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/view/uA;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/uA;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    :goto_6
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/view/Jcg;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Jcg;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xD:Lcom/bytedance/sdk/openadsdk/component/reward/view/Jcg;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->kF:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    invoke-direct {p2, p0, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->WMZ:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Yf:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->LD:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/aa/TEQ;

    invoke-direct {p2, p4}, Lcom/bytedance/sdk/openadsdk/aa/TEQ;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->fF:Lcom/bytedance/sdk/openadsdk/aa/TEQ;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj$1;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Sj(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/utils/Dq$Sj;)Lcom/bytedance/sdk/openadsdk/utils/Fmk;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xu:Lcom/bytedance/sdk/openadsdk/utils/Fmk;

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->TFd:J

    return-void
.end method

.method public Sj(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->gY:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->EjP(Z)V

    return-void
.end method

.method public TKC()J
    .locals 6

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->mZN:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->TFd:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public sP()V
    .locals 6

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->TFd:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->TFd:J

    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->mZN:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->TFd:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->mZN:J

    return-void
.end method
