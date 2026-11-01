.class public final Lcom/transsion/publish/PublishManager$e;
.super Ljava/lang/Object;

# interfaces
.implements Lmp/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/PublishManager;->disposePost(Landroid/content/Context;Lcom/transsion/publish/api/bean/RequestPostEntity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/publish/PublishManager;

.field final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic c:Z

.field final synthetic d:Lcom/transsion/publish/api/bean/RequestPostEntity;


# direct methods
.method constructor <init>(Lcom/transsion/publish/PublishManager;Lkotlin/jvm/internal/Ref$ObjectRef;ZLcom/transsion/publish/api/bean/RequestPostEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/PublishManager$e;->a:Lcom/transsion/publish/PublishManager;

    iput-object p2, p0, Lcom/transsion/publish/PublishManager$e;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-boolean p3, p0, Lcom/transsion/publish/PublishManager$e;->c:Z

    iput-object p4, p0, Lcom/transsion/publish/PublishManager$e;->d:Lcom/transsion/publish/api/bean/RequestPostEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 7

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/publish/PublishManager$e;->a:Lcom/transsion/publish/PublishManager;

    invoke-static {v0}, Lcom/transsion/publish/PublishManager;->access$getPublishQueue$p(Lcom/transsion/publish/PublishManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/publish/PublishManager$e;->a:Lcom/transsion/publish/PublishManager;

    invoke-static {v0, p1}, Lcom/transsion/publish/PublishManager;->access$isUploadSucceed(Lcom/transsion/publish/PublishManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/transsion/publish/PublishManager$e;->a:Lcom/transsion/publish/PublishManager;

    iget-object v0, p0, Lcom/transsion/publish/PublishManager$e;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;

    invoke-virtual {v0}, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;->getVideo()Ljava/util/List;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/publish/PublishManager$e;->c:Z

    invoke-static {p1, v0, v1}, Lcom/transsion/publish/PublishManager;->access$disposeVideo(Lcom/transsion/publish/PublishManager;Ljava/util/List;Z)V

    return-void

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/transsion/publish/PublishManager$e;->d:Lcom/transsion/publish/api/bean/RequestPostEntity;

    invoke-virtual {v0}, Lcom/transsion/publish/api/bean/RequestPostEntity;->getMedia()Lcom/transsion/publish/api/bean/RequestPostMediaEntity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;->getCover()Lcom/transsion/publish/api/bean/MediaCoverEntity;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    new-instance v0, Lcom/transsion/publish/api/bean/MediaCoverEntity;

    invoke-direct {v0}, Lcom/transsion/publish/api/bean/MediaCoverEntity;-><init>()V

    iget-object v1, p0, Lcom/transsion/publish/PublishManager$e;->d:Lcom/transsion/publish/api/bean/RequestPostEntity;

    invoke-virtual {v1}, Lcom/transsion/publish/api/bean/RequestPostEntity;->getMedia()Lcom/transsion/publish/api/bean/RequestPostMediaEntity;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;->setCover(Lcom/transsion/publish/api/bean/MediaCoverEntity;)V

    :cond_3
    invoke-virtual {v0, p1}, Lcom/transsion/publish/api/bean/MediaCoverEntity;->setUrl(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/blankj/utilcode/util/ImageUtils;->d(Ljava/lang/String;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v5, v1, v4

    mul-int/2addr v3, v5

    int-to-long v5, v3

    invoke-virtual {v0, v5, v6}, Lcom/transsion/publish/api/bean/MediaCoverEntity;->setSize(J)V

    aget v2, v1, v2

    invoke-virtual {v0, v2}, Lcom/transsion/publish/api/bean/MediaCoverEntity;->setWidth(I)V

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Lcom/transsion/publish/api/bean/MediaCoverEntity;->setHeight(I)V

    iget-object v0, p0, Lcom/transsion/publish/PublishManager$e;->a:Lcom/transsion/publish/PublishManager;

    invoke-static {v0}, Lcom/transsion/publish/PublishManager;->access$getPublishQueue$p(Lcom/transsion/publish/PublishManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    new-instance v1, Lcom/transsion/publish/bean/PublishValue;

    invoke-direct {v1, v4}, Lcom/transsion/publish/bean/PublishValue;-><init>(I)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcw/c;->a:Lcw/c;

    sget-object v1, Lcom/transsion/upload/bean/UploadFileType;->OBJECT_NAME_IMAGE:Lcom/transsion/upload/bean/UploadFileType;

    iget-object v2, p0, Lcom/transsion/publish/PublishManager$e;->a:Lcom/transsion/publish/PublishManager;

    invoke-static {v2}, Lcom/transsion/publish/PublishManager;->access$uploadCallback(Lcom/transsion/publish/PublishManager;)Lcw/a;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v4, v2}, Lcw/c;->f(Ljava/lang/String;Lcom/transsion/upload/bean/UploadFileType;ZLcw/a;)V

    iget-object p1, p0, Lcom/transsion/publish/PublishManager$e;->a:Lcom/transsion/publish/PublishManager;

    iget-object v0, p0, Lcom/transsion/publish/PublishManager$e;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;

    invoke-virtual {v0}, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;->getVideo()Ljava/util/List;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/publish/PublishManager$e;->c:Z

    invoke-static {p1, v0, v1}, Lcom/transsion/publish/PublishManager;->access$disposeVideo(Lcom/transsion/publish/PublishManager;Ljava/util/List;Z)V

    goto :goto_3

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/transsion/publish/PublishManager$e;->a:Lcom/transsion/publish/PublishManager;

    iget-object v0, p0, Lcom/transsion/publish/PublishManager$e;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;

    invoke-virtual {v0}, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;->getVideo()Ljava/util/List;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/publish/PublishManager$e;->c:Z

    invoke-static {p1, v0, v1}, Lcom/transsion/publish/PublishManager;->access$disposeVideo(Lcom/transsion/publish/PublishManager;Ljava/util/List;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFirstFrame ext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "TNPublish"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_3
    return-void
.end method
