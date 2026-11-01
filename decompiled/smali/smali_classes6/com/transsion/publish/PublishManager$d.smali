.class public final Lcom/transsion/publish/PublishManager$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/compressor/image/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/PublishManager;->disposeImage(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/publish/api/bean/MediaImageEntity;

.field final synthetic b:Lcom/transsion/publish/PublishManager;

.field final synthetic c:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/transsion/publish/api/bean/MediaImageEntity;Lcom/transsion/publish/PublishManager;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/PublishManager$d;->a:Lcom/transsion/publish/api/bean/MediaImageEntity;

    iput-object p2, p0, Lcom/transsion/publish/PublishManager$d;->b:Lcom/transsion/publish/PublishManager;

    iput-object p3, p0, Lcom/transsion/publish/PublishManager$d;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/io/File;[IJ)V
    .locals 7

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ints"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TranCompressor success...file "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "TNPublish"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/publish/PublishManager$d;->a:Lcom/transsion/publish/api/bean/MediaImageEntity;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "getAbsolutePath(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/transsion/publish/api/bean/MediaImageEntity;->setUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/publish/PublishManager$d;->a:Lcom/transsion/publish/api/bean/MediaImageEntity;

    const/4 v0, 0x0

    aget v0, p2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/publish/api/bean/MediaImageEntity;->setWidth(Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/transsion/publish/PublishManager$d;->a:Lcom/transsion/publish/api/bean/MediaImageEntity;

    const/4 v0, 0x1

    aget p2, p2, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/publish/api/bean/MediaImageEntity;->setHeight(Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/transsion/publish/PublishManager$d;->a:Lcom/transsion/publish/api/bean/MediaImageEntity;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/publish/api/bean/MediaImageEntity;->setSize(Ljava/lang/Long;)V

    iget-object p1, p0, Lcom/transsion/publish/PublishManager$d;->b:Lcom/transsion/publish/PublishManager;

    iget-object p2, p0, Lcom/transsion/publish/PublishManager$d;->a:Lcom/transsion/publish/api/bean/MediaImageEntity;

    iget-object p3, p0, Lcom/transsion/publish/PublishManager$d;->c:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/transsion/publish/PublishManager;->access$check(Lcom/transsion/publish/PublishManager;Lcom/transsion/publish/api/bean/MediaImageEntity;I)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/publish/PublishManager$d;->b:Lcom/transsion/publish/PublishManager;

    iget-object v0, p0, Lcom/transsion/publish/PublishManager$d;->a:Lcom/transsion/publish/api/bean/MediaImageEntity;

    iget-object v1, p0, Lcom/transsion/publish/PublishManager$d;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/transsion/publish/PublishManager;->access$check(Lcom/transsion/publish/PublishManager;Lcom/transsion/publish/api/bean/MediaImageEntity;I)V

    return-void
.end method
