.class public Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;
.super Landroid/webkit/WebChromeClient;


# static fields
.field private static final Sj:Ljava/lang/String;


# instance fields
.field private EjP:Lcom/bytedance/sdk/openadsdk/common/EjP;

.field private TKC:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

.field private final sP:Lcom/bytedance/sdk/openadsdk/core/Yf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;->Sj:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Yf;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Yf;Lcom/bytedance/sdk/openadsdk/EjP/Ym;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Yf;Lcom/bytedance/sdk/openadsdk/EjP/Ym;Lcom/bytedance/sdk/openadsdk/common/EjP;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;-><init>(Lcom/bytedance/sdk/openadsdk/core/Yf;Lcom/bytedance/sdk/openadsdk/EjP/Ym;)V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;->EjP:Lcom/bytedance/sdk/openadsdk/common/EjP;

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;)Lcom/bytedance/sdk/openadsdk/core/Yf;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    return-object p0
.end method

.method private Sj(Ljava/lang/String;)Z
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v5, "bytedance:"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xa

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->TKC()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP$1;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_1
    return v1
.end method


# virtual methods
.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;->Sj(Ljava/lang/String;)Z

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;->Sj(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Landroid/webkit/WebView;I)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;->EjP:Lcom/bytedance/sdk/openadsdk/common/EjP;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/common/EjP;->Sj(Landroid/webkit/WebView;I)V

    :cond_1
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method
