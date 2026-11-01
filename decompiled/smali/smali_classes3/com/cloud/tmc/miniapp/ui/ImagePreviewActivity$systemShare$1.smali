.class public final Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$systemShare$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/utils/share/OnShareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->systemShare(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$systemShare$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$systemShare$1;->onShare$lambda$1()V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$systemShare$1;->onShare$lambda$0()V

    return-void
.end method

.method private static final onShare$lambda$0()V
    .locals 7

    sget v0, Lcom/cloud/tmc/miniapp/R$string;->mini_image_select_shared_success:I

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToast$default(IIJZILjava/lang/Object;)V

    return-void
.end method

.method private static final onShare$lambda$1()V
    .locals 7

    sget v0, Lcom/cloud/tmc/miniapp/R$string;->mini_image_select_shared_failed:I

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToast$default(IIJZILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onShare(II)V
    .locals 2

    const/4 p1, 0x1

    const-string v0, "share"

    const-string v1, "ImagePreviewActivity"

    if-ne p2, p1, :cond_0

    const-string p1, "Share file successfully"

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$systemShare$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->access$getMTaskQueue(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)Lcom/cloud/tmc/miniapp/task/OooO0O0;

    move-result-object p1

    new-instance p2, Lcom/cloud/tmc/miniapp/task/OooO00o;

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/a;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/ui/a;-><init>()V

    invoke-direct {p2, v0, v1}, Lcom/cloud/tmc/miniapp/task/OooO00o;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/task/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/task/OooO00o;)V

    goto :goto_0

    :cond_0
    const-string p1, "Share file failed"

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$systemShare$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->access$getMTaskQueue(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)Lcom/cloud/tmc/miniapp/task/OooO0O0;

    move-result-object p1

    new-instance p2, Lcom/cloud/tmc/miniapp/task/OooO00o;

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/b;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/ui/b;-><init>()V

    invoke-direct {p2, v0, v1}, Lcom/cloud/tmc/miniapp/task/OooO00o;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/task/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/task/OooO00o;)V

    :goto_0
    return-void
.end method
