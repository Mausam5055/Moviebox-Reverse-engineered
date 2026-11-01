.class public final Lcom/transsnet/downloader/viewmodel/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Lcom/transsion/baselib/db/download/DownloadBean;

.field private final d:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Z)V
    .locals 1

    const-string v0, "formatSize"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadBean"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsnet/downloader/viewmodel/b;->a:I

    iput-object p2, p0, Lcom/transsnet/downloader/viewmodel/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsnet/downloader/viewmodel/b;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    iput-boolean p4, p0, Lcom/transsnet/downloader/viewmodel/b;->d:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/transsnet/downloader/viewmodel/b;->a:I

    return v0
.end method

.method public final b()Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/b;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsnet/downloader/viewmodel/b;->d:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsnet/downloader/viewmodel/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsnet/downloader/viewmodel/b;

    iget v1, p0, Lcom/transsnet/downloader/viewmodel/b;->a:I

    iget v3, p1, Lcom/transsnet/downloader/viewmodel/b;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsnet/downloader/viewmodel/b;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsnet/downloader/viewmodel/b;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsnet/downloader/viewmodel/b;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v3, p1, Lcom/transsnet/downloader/viewmodel/b;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/transsnet/downloader/viewmodel/b;->d:Z

    iget-boolean p1, p1, Lcom/transsnet/downloader/viewmodel/b;->d:Z

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/transsnet/downloader/viewmodel/b;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsnet/downloader/viewmodel/b;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsnet/downloader/viewmodel/b;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsnet/downloader/viewmodel/b;->d:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/transsnet/downloader/viewmodel/b;->a:I

    iget-object v1, p0, Lcom/transsnet/downloader/viewmodel/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsnet/downloader/viewmodel/b;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    iget-boolean v3, p0, Lcom/transsnet/downloader/viewmodel/b;->d:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Download2ResultContent(count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", formatSize="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", downloadBean="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isCancel="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
