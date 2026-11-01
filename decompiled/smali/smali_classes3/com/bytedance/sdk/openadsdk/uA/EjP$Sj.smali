.class final Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/uA/EjP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Sj"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj$Sj;
    }
.end annotation


# static fields
.field private static EjP:I

.field private static HiB:I

.field public static Sj:Z

.field private static TKC:I

.field private static final sP:Lcom/bytedance/sdk/component/HiB/Zq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/component/HiB/Zq;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj;->sP:Lcom/bytedance/sdk/component/HiB/Zq;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj;->Sj:Z

    const/16 v0, 0xa

    sput v0, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj;->TKC:I

    const/16 v0, 0xf

    sput v0, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj;->EjP:I

    const/16 v0, 0x1e

    sput v0, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj;->HiB:I

    return-void
.end method

.method private static Sj(Lcom/bytedance/sdk/component/HiB/TEQ;)Lcom/bytedance/sdk/component/HiB/TEQ;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/fF;->Sj()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/uA/HiB;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/uA/HiB;-><init>()V

    invoke-interface {p0, v0}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Lcom/bytedance/sdk/component/HiB/RiZ;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/model/uvD;)Lcom/bytedance/sdk/component/HiB/TEQ;
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj;->sP(Lcom/bytedance/sdk/openadsdk/core/model/uvD;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p0

    return-object p0
.end method

.method static synthetic Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/HiB/TEQ;
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p0

    return-object p0
.end method

.method private static Sj(Landroid/content/Context;)Lcom/bytedance/sdk/component/HiB/Zq;
    .locals 9

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj;->Sj()V

    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj;->Sj:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP;

    sget v4, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj;->TKC:I

    sget v5, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj;->EjP:I

    sget v2, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj;->HiB:I

    int-to-long v6, v2

    new-instance v8, Ljava/io/File;

    const-string v2, "image_p"

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getImageCacheDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP;-><init>(IIIJLjava/io/File;)V

    new-instance v2, Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB$Sj;

    invoke-direct {v2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB$Sj;-><init>()V

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB$Sj;->Sj(Lcom/bytedance/sdk/component/HiB/sP;)Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB$Sj;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj$2;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj$2;-><init>()V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB$Sj;->Sj(Lcom/bytedance/sdk/component/HiB/sU;)Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB$Sj;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj$1;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj$1;-><init>()V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB$Sj;->Sj(Lcom/bytedance/sdk/component/HiB/dx;)Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB$Sj;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj$Sj;

    invoke-direct {v2, v1}, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj$Sj;-><init>(Lcom/bytedance/sdk/openadsdk/uA/EjP$1;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB$Sj;->Sj(Lcom/bytedance/sdk/component/HiB/EjP;)Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB$Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB$Sj;->Sj()Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/sP;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/component/HiB/Fmk;)Lcom/bytedance/sdk/component/HiB/Zq;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    const/high16 v2, 0x5000000

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/high16 v2, 0xa00000

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v2, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj;

    new-instance v3, Ljava/io/File;

    const-string v4, "image"

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getImageCacheDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/32 v4, 0x2800000

    invoke-direct {v2, v0, v4, v5, v3}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj;-><init>(IJLjava/io/File;)V

    new-instance v0, Lcom/bytedance/sdk/component/HiB/TKC/HiB$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/HiB/TKC/HiB$Sj;-><init>()V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/HiB/TKC/HiB$Sj;->Sj(Lcom/bytedance/sdk/component/HiB/sP;)Lcom/bytedance/sdk/component/HiB/TKC/HiB$Sj;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj$4;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj$4;-><init>()V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/HiB/TKC/HiB$Sj;->Sj(Lcom/bytedance/sdk/component/HiB/sU;)Lcom/bytedance/sdk/component/HiB/TKC/HiB$Sj;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj$3;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj$3;-><init>()V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/HiB/TKC/HiB$Sj;->Sj(Lcom/bytedance/sdk/component/HiB/dx;)Lcom/bytedance/sdk/component/HiB/TKC/HiB$Sj;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj$Sj;

    invoke-direct {v2, v1}, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj$Sj;-><init>(Lcom/bytedance/sdk/openadsdk/uA/EjP$1;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/HiB/TKC/HiB$Sj;->Sj(Lcom/bytedance/sdk/component/HiB/EjP;)Lcom/bytedance/sdk/component/HiB/TKC/HiB$Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/HiB/TKC/HiB$Sj;->Sj()Lcom/bytedance/sdk/component/HiB/TKC/HiB;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/HiB/TKC/sP;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/component/HiB/Fmk;)Lcom/bytedance/sdk/component/HiB/Zq;

    move-result-object p0

    return-object p0
.end method

.method static synthetic Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj;->sP(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static Sj()V
    .locals 3

    const-string v0, "image_config"

    const-string v1, "use_new_img"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/dx/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sput-boolean v2, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj;->Sj:Z

    const-string v1, "bitmap_cache_count"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/dx/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj;->TKC:I

    const-string v1, "data_cache_count"

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/dx/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj;->EjP:I

    const-string v1, "disk_cache_count"

    const/16 v2, 0x1e

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/dx/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj;->HiB:I

    return-void
.end method

.method static synthetic Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj;->sP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static sP(Lcom/bytedance/sdk/openadsdk/core/model/uvD;)Lcom/bytedance/sdk/component/HiB/TEQ;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj;->sP:Lcom/bytedance/sdk/component/HiB/Zq;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/HiB/Zq;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->sP()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->TKC()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/HiB/TEQ;->sP(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->HiB(Landroid/content/Context;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/HiB/TEQ;->HiB(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/HiB/TEQ;->EjP(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Jcg()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj;->Sj(Lcom/bytedance/sdk/component/HiB/TEQ;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p0

    return-object p0
.end method

.method private static sP(Ljava/lang/String;)Lcom/bytedance/sdk/component/HiB/TEQ;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj;->sP:Lcom/bytedance/sdk/component/HiB/Zq;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/component/HiB/Zq;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->HiB(Landroid/content/Context;)I

    move-result v0

    invoke-interface {p0, v0}, Lcom/bytedance/sdk/component/HiB/TEQ;->HiB(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;)I

    move-result v0

    invoke-interface {p0, v0}, Lcom/bytedance/sdk/component/HiB/TEQ;->EjP(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj;->Sj(Lcom/bytedance/sdk/component/HiB/TEQ;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p0

    return-object p0
.end method

.method static synthetic sP()Lcom/bytedance/sdk/component/HiB/Zq;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj;->sP:Lcom/bytedance/sdk/component/HiB/Zq;

    return-object v0
.end method

.method private static sP(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj;->sP:Lcom/bytedance/sdk/component/HiB/Zq;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/component/HiB/Zq;->Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private static sP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj;->sP:Lcom/bytedance/sdk/component/HiB/Zq;

    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/sdk/component/HiB/Zq;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
