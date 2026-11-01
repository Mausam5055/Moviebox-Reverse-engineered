.class public Lcom/bytedance/sdk/openadsdk/core/Dq/TEQ;
.super Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;


# instance fields
.field public Sj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private TEQ:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

.field private final sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/Yf;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/EjP/Ym;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;)V
    .locals 6

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/Yf;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/EjP/Ym;Z)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TEQ;->Sj:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TEQ;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TEQ;->TEQ:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    return-void
.end method

.method private EjP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TEQ;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xhi()Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TEQ;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xhi()Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;->Fmk()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TEQ;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ndK()Lcom/bytedance/sdk/openadsdk/core/model/LqL;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "v3"

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private HiB()Landroid/webkit/WebResourceResponse;
    .locals 4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/uA;->uA()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "ExpressClient"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    new-instance v1, Landroid/webkit/WebResourceResponse;

    sget-object v2, Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;->EjP:Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;->Sj()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    :cond_2
    return-object v1
.end method

.method private HiB(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/EjP/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/EjP/Sj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/EjP/Sj;->Sj(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v1, Landroid/webkit/WebResourceResponse;

    const-string v0, "audio/*"

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2, p1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/TEQ;->Sj(Landroid/webkit/WebResourceResponse;)V

    :cond_1
    return-object v1
.end method

.method private Sj(Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/uA/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p2, Landroid/webkit/WebResourceResponse;

    sget-object v0, Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;->EjP:Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;->Sj()Ljava/lang/String;

    move-result-object v0

    const-string v2, "utf-8"

    invoke-direct {p2, v0, v2, p1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/TEQ;->Sj(Landroid/webkit/WebResourceResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, p2

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v1, p2

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    const-string p2, "ExpressClient"

    const-string v0, "get image WebResourceResponse error"

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-object v1
.end method

.method private Sj(Landroid/webkit/WebView;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/Sj/sP/Sj;
    .locals 8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    const-string p1, "local://pag_open_icon_id"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x5

    if-nez p1, :cond_a

    sget-object p1, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj/sP;->Sj:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TEQ;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xhi()Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;->EjP()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Sj;

    invoke-direct {p1}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Sj;-><init>()V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Sj;->Sj(I)V

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/TEQ;->HiB(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Sj;->Sj(Landroid/webkit/WebResourceResponse;)V

    if-nez p2, :cond_2

    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/EjP/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/EjP/Sj;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/EjP/Sj;->Sj(Z)V

    return-object p1

    :cond_3
    invoke-static {p2}, Lcom/bytedance/sdk/component/adexpress/EjP/uA;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;

    move-result-object p1

    sget-object v2, Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;->EjP:Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;

    if-eq p1, v2, :cond_7

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TEQ;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Bml()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object v4

    const-string v5, "https"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "http"

    if-eqz v6, :cond_5

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_5
    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p2, v5, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_6
    move-object v5, p2

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v0, v3

    :cond_7
    sget-object v2, Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;->EjP:Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;

    if-eq p1, v2, :cond_9

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    const-string v0, ""

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TEQ;->EjP()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p1, v0, v1}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/sP;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/Sj/sP/Sj;

    move-result-object p1

    return-object p1

    :cond_9
    :goto_2
    new-instance p1, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Sj;

    invoke-direct {p1}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Sj;-><init>()V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Sj;->Sj(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TEQ;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TEQ;->Sj(Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Sj;->Sj(Landroid/webkit/WebResourceResponse;)V

    return-object p1

    :cond_a
    :goto_3
    new-instance p1, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Sj;

    invoke-direct {p1}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Sj;-><init>()V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Sj;->Sj(I)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TEQ;->HiB()Landroid/webkit/WebResourceResponse;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Sj;->Sj(Landroid/webkit/WebResourceResponse;)V

    return-object p1
.end method

.method private Sj(JJLjava/lang/String;I)V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->vS:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->sP()Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p5}, Lcom/bytedance/sdk/component/adexpress/EjP/uA;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;->Sj:Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->vS:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->sP()Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    move-result-object v1

    move-object v2, p5

    move-wide v3, p1

    move-wide v5, p3

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/vS;->Sj(Ljava/lang/String;JJI)V

    return-void

    :cond_1
    sget-object v1, Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;->TKC:Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->vS:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->sP()Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    move-result-object v1

    move-object v2, p5

    move-wide v3, p1

    move-wide v5, p3

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/vS;->sP(Ljava/lang/String;JJI)V

    :cond_2
    :goto_0
    return-void
.end method

.method private Sj(Landroid/webkit/WebResourceResponse;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Access-Control-Allow-Origin"

    const-string v2, "*"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/webkit/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public Sj()I
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TEQ;->Sj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TEQ;->EjP()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Jcg:Z

    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Dq:Z

    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    :try_start_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TEQ;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    const-string v1, "ExpressClient"

    const-string v2, "shouldInterceptRequest error1"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 8

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/TEQ;->Sj(Landroid/webkit/WebView;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/Sj/sP/Sj;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Sj;->Sj()Landroid/webkit/WebResourceResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v6, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :goto_1
    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/Dq/TEQ;->Sj(JJLjava/lang/String;I)V

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Sj;->sP()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    invoke-virtual {v7}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Sj;->sP()I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TEQ;->Sj:Ljava/util/ArrayList;

    invoke-virtual {v7}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Sj;->sP()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Sj;->Sj()Landroid/webkit/WebResourceResponse;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v7}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Sj;->Sj()Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :goto_2
    const-string v1, "ExpressClient"

    const-string v2, "shouldInterceptRequest error2"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method
