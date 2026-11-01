.class Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$sP;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/HiB/uvD;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "sP"
.end annotation


# instance fields
.field private final EjP:I

.field private final Sj:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final TKC:I

.field private final sP:Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$sP;->Sj:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$sP;->sP:Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj;

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$sP;->TKC:I

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$sP;->EjP:I

    return-void
.end method


# virtual methods
.method public Sj(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/HiB/Ym;)V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$sP;->Sj:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/HiB/Ym;->sP()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, [B

    if-eqz v2, :cond_5

    invoke-interface {p1}, Lcom/bytedance/sdk/component/HiB/Ym;->HiB()Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-gt p1, v2, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$sP;->sP:Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj;

    check-cast v1, [B

    invoke-static {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj;[BLandroid/widget/ImageView;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$sP;->sP:Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj;

    check-cast v1, [B

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$sP;->TKC:I

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$sP;->EjP:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj;Landroid/widget/ImageView;[BII)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$sP;->sP:Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj;

    move-object v2, v1

    check-cast v2, [B

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj;->Sj([B)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$sP;->sP:Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj;

    check-cast v1, [B

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$sP;->TKC:I

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$sP;->EjP:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj;Landroid/widget/ImageView;[BII)V

    return-void

    :cond_3
    new-instance p1, Lcom/bytedance/sdk/component/HiB/EjP/TKC/sP/Sj;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$sP;->TKC:I

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$sP;->EjP:I

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iget v7, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$sP;->TKC:I

    iget v8, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$sP;->EjP:I

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/sP/Sj;-><init>(IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;II)V

    check-cast v1, [B

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/sP/Sj;->Sj([B)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$sP$1;

    const-string v2, "load_static_img"

    invoke-direct {v1, p0, v2, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$sP$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$sP;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V

    :cond_4
    return-void

    :cond_5
    instance-of p1, v1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_6

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$sP$2;

    const-string v2, "ug_load_bitmap"

    invoke-direct {p1, p0, v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$sP$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$sP;Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    return-void

    :goto_0
    const-string v0, "ImageLoaderProvider"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
