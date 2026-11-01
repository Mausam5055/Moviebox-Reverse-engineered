.class public Lcom/bytedance/sdk/component/adexpress/HiB/HiB;
.super Ljava/lang/Object;


# static fields
.field private static Dq:I = 0xa

.field private static final HiB:[B

.field private static volatile uA:Lcom/bytedance/sdk/component/adexpress/HiB/HiB; = null

.field private static vS:I = 0xa


# instance fields
.field private EjP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/component/adexpress/HiB/EjP;",
            ">;"
        }
    .end annotation
.end field

.field private final Jcg:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private Sj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/uA/vS;",
            ">;"
        }
    .end annotation
.end field

.field private TKC:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/component/adexpress/HiB/TKC;",
            ">;"
        }
    .end annotation
.end field

.field private sP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/uA/vS;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->HiB:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->Jcg:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->Sj:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->sP:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->TKC:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->EjP:Ljava/util/Map;

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Sj/Sj/Sj;->Sj()Lcom/bytedance/sdk/component/adexpress/Sj/Sj/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/Sj/Sj/Sj;->TKC()Lcom/bytedance/sdk/component/adexpress/Sj/Sj/TKC;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/Sj/Sj/TKC;->TEQ()I

    move-result v1

    sput v1, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->vS:I

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/Sj/Sj/TKC;->Ym()I

    move-result v0

    sput v0, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->Dq:I

    :cond_0
    return-void
.end method

.method private Jcg(Lcom/bytedance/sdk/component/uA/vS;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/vS;->removeAllViews()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/vS;->Jcg()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setJavaScriptEnabled(Z)V

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/uA/vS;->setCacheMode(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/uA/vS;->setSupportZoom(Z)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setUseWideViewPort(Z)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setDomStorageEnabled(Z)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/uA/vS;->setBuiltInZoomControls(Z)V

    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/uA/vS;->setLoadWithOverviewMode(Z)V

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setDefaultTextEncodingName(Ljava/lang/String;)V

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setDefaultFontSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static Sj()Lcom/bytedance/sdk/component/adexpress/HiB/HiB;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->uA:Lcom/bytedance/sdk/component/adexpress/HiB/HiB;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->uA:Lcom/bytedance/sdk/component/adexpress/HiB/HiB;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->uA:Lcom/bytedance/sdk/component/adexpress/HiB/HiB;

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
    sget-object v0, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->uA:Lcom/bytedance/sdk/component/adexpress/HiB/HiB;

    return-object v0
.end method


# virtual methods
.method public EjP()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->sP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public EjP(Lcom/bytedance/sdk/component/uA/vS;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->Sj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->vS:I

    if-lt v0, v1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/content/MutableContextWrapper;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/content/MutableContextWrapper;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/vS;->uvD()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->Sj:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/content/MutableContextWrapper;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Landroid/content/MutableContextWrapper;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setRecycler(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->Sj:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->TKC()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_2
    return-void

    :goto_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->TKC()I

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public HiB(Lcom/bytedance/sdk/component/uA/vS;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/content/MutableContextWrapper;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/content/MutableContextWrapper;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/vS;->uvD()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public Sj(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/component/uA/vS;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->EjP()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p2}, Lcom/bytedance/sdk/component/adexpress/EjP/HiB;->Sj(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->EjP()I

    move-result p2

    const/4 v0, 0x1

    if-gt p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->EjP()I

    return-object v1

    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->sP:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/component/uA/vS;

    if-nez p2, :cond_2

    return-object v1

    :cond_2
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v3, v2, Landroid/content/MutableContextWrapper;

    if-eqz v3, :cond_3

    check-cast v2, Landroid/content/MutableContextWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/uA/vS;->setRecycler(Z)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->EjP()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-object p2

    :catchall_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->EjP()I

    return-object v1
.end method

.method public Sj(I)V
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->HiB:[B

    monitor-enter v0

    :try_start_0
    sput p1, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->vS:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public Sj(Landroid/webkit/WebView;Lcom/bytedance/sdk/component/Sj/uP;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->EjP:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/adexpress/HiB/EjP;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/component/adexpress/HiB/EjP;->Sj(Lcom/bytedance/sdk/component/Sj/uP;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/HiB/EjP;

    invoke-direct {v0, p2}, Lcom/bytedance/sdk/component/adexpress/HiB/EjP;-><init>(Lcom/bytedance/sdk/component/Sj/uP;)V

    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->EjP:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p1, v0, p3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public Sj(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->EjP:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/adexpress/HiB/EjP;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/HiB/EjP;->Sj(Lcom/bytedance/sdk/component/Sj/uP;)V

    :cond_1
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/uA/vS;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->sP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->Dq:I

    if-lt v0, v1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/content/MutableContextWrapper;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/content/MutableContextWrapper;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/vS;->uvD()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->sP:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/content/MutableContextWrapper;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Landroid/content/MutableContextWrapper;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setRecycler(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->sP:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->EjP()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_2
    return-void

    :goto_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->EjP()I

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/uA/vS;Lcom/bytedance/sdk/component/adexpress/HiB/sP;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->TKC:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/adexpress/HiB/TKC;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/component/adexpress/HiB/TKC;->Sj(Lcom/bytedance/sdk/component/adexpress/HiB/sP;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/HiB/TKC;

    invoke-direct {v0, p2}, Lcom/bytedance/sdk/component/adexpress/HiB/TKC;-><init>(Lcom/bytedance/sdk/component/adexpress/HiB/sP;)V

    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->TKC:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string p2, "SDK_INJECT_GLOBAL"

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/sdk/component/uA/vS;->Sj(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public TKC()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->Sj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public TKC(Lcom/bytedance/sdk/component/uA/vS;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->Jcg(Lcom/bytedance/sdk/component/uA/vS;)V

    const-string v0, "SDK_INJECT_GLOBAL"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->b_(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->vS(Lcom/bytedance/sdk/component/uA/vS;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->EjP(Lcom/bytedance/sdk/component/uA/vS;)V

    return-void
.end method

.method public sP(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/component/uA/vS;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->TKC()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p2}, Lcom/bytedance/sdk/component/adexpress/EjP/HiB;->Sj(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->TKC()I

    move-result p2

    const/4 v0, 0x1

    if-gt p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->TKC()I

    return-object v1

    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->Sj:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/component/uA/vS;

    if-nez p2, :cond_2

    return-object v1

    :cond_2
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v3, v2, Landroid/content/MutableContextWrapper;

    if-eqz v3, :cond_3

    check-cast v2, Landroid/content/MutableContextWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/uA/vS;->setRecycler(Z)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->TKC()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-object p2

    :catchall_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->TKC()I

    return-object v1
.end method

.method public sP()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->Sj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v3, v2, Landroid/content/MutableContextWrapper;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Landroid/content/MutableContextWrapper;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/uA/vS;->uvD()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->Sj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->sP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v1, :cond_3

    :try_start_1
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v3, v2, Landroid/content/MutableContextWrapper;

    if-eqz v3, :cond_4

    move-object v3, v2

    check-cast v3, Landroid/content/MutableContextWrapper;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    goto :goto_4

    :catchall_1
    move-exception v1

    goto :goto_5

    :cond_4
    :goto_4
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/uA/vS;->uvD()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :goto_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->sP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public sP(I)V
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->HiB:[B

    monitor-enter v0

    :try_start_0
    sput p1, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->Dq:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public sP(Lcom/bytedance/sdk/component/uA/vS;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->Jcg(Lcom/bytedance/sdk/component/uA/vS;)V

    const-string v0, "SDK_INJECT_GLOBAL"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->b_(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->vS(Lcom/bytedance/sdk/component/uA/vS;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->Sj(Lcom/bytedance/sdk/component/uA/vS;)V

    return-void
.end method

.method public vS(Lcom/bytedance/sdk/component/uA/vS;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->TKC:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/adexpress/HiB/TKC;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/HiB/TKC;->Sj(Lcom/bytedance/sdk/component/adexpress/HiB/sP;)V

    :cond_1
    const-string v0, "SDK_INJECT_GLOBAL"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->b_(Ljava/lang/String;)V

    return-void
.end method
