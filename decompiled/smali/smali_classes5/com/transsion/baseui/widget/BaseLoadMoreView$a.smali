.class public final Lcom/transsion/baseui/widget/BaseLoadMoreView$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/baseui/widget/BaseLoadMoreView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/baseui/widget/BaseLoadMoreView$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lq6/a;
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/baseui/widget/BaseLoadMoreView;

    invoke-direct {v0, p1}, Lcom/transsion/baseui/widget/BaseLoadMoreView;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Lq6/a;
    .locals 0

    new-array p1, p1, [Lq6/a;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/baseui/widget/BaseLoadMoreView$a;->a(Landroid/os/Parcel;)Lq6/a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/baseui/widget/BaseLoadMoreView$a;->b(I)[Lq6/a;

    move-result-object p1

    return-object p1
.end method
