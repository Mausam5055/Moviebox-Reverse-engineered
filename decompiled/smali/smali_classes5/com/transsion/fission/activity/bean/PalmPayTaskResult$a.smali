.class public final Lcom/transsion/fission/activity/bean/PalmPayTaskResult$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/fission/activity/bean/PalmPayTaskResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcel;)Lcom/transsion/fission/activity/bean/PalmPayTaskResult;
    .locals 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;

    const-class v2, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/transsion/bean/HomePopupInfo;

    invoke-direct {v0, v1, p1}, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;-><init>(Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;Lcom/transsion/bean/HomePopupInfo;)V

    return-object v0
.end method

.method public final b(I)[Lcom/transsion/fission/activity/bean/PalmPayTaskResult;
    .locals 0

    new-array p1, p1, [Lcom/transsion/fission/activity/bean/PalmPayTaskResult;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/fission/activity/bean/PalmPayTaskResult$a;->a(Landroid/os/Parcel;)Lcom/transsion/fission/activity/bean/PalmPayTaskResult;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/fission/activity/bean/PalmPayTaskResult$a;->b(I)[Lcom/transsion/fission/activity/bean/PalmPayTaskResult;

    move-result-object p1

    return-object p1
.end method
