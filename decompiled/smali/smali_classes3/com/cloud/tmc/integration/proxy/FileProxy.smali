.class public interface abstract Lcom/cloud/tmc/integration/proxy/FileProxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# virtual methods
.method public abstract createBaseDirectory(Lcom/cloud/tmc/integration/model/AppModel;)Z
    .param p1    # Lcom/cloud/tmc/integration/model/AppModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract createSoDirectory()Z
.end method

.method public abstract delectDownloadFileForVersion(Lcom/cloud/tmc/integration/model/AppModel;)V
    .param p1    # Lcom/cloud/tmc/integration/model/AppModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract deleteAllFileForVersion(Lcom/cloud/tmc/integration/model/AppModel;)V
    .param p1    # Lcom/cloud/tmc/integration/model/AppModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract deleteAllFileForVersion(Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V
    .param p1    # Lcom/cloud/tmc/integration/model/AppModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract deleteDownloadFileForVersion(Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V
    .param p1    # Lcom/cloud/tmc/integration/model/AppModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract deleteFile(Ljava/lang/String;)V
.end method

.method public abstract fileTotalSize(Ljava/io/File;)J
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract listFilesInDir(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/util/List;
    .param p1    # Lcom/cloud/tmc/integration/model/AppModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/model/AppModel;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end method

.method public abstract listFilesInDir(Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)Ljava/util/List;
    .param p1    # Lcom/cloud/tmc/integration/model/AppModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/model/AppModel;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end method

.method public abstract listFilesInDir(Ljava/lang/String;)Ljava/util/List;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end method

.method public abstract readFile2String(Ljava/lang/String;)Ljava/lang/String;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
