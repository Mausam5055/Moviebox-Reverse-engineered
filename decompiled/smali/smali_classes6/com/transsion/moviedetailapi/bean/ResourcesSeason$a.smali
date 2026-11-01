.class public final Lcom/transsion/moviedetailapi/bean/ResourcesSeason$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/moviedetailapi/bean/ResourcesSeason;
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
.method public final a(Landroid/os/Parcel;)Lcom/transsion/moviedetailapi/bean/ResourcesSeason;
    .locals 8

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move-object v5, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v1

    :goto_0
    if-eq v6, v0, :cond_1

    sget-object v7, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v6, v0

    goto :goto_2

    :cond_2
    move v6, v1

    :goto_2
    const-class v0, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lcom/transsion/baselib/db/download/VipInfo;

    new-instance p1, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;-><init>(IILjava/lang/String;Ljava/util/List;ZLcom/transsion/baselib/db/download/VipInfo;)V

    return-object p1
.end method

.method public final b(I)[Lcom/transsion/moviedetailapi/bean/ResourcesSeason;
    .locals 0

    new-array p1, p1, [Lcom/transsion/moviedetailapi/bean/ResourcesSeason;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason$a;->a(Landroid/os/Parcel;)Lcom/transsion/moviedetailapi/bean/ResourcesSeason;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason$a;->b(I)[Lcom/transsion/moviedetailapi/bean/ResourcesSeason;

    move-result-object p1

    return-object p1
.end method
