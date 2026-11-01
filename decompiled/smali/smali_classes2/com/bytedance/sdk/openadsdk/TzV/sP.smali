.class public Lcom/bytedance/sdk/openadsdk/TzV/sP;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/TzV/sP$Sj;
    }
.end annotation


# static fields
.field private static volatile Sj:Lcom/bytedance/sdk/openadsdk/TzV/sP;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final EjP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private TKC:Lcom/bytedance/sdk/openadsdk/TzV/Sj/TKC;

.field private final sP:Lcom/bytedance/sdk/component/Jcg/Sj;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TzV/sP;->EjP:Ljava/util/Map;

    new-instance p1, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;

    invoke-direct {p1}, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;-><init>()V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v1, v2, v0}, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->Sj(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/Jcg/Sj$Sj;

    move-result-object p1

    invoke-virtual {p1, v1, v2, v0}, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->sP(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/Jcg/Sj$Sj;

    move-result-object p1

    invoke-virtual {p1, v1, v2, v0}, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->TKC(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/Jcg/Sj$Sj;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/TzV/sP$Sj;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/TzV/sP$Sj;-><init>(Lcom/bytedance/sdk/openadsdk/TzV/sP;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->Sj(Lcom/bytedance/sdk/component/sP/Sj/Dq;)Lcom/bytedance/sdk/component/Jcg/Sj$Sj;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->Sj(Z)Lcom/bytedance/sdk/component/Jcg/Sj$Sj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->Sj()Lcom/bytedance/sdk/component/Jcg/Sj;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TzV/sP;->sP:Lcom/bytedance/sdk/component/Jcg/Sj;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/TzV/sP$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/TzV/sP$1;-><init>(Lcom/bytedance/sdk/openadsdk/TzV/sP;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/uA;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Jcg/Sj;->HiB()Lcom/bytedance/sdk/component/sP/Sj/Ym;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Ym;->Sj()Lcom/bytedance/sdk/component/sP/Sj/EjP;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/sP/Sj/EjP;->Sj(I)V

    :cond_0
    return-void
.end method

.method private EjP()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TzV/sP;->TKC:Lcom/bytedance/sdk/openadsdk/TzV/Sj/TKC;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/TzV/Sj/TKC;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/TzV/Sj/TKC;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/TzV/sP;->TKC:Lcom/bytedance/sdk/openadsdk/TzV/Sj/TKC;

    :cond_0
    return-void
.end method

.method public static Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj:Lcom/bytedance/sdk/openadsdk/TzV/sP;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/TzV/sP;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj:Lcom/bytedance/sdk/openadsdk/TzV/sP;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/TzV/sP;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/TzV/sP;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj:Lcom/bytedance/sdk/openadsdk/TzV/sP;

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
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj:Lcom/bytedance/sdk/openadsdk/TzV/sP;

    return-object v0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/TzV/sP;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private Sj(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TzV/sP;->EjP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "ipv6"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/dx;

    sget-object v2, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->UNKNOWN:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/dx;-><init>(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptManager;->encryptType4(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/embedapplog/IDefaultEncrypt;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TzV/sP;->EjP:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public Sj(ILandroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TEQ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TEQ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/uA/EjP;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/HiB/TEQ;->sP(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->HiB(Landroid/content/Context;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/HiB/TEQ;->HiB(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/HiB/TEQ;->EjP(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/HiB/TEQ;->TKC(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p1

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TEQ()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0, p2}, Lcom/bytedance/sdk/openadsdk/uA/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bytedance/sdk/component/HiB/uvD;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Lcom/bytedance/sdk/component/HiB/uvD;)Lcom/bytedance/sdk/component/HiB/uA;

    if-eqz p2, :cond_1

    new-instance p1, Lcom/bytedance/sdk/openadsdk/TzV/sP$2;

    invoke-direct {p1, p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/TzV/sP$2;-><init>(Lcom/bytedance/sdk/openadsdk/TzV/sP;Landroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/uvD;Landroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/uA/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/uvD;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/HiB/TEQ;->TKC(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/uA/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bytedance/sdk/component/HiB/uvD;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Lcom/bytedance/sdk/component/HiB/uvD;)Lcom/bytedance/sdk/component/HiB/uA;

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/uvD;Landroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/component/HiB/uvD;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/model/uvD;",
            "Landroid/widget/ImageView;",
            "Lcom/bytedance/sdk/openadsdk/core/model/sU;",
            "Lcom/bytedance/sdk/component/HiB/uvD<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/uA/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/uvD;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/HiB/TEQ;->TKC(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2, p4}, Lcom/bytedance/sdk/openadsdk/uA/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Landroid/widget/ImageView;Lcom/bytedance/sdk/component/HiB/uvD;)Lcom/bytedance/sdk/component/HiB/uvD;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Lcom/bytedance/sdk/component/HiB/uvD;)Lcom/bytedance/sdk/component/HiB/uA;

    :cond_0
    return-void
.end method

.method public Sj(Ljava/lang/String;IILandroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/uA/EjP;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p2

    invoke-interface {p2, p3}, Lcom/bytedance/sdk/component/HiB/TEQ;->sP(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->HiB(Landroid/content/Context;)I

    move-result p3

    invoke-interface {p2, p3}, Lcom/bytedance/sdk/component/HiB/TEQ;->HiB(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;)I

    move-result p3

    invoke-interface {p2, p3}, Lcom/bytedance/sdk/component/HiB/TEQ;->EjP(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p2

    const/4 p3, 0x2

    invoke-interface {p2, p3}, Lcom/bytedance/sdk/component/HiB/TEQ;->TKC(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p2

    invoke-static {p5, p1, p4}, Lcom/bytedance/sdk/openadsdk/uA/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bytedance/sdk/component/HiB/uvD;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Lcom/bytedance/sdk/component/HiB/uvD;)Lcom/bytedance/sdk/component/HiB/uA;

    return-void
.end method

.method public Sj(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/uA/EjP;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p1

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/HiB/TEQ;->TKC(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/TzV/sP$4;

    invoke-direct {p2, p0, v0}, Lcom/bytedance/sdk/openadsdk/TzV/sP$4;-><init>(Lcom/bytedance/sdk/openadsdk/TzV/sP;Ljava/lang/ref/WeakReference;)V

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Lcom/bytedance/sdk/component/HiB/Dq;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/TzV/sP$3;

    invoke-direct {p2, p0, v0}, Lcom/bytedance/sdk/openadsdk/TzV/sP$3;-><init>(Lcom/bytedance/sdk/openadsdk/TzV/sP;Ljava/lang/ref/WeakReference;)V

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Lcom/bytedance/sdk/component/HiB/uvD;)Lcom/bytedance/sdk/component/HiB/uA;

    :cond_1
    :goto_0
    return-void
.end method

.method public TKC()Lcom/bytedance/sdk/openadsdk/TzV/Sj/TKC;
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->EjP()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TzV/sP;->TKC:Lcom/bytedance/sdk/openadsdk/TzV/Sj/TKC;

    return-object v0
.end method

.method public sP()Lcom/bytedance/sdk/component/Jcg/Sj;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TzV/sP;->sP:Lcom/bytedance/sdk/component/Jcg/Sj;

    return-object v0
.end method
