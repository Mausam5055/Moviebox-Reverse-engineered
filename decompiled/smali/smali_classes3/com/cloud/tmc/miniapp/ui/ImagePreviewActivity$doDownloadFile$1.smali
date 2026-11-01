.class final Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$doDownloadFile$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->doDownloadFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/io/File;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$doDownloadFile$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$doDownloadFile$1;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$doDownloadFile$1;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$doDownloadFile$1;->INSTANCE:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$doDownloadFile$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$doDownloadFile$1;->invoke(Ljava/io/File;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/io/File;)V
    .locals 8

    if-nez p1, :cond_0

    const-string p1, "ImagePreviewActivity"

    const-string v0, "doDownloadFile file is null"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/cloud/tmc/miniapp/R$string;->mini_image_select_save_failed:I

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToast$default(IIJZILjava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/ImageUtils;->getBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1}, Lkotlin/io/FilesKt;->w(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "png"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :cond_1
    const-string v1, "webp"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt p1, v1, :cond_2

    invoke-static {}, Lcom/cloud/tmc/integration/utils/compress/a;->a()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object p1

    goto :goto_0

    :cond_2
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :cond_3
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$doDownloadFile$1$1;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$doDownloadFile$1$1;-><init>()V

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/integration/utils/ImageSaveUtils;->saveImage(Landroid/graphics/Bitmap;Lcom/cloud/tmc/integration/callback/ISaveImgCallback;Landroid/graphics/Bitmap$CompressFormat;)V

    return-void
.end method
