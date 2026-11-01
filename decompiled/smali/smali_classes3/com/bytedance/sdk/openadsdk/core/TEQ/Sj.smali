.class public Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/Sj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$Sj;,
        Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$sP;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj;[B)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj;->sP([B)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private Sj(Landroid/widget/ImageView;[BII)V
    .locals 3

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    invoke-static {v0}, Lcom/bumptech/glide/load/resource/bitmap/c;->a(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p2

    :try_start_0
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/a;->a(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance p3, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$1;

    const-string p4, "loadAnimatedDrawable"

    invoke-direct {p3, p0, p4, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    :goto_1
    const-string p2, "ImageLoaderProvider"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj;->sP(Landroid/widget/ImageView;[BII)V

    return-void
.end method

.method private Sj(Lcom/bytedance/adsdk/ugeno/core/Dq;Lcom/bytedance/sdk/component/HiB/TEQ;Ljava/lang/String;)V
    .locals 2
    .param p2    # Lcom/bytedance/sdk/component/HiB/TEQ;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/Dq;->sP()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "image_info"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2, p3}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/HiB/TEQ;

    :cond_0
    const-string p3, "cache_dir"

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/component/HiB/TEQ;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/component/HiB/TEQ;

    :cond_1
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj;Landroid/widget/ImageView;[BII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj;->Sj(Landroid/widget/ImageView;[BII)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj;[BLandroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj;->Sj([BLandroid/widget/ImageView;)V

    return-void
.end method

.method private Sj([BLandroid/widget/ImageView;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$3;

    invoke-direct {v0, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj;Landroid/widget/ImageView;)V

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj;->Sj([BLcom/bytedance/sdk/openadsdk/core/TEQ/Sj$Sj;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "ImageLoaderProvider"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private Sj([BLcom/bytedance/sdk/openadsdk/core/TEQ/Sj$Sj;)V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$4;

    const-string v1, "pag_animation_drawable"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj;Ljava/lang/String;[BLcom/bytedance/sdk/openadsdk/core/TEQ/Sj$Sj;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->sP(Lcom/bytedance/sdk/component/Dq/Dq;)V

    return-void
.end method

.method private sP([B)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/sP;->TKC()Z

    move-result v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v2

    if-eqz v1, :cond_0

    const-string v3, "UGEN_GIF_AD_CACHE/"

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v2, v0

    goto :goto_1

    :cond_0
    const-string v3, "/UGEN_GIF_CACHE/"

    :goto_0
    const-string v4, "TT_UGEN_GIF_FILE"

    invoke-static {v2, v1, v3, v4}, Lcom/bytedance/sdk/component/utils/Jcg;->Sj(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    array-length v3, p1

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v3, v5, :cond_1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/b;->a(Ljava/io/File;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/a;->a(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return-object p1

    :catchall_2
    move-exception p1

    goto :goto_1

    :cond_1
    :try_start_3
    array-length v1, p1

    invoke-static {p1, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    return-object v1

    :goto_1
    :try_start_5
    const-string v1, "ImageLoaderProvider"

    const-string v3, "GifView  getSourceByFile fail : "

    invoke-static {v1, v3, p1}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    :cond_2
    return-object v0

    :catchall_5
    move-exception p1

    if-eqz v2, :cond_3

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :catchall_6
    :cond_3
    throw p1
.end method

.method private sP(Landroid/widget/ImageView;[BII)V
    .locals 8

    new-instance v7, Lcom/bytedance/sdk/component/HiB/EjP/TKC/sP/Sj;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move-object v0, v7

    move v1, p3

    move v2, p4

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/sP/Sj;-><init>(IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;II)V

    invoke-virtual {v7, p2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/sP/Sj;->Sj([B)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance p3, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$2;

    const-string p4, "loadStaticImage"

    invoke-direct {p3, p0, p4, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/adsdk/ugeno/core/Dq;Ljava/lang/String;Landroid/widget/ImageView;II)V
    .locals 2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC;->Sj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/uA/EjP;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/HiB/TEQ;->TKC(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj;->Sj(Lcom/bytedance/adsdk/ugeno/core/Dq;Lcom/bytedance/sdk/component/HiB/TEQ;Ljava/lang/String;)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$sP;

    invoke-direct {p1, p3, p0, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$sP;-><init>(Landroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj;II)V

    const/4 p2, 0x4

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Lcom/bytedance/sdk/component/HiB/uvD;I)Lcom/bytedance/sdk/component/HiB/uA;

    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/core/Dq;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/Sj$Sj;)V
    .locals 0

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC;->Sj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj;->sP(Lcom/bytedance/adsdk/ugeno/core/Dq;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/Sj$Sj;)V

    return-void
.end method

.method public Sj([B)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/Ym;->Sj([BI)Z

    move-result p1

    return p1
.end method

.method public sP(Lcom/bytedance/adsdk/ugeno/core/Dq;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/Sj$Sj;)V
    .locals 2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/uA/EjP;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/HiB/TEQ;->TKC(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj;->Sj(Lcom/bytedance/adsdk/ugeno/core/Dq;Lcom/bytedance/sdk/component/HiB/TEQ;Ljava/lang/String;)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$5;

    invoke-direct {p1, p0, p3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj;Lcom/bytedance/adsdk/ugeno/Sj$Sj;)V

    const/4 p2, 0x4

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Lcom/bytedance/sdk/component/HiB/uvD;I)Lcom/bytedance/sdk/component/HiB/uA;

    return-void
.end method
