.class public final Lcom/transsion/lib_web/download_render/init/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/lib_web/download_render/init/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke()V
    .locals 2

    sget-object v0, Lcom/transsion/lib_web/download_render/c;->a:Lcom/transsion/lib_web/download_render/c;

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/c;->l()Lcom/transsion/lib_web/download_render/data/PageListData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->a:Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/data/PageListData;->getH5Pages()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->g(Ljava/util/List;)V

    return-void
.end method
