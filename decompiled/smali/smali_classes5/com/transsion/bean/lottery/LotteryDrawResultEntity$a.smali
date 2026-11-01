.class public final Lcom/transsion/bean/lottery/LotteryDrawResultEntity$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/bean/lottery/LotteryDrawResultEntity;
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
.method public final a(Landroid/os/Parcel;)Lcom/transsion/bean/lottery/LotteryDrawResultEntity;
    .locals 2

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/bean/lottery/LotteryDrawResultEntity;

    sget-object v1, Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;

    invoke-direct {v0, p1}, Lcom/transsion/bean/lottery/LotteryDrawResultEntity;-><init>(Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;)V

    return-object v0
.end method

.method public final b(I)[Lcom/transsion/bean/lottery/LotteryDrawResultEntity;
    .locals 0

    new-array p1, p1, [Lcom/transsion/bean/lottery/LotteryDrawResultEntity;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/bean/lottery/LotteryDrawResultEntity$a;->a(Landroid/os/Parcel;)Lcom/transsion/bean/lottery/LotteryDrawResultEntity;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/bean/lottery/LotteryDrawResultEntity$a;->b(I)[Lcom/transsion/bean/lottery/LotteryDrawResultEntity;

    move-result-object p1

    return-object p1
.end method
