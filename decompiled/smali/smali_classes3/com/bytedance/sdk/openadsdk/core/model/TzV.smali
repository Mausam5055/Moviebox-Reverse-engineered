.class public Lcom/bytedance/sdk/openadsdk/core/model/TzV;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/model/TzV$Sj;,
        Lcom/bytedance/sdk/openadsdk/core/model/TzV$sP;
    }
.end annotation


# instance fields
.field private Bml:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

.field private Chv:Ljava/util/concurrent/atomic/AtomicBoolean;

.field Dq:Landroid/widget/FrameLayout;

.field private EZ:Landroid/widget/FrameLayout;

.field private Ei:Z

.field EjP:Landroid/widget/FrameLayout;

.field private FPG:I

.field private Fm:Z

.field Fmk:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

.field HiB:Landroid/view/View;

.field private HpB:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;

.field private IOh:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

.field private final Ir:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private JcM:Ljava/lang/String;

.field final Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private final LD:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private LqL:Landroid/view/View;

.field private final Mts:Landroid/view/View;

.field private MuB:Lcom/bytedance/sdk/openadsdk/common/EjP;

.field private RiZ:Landroid/widget/TextView;

.field Sj:Landroid/widget/ImageView;

.field TEQ:Landroid/animation/ValueAnimator;

.field TKC:Landroid/widget/TextView;

.field private TzV:Landroid/widget/TextView;

.field private volatile UHs:I

.field private Uc:J

.field private final WMZ:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

.field private Wjd:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

.field private Yf:J

.field Ym:Landroid/animation/ObjectAnimator;

.field private Zq:Landroid/os/Handler;

.field private aNB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

.field aa:Lu5/b$b;

.field private cX:Landroid/widget/LinearLayout$LayoutParams;

.field private dNu:Landroid/view/View;

.field private db:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

.field private dwU:I

.field private dx:Landroid/widget/TextView;

.field private final fF:Landroid/app/Activity;

.field private gR:Landroid/animation/ValueAnimator;

.field private gY:F

.field private ib:Lcom/bytedance/sdk/component/uA/vS;

.field private final jb:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private kF:Landroid/widget/FrameLayout;

.field private final kb:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private ley:Landroid/widget/ImageView;

.field private volatile ndK:I

.field private pfr:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

.field private volatile qRN:I

.field sP:Landroid/widget/FrameLayout;

.field private sU:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

.field private sdp:I

.field sef:Lcom/bytedance/sdk/openadsdk/core/sP/sP;

.field uA:Landroid/animation/ObjectAnimator;

.field private uP:Lcom/bytedance/sdk/openadsdk/common/aa;

.field private uvD:Landroid/view/View;

.field vS:Landroid/widget/RelativeLayout;

.field private wE:Landroid/view/View;

.field private xD:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

.field private xhi:Ljava/lang/String;

.field private xu:Lcom/bytedance/sdk/openadsdk/core/model/TzV$sP;

.field private zR:Lcom/bytedance/sdk/openadsdk/core/Yf;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;Landroid/view/View;)V
    .locals 17

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v10, 0x0

    invoke-direct {v1, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->LD:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->jb:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v10, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ndK:I

    iput v10, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->qRN:I

    iput v10, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->UHs:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->gY:F

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->kb:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v1, -0x1

    iput-wide v1, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Uc:J

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Ir:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v0, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->fF:Landroid/app/Activity;

    iput-object v8, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-object/from16 v1, p3

    iput-object v1, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    move-object/from16 v2, p5

    iput-object v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->WMZ:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    move-object/from16 v2, p6

    iput-object v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    invoke-static/range {p3 .. p3}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Ljava/lang/String;)I

    move-result v2

    iput v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->FPG:I

    if-eqz v8, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->eMB()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xhi:Ljava/lang/String;

    :cond_0
    iget-object v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xhi:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Jcg/sP;->Sj()Lcom/bytedance/sdk/openadsdk/Jcg/sP;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/Jcg/sP;->sP()Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    move-result-object v2

    iput-object v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->db:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Jcg/sP;->Sj()Lcom/bytedance/sdk/openadsdk/Jcg/sP;

    move-result-object v2

    iget-object v3, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->db:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    iget-object v4, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xhi:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/Jcg/sP;->Sj(Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;Ljava/lang/String;)I

    move-result v2

    iput v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->dwU:I

    if-lez v2, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    move v2, v10

    :goto_0
    iput v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sdp:I

    :cond_2
    invoke-static/range {p2 .. p2}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v11

    invoke-static/range {p2 .. p2}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v12

    invoke-static/range {p2 .. p2}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v2, "landingpage_split_screen"

    iput-object v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    goto :goto_1

    :cond_3
    if-eqz v11, :cond_4

    const-string v2, "landingpage_direct"

    iput-object v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    goto :goto_1

    :cond_4
    if-eqz v12, :cond_5

    const-string v2, "aggregate_page"

    iput-object v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    goto :goto_1

    :cond_5
    invoke-static/range {p2 .. p2}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "landingpage_split_ceiling"

    iput-object v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    :cond_6
    :goto_1
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v3, v8, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    iput-object v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Fmk:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "click_scence"

    invoke-interface {v14, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Fmk:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    invoke-virtual {v2, v14}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Ljava/util/Map;)V

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    iget-object v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Fmk:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    invoke-virtual {v2, v15}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Landroid/view/View;)V

    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/model/TzV$1;

    iget-object v5, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Ljava/lang/String;)I

    move-result v6

    const/16 v16, 0x1

    move-object v1, v7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object v0, v7

    move/from16 v7, v16

    move-object/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/TzV;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;IZLcom/bytedance/sdk/openadsdk/core/model/sU;)V

    iput-object v0, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sef:Lcom/bytedance/sdk/openadsdk/core/sP/sP;

    invoke-virtual {v0, v14}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Ljava/util/Map;)V

    iget-object v0, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sef:Lcom/bytedance/sdk/openadsdk/core/sP/sP;

    invoke-virtual {v0, v15}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Landroid/view/View;)V

    move-object/from16 v0, p4

    iput-object v0, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Dq:Landroid/widget/FrameLayout;

    if-nez v13, :cond_7

    if-nez v11, :cond_7

    if-eqz v12, :cond_8

    :cond_7
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Zq:Landroid/os/Handler;

    :cond_8
    if-nez v11, :cond_9

    if-eqz v12, :cond_a

    :cond_9
    iget-object v0, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Zq:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v10, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LandingPageModel"

    const-string v2, "LandingPageModel: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static synthetic Dq(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Fmk()V

    return-void
.end method

.method public static Dq(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx()I

    move-result p0

    const/16 v0, 0x14

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    return-object p0
.end method

.method public static EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uA(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sdp()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx()I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_3

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tY()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tY()F

    move-result p0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float p0, p0, v1

    if-nez p0, :cond_3

    :cond_2
    return v2

    :cond_3
    return v0
.end method

.method static synthetic Fmk(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->db:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    return-object p0
.end method

.method private Fmk()V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->LD:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->jb:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->LD:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Uc:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Uc:J

    sub-long/2addr v2, v4

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    invoke-static {v0, v4, v2, v3}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;J)V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Yf:J

    sub-long/2addr v3, v5

    invoke-static {v0, v2, v3, v4, v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;JZ)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sef()V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Yf:J

    return-wide v0
.end method

.method public static HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx()I

    move-result p0

    const/16 v1, 0x21

    if-ne p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method static synthetic JcM(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Chv:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic Jcg(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->fF:Landroid/app/Activity;

    return-object p0
.end method

.method public static Jcg(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->jjS()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Dq(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic LD(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->LqL:Landroid/view/View;

    return-object p0
.end method

.method static synthetic LqL(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Z
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->RiZ()Z

    move-result p0

    return p0
.end method

.method static synthetic RiZ(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)F
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->gY:F

    return p0
.end method

.method private RiZ()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    return v0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/model/TzV;F)F
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->gY:F

    return p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/model/TzV;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Yf:J

    return-wide p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/model/TzV;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->gR:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HpB:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/model/TzV;Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Chv:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/model/TzV;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC(I)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/model/TzV;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Ei:Z

    return p1
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uA(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method static synthetic TEQ(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Zq:Landroid/os/Handler;

    return-object p0
.end method

.method public static TEQ(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->sU()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ei()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->LD:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private TKC(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Bml:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->aNB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->jb:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TzV:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->RiZ:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sU:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->dx:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public static TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sdp()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->zR()I

    move-result v1

    const/16 v2, 0x26

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->liH()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method static synthetic TzV(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Lcom/bytedance/sdk/openadsdk/EjP/Ym;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xD:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    return-object p0
.end method

.method private TzV()V
    .locals 7

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->wE:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ley:Landroid/widget/ImageView;

    new-array v3, v1, [F

    fill-array-data v3, :array_0

    const-string v4, "translationY"

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uA:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uA:Landroid/animation/ObjectAnimator;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uA:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->wE:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->wE:Landroid/view/View;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/model/TzV$5;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->wE:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sef:Lcom/bytedance/sdk/openadsdk/core/sP/sP;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->RiZ()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Dq:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Sj:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Sj:Landroid/widget/ImageView;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/model/TzV$6;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Bml()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Bml()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Bml()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Bml()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Bml()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Sj:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/model/TzV$7;

    invoke-direct {v6, p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)V

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/uvD;Landroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/component/HiB/uvD;)V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Bml()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/uA/EjP;->Sj()Lcom/bytedance/sdk/component/HiB/Zq;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/bytedance/sdk/component/HiB/Zq;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Bml()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->sP()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Bml()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->TKC()I

    move-result v2

    invoke-interface {v3, v2}, Lcom/bytedance/sdk/component/HiB/TEQ;->sP(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->HiB(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/component/HiB/TEQ;->HiB(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/component/HiB/TEQ;->EjP(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/bytedance/sdk/component/HiB/TEQ;->TKC(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/model/TzV$Sj;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$Sj;-><init>()V

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Lcom/bytedance/sdk/component/HiB/Dq;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/uA/sP;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/model/TzV$8;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)V

    invoke-direct {v2, v3, v0, v4}, Lcom/bytedance/sdk/openadsdk/uA/sP;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/component/HiB/uvD;)V

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Lcom/bytedance/sdk/component/HiB/uvD;)Lcom/bytedance/sdk/component/HiB/uA;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    nop

    :array_0
    .array-data 4
        0x41800000    # 16.0f
        0x0
    .end array-data
.end method

.method static synthetic WMZ(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->gR:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic Yf(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->cX:Landroid/widget/LinearLayout$LayoutParams;

    return-object p0
.end method

.method static synthetic Ym(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xhi:Ljava/lang/String;

    return-object p0
.end method

.method private Ym()V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->Sj(Z)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->sP(Z)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->Sj(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$sP;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->dwU:I

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    invoke-direct {v0, v3, v4, v5, p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$sP;-><init>(ILcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/TzV;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xu:Lcom/bytedance/sdk/openadsdk/core/model/TzV$sP;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->f_()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->sP()Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xD:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xu:Lcom/bytedance/sdk/openadsdk/core/model/TzV$sP;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/TEQ;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xD:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->sP(Z)Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xu:Lcom/bytedance/sdk/openadsdk/core/model/TzV$sP;

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sdp:I

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/EjP/TEQ;I)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->sP(Z)Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xD:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xD:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->fF:Landroid/app/Activity;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    invoke-static {v0, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/component/uA/vS;Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/common/EjP;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->MuB:Lcom/bytedance/sdk/openadsdk/common/EjP;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/common/EjP;->Sj(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/component/uA/vS;)V

    :cond_3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->aa()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->f_()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sU()V

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/uA/vS;->setLandingPage(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/component/uA/vS;->setTag(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->hif()Lcom/bytedance/sdk/component/uA/sP/Sj;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/component/uA/vS;->setMaterialMeta(Lcom/bytedance/sdk/component/uA/sP/Sj;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$12;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->zR:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->MuB:Lcom/bytedance/sdk/openadsdk/common/EjP;

    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xD:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    const/4 v11, 0x1

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v11}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$12;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/TzV;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/Yf;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/common/EjP;Lcom/bytedance/sdk/openadsdk/EjP/Ym;Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HpB:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/component/uA/vS;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HpB:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HpB:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Sj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/model/TzV$13;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->zR:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xD:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->MuB:Lcom/bytedance/sdk/openadsdk/common/EjP;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$13;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/TzV;Lcom/bytedance/sdk/openadsdk/core/Yf;Lcom/bytedance/sdk/openadsdk/EjP/Ym;Lcom/bytedance/sdk/openadsdk/common/EjP;)V

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/component/uA/vS;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Wjd:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    if-nez v0, :cond_5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/Jcg;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Wjd:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/model/TzV$14;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$14;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)V

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/component/uA/vS;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    const/16 v4, 0x1bca

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/TzV;->Sj(Landroid/webkit/WebView;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/component/uA/vS;->setUserAgentString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setMixedContentMode(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/model/TzV$15;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$15;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/model/TzV$16;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$16;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sef:Lcom/bytedance/sdk/openadsdk/core/sP/sP;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sdp:I

    invoke-static {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->f_()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Chv()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/sU;->Sj(Lcom/bytedance/sdk/component/uA/vS;Ljava/lang/String;)V

    :cond_6
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Fm:Z

    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uP:Lcom/bytedance/sdk/openadsdk/common/aa;

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->TKC()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uP:Lcom/bytedance/sdk/openadsdk/common/aa;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/aa;->Sj()V

    :cond_8
    return-void
.end method

.method static synthetic Zq(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)I
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->UHs:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->UHs:I

    return v0
.end method

.method private Zq()V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->LD:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uvD()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->jb:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->WMZ:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;->Dq()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uP:Lcom/bytedance/sdk/openadsdk/common/aa;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/aa;->sP()V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    const/16 v2, 0xa

    const/16 v3, 0xd

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    const-string v7, "show_agg_backup"

    invoke-static {v0, v1, v5, v6, v7}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(JLcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->dNu:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->dNu:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->dNu:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->vS:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/model/TzV$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uvD:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uvD:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uvD:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    move-result-object v5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->sP()I

    move-result v7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->TKC()I

    move-result v8

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sU:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual/range {v5 .. v10}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj(Ljava/lang/String;IILandroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TzV:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dwU()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->RiZ:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->gR()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->dx:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->dx:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->dx:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Fmk:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->dx:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Fmk:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->cX:Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_7

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/high16 v1, 0x41f00000    # 30.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC(I)V

    return-void

    :cond_6
    invoke-direct {p0, v4}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC(I)V

    :cond_7
    return-void
.end method

.method static synthetic aa(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)I
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ndK:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ndK:I

    return v0
.end method

.method private aa()V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->fF:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->zR:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Lcom/bytedance/sdk/component/uA/vS;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->TKC(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->mZN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->EjP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->FPG:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(I)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HpB()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(I)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Lip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->HiB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/component/uA/vS;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/model/TzV$17;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$17;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/widget/HiB;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    return-void
.end method

.method static synthetic dNu(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Wjd:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    return-object p0
.end method

.method private dNu()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uP:Lcom/bytedance/sdk/openadsdk/common/aa;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/aa;->getLoadingStyle()Lcom/bytedance/sdk/openadsdk/common/Ym;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/Ym;->sP()Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Bml:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/Ym;->TKC()Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->aNB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->IOh:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/model/TzV$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method static synthetic dx(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Lcom/bytedance/sdk/openadsdk/common/EjP;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->MuB:Lcom/bytedance/sdk/openadsdk/common/EjP;

    return-object p0
.end method

.method static synthetic fF(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EZ:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic ib(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->qRN:I

    return p0
.end method

.method static synthetic kF(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ndK:I

    return p0
.end method

.method static synthetic ley(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->wE:Landroid/view/View;

    return-object p0
.end method

.method private sP(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Ei:Z

    return p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/model/TzV;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP(I)Z

    move-result p0

    return p0
.end method

.method public static sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sdp()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->liH()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tY()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tY()F

    move-result p0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float p0, p0, v1

    if-nez p0, :cond_2

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method static synthetic sU(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Lcom/bytedance/sdk/component/uA/vS;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    return-object p0
.end method

.method private sU()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    iget v0, v0, Lcom/bytedance/sdk/component/uA/vS;->Sj:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ndK:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    iget v0, v0, Lcom/bytedance/sdk/component/uA/vS;->sP:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->qRN:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    iget v0, v0, Lcom/bytedance/sdk/component/uA/vS;->TKC:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->UHs:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->sP()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->WMZ:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;->Ym()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Yf:J

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->EjP()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Fmk()V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->TKC()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Fmk()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Landroid/webkit/WebView;)I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xu:Lcom/bytedance/sdk/openadsdk/core/model/TzV$sP;

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$sP;->Sj(I)V

    :cond_3
    return-void
.end method

.method static synthetic sef(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)I
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->qRN:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->qRN:I

    return v0
.end method

.method private sef()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->vS:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "timeVisible"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Ym:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Ym:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/model/TzV$18;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$18;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Ym:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic uA(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->WMZ:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    return-object p0
.end method

.method public static uA(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx()I

    move-result p0

    const/16 v0, 0x13

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic uP(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->kF:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic uvD(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Lcom/bytedance/sdk/openadsdk/common/aa;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uP:Lcom/bytedance/sdk/openadsdk/common/aa;

    return-object p0
.end method

.method private uvD()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->fF:Landroid/app/Activity;

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->WMZ:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;->Ym()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->WMZ:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;->aa()V

    :cond_1
    return-void
.end method

.method static synthetic vS(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Zq()V

    return-void
.end method

.method public static vS(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uA(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic wE(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->IOh:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    return-object p0
.end method

.method static synthetic zR(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->UHs:I

    return p0
.end method


# virtual methods
.method public Dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xD:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Dq()V

    :cond_0
    return-void
.end method

.method public EjP()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HcZ()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HcZ()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public HiB()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->kF:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->LqL:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public Jcg()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->zR:Lcom/bytedance/sdk/openadsdk/core/Yf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Ym()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xD:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Jcg()V

    :cond_1
    return-void
.end method

.method public Sj()V
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/Zq;->dx:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/uA/vS;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/uA/vS;->f_()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/uA/vS;->HiB()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->sU:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->kF:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->uP:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/common/aa;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uP:Lcom/bytedance/sdk/openadsdk/common/aa;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->zR:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->wE:Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->ib:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ley:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->WMZ:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->LqL:Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->TzV:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->RiZ:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Sj:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->kF:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->vS:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->yr:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->TEQ:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->wE:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uvD:Landroid/view/View;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->FPG:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uvD:Landroid/view/View;

    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->fF:Landroid/app/Activity;

    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->ley:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->dNu:Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->Yf:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TzV:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->LD:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->RiZ:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->LqL:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sU:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->fF:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->dx:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fmk()Lcom/bytedance/sdk/openadsdk/core/model/RiZ;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fmk()Lcom/bytedance/sdk/openadsdk/core/model/RiZ;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->HiB()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->JcM:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB:Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->XgY:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->IOh:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_4
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fmk()Lcom/bytedance/sdk/openadsdk/core/model/RiZ;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB:Landroid/view/View;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fmk()Lcom/bytedance/sdk/openadsdk/core/model/RiZ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->TKC()J

    move-result-wide v4

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fmk()Lcom/bytedance/sdk/openadsdk/core/model/RiZ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->Sj()J

    move-result-wide v4

    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->TKC()Landroid/os/Handler;

    move-result-object v2

    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/model/TzV$11;

    invoke-direct {v6, p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$11;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)V

    const-wide/16 v7, 0x3e8

    mul-long/2addr v4, v7

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Ym()V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TzV()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->kF:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const v4, 0x40151eb8    # 2.33f

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->kF:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->LqL:Landroid/view/View;

    if-eqz v2, :cond_a

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uP:Lcom/bytedance/sdk/openadsdk/common/aa;

    if-eqz v2, :cond_b

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/common/aa;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    :cond_b
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->dNu()V

    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v4, v2, v0

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->db:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xhi:Ljava/lang/String;

    invoke-static/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/EjP/TKC$Sj;->Sj(JLcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;Ljava/lang/String;)V

    return-void
.end method

.method public Sj(F)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->WMZ:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;->uA()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public Sj(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->pfr:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->HiB(I)V

    :cond_0
    return-void
.end method

.method public Sj(ILcom/bytedance/sdk/component/adexpress/sP/sef;)V
    .locals 17

    move-object/from16 v15, p0

    move/from16 v14, p1

    const/4 v0, 0x3

    if-eq v14, v0, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v15, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EZ:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    if-nez p2, :cond_2

    :cond_1
    move-object v0, v15

    goto/16 :goto_3

    :cond_2
    iget-object v0, v15, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Chv:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v13, 0x1

    if-eqz v0, :cond_4

    if-ne v14, v13, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x5

    if-ne v14, v1, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, v15, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->LqL:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, v15, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->kF:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, v15, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->cX:Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v0, v15, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sef()Lcom/bytedance/sdk/openadsdk/core/model/dNu;

    move-result-object v0

    invoke-direct/range {p0 .. p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP(I)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->HiB()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    :goto_1
    move v4, v0

    goto :goto_2

    :cond_5
    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->vS()I

    move-result v0

    goto :goto_0

    :cond_7
    const/high16 v0, 0x428c0000    # 70.0f

    goto :goto_1

    :goto_2
    iget-object v0, v15, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EZ:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_8

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :cond_8
    move-object v5, v0

    iget v8, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v6, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v10, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v12, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, v15, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->fF:Landroid/app/Activity;

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Dq()D

    move-result-wide v13

    double-to-float v1, v13

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v7

    iget-object v0, v15, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->fF:Landroid/app/Activity;

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->uA()D

    move-result-wide v13

    double-to-float v1, v13

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v9

    iget-object v0, v15, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->fF:Landroid/app/Activity;

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->vS()D

    move-result-wide v13

    double-to-float v1, v13

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v11

    iget-object v0, v15, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->fF:Landroid/app/Activity;

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Jcg()D

    move-result-wide v13

    double-to-float v1, v13

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v13

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v15, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TEQ:Landroid/animation/ValueAnimator;

    move/from16 p2, v13

    const-wide/16 v13, 0x1f4

    invoke-virtual {v0, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v14, v15, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TEQ:Landroid/animation/ValueAnimator;

    new-instance v13, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v15, v13

    move/from16 v13, p2

    move-object/from16 v16, v14

    move/from16 v14, p1

    invoke-direct/range {v0 .. v14}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/TzV;Landroid/widget/LinearLayout$LayoutParams;FFLandroid/widget/FrameLayout$LayoutParams;IIIIIIIII)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    move/from16 v3, p1

    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TEQ:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->kb:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Uc:J

    :cond_9
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xD:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    if-eqz v1, :cond_a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(ZJ)V

    :cond_a
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->IOh:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    :goto_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->pfr:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EZ:Landroid/widget/FrameLayout;

    return-void
.end method

.method public Sj(Lu5/b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->aa:Lu5/b$b;

    return-void
.end method

.method public TEQ()V
    .locals 3

    const-string v0, "landingpage_split_screen"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "default_split_style"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/dx/Sj;->Sj(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Ir:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$10;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$10;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public TKC()V
    .locals 5

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->RiZ()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object v0

    invoke-virtual {v0}, Ly5/b;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/uA/EjP;->Sj()Lcom/bytedance/sdk/component/HiB/Zq;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/component/HiB/Zq;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object v2

    invoke-virtual {v2}, Ly5/b;->t()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object v2

    invoke-virtual {v2}, Ly5/b;->C()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/HiB/TEQ;->sP(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->HiB(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/HiB/TEQ;->HiB(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/HiB/TEQ;->EjP(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/HiB/TEQ;->TKC(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/model/TzV$Sj;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$Sj;-><init>()V

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Lcom/bytedance/sdk/component/HiB/Dq;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/uA/sP;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/model/TzV$4;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)V

    invoke-direct {v2, v3, v0, v4}, Lcom/bytedance/sdk/openadsdk/uA/sP;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/component/HiB/uvD;)V

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Lcom/bytedance/sdk/component/HiB/uvD;)Lcom/bytedance/sdk/component/HiB/uA;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 11
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/16 v2, 0x64

    if-ne v0, v2, :cond_4

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fmk()Lcom/bytedance/sdk/openadsdk/core/model/RiZ;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fmk()Lcom/bytedance/sdk/openadsdk/core/model/RiZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->sP()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fmk()Lcom/bytedance/sdk/openadsdk/core/model/RiZ;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fmk()Lcom/bytedance/sdk/openadsdk/core/model/RiZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->EjP()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x14

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->aa:Lu5/b$b;

    const-wide/16 v5, 0x3e8

    if-eqz v0, :cond_2

    int-to-long v7, p1

    mul-long/2addr v7, v5

    mul-long v9, v3, v5

    invoke-interface {v0, v7, v8, v9, v10}, Lu5/b$b;->Sj(JJ)V

    :cond_2
    int-to-long v7, p1

    cmp-long v0, v7, v3

    if-ltz v0, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->aa:Lu5/b$b;

    if-eqz p1, :cond_5

    mul-long/2addr v3, v5

    invoke-interface {p1, v3, v4, v2}, Lu5/b$b;->Sj(JI)V

    goto :goto_1

    :cond_3
    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Zq:Landroid/os/Handler;

    if-eqz v0, :cond_5

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->what:I

    add-int/2addr p1, v1

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Zq:Landroid/os/Handler;

    invoke-virtual {p1, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_4
    const/16 p1, 0x65

    if-ne v0, p1, :cond_5

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TEQ()V

    :cond_5
    :goto_1
    return v1
.end method

.method protected sP()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ir()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->dx:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public uA()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Chv:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public vS()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xD:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Lcom/bytedance/sdk/component/uA/vS;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Zq:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->gR:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->gR:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TEQ:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TEQ:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Ym:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Ym:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uP:Lcom/bytedance/sdk/openadsdk/common/aa;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/aa;->sP()V

    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uA:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/JcM;->Sj(Landroid/webkit/WebView;)V

    :cond_7
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->zR:Lcom/bytedance/sdk/openadsdk/core/Yf;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->aa()V

    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xD:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    if-eqz v0, :cond_9

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->EjP(Z)V

    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xhi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Fm:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->qRN:I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ndK:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/TKC$Sj;->Sj(IILcom/bytedance/sdk/openadsdk/core/model/sU;)V

    :cond_a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Jcg/sP;->Sj()Lcom/bytedance/sdk/openadsdk/Jcg/sP;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->db:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Jcg/sP;->Sj(Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;)V

    return-void
.end method
