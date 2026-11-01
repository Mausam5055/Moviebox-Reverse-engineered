.class public final Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$doShareFile$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$doShareFile$1;->invoke(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $file:Ljava/io/File;

.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$doShareFile$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$doShareFile$1$1;->$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied()V
    .locals 9

    const-string v0, "ImagePreviewActivity"

    const-string v1, "doShareFile onDenied"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/cloud/tmc/miniapp/R$string;->mini_image_select_shared_failed:I

    const/16 v7, 0xe

    const/4 v8, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToast$default(IIJZILjava/lang/Object;)V

    return-void
.end method

.method public onGranted()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$doShareFile$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$doShareFile$1$1;->$file:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->access$systemShare(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;Ljava/io/File;)V

    return-void
.end method
