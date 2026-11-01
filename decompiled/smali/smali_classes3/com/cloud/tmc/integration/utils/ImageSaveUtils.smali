.class public final Lcom/cloud/tmc/integration/utils/ImageSaveUtils;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\rH\u0007J\u0010\u0010\u000e\u001a\u00020\t2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/utils/ImageSaveUtils;",
        "",
        "()V",
        "ERROR_CODE_FILE_NULL",
        "",
        "ERROR_CODE_NO_PERMISSION",
        "saveImage",
        "",
        "src",
        "Landroid/graphics/Bitmap;",
        "saveImgCallback",
        "Lcom/cloud/tmc/integration/callback/ISaveImgCallback;",
        "compressFormat",
        "Landroid/graphics/Bitmap$CompressFormat;",
        "view2Bitmap",
        "view",
        "Landroid/view/View;",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final ERROR_CODE_FILE_NULL:I = 0x1

.field public static final ERROR_CODE_NO_PERMISSION:I = 0x2

.field public static final INSTANCE:Lcom/cloud/tmc/integration/utils/ImageSaveUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/integration/utils/ImageSaveUtils;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/utils/ImageSaveUtils;-><init>()V

    sput-object v0, Lcom/cloud/tmc/integration/utils/ImageSaveUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/ImageSaveUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final saveImage(Landroid/graphics/Bitmap;Lcom/cloud/tmc/integration/callback/ISaveImgCallback;)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1, v0}, Lcom/cloud/tmc/integration/utils/ImageSaveUtils;->saveImage$default(Landroid/graphics/Bitmap;Lcom/cloud/tmc/integration/callback/ISaveImgCallback;Landroid/graphics/Bitmap$CompressFormat;ILjava/lang/Object;)V

    return-void
.end method

.method public static final saveImage(Landroid/graphics/Bitmap;Lcom/cloud/tmc/integration/callback/ISaveImgCallback;Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "compressFormat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-ge p2, v0, :cond_0

    const-string p2, "STORAGE_WRITE"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->permissionGroup([Ljava/lang/String;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    move-result-object p2

    new-instance v0, Lcom/cloud/tmc/integration/utils/ImageSaveUtils$saveImage$1;

    invoke-direct {v0, p0, p1}, Lcom/cloud/tmc/integration/utils/ImageSaveUtils$saveImage$1;-><init>(Landroid/graphics/Bitmap;Lcom/cloud/tmc/integration/callback/ISaveImgCallback;)V

    invoke-virtual {p2, v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->callback(Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->request()V

    goto :goto_0

    :cond_0
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v0, 0x1

    const-string v1, "MiniApp"

    invoke-static {p0, v1, p2, v0}, Lcom/cloud/tmc/miniutils/util/ImageUtils;->save2Album(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Z)Ljava/io/File;

    move-result-object p0

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/cloud/tmc/integration/callback/ISaveImgCallback;->onSuccess(Ljava/io/File;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic saveImage$default(Landroid/graphics/Bitmap;Lcom/cloud/tmc/integration/callback/ISaveImgCallback;Landroid/graphics/Bitmap$CompressFormat;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/integration/utils/ImageSaveUtils;->saveImage(Landroid/graphics/Bitmap;Lcom/cloud/tmc/integration/callback/ISaveImgCallback;Landroid/graphics/Bitmap$CompressFormat;)V

    return-void
.end method


# virtual methods
.method public final view2Bitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/ImageUtils;->view2Bitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "view2Bitmap(view)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
