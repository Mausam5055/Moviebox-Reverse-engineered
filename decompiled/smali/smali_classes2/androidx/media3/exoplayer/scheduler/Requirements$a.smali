.class Landroidx/media3/exoplayer/scheduler/Requirements$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/scheduler/Requirements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroidx/media3/exoplayer/scheduler/Requirements;
    .locals 1

    new-instance v0, Landroidx/media3/exoplayer/scheduler/Requirements;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/scheduler/Requirements;-><init>(I)V

    return-object v0
.end method

.method public b(I)[Landroidx/media3/exoplayer/scheduler/Requirements;
    .locals 0

    new-array p1, p1, [Landroidx/media3/exoplayer/scheduler/Requirements;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/scheduler/Requirements$a;->a(Landroid/os/Parcel;)Landroidx/media3/exoplayer/scheduler/Requirements;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/scheduler/Requirements$a;->b(I)[Landroidx/media3/exoplayer/scheduler/Requirements;

    move-result-object p1

    return-object p1
.end method
