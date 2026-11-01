.class public final Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B9\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\u000f\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\u000f\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0008H\u00c6\u0003JC\u0010\u0015\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000cR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;",
        "",
        "removeFileList",
        "",
        "Lcom/transsion/lib_web/download_render/data/FileData;",
        "copyFileList",
        "downloadFileList",
        "totalFileSize",
        "",
        "<init>",
        "(Ljava/util/List;Ljava/util/List;Ljava/util/List;J)V",
        "getRemoveFileList",
        "()Ljava/util/List;",
        "getCopyFileList",
        "getDownloadFileList",
        "getTotalFileSize",
        "()J",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "lib_web_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final copyFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/lib_web/download_render/data/FileData;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/lib_web/download_render/data/FileData;",
            ">;"
        }
    .end annotation
.end field

.field private final removeFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/lib_web/download_render/data/FileData;",
            ">;"
        }
    .end annotation
.end field

.field private final totalFileSize:J


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/lib_web/download_render/data/FileData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/lib_web/download_render/data/FileData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/lib_web/download_render/data/FileData;",
            ">;J)V"
        }
    .end annotation

    const-string v0, "removeFileList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "copyFileList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadFileList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->removeFileList:Ljava/util/List;

    iput-object p2, p0, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->copyFileList:Ljava/util/List;

    iput-object p3, p0, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->downloadFileList:Ljava/util/List;

    iput-wide p4, p0, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->totalFileSize:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;Ljava/util/List;Ljava/util/List;Ljava/util/List;JILjava/lang/Object;)Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->removeFileList:Ljava/util/List;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->copyFileList:Ljava/util/List;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->downloadFileList:Ljava/util/List;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-wide p4, p0, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->totalFileSize:J

    :cond_3
    move-wide v1, p4

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-wide p6, v1

    invoke-virtual/range {p2 .. p7}, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->copy(Ljava/util/List;Ljava/util/List;Ljava/util/List;J)Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/lib_web/download_render/data/FileData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->removeFileList:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/lib_web/download_render/data/FileData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->copyFileList:Ljava/util/List;

    return-object v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/lib_web/download_render/data/FileData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->downloadFileList:Ljava/util/List;

    return-object v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->totalFileSize:J

    return-wide v0
.end method

.method public final copy(Ljava/util/List;Ljava/util/List;Ljava/util/List;J)Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/lib_web/download_render/data/FileData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/lib_web/download_render/data/FileData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/lib_web/download_render/data/FileData;",
            ">;J)",
            "Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;"
        }
    .end annotation

    const-string v0, "removeFileList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "copyFileList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadFileList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;

    iget-object v1, p0, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->removeFileList:Ljava/util/List;

    iget-object v3, p1, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->removeFileList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->copyFileList:Ljava/util/List;

    iget-object v3, p1, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->copyFileList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->downloadFileList:Ljava/util/List;

    iget-object v3, p1, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->downloadFileList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->totalFileSize:J

    iget-wide v5, p1, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->totalFileSize:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getCopyFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/lib_web/download_render/data/FileData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->copyFileList:Ljava/util/List;

    return-object v0
.end method

.method public final getDownloadFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/lib_web/download_render/data/FileData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->downloadFileList:Ljava/util/List;

    return-object v0
.end method

.method public final getRemoveFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/lib_web/download_render/data/FileData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->removeFileList:Ljava/util/List;

    return-object v0
.end method

.method public final getTotalFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->totalFileSize:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->removeFileList:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->copyFileList:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->downloadFileList:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->totalFileSize:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->removeFileList:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->copyFileList:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->downloadFileList:Ljava/util/List;

    iget-wide v3, p0, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->totalFileSize:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CompareResponse(removeFileList="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", copyFileList="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", downloadFileList="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", totalFileSize="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
