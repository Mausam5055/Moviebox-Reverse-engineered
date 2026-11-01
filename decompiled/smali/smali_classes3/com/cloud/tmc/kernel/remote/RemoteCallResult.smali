.class public Lcom/cloud/tmc/kernel/remote/RemoteCallResult;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cloud/tmc/kernel/remote/RemoteCallResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isError:Z

.field private value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/kernel/remote/RemoteCallResult$1;

    invoke-direct {v0}, Lcom/cloud/tmc/kernel/remote/RemoteCallResult$1;-><init>()V

    sput-object v0, Lcom/cloud/tmc/kernel/remote/RemoteCallResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/tmc/kernel/remote/RemoteCallResult;->isError:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/cloud/tmc/kernel/remote/RemoteCallResult;->isError:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/kernel/remote/RemoteCallResult;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/tmc/kernel/remote/RemoteCallResult;->isError:Z

    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/kernel/remote/RemoteCallResult;->isError:Z

    :cond_0
    iput-object p1, p0, Lcom/cloud/tmc/kernel/remote/RemoteCallResult;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/remote/RemoteCallResult;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public isError()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/kernel/remote/RemoteCallResult;->isError:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-boolean p2, p0, Lcom/cloud/tmc/kernel/remote/RemoteCallResult;->isError:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/cloud/tmc/kernel/remote/RemoteCallResult;->value:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
