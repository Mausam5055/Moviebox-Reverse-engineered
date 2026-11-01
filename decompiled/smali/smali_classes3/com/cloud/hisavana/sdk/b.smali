.class public Lcom/cloud/hisavana/sdk/b;
.super Lcom/cloud/hisavana/sdk/l0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/b$b;,
        Lcom/cloud/hisavana/sdk/b$c;
    }
.end annotation


# instance fields
.field private d:Ljava/util/List;

.field private e:Lcom/cloud/hisavana/sdk/b$b;

.field private f:Z

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>(Ljava/util/List;ILcom/cloud/hisavana/sdk/b$b;)V
    .locals 1

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/l0;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/b;->f:Z

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/b;->h:Z

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/b;->d:Ljava/util/List;

    iput p2, p0, Lcom/cloud/hisavana/sdk/b;->g:I

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/b;->e:Lcom/cloud/hisavana/sdk/b$b;

    return-void
.end method

.method static synthetic g(Lcom/cloud/hisavana/sdk/b;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/b;->i(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method static synthetic h(Lcom/cloud/hisavana/sdk/b;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/b;->k(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private i(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/b;->f:Z

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b;->e:Lcom/cloud/hisavana/sdk/b$b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/l0;->a:Landroid/os/Bundle;

    invoke-interface {v0, p1, v1}, Lcom/cloud/hisavana/sdk/b$b;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private j(Ljava/util/List;)V
    .locals 5

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "downloadMaterial start"

    const-string v2, "NativeLoadManager"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b;->d:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/cloud/hisavana/sdk/b$a;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/b$a;-><init>(Lcom/cloud/hisavana/sdk/b;Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    if-nez v1, :cond_1

    new-instance v2, Lcom/cloud/hisavana/sdk/b$c;

    invoke-direct {v2, v3, v0}, Lcom/cloud/hisavana/sdk/b$c;-><init>(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;)V

    move-object v1, v2

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/cloud/hisavana/sdk/b$c;

    invoke-direct {v4, v3, v0}, Lcom/cloud/hisavana/sdk/b$c;-><init>(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;)V

    invoke-static {v2, v4}, Lcom/cloud/hisavana/sdk/b$c;->c(Lcom/cloud/hisavana/sdk/b$c;Lcom/cloud/hisavana/sdk/b$c;)Lcom/cloud/hisavana/sdk/b$c;

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/b$c;->b(Lcom/cloud/hisavana/sdk/b$c;)Lcom/cloud/hisavana/sdk/b$c;

    move-result-object v2

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/b$c;->j(Lcom/cloud/hisavana/sdk/b$c;)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v0, "downloadMaterial ads is null"

    invoke-virtual {p1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_DOWNLOAD_MATERIAL_ADS_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/b;->i(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method private k(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/b;->f:Z

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b;->e:Lcom/cloud/hisavana/sdk/b$b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/l0;->a:Landroid/os/Bundle;

    invoke-interface {v0, p1, p2, v1}, Lcom/cloud/hisavana/sdk/b$b;->b(Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V

    :cond_0
    iget p1, p0, Lcom/cloud/hisavana/sdk/b;->g:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    sget-object p1, Lcom/cloud/hisavana/sdk/u0;->a:Lcom/cloud/hisavana/sdk/u0;

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/u0;->b(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_NATIVE_MATERIAL_DOWNLOAD_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/b;->i(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic l(Lcom/cloud/hisavana/sdk/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/b;->h:Z

    return p0
.end method

.method static synthetic m(Lcom/cloud/hisavana/sdk/b;Lcom/cloud/hisavana/sdk/common/bean/AdImage;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/b;->o(Lcom/cloud/hisavana/sdk/common/bean/AdImage;)Z

    move-result p0

    return p0
.end method

.method static synthetic n(Lcom/cloud/hisavana/sdk/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/b;->h:Z

    return p1
.end method

.method private o(Lcom/cloud/hisavana/sdk/common/bean/AdImage;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->isCached()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic p(Lcom/cloud/hisavana/sdk/b;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/l0;->c(Z)V

    return-void
.end method


# virtual methods
.method public q()V
    .locals 3

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/b;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/b;->f:Z

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/util/i;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/N0;->G(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/cloud/hisavana/sdk/b;->g:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/b;->j(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/l0;->a()V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/b;->d:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/cloud/hisavana/sdk/b;->k(Ljava/util/List;Ljava/util/List;)V

    return-void

    :cond_3
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_NATIVE_MATERIAL_DOWNLOAD_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/b;->i(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :goto_1
    return-void
.end method
