.class public Lcom/bytedance/sdk/component/HiB/TKC/sP;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/HiB/Zq;


# instance fields
.field private volatile Sj:Lcom/bytedance/sdk/component/HiB/TKC/vS;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Sj(Landroid/content/Context;Lcom/bytedance/sdk/component/HiB/Fmk;)Lcom/bytedance/sdk/component/HiB/Zq;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/HiB/TKC/sP;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/HiB/TKC/sP;-><init>()V

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/HiB/TKC/sP;->sP(Landroid/content/Context;Lcom/bytedance/sdk/component/HiB/Fmk;)V

    return-object v0
.end method

.method private sP(Landroid/content/Context;Lcom/bytedance/sdk/component/HiB/Fmk;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/sP;->Sj:Lcom/bytedance/sdk/component/HiB/TKC/vS;

    if-eqz v0, :cond_0

    const-string v0, "ImageLoader"

    const-string v1, "already init!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p2, :cond_1

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/TKC/HiB;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/component/HiB/TKC/HiB;

    move-result-object p2

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/component/HiB/TKC/vS;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/HiB/TKC/vS;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/HiB/Fmk;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/sP;->Sj:Lcom/bytedance/sdk/component/HiB/TKC/vS;

    return-void
.end method


# virtual methods
.method public Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/HiB/TEQ;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;

    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/TKC/sP;->Sj:Lcom/bytedance/sdk/component/HiB/TKC/vS;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;-><init>(Lcom/bytedance/sdk/component/HiB/TKC/vS;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;->TKC(Ljava/lang/String;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p1

    return-object p1
.end method

.method public Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/sP;->Sj:Lcom/bytedance/sdk/component/HiB/TKC/vS;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/uvD;->Sj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/sP;->Sj:Lcom/bytedance/sdk/component/HiB/TKC/vS;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/vS;->sP()Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/HiB/TzV;

    invoke-interface {v0, p2}, Lcom/bytedance/sdk/component/HiB/Sj;->Sj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_2

    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p1

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/sP;->Sj:Lcom/bytedance/sdk/component/HiB/TKC/vS;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/vS;->TKC()Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/HiB/TKC;

    invoke-interface {v0, p2}, Lcom/bytedance/sdk/component/HiB/TKC;->Sj(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    :cond_5
    return-object v1
.end method

.method public Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/sP;->Sj:Lcom/bytedance/sdk/component/HiB/TKC/vS;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v1

    :cond_1
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/uvD;->Sj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/sP;->Sj:Lcom/bytedance/sdk/component/HiB/TKC/vS;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/component/HiB/TKC/vS;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/HiB/TKC;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/HiB/Sj;->sP(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method
