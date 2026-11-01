.class public final Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Lcom/cloud/tmc/integration/model/AppModel;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Z

.field public final synthetic OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o;

.field public final synthetic OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

.field public final synthetic OooO0Oo:Lcom/cloud/tmc/integration/model/PrepareContext;

.field public final synthetic OooO0o:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

.field public final synthetic OooO0o0:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;


# direct methods
.method public constructor <init>(ZLcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO00o:Z

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0Oo:Lcom/cloud/tmc/integration/model/PrepareContext;

    iput-object p5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0o0:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    iput-object p6, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0o:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p2, "url"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl_MD5()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->removeDownloadAppMap(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public onFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V
    .locals 1

    const-string p5, "url"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "errorCode"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "errorMsg"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0Oo:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object p2

    iget-object p4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    const/4 p5, 0x0

    invoke-virtual {p1, p2, p4, p5}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->changeZipDownloadStatus(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Z)V

    :try_start_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl_MD5()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->removeDownloadAppMap(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO00o:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Step_Download_\u8d44\u6e90\u5305\u4e0b\u8f7d\u5931\u8d25\uff0c"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0o0:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    if-eqz p1, :cond_1

    new-instance p2, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    iget-object p4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {p4}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl()Ljava/lang/String;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "download error:"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "   url:"

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "4"

    invoke-direct {p2, p4, p3}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0o:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-interface {p1, p2, p5}, Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;->backgroundDownloadZipAsync(Lcom/cloud/tmc/integration/model/AppModel;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string p2, "Step_Download_\u8d44\u6e90\u5305\u4e0b\u8f7d\u5b8c\u6210\uff0c\u8fdb\u884c\u89e3\u538b"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0Oo:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->changeZipDownloadStatus(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Z)V

    :try_start_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl_MD5()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->removeDownloadAppMap(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO00o:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0o0:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    if-eqz p1, :cond_0

    invoke-interface {p1, p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->unlock(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0o0:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToNext()V

    goto :goto_0

    :cond_1
    :try_start_1
    sget-object p1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->checkEnableBackgroundUnzip()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object v2, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOO0;

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0Oo:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO00o(Lcom/cloud/tmc/miniapp/utils/OooOO0;Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ZZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0o:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-interface {p1, p2, v1}, Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;->backgroundDownloadZipAsync(Lcom/cloud/tmc/integration/model/AppModel;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onPrepare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p2, "url"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const-string p3, "url"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO00o:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Step_Download_\u4e0b\u8f7d\u8d44\u6e90\u5305"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic progressUpdate(Ljava/lang/String;ILjava/lang/String;JJ)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/cloud/tmc/kernel/proxy/network/a;->a(Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;ILjava/lang/String;JJ)V

    return-void
.end method
