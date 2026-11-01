.class public final Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;
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
.method public final a(Landroid/os/Parcel;)Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;
    .locals 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public final b(I)[Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;
    .locals 0

    new-array p1, p1, [Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData$a;->a(Landroid/os/Parcel;)Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData$a;->b(I)[Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;

    move-result-object p1

    return-object p1
.end method
