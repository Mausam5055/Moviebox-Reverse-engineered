.class public Lcom/bytedance/sdk/component/uA/vS;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/uA/vS$Sj;,
        Lcom/bytedance/sdk/component/uA/vS$sP;,
        Lcom/bytedance/sdk/component/uA/vS$EjP;,
        Lcom/bytedance/sdk/component/uA/vS$TKC;
    }
.end annotation


# static fields
.field private static Fm:Lcom/bytedance/sdk/component/uA/vS$TKC;


# instance fields
.field private Dq:F

.field private Ei:J

.field private EjP:Lcom/bytedance/sdk/component/uA/sP/Sj;

.field private FPG:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private Fmk:Z

.field private HiB:Ljava/lang/String;

.field private JcM:Landroid/util/AttributeSet;

.field private Jcg:Z

.field private LD:Lcom/bytedance/sdk/component/uA/vS$sP;

.field private LqL:F

.field private Mts:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private RiZ:Lcom/bytedance/sdk/component/uA/EjP;

.field public Sj:I

.field private TEQ:J

.field public TKC:I

.field private TzV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private WMZ:Landroid/content/Context;

.field private Wjd:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private Yf:I

.field private Ym:J

.field private Zq:Landroid/view/View;

.field private aa:J

.field private dNu:Lcom/bytedance/sdk/component/uA/Sj;

.field private dx:Z

.field private fF:Lcom/bytedance/sdk/component/utils/kF;

.field private ib:Z

.field private jb:J

.field private kF:Z

.field private ley:F

.field public sP:I

.field private sU:Z

.field private volatile sef:Landroid/webkit/WebView;

.field private uA:F

.field private uP:Landroid/webkit/WebViewClient;

.field private uvD:Lcom/bytedance/sdk/component/uA/Sj$Sj;

.field private vS:Lorg/json/JSONObject;

.field private wE:F

.field private xD:Lcom/bytedance/sdk/component/uA/vS$EjP;

.field private zR:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/bytedance/sdk/component/uA/vS;->Sj(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/uA/vS;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    invoke-static {p1}, Lcom/bytedance/sdk/component/uA/vS;->Sj(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/component/uA/vS;->Dq:F

    iput v0, p0, Lcom/bytedance/sdk/component/uA/vS;->uA:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/uA/vS;->TEQ:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/uA/vS;->Ym:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/uA/vS;->aa:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/uA/vS;->Fmk:Z

    const/high16 v1, 0x41a00000    # 20.0f

    iput v1, p0, Lcom/bytedance/sdk/component/uA/vS;->wE:F

    const/high16 v1, 0x42480000    # 50.0f

    iput v1, p0, Lcom/bytedance/sdk/component/uA/vS;->LqL:F

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/component/uA/vS;->Mts:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/component/uA/vS;->FPG:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/component/uA/vS;->Wjd:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/bytedance/sdk/component/uA/vS;->WMZ:Landroid/content/Context;

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    :try_start_0
    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/component/uA/vS;->Sj(Landroid/util/AttributeSet;I)Landroid/webkit/WebView;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/uA/vS;->vS()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/uA/vS;->Sj(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/uA/vS;->sP(Landroid/content/Context;)V

    return-void
.end method

.method private RiZ()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    const-string v1, "searchBoxJavaBridge_"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    const-string v1, "accessibilityTraversal"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static Sj(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method private Sj(Landroid/util/AttributeSet;I)Landroid/webkit/WebView;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/component/uA/vS;->Fm:Lcom/bytedance/sdk/component/uA/vS$TKC;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/bytedance/sdk/component/uA/vS$TKC;->createWebView(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/webkit/WebView;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Landroid/webkit/WebView;

    iget-object p2, p0, Lcom/bytedance/sdk/component/uA/vS;->WMZ:Landroid/content/Context;

    invoke-static {p2}, Lcom/bytedance/sdk/component/uA/vS;->Sj(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_1
    new-instance p2, Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->WMZ:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/component/uA/vS;->Sj(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p2
.end method

.method private Sj(Landroid/view/MotionEvent;)V
    .locals 9

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/uA/vS;->Jcg:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->EjP:Lcom/bytedance/sdk/component/uA/sP/Sj;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->HiB:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->vS:Lorg/json/JSONObject;

    if-eqz v0, :cond_5

    :cond_0
    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->vS:Lorg/json/JSONObject;

    const-string v1, "start_x"

    iget v2, p0, Lcom/bytedance/sdk/component/uA/vS;->Dq:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->vS:Lorg/json/JSONObject;

    const-string v1, "start_y"

    iget v2, p0, Lcom/bytedance/sdk/component/uA/vS;->uA:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->vS:Lorg/json/JSONObject;

    const-string v1, "offset_x"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/bytedance/sdk/component/uA/vS;->Dq:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->vS:Lorg/json/JSONObject;

    const-string v1, "offset_y"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v2, p0, Lcom/bytedance/sdk/component/uA/vS;->uA:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/sdk/component/uA/vS;->vS:Lorg/json/JSONObject;

    const-string v0, "url"

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/uA/vS;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/sdk/component/uA/vS;->vS:Lorg/json/JSONObject;

    const-string v0, "tag"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/uA/vS;->Ym:J

    iget-object p1, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    if-eqz p1, :cond_3

    iget-wide v0, p0, Lcom/bytedance/sdk/component/uA/vS;->Ym:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/uA/vS;->Ei:J

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/component/uA/vS;->vS:Lorg/json/JSONObject;

    const-string v0, "down_time"

    iget-wide v1, p0, Lcom/bytedance/sdk/component/uA/vS;->TEQ:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/sdk/component/uA/vS;->vS:Lorg/json/JSONObject;

    const-string v0, "up_time"

    iget-wide v1, p0, Lcom/bytedance/sdk/component/uA/vS;->Ym:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/component/uA/Sj/Sj;->Sj()Lcom/bytedance/sdk/component/uA/Sj/Sj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/Sj/Sj;->sP()Lcom/bytedance/sdk/component/uA/Sj/sP;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-wide v0, p0, Lcom/bytedance/sdk/component/uA/vS;->aa:J

    iget-wide v2, p0, Lcom/bytedance/sdk/component/uA/vS;->TEQ:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_5

    iput-wide v2, p0, Lcom/bytedance/sdk/component/uA/vS;->aa:J

    invoke-static {}, Lcom/bytedance/sdk/component/uA/Sj/Sj;->Sj()Lcom/bytedance/sdk/component/uA/Sj/Sj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/Sj/Sj;->sP()Lcom/bytedance/sdk/component/uA/Sj/sP;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/uA/vS;->EjP:Lcom/bytedance/sdk/component/uA/sP/Sj;

    iget-object v2, p0, Lcom/bytedance/sdk/component/uA/vS;->HiB:Ljava/lang/String;

    const-string v3, "in_web_click"

    iget-object v4, p0, Lcom/bytedance/sdk/component/uA/vS;->vS:Lorg/json/JSONObject;

    iget-wide v5, p0, Lcom/bytedance/sdk/component/uA/vS;->Ym:J

    iget-wide v7, p0, Lcom/bytedance/sdk/component/uA/vS;->TEQ:J

    sub-long/2addr v5, v7

    invoke-interface/range {v0 .. v6}, Lcom/bytedance/sdk/component/uA/Sj/sP;->Sj(Lcom/bytedance/sdk/component/uA/sP/Sj;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/uA/vS;->Dq:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/uA/vS;->uA:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/uA/vS;->TEQ:J

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/uA/vS;->vS:Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    if-eqz p1, :cond_5

    iget-wide v0, p0, Lcom/bytedance/sdk/component/uA/vS;->TEQ:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/uA/vS;->jb:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_5
    :goto_0
    return-void
.end method

.method private static TKC(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method private static TKC(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "android.support.v4.view.ScrollingView"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    return v0

    :catchall_0
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "androidx.core.view.ScrollingView"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_1

    return v0

    :catchall_1
    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private dx()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->fF:Lcom/bytedance/sdk/component/utils/kF;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->Wjd:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Lcom/bytedance/sdk/component/utils/kF;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/utils/kF;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->fF:Lcom/bytedance/sdk/component/utils/kF;

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/uA/vS$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/uA/vS$1;-><init>(Lcom/bytedance/sdk/component/uA/vS;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->Wjd:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private sP(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/bytedance/sdk/component/uA/vS;->TKC(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/bytedance/sdk/component/uA/vS;->sU()V

    invoke-direct {p0}, Lcom/bytedance/sdk/component/uA/vS;->RiZ()V

    return-void
.end method

.method private static sP(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "android.support.v4.view.ViewPager"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    return v0

    :catchall_0
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "androidx.viewpager.widget.ViewPager"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_1

    return v0

    :catchall_1
    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private sU()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static setDataDirectorySuffix(Ljava/lang/String;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/component/uA/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setJavaScriptEnabled(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v1, "file"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    return-void

    :cond_2
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static setWebViewProvider(Lcom/bytedance/sdk/component/uA/vS$TKC;)V
    .locals 0

    sput-object p0, Lcom/bytedance/sdk/component/uA/vS;->Fm:Lcom/bytedance/sdk/component/uA/vS$TKC;

    return-void
.end method


# virtual methods
.method public Dq()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public EjP()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/uA/vS;->ib:Z

    return v0
.end method

.method public Fmk()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    return-void
.end method

.method public HiB()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->JcM:Landroid/util/AttributeSet;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->Sj(Landroid/util/AttributeSet;I)Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/uA/vS;->vS()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->WMZ:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/component/uA/vS;->Sj(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/uA/vS;->sP(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public Jcg()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method protected Sj(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v0, p1, Landroid/widget/AbsListView;

    if-nez v0, :cond_2

    instance-of v0, p1, Landroid/widget/ScrollView;

    if-nez v0, :cond_2

    instance-of v0, p1, Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/component/uA/vS;->sP(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/bytedance/sdk/component/uA/vS;->TKC(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/uA/vS;->Sj(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public Sj(IJ)V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    instance-of v0, v0, Lcom/bytedance/sdk/component/uA/HiB;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/bytedance/sdk/component/uA/EjP;

    iget-object v2, p0, Lcom/bytedance/sdk/component/uA/vS;->WMZ:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/component/uA/vS;->dNu:Lcom/bytedance/sdk/component/uA/Sj;

    move-object v1, v0

    move v4, p1

    move-wide v5, p2

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/component/uA/EjP;-><init>(Landroid/content/Context;Landroid/view/View$OnTouchListener;IJLcom/bytedance/sdk/component/uA/vS;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->RiZ:Lcom/bytedance/sdk/component/uA/EjP;

    iget-object p1, p0, Lcom/bytedance/sdk/component/uA/vS;->HiB:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/component/uA/vS;->RiZ:Lcom/bytedance/sdk/component/uA/EjP;

    iget-object p2, p0, Lcom/bytedance/sdk/component/uA/vS;->HiB:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/uA/EjP;->Sj(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    check-cast p1, Lcom/bytedance/sdk/component/uA/HiB;

    iget-object p2, p0, Lcom/bytedance/sdk/component/uA/vS;->RiZ:Lcom/bytedance/sdk/component/uA/EjP;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/uA/HiB;->setTouchListenerProxy(Lcom/bytedance/sdk/component/uA/TKC;)V

    :cond_1
    return-void
.end method

.method public Sj(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/uA/vS;->setJavaScriptEnabled(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public Sj(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/uA/vS;->setJavaScriptEnabled(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public Sj(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->clearCache(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public Sj(ZIILjava/util/List;ILjava/util/List;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    instance-of p1, p1, Lcom/bytedance/sdk/component/uA/HiB;

    if-eqz p1, :cond_1

    new-instance p1, Lcom/bytedance/sdk/component/uA/Sj;

    iget-object v1, p0, Lcom/bytedance/sdk/component/uA/vS;->WMZ:Landroid/content/Context;

    move-object v0, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/component/uA/Sj;-><init>(Landroid/content/Context;IILjava/util/List;I)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/uA/vS;->dNu:Lcom/bytedance/sdk/component/uA/Sj;

    iput-object p6, p0, Lcom/bytedance/sdk/component/uA/vS;->TzV:Ljava/util/List;

    iget-object p1, p0, Lcom/bytedance/sdk/component/uA/vS;->HiB:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/component/uA/vS;->dNu:Lcom/bytedance/sdk/component/uA/Sj;

    iget-object p2, p0, Lcom/bytedance/sdk/component/uA/vS;->HiB:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/uA/Sj;->Sj(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    check-cast p1, Lcom/bytedance/sdk/component/uA/HiB;

    iget-object p2, p0, Lcom/bytedance/sdk/component/uA/vS;->dNu:Lcom/bytedance/sdk/component/uA/Sj;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/uA/HiB;->setTouchListenerProxy(Lcom/bytedance/sdk/component/uA/TKC;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/uA/vS;->dNu:Lcom/bytedance/sdk/component/uA/Sj;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/Sj;->Sj()Lcom/bytedance/sdk/component/uA/Sj$Sj;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/uA/vS;->uvD:Lcom/bytedance/sdk/component/uA/Sj$Sj;

    :cond_1
    return-void
.end method

.method public Sj(ZLandroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p2, p0, Lcom/bytedance/sdk/component/uA/vS;->Zq:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/uA/vS;->Zq:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/component/uA/vS;->Zq:Landroid/view/View;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public TEQ()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public TKC()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/uA/vS;->zR:Z

    return v0
.end method

.method public TzV()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public Ym()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    return v1
.end method

.method public Zq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public a_(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/uA/vS;->setJavaScriptEnabled(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public aa()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public b_(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public computeScroll()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->computeScroll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public dNu()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public f_()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sU:Z

    return v0
.end method

.method public getArbitrageLoadingView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->Zq:Landroid/view/View;

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/4 v0, 0x1

    return v0
.end method

.method public getLandingPageClickBegin()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/uA/vS;->jb:J

    return-wide v0
.end method

.method public getLandingPageClickEnd()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/uA/vS;->Ei:J

    return-wide v0
.end method

.method public getMaterialMeta()Lcom/bytedance/sdk/component/uA/sP/Sj;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->EjP:Lcom/bytedance/sdk/component/uA/sP/Sj;

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "data:text/html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    move-object v0, v2

    :cond_1
    return-object v0

    :catchall_0
    return-object v1
.end method

.method public getProgress()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/16 v0, 0x64

    return v0
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/uA/vS;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->HiB:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    return-object v1
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    return-object v1
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    return-object v0
.end method

.method public getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->uP:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->Mts:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->FPG:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->Wjd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/uA/vS;->dx()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->Mts:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/uA/vS;->Sj(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/bytedance/sdk/component/uA/vS;->Fmk:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, p0}, Lcom/bytedance/sdk/component/uA/vS;->Sj(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return v0

    :catchall_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method public removeAllViews()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public sP()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/uA/vS;->dx:Z

    return v0
.end method

.method public sef()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setAllowFileAccess(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setCacheMode(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setCacheMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setCalculationMethod(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/uA/vS;->Yf:I

    return-void
.end method

.method public setDatabaseEnabled(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setDeepShakeValue(F)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/uA/vS;->ley:F

    return-void
.end method

.method public setDefaultFontSize(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setDefaultTextEncodingName(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setDisplayZoomControls(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setDomStorageEnabled(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setDownloadListener(Landroid/webkit/DownloadListener;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setIsPreventTouchEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/uA/vS;->Fmk:Z

    return-void
.end method

.method public setJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setJavaScriptEnabled(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setLandingPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/uA/vS;->Jcg:Z

    return-void
.end method

.method public setLandingPageClickBegin(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/component/uA/vS;->jb:J

    return-void
.end method

.method public setLandingPageClickEnd(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/component/uA/vS;->Ei:J

    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setLoadWithOverviewMode(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setLpPreRender(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/uA/vS;->sU:Z

    return-void
.end method

.method public setMaterialMeta(Lcom/bytedance/sdk/component/uA/sP/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/uA/vS;->EjP:Lcom/bytedance/sdk/component/uA/sP/Sj;

    return-void
.end method

.method public setMixedContentMode(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setOnShakeListener(Lcom/bytedance/sdk/component/uA/vS$sP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/uA/vS;->LD:Lcom/bytedance/sdk/component/uA/vS$sP;

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setPreError(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/uA/vS;->kF:Z

    return-void
.end method

.method public setPreFinish(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/uA/vS;->zR:Z

    return-void
.end method

.method public setPreProgressHundred(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/uA/vS;->ib:Z

    return-void
.end method

.method public setPreStart(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/uA/vS;->dx:Z

    return-void
.end method

.method public setRecycler(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    instance-of v0, v0, Lcom/bytedance/sdk/component/uA/HiB;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    check-cast v0, Lcom/bytedance/sdk/component/uA/HiB;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/uA/HiB;->setRecycler(Z)V

    :cond_0
    return-void
.end method

.method public setShakeValue(F)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/uA/vS;->wE:F

    return-void
.end method

.method public setSupportZoom(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/sdk/component/uA/vS;->HiB:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->dNu:Lcom/bytedance/sdk/component/uA/Sj;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/uA/Sj;->Sj(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->RiZ:Lcom/bytedance/sdk/component/uA/EjP;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/uA/EjP;->Sj(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setTouchStateListener(Lcom/bytedance/sdk/component/uA/vS$EjP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/uA/vS;->xD:Lcom/bytedance/sdk/component/uA/vS$EjP;

    return-void
.end method

.method public setUseWideViewPort(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 4

    :try_start_0
    instance-of v0, p1, Lcom/bytedance/sdk/component/uA/vS$EjP;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/bytedance/sdk/component/uA/vS$EjP;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/uA/vS;->setTouchStateListener(Lcom/bytedance/sdk/component/uA/vS$EjP;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/uA/vS;->setTouchStateListener(Lcom/bytedance/sdk/component/uA/vS$EjP;)V

    :goto_0
    if-nez p1, :cond_1

    new-instance p1, Lcom/bytedance/sdk/component/uA/vS$Sj;

    invoke-direct {p1}, Lcom/bytedance/sdk/component/uA/vS$Sj;-><init>()V

    :cond_1
    iput-object p1, p0, Lcom/bytedance/sdk/component/uA/vS;->uP:Landroid/webkit/WebViewClient;

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    new-instance v1, Lcom/bytedance/sdk/component/uA/Jcg;

    iget-object v2, p0, Lcom/bytedance/sdk/component/uA/vS;->uvD:Lcom/bytedance/sdk/component/uA/Sj$Sj;

    iget-object v3, p0, Lcom/bytedance/sdk/component/uA/vS;->TzV:Ljava/util/List;

    invoke-direct {v1, v2, p1, v3}, Lcom/bytedance/sdk/component/uA/Jcg;-><init>(Lcom/bytedance/sdk/component/uA/Sj$Sj;Landroid/webkit/WebViewClient;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setWriggleValue(F)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/uA/vS;->LqL:F

    return-void
.end method

.method public uA()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    return v1
.end method

.method public uvD()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public vS()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/uA/vS;->removeAllViews()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    const v1, 0x1f000008

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/uA/vS;->sef:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
