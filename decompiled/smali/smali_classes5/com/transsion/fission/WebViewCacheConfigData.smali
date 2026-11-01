.class public Lcom/transsion/fission/WebViewCacheConfigData;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0017\u0018\u00002\u00020\u0001B+\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0011H\u0016R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\t\"\u0004\u0008\r\u0010\u000bR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\t\"\u0004\u0008\u000f\u0010\u000b\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/transsion/fission/WebViewCacheConfigData;",
        "Landroid/os/Parcelable;",
        "htmlUrl",
        "",
        "zipUrl",
        "zipMd5",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getHtmlUrl",
        "()Ljava/lang/String;",
        "setHtmlUrl",
        "(Ljava/lang/String;)V",
        "getZipUrl",
        "setZipUrl",
        "getZipMd5",
        "setZipMd5",
        "describeContents",
        "",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "Fission_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/fission/WebViewCacheConfigData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private htmlUrl:Ljava/lang/String;

.field private zipMd5:Ljava/lang/String;

.field private zipUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/fission/WebViewCacheConfigData$a;

    invoke-direct {v0}, Lcom/transsion/fission/WebViewCacheConfigData$a;-><init>()V

    sput-object v0, Lcom/transsion/fission/WebViewCacheConfigData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/fission/WebViewCacheConfigData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/fission/WebViewCacheConfigData;->htmlUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/fission/WebViewCacheConfigData;->zipUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/fission/WebViewCacheConfigData;->zipMd5:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/fission/WebViewCacheConfigData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHtmlUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/fission/WebViewCacheConfigData;->htmlUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getZipMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/fission/WebViewCacheConfigData;->zipMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getZipUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/fission/WebViewCacheConfigData;->zipUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setHtmlUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/fission/WebViewCacheConfigData;->htmlUrl:Ljava/lang/String;

    return-void
.end method

.method public setZipMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/fission/WebViewCacheConfigData;->zipMd5:Ljava/lang/String;

    return-void
.end method

.method public setZipUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/fission/WebViewCacheConfigData;->zipUrl:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/fission/WebViewCacheConfigData;->htmlUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/fission/WebViewCacheConfigData;->zipUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/fission/WebViewCacheConfigData;->zipMd5:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
