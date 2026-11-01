.class public final Lcom/cloud/tmc/fps/data/StackTraceData;
.super Lcom/cloud/tmc/kernel/model/BaseBean;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0005H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/cloud/tmc/fps/data/StackTraceData;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "count",
        "",
        "stackInfo",
        "",
        "(ILjava/lang/String;)V",
        "getCount",
        "()I",
        "setCount",
        "(I)V",
        "getStackInfo",
        "()Ljava/lang/String;",
        "setStackInfo",
        "(Ljava/lang/String;)V",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "com.cloud.tmc.minifps"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private count:I

.field private stackInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const-string v0, "stackInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    iput p1, p0, Lcom/cloud/tmc/fps/data/StackTraceData;->count:I

    iput-object p2, p0, Lcom/cloud/tmc/fps/data/StackTraceData;->stackInfo:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/fps/data/StackTraceData;ILjava/lang/String;ILjava/lang/Object;)Lcom/cloud/tmc/fps/data/StackTraceData;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/cloud/tmc/fps/data/StackTraceData;->count:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/cloud/tmc/fps/data/StackTraceData;->stackInfo:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/fps/data/StackTraceData;->copy(ILjava/lang/String;)Lcom/cloud/tmc/fps/data/StackTraceData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/fps/data/StackTraceData;->count:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/fps/data/StackTraceData;->stackInfo:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;)Lcom/cloud/tmc/fps/data/StackTraceData;
    .locals 1

    const-string v0, "stackInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/tmc/fps/data/StackTraceData;

    invoke-direct {v0, p1, p2}, Lcom/cloud/tmc/fps/data/StackTraceData;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/fps/data/StackTraceData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/tmc/fps/data/StackTraceData;

    iget v1, p0, Lcom/cloud/tmc/fps/data/StackTraceData;->count:I

    iget v3, p1, Lcom/cloud/tmc/fps/data/StackTraceData;->count:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/fps/data/StackTraceData;->stackInfo:Ljava/lang/String;

    iget-object p1, p1, Lcom/cloud/tmc/fps/data/StackTraceData;->stackInfo:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getCount()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/fps/data/StackTraceData;->count:I

    return v0
.end method

.method public final getStackInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/fps/data/StackTraceData;->stackInfo:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/cloud/tmc/fps/data/StackTraceData;->count:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/cloud/tmc/fps/data/StackTraceData;->stackInfo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setCount(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/fps/data/StackTraceData;->count:I

    return-void
.end method

.method public final setStackInfo(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/fps/data/StackTraceData;->stackInfo:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/cloud/tmc/fps/data/StackTraceData;->count:I

    iget-object v1, p0, Lcom/cloud/tmc/fps/data/StackTraceData;->stackInfo:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StackTraceData(count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", stackInfo="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
