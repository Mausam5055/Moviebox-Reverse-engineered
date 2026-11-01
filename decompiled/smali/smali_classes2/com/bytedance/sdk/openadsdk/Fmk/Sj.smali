.class public Lcom/bytedance/sdk/openadsdk/Fmk/Sj;
.super Ljava/lang/Object;


# static fields
.field private static EjP:J = 0x36ee80L

.field private static volatile Sj:Lcom/bytedance/sdk/openadsdk/Fmk/Sj; = null

.field private static TKC:I = 0x2


# instance fields
.field private HiB:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/bytedance/sdk/component/uA/vS;",
            ">;>;"
        }
    .end annotation
.end field

.field private final sP:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "pre_render_count"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/dx/Sj;->Sj(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->TKC:I

    const-string v0, "pre_render_duration"

    const v2, 0x36ee80

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/dx/Sj;->Sj(Ljava/lang/String;I)I

    move-result v0

    int-to-long v2, v0

    sput-wide v2, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->EjP:J

    sget v0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->TKC:I

    if-gtz v0, :cond_0

    sput v1, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->TKC:I

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_1

    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->EjP:J

    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->HiB:Ljava/util/LinkedHashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$1;-><init>(Lcom/bytedance/sdk/openadsdk/Fmk/Sj;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->sP:Landroid/os/Handler;

    return-void
.end method

.method public static Sj()Lcom/bytedance/sdk/openadsdk/Fmk/Sj;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/Fmk/Sj;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/Fmk/Sj;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/Fmk/Sj;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/Fmk/Sj;

    return-object v0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/Fmk/Sj;)Ljava/util/LinkedHashMap;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->HiB:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method private Sj(IILcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->HiB:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->HiB:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->sP:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    invoke-static {p3, p4, p2}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    return-void
.end method

.method private Sj(ILcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Z)V
    .locals 7

    new-instance v6, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;-><init>(Lcom/bytedance/sdk/openadsdk/Fmk/Sj;Lcom/bytedance/sdk/openadsdk/core/model/sU;ILjava/lang/String;Z)V

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V

    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/component/uA/vS;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

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

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/uA/vS;->setMixedContentMode(I)V

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/sU;->Sj(Lcom/bytedance/sdk/component/uA/vS;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/Fmk/Sj;IILcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->Sj(IILcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/Fmk/Sj;ILcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->Sj(ILcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/Fmk/Sj;Lcom/bytedance/sdk/component/uA/vS;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->Sj(Lcom/bytedance/sdk/component/uA/vS;Ljava/lang/String;)V

    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;FLjava/lang/String;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v5, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$4;

    invoke-direct {v5, p2}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$4;-><init>(F)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(JLcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/Zq/TKC/Sj;)V

    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v5, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$5;

    invoke-direct {v5, p2, p1}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$5;-><init>(ILjava/lang/String;)V

    const-string v4, "web_delete_pre_render"

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(JLcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/Zq/TKC/Sj;)V

    return-void
.end method

.method static synthetic TKC()J
    .locals 2

    sget-wide v0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->EjP:J

    return-wide v0
.end method

.method public static TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->vS(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic sP()I
    .locals 1

    sget v0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->TKC:I

    return v0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/Fmk/Sj;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->sP:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 7

    if-eqz p1, :cond_a

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sef()Lcom/bytedance/sdk/openadsdk/core/model/dNu;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/dNu;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/dNu;-><init>()V

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->FcE()Z

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->FcE()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Chv()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "landingpage_split_screen"

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "landingpage_direct"

    goto :goto_0

    :cond_5
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "landingpage_split_ceiling"

    goto :goto_0

    :cond_6
    const-string v2, ""

    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->HiB:Ljava/util/LinkedHashMap;

    if-eqz v3, :cond_7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    return-void

    :cond_7
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->eMB()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->sP()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v4, v5, :cond_8

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Jcg/sP;->Sj()Lcom/bytedance/sdk/openadsdk/Jcg/sP;

    move-result-object v0

    new-instance v4, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$2;

    invoke-direct {v4, p0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$2;-><init>(Lcom/bytedance/sdk/openadsdk/Fmk/Sj;ILcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4, v6}, Lcom/bytedance/sdk/openadsdk/Jcg/sP;->Sj(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/Jcg/sP$Sj;Z)V

    return-void

    :cond_8
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->sP()I

    move-result v4

    if-ne v4, v6, :cond_9

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Jcg/sP;->Sj()Lcom/bytedance/sdk/openadsdk/Jcg/sP;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v6}, Lcom/bytedance/sdk/openadsdk/Jcg/sP;->Sj(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/Jcg/sP$Sj;Z)V

    invoke-direct {p0, v1, p1, v2, v6}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->Sj(ILcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Z)V

    return-void

    :cond_9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->sP()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    invoke-direct {p0, v1, p1, v2, v0}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->Sj(ILcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Z)V

    :cond_a
    :goto_1
    return-void
.end method

.method public sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/component/uA/vS;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Chv()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Chv()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->HiB:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/uA/vS;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-double v2, v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->cra()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->floatValue()F

    move-result v2

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "web_use_pre_render"

    invoke-static {p1, v3, v2, v4}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;FLjava/lang/String;)V

    const/4 v2, 0x3

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, p1, v3}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->Sj(IILcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-object v0
.end method
