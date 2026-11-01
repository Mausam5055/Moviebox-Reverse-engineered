.class public final Lcom/transsion/room/sub/bean/likes/LikeUgcVideoBean$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/room/sub/bean/likes/LikeUgcVideoBean;
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
.method public final a(Landroid/os/Parcel;)Lcom/transsion/room/sub/bean/likes/LikeUgcVideoBean;
    .locals 2

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/room/sub/bean/likes/LikeUgcVideoBean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/transsion/room/sub/bean/likes/LikeUgcVideoBean;-><init>(ZI)V

    return-object v0
.end method

.method public final b(I)[Lcom/transsion/room/sub/bean/likes/LikeUgcVideoBean;
    .locals 0

    new-array p1, p1, [Lcom/transsion/room/sub/bean/likes/LikeUgcVideoBean;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/room/sub/bean/likes/LikeUgcVideoBean$a;->a(Landroid/os/Parcel;)Lcom/transsion/room/sub/bean/likes/LikeUgcVideoBean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/room/sub/bean/likes/LikeUgcVideoBean$a;->b(I)[Lcom/transsion/room/sub/bean/likes/LikeUgcVideoBean;

    move-result-object p1

    return-object p1
.end method
