.class public final Lcom/transsion/bean/lottery/LotteryUserActivityTitleBean$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/bean/lottery/LotteryUserActivityTitleBean;
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
.method public final a(Landroid/os/Parcel;)Lcom/transsion/bean/lottery/LotteryUserActivityTitleBean;
    .locals 4

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/bean/lottery/LotteryUserActivityTitleBean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/transsion/bean/lottery/LotteryUserActivityHighlightTextTitleBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Lcom/transsion/bean/lottery/LotteryUserActivityHighlightTextTitleBean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/transsion/bean/lottery/LotteryUserActivityHighlightTextTitleBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    check-cast v2, Lcom/transsion/bean/lottery/LotteryUserActivityHighlightTextTitleBean;

    invoke-direct {v0, v1, v2}, Lcom/transsion/bean/lottery/LotteryUserActivityTitleBean;-><init>(Lcom/transsion/bean/lottery/LotteryUserActivityHighlightTextTitleBean;Lcom/transsion/bean/lottery/LotteryUserActivityHighlightTextTitleBean;)V

    return-object v0
.end method

.method public final b(I)[Lcom/transsion/bean/lottery/LotteryUserActivityTitleBean;
    .locals 0

    new-array p1, p1, [Lcom/transsion/bean/lottery/LotteryUserActivityTitleBean;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/bean/lottery/LotteryUserActivityTitleBean$a;->a(Landroid/os/Parcel;)Lcom/transsion/bean/lottery/LotteryUserActivityTitleBean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/bean/lottery/LotteryUserActivityTitleBean$a;->b(I)[Lcom/transsion/bean/lottery/LotteryUserActivityTitleBean;

    move-result-object p1

    return-object p1
.end method
