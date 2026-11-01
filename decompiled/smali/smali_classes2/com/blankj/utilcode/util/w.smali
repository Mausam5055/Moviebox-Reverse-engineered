.class public abstract Lcom/blankj/utilcode/util/w;
.super Ljava/lang/Object;


# direct methods
.method public static a()J
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/e0;->m(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b()J
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/e0;->n(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
