.class public final Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;
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
.method public final a(Landroid/os/Parcel;)Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;
    .locals 8

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/bean/lottery/LotteryUserActivityInfoActivityBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    move-object v3, v0

    check-cast v3, Lcom/transsion/bean/lottery/LotteryUserActivityInfoActivityBean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move-object v4, v1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v5, v2

    :goto_1
    if-eq v5, v0, :cond_2

    sget-object v6, Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceItemsBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_3

    :cond_3
    sget-object v0, Lcom/transsion/bean/lottery/LotteryUserActivityInfoUserLotteryBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    :goto_3
    move-object v5, v0

    check-cast v5, Lcom/transsion/bean/lottery/LotteryUserActivityInfoUserLotteryBean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_4

    move-object v6, v1

    goto :goto_5

    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_4
    if-eq v2, v0, :cond_5

    sget-object v7, Lcom/transsion/bean/lottery/LotteryUserActivityInfoDrawResultsBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    sget-object v0, Lcom/transsion/bean/lottery/LotteryUserActivityTitleBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    :goto_6
    move-object v7, v1

    check-cast v7, Lcom/transsion/bean/lottery/LotteryUserActivityTitleBean;

    new-instance p1, Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;-><init>(Lcom/transsion/bean/lottery/LotteryUserActivityInfoActivityBean;Ljava/util/List;Lcom/transsion/bean/lottery/LotteryUserActivityInfoUserLotteryBean;Ljava/util/List;Lcom/transsion/bean/lottery/LotteryUserActivityTitleBean;)V

    return-object p1
.end method

.method public final b(I)[Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;
    .locals 0

    new-array p1, p1, [Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity$a;->a(Landroid/os/Parcel;)Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity$a;->b(I)[Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;

    move-result-object p1

    return-object p1
.end method
