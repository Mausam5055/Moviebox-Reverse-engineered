.class public Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;
.super Ljava/lang/Object;


# instance fields
.field private Dq:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;

.field private EjP:Z

.field private Fmk:Z

.field private HiB:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;",
            ">;"
        }
    .end annotation
.end field

.field private Jcg:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;

.field protected final Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private TEQ:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;

.field private final TKC:Ljava/lang/String;

.field private Ym:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

.field private aa:Lcom/bytedance/sdk/openadsdk/core/sP/sP;

.field private final sP:Landroid/content/Context;

.field private sef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/Ym/vS;",
            ">;"
        }
    .end annotation
.end field

.field private uA:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

.field private vS:Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Fmk:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->sP:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->TKC:Ljava/lang/String;

    return-void
.end method

.method private Sj(Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->uA:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->setClickListener(Lcom/bytedance/sdk/openadsdk/core/Dq/uA;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->uA:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->setClickCreativeListener(Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;)V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->aa:Lcom/bytedance/sdk/openadsdk/core/sP/sP;

    if-eqz v0, :cond_3

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/uA;

    if-eqz v1, :cond_3

    instance-of v1, p1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/Dq/uA;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->setClickListener(Lcom/bytedance/sdk/openadsdk/core/Dq/uA;)V

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Ym:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    if-eqz v0, :cond_4

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

    if-eqz v1, :cond_4

    instance-of v1, p1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->setClickCreativeListener(Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;)V

    :cond_4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj$3;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->sP:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj$3;-><init>(Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;Landroid/content/Context;Landroid/view/View;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_5

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_5
    move v1, v2

    :goto_0
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    instance-of v1, p1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    if-eqz v1, :cond_6

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->uA:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    :cond_6
    return-object v0
.end method

.method private Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->sP()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->sP()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dwU()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dwU()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xu()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xu()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, ""

    return-object p1
.end method

.method private Sj(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/high16 v0, -0x1000000

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private sP(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGVideoAdListener;)Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj$6;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj$6;-><init>(Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGVideoAdListener;)V

    return-object v0
.end method

.method private sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xu()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xu()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->gR()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->gR()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method private sef()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    const/4 v1, 0x1

    const v2, 0x1f000042

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;

    if-eqz v0, :cond_3

    instance-of v3, v0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/sP;

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->EjP()Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Fmk:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->HiB()V

    :cond_0
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Fmk:Z

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj(Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->EjP()Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Fmk:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->HiB()V

    :cond_2
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Fmk:Z

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj(Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public Dq()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->TEQ:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;

    return-object v0
.end method

.method public EjP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public Fmk()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->sef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    if-eqz v0, :cond_0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(I)V

    :cond_0
    return-void
.end method

.method public HiB()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public Jcg()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ley()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->sef()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->uA()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;->setMrcTrackerKey(Ljava/lang/Integer;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj$1;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->sP:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj$1;-><init>(Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;Landroid/content/Context;)V

    :goto_1
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGVideoMediaView;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGVideoMediaView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGVideoMediaView;->setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    :cond_2
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->TEQ:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;

    return-object v0
.end method

.method public Sj()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;

    return-object v0
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->vS:Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGVideoAdListener;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ley()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/sP;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->EjP()Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->sP(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGVideoAdListener;)Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->setVideoAdListener(Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->vS:Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->sP(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGVideoAdListener;)Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;)V

    :cond_2
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/Ym/vS;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->sef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->HiB:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/sP/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Ym:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/sP/sP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->aa:Lcom/bytedance/sdk/openadsdk/core/sP/sP;

    return-void
.end method

.method public Sj(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->EjP:Z

    return-void
.end method

.method public TEQ()Landroid/view/View;
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj$4;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj$4;-><init>(Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;->initData(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj$5;-><init>(Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public TKC()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGImageItem;
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGImageItem;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->TKC()I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->sP()I

    move-result v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->EjP()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGImageItem;-><init>(IILjava/lang/String;F)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public Ym()Landroid/view/View;
    .locals 5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ph()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aa()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41600000    # 14.0f

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/content/Context;FZ)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1, v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj(ILandroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public aa()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->sP:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->TKC:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sP()Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->uA:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    return-object v0
.end method

.method public uA()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    const v1, 0x1f000042

    const-string v2, "getMediaView return null"

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->vS:Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->HiB()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    new-instance v3, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGVideoMediaView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->sP:Landroid/content/Context;

    invoke-direct {v3, v2, v0, p0}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGVideoMediaView;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Ym:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->If()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->EjP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Ym:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Ym:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj$2;-><init>(Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_0
    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    const-string v1, "adVideoView null"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->reportCustomError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    const-string v1, "mPAGFeedVideoAdImpl null"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->reportCustomError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Bml()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    new-instance v2, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->sP:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/uA/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/uvD;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Lcom/bytedance/sdk/component/HiB/TEQ;->TKC(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v2}, Lcom/bytedance/sdk/openadsdk/uA/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bytedance/sdk/component/HiB/uvD;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Lcom/bytedance/sdk/component/HiB/uvD;)Lcom/bytedance/sdk/component/HiB/uA;

    :cond_6
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj(Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Ym:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v2

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->If()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->EjP(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Ym:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Ym:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    :cond_7
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_1
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_8
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;

    move-object v3, v0

    goto :goto_2

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    const-string v1, "images empty"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->reportCustomError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-object v3
.end method

.method public vS()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ir()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
