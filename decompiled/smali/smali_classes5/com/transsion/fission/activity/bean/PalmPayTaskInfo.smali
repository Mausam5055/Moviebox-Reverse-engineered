.class public final Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0017\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0005H\u00c6\u0003J1\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005H\u00c6\u0001J\u0006\u0010\u001b\u001a\u00020\u0005J\u0013\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u00d6\u0003J\t\u0010 \u001a\u00020\u0005H\u00d6\u0001J\t\u0010!\u001a\u00020\u0003H\u00d6\u0001J\u0016\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0005R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000f\"\u0004\u0008\u0013\u0010\u0011R\u001a\u0010\u0007\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u000f\"\u0004\u0008\u0015\u0010\u0011\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;",
        "Landroid/os/Parcelable;",
        "taskId",
        "",
        "progress",
        "",
        "totalProgress",
        "status",
        "<init>",
        "(Ljava/lang/String;III)V",
        "getTaskId",
        "()Ljava/lang/String;",
        "setTaskId",
        "(Ljava/lang/String;)V",
        "getProgress",
        "()I",
        "setProgress",
        "(I)V",
        "getTotalProgress",
        "setTotalProgress",
        "getStatus",
        "setStatus",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "describeContents",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "Fission_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private progress:I

.field private status:I

.field private taskId:Ljava/lang/String;

.field private totalProgress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo$a;

    invoke-direct {v0}, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo$a;-><init>()V

    sput-object v0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1

    const-string v0, "taskId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->taskId:Ljava/lang/String;

    iput p2, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->progress:I

    iput p3, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->totalProgress:I

    iput p4, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->status:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;Ljava/lang/String;IIIILjava/lang/Object;)Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->taskId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->progress:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->totalProgress:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->status:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->copy(Ljava/lang/String;III)Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->taskId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->progress:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->totalProgress:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->status:I

    return v0
.end method

.method public final copy(Ljava/lang/String;III)Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;
    .locals 1

    const-string v0, "taskId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;-><init>(Ljava/lang/String;III)V

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;

    iget-object v1, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->taskId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->taskId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->progress:I

    iget v3, p1, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->progress:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->totalProgress:I

    iget v3, p1, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->totalProgress:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->status:I

    iget p1, p1, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->status:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getProgress()I
    .locals 1

    iget v0, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->progress:I

    return v0
.end method

.method public final getStatus()I
    .locals 1

    iget v0, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->status:I

    return v0
.end method

.method public final getTaskId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->taskId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTotalProgress()I
    .locals 1

    iget v0, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->totalProgress:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->progress:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->totalProgress:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->status:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setProgress(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->progress:I

    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->status:I

    return-void
.end method

.method public final setTaskId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->taskId:Ljava/lang/String;

    return-void
.end method

.method public final setTotalProgress(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->totalProgress:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->taskId:Ljava/lang/String;

    iget v1, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->progress:I

    iget v2, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->totalProgress:I

    iget v3, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->status:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PalmPayTaskInfo(taskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", progress="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", totalProgress="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", status="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->taskId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->progress:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->totalProgress:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
