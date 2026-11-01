.class public final Lcom/transsion/shorttv/_channel/model/ShortTvCategoryItemBean$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/shorttv/_channel/model/ShortTvCategoryItemBean;
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
.method public final a(Landroid/os/Parcel;)Lcom/transsion/shorttv/_channel/model/ShortTvCategoryItemBean;
    .locals 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/shorttv/_channel/model/ShortTvCategoryItemBean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/bean/Subject;

    invoke-direct {v0, v1, v2, p1}, Lcom/transsion/shorttv/_channel/model/ShortTvCategoryItemBean;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;)V

    return-object v0
.end method

.method public final b(I)[Lcom/transsion/shorttv/_channel/model/ShortTvCategoryItemBean;
    .locals 0

    new-array p1, p1, [Lcom/transsion/shorttv/_channel/model/ShortTvCategoryItemBean;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/shorttv/_channel/model/ShortTvCategoryItemBean$a;->a(Landroid/os/Parcel;)Lcom/transsion/shorttv/_channel/model/ShortTvCategoryItemBean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/shorttv/_channel/model/ShortTvCategoryItemBean$a;->b(I)[Lcom/transsion/shorttv/_channel/model/ShortTvCategoryItemBean;

    move-result-object p1

    return-object p1
.end method
