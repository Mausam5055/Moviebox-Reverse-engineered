.class public Lcom/bytedance/sdk/openadsdk/TzV/Sj/Sj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/TzV/Sj/Sj$Sj;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/component/HiB/Ym;)I
    .locals 1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/HiB/Ym;->EjP()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "image_size"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected Sj(ILjava/lang/String;Ljava/lang/Throwable;Lcom/bytedance/sdk/openadsdk/TzV/Sj/Sj$Sj;)V
    .locals 0

    if-eqz p4, :cond_0

    invoke-interface {p4, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/TzV/Sj/Sj$Sj;->Sj(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method protected Sj(Lcom/bytedance/sdk/component/HiB/Ym;Lcom/bytedance/sdk/openadsdk/TzV/Sj/Sj$Sj;)V
    .locals 4

    if-eqz p2, :cond_3

    invoke-interface {p1}, Lcom/bytedance/sdk/component/HiB/Ym;->sP()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/TzV/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/HiB/Ym;)I

    move-result v1

    instance-of v2, v0, [B

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/bytedance/sdk/component/HiB/Ym;->Sj()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/TzV/Sj/sP;

    check-cast v0, [B

    invoke-direct {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/TzV/Sj/sP;-><init>([BI)V

    invoke-interface {p2, p1, v2}, Lcom/bytedance/sdk/openadsdk/TzV/Sj/Sj$Sj;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/TzV/Sj/sP;)V

    return-void

    :cond_0
    instance-of v2, v0, Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/bytedance/sdk/component/HiB/Ym;->TKC()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/HiB/Ym;->TKC()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/graphics/Bitmap;

    :cond_1
    invoke-interface {p1}, Lcom/bytedance/sdk/component/HiB/Ym;->Sj()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/TzV/Sj/sP;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v2, v0, v3, v1}, Lcom/bytedance/sdk/openadsdk/TzV/Sj/sP;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    invoke-interface {p2, p1, v2}, Lcom/bytedance/sdk/openadsdk/TzV/Sj/Sj$Sj;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/TzV/Sj/sP;)V

    return-void

    :cond_2
    const/4 p1, 0x0

    const-string v0, "not bitmap or gif result!"

    invoke-interface {p2, p1, v0, v3}, Lcom/bytedance/sdk/openadsdk/TzV/Sj/Sj$Sj;->Sj(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/TzV/Sj;Lcom/bytedance/sdk/openadsdk/TzV/Sj/Sj$Sj;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 2

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/TzV/Sj;->Sj:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/uA/EjP;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v0

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/TzV/Sj;->sP:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p3

    invoke-interface {p3, p4}, Lcom/bytedance/sdk/component/HiB/TEQ;->sP(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->HiB(Landroid/content/Context;)I

    move-result p4

    invoke-interface {p3, p4}, Lcom/bytedance/sdk/component/HiB/TEQ;->HiB(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;)I

    move-result p4

    invoke-interface {p3, p4}, Lcom/bytedance/sdk/component/HiB/TEQ;->EjP(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p3

    invoke-interface {p3, p6}, Lcom/bytedance/sdk/component/HiB/TEQ;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p3

    sget-object p4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-interface {p3, p4}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Landroid/graphics/Bitmap$Config;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p3

    invoke-interface {p3, p5}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Landroid/widget/ImageView$ScaleType;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p3

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    xor-int/lit8 p4, p4, 0x1

    invoke-interface {p3, p4}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Z)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p3

    new-instance p4, Lcom/bytedance/sdk/openadsdk/TzV/Sj/Sj$2;

    invoke-direct {p4, p0, p7}, Lcom/bytedance/sdk/openadsdk/TzV/Sj/Sj$2;-><init>(Lcom/bytedance/sdk/openadsdk/TzV/Sj/Sj;I)V

    invoke-interface {p3, p4}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Lcom/bytedance/sdk/component/HiB/Dq;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p3

    new-instance p4, Lcom/bytedance/sdk/openadsdk/uA/sP;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/TzV/Sj;->Sj:Ljava/lang/String;

    new-instance p5, Lcom/bytedance/sdk/openadsdk/TzV/Sj/Sj$1;

    invoke-direct {p5, p0, p2}, Lcom/bytedance/sdk/openadsdk/TzV/Sj/Sj$1;-><init>(Lcom/bytedance/sdk/openadsdk/TzV/Sj/Sj;Lcom/bytedance/sdk/openadsdk/TzV/Sj/Sj$Sj;)V

    invoke-direct {p4, p8, p1, p5}, Lcom/bytedance/sdk/openadsdk/uA/sP;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/component/HiB/uvD;)V

    invoke-interface {p3, p4}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Lcom/bytedance/sdk/component/HiB/uvD;)Lcom/bytedance/sdk/component/HiB/uA;

    return-void
.end method
