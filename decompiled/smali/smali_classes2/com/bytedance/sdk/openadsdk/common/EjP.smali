.class public Lcom/bytedance/sdk/openadsdk/common/EjP;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/utils/LqL$Sj;


# instance fields
.field private Dq:F

.field private final EjP:Lcom/bytedance/sdk/component/uA/vS;

.field private Fmk:I

.field private HiB:Lcom/bytedance/sdk/openadsdk/common/TKC;

.field private final Jcg:Landroid/os/Handler;

.field private RiZ:I

.field private final Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private TEQ:J

.field private TKC:Landroid/webkit/WebView;

.field private TzV:J

.field private final Ym:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private Zq:J

.field private aa:Ljava/util/regex/Pattern;

.field private final dNu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final sP:Z

.field private sU:Ljava/lang/String;

.field private sef:Z

.field private uA:I

.field private uvD:Z

.field private vS:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/component/uA/vS;Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p3, "landingpage"

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->vS:Ljava/lang/String;

    new-instance p3, Lcom/bytedance/sdk/component/utils/LqL;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->sP()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, v0, p0}, Lcom/bytedance/sdk/component/utils/LqL;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/LqL$Sj;)V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->Jcg:Landroid/os/Handler;

    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->Ym:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->aa:Ljava/util/regex/Pattern;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->TzV:J

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->EjP:Lcom/bytedance/sdk/component/uA/vS;

    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->sP:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->dNu:Ljava/util/List;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/EjP;->sP()V

    return-void
.end method

.method static synthetic Dq(Lcom/bytedance/sdk/openadsdk/common/EjP;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->TEQ:J

    return-wide v0
.end method

.method private Dq()V
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "loading_show_interval"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->TzV:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "loading_show_timestamp"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->Zq:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "arbi_current_url"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->TKC:Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->vS:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/common/EjP;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->Ym:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private EjP()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->Jcg:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/common/EjP;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    return-object p0
.end method

.method private HiB()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->sef:Z

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->Ym:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->TEQ:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->Zq:J

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/EjP;->Dq()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->HiB:Lcom/bytedance/sdk/openadsdk/common/TKC;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->TKC:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->sU:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->HiB:Lcom/bytedance/sdk/openadsdk/common/TKC;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->HiB:Lcom/bytedance/sdk/openadsdk/common/TKC;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/common/aa;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->HiB:Lcom/bytedance/sdk/openadsdk/common/TKC;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/TKC;->Sj()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->HiB:Lcom/bytedance/sdk/openadsdk/common/TKC;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->Dq:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->HiB:Lcom/bytedance/sdk/openadsdk/common/TKC;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/common/EjP$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/common/EjP$3;-><init>(Lcom/bytedance/sdk/openadsdk/common/EjP;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/EjP;->EjP()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/EjP;->TKC()V

    :cond_2
    return-void
.end method

.method private Jcg()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->TKC:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic Jcg(Lcom/bytedance/sdk/openadsdk/common/EjP;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->sU:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/common/EjP;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->Fmk:I

    return p1
.end method

.method private Sj(I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->TKC:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->sU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/utils/uA;->sP()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/common/EjP$4;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/common/EjP$4;-><init>(Lcom/bytedance/sdk/openadsdk/common/EjP;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/EjP;->EjP()V

    return-void
.end method

.method private Sj(ILandroid/webkit/WebView;)V
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "load_progress"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "progress_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "arbi_current_url"

    invoke-virtual {p2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->vS:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private Sj(II)Z
    .locals 2

    const/4 v0, 0x0

    if-lt p1, p2, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->dNu:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->RiZ:I

    const/4 v1, 0x2

    if-ge p1, v1, :cond_1

    return v0

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->dNu:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/common/EjP;)Z
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/EjP;->vS()Z

    move-result p0

    return p0
.end method

.method static synthetic TEQ(Lcom/bytedance/sdk/openadsdk/common/EjP;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->Fmk:I

    return p0
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/common/EjP;)Lcom/bytedance/sdk/openadsdk/common/TKC;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->HiB:Lcom/bytedance/sdk/openadsdk/common/TKC;

    return-object p0
.end method

.method private TKC()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->Jcg:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->uA:I

    int-to-long v1, v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method static synthetic Ym(Lcom/bytedance/sdk/openadsdk/common/EjP;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->Zq:J

    return-wide v0
.end method

.method private sP()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->EjP:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->TKC:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->EjP:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getArbitrageLoadingView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/common/TKC;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/common/TKC;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->HiB:Lcom/bytedance/sdk/openadsdk/common/TKC;

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->eMB()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->uA:I

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->TO()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->Dq:F

    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/common/EjP;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/EjP;->HiB()V

    return-void
.end method

.method static synthetic uA(Lcom/bytedance/sdk/openadsdk/common/EjP;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->sef:Z

    return p0
.end method

.method static synthetic vS(Lcom/bytedance/sdk/openadsdk/common/EjP;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->vS:Ljava/lang/String;

    return-object p0
.end method

.method private vS()Z
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/EjP;->Jcg()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->Ym:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public Sj()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->vS()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/EjP;->HiB()V

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/utils/uA;->sP()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/common/EjP$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/common/EjP$2;-><init>(Lcom/bytedance/sdk/openadsdk/common/EjP;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Sj(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/common/EjP;->Sj(I)V

    :cond_0
    return-void
.end method

.method public Sj(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->TzV:J

    :cond_0
    return-void
.end method

.method public Sj(Landroid/webkit/WebView;I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->HiB:Lcom/bytedance/sdk/openadsdk/common/TKC;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/common/aa;->Sj(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->uvD:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x1e

    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/common/EjP;->Sj(II)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/common/EjP;->Sj(ILandroid/webkit/WebView;)V

    :cond_1
    const/16 v0, 0x32

    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/common/EjP;->Sj(II)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/common/EjP;->Sj(ILandroid/webkit/WebView;)V

    :cond_2
    const/16 v0, 0x46

    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/common/EjP;->Sj(II)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/common/EjP;->Sj(ILandroid/webkit/WebView;)V

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->HiB:Lcom/bytedance/sdk/openadsdk/common/TKC;

    if-eqz p1, :cond_4

    const/16 p1, 0x64

    if-ne p2, p1, :cond_4

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/common/EjP;->Sj(I)V

    :cond_4
    return-void
.end method

.method public Sj(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Zq()Lcom/bytedance/sdk/openadsdk/core/model/vS;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/vS;->sP()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/uA/sP;->Sj(Ljava/util/List;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->Fmk:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->Fmk:I

    invoke-static {}, Lcom/bytedance/sdk/component/utils/uA;->sP()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/common/EjP$1;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/common/EjP$1;-><init>(Lcom/bytedance/sdk/openadsdk/common/EjP;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public Sj(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/EjP;->vS()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/common/EjP;->Sj()V

    :cond_0
    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->vS:Ljava/lang/String;

    return-void
.end method

.method public TKC(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->dNu:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->uvD:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->sef:Z

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/EjP;->Jcg()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->RiZ:I

    return-void
.end method

.method public sP(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/EjP;->HiB:Lcom/bytedance/sdk/openadsdk/common/TKC;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/common/EjP;->Sj(I)V

    :cond_0
    return-void
.end method
