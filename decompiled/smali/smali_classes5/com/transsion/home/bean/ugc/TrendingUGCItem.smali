.class public final Lcom/transsion/home/bean/ugc/TrendingUGCItem;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B%\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J-\u0010\u0019\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\u0006\u0010\u001a\u001a\u00020\u001bJ\u0013\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u00d6\u0003J\t\u0010 \u001a\u00020\u001bH\u00d6\u0001J\t\u0010!\u001a\u00020\u0003H\u00d6\u0001J\u0016\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u001bR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/transsion/home/bean/ugc/TrendingUGCItem;",
        "Landroid/os/Parcelable;",
        "style",
        "",
        "ugcVideo",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;",
        "operateItem",
        "Lcom/transsion/home/bean/OperateItem;",
        "<init>",
        "(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/home/bean/OperateItem;)V",
        "getStyle",
        "()Ljava/lang/String;",
        "setStyle",
        "(Ljava/lang/String;)V",
        "getUgcVideo",
        "()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;",
        "setUgcVideo",
        "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V",
        "getOperateItem",
        "()Lcom/transsion/home/bean/OperateItem;",
        "setOperateItem",
        "(Lcom/transsion/home/bean/OperateItem;)V",
        "component1",
        "component2",
        "component3",
        "copy",
        "describeContents",
        "",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "Home_psRelease"
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
.field public static final $stable:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/home/bean/ugc/TrendingUGCItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private operateItem:Lcom/transsion/home/bean/OperateItem;

.field private style:Ljava/lang/String;

.field private ugcVideo:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/home/bean/ugc/TrendingUGCItem$a;

    invoke-direct {v0}, Lcom/transsion/home/bean/ugc/TrendingUGCItem$a;-><init>()V

    sput-object v0, Lcom/transsion/home/bean/ugc/TrendingUGCItem;->CREATOR:Landroid/os/Parcelable$Creator;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/home/bean/ugc/TrendingUGCItem;->$stable:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/home/bean/OperateItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/bean/ugc/TrendingUGCItem;->style:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/home/bean/ugc/TrendingUGCItem;->ugcVideo:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    iput-object p3, p0, Lcom/transsion/home/bean/ugc/TrendingUGCItem;->operateItem:Lcom/transsion/home/bean/OperateItem;

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/home/bean/ugc/TrendingUGCItem;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/home/bean/OperateItem;ILjava/lang/Object;)Lcom/transsion/home/bean/ugc/TrendingUGCItem;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/transsion/home/bean/ugc/TrendingUGCItem;->style:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/transsion/home/bean/ugc/TrendingUGCItem;->ugcVideo:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/transsion/home/bean/ugc/TrendingUGCItem;->operateItem:Lcom/transsion/home/bean/OperateItem;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/home/bean/ugc/TrendingUGCItem;->copy(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/home/bean/OperateItem;)Lcom/transsion/home/bean/ugc/TrendingUGCItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/bean/ugc/TrendingUGCItem;->style:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/bean/ugc/TrendingUGCItem;->ugcVideo:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    return-object v0
.end method

.method public final component3()Lcom/transsion/home/bean/OperateItem;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/bean/ugc/TrendingUGCItem;->operateItem:Lcom/transsion/home/bean/OperateItem;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/home/bean/OperateItem;)Lcom/transsion/home/bean/ugc/TrendingUGCItem;
    .locals 1

    new-instance v0, Lcom/transsion/home/bean/ugc/TrendingUGCItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/home/bean/ugc/TrendingUGCItem;-><init>(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/home/bean/OperateItem;)V

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/home/bean/ugc/TrendingUGCItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/home/bean/ugc/TrendingUGCItem;

    iget-object v1, p0, Lcom/transsion/home/bean/ugc/TrendingUGCItem;->style:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/home/bean/ugc/TrendingUGCItem;->style:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/home/bean/ugc/TrendingUGCItem;->ugcVideo:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    iget-object v3, p1, Lcom/transsion/home/bean/ugc/TrendingUGCItem;->ugcVideo:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/home/bean/ugc/TrendingUGCItem;->operateItem:Lcom/transsion/home/bean/OperateItem;

    iget-object p1, p1, Lcom/transsion/home/bean/ugc/TrendingUGCItem;->operateItem:Lcom/transsion/home/bean/OperateItem;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getOperateItem()Lcom/transsion/home/bean/OperateItem;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/bean/ugc/TrendingUGCItem;->operateItem:Lcom/transsion/home/bean/OperateItem;

    return-object v0
.end method

.method public final getStyle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/bean/ugc/TrendingUGCItem;->style:Ljava/lang/String;

    return-object v0
.end method

.method public final getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/bean/ugc/TrendingUGCItem;->ugcVideo:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/bean/ugc/TrendingUGCItem;->style:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/home/bean/ugc/TrendingUGCItem;->ugcVideo:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/home/bean/ugc/TrendingUGCItem;->operateItem:Lcom/transsion/home/bean/OperateItem;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/transsion/home/bean/OperateItem;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final setOperateItem(Lcom/transsion/home/bean/OperateItem;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/bean/ugc/TrendingUGCItem;->operateItem:Lcom/transsion/home/bean/OperateItem;

    return-void
.end method

.method public final setStyle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/bean/ugc/TrendingUGCItem;->style:Ljava/lang/String;

    return-void
.end method

.method public final setUgcVideo(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/bean/ugc/TrendingUGCItem;->ugcVideo:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/transsion/home/bean/ugc/TrendingUGCItem;->style:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/home/bean/ugc/TrendingUGCItem;->ugcVideo:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    iget-object v2, p0, Lcom/transsion/home/bean/ugc/TrendingUGCItem;->operateItem:Lcom/transsion/home/bean/OperateItem;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TrendingUGCItem(style="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ugcVideo="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", operateItem="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/home/bean/ugc/TrendingUGCItem;->style:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/home/bean/ugc/TrendingUGCItem;->ugcVideo:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/transsion/home/bean/ugc/TrendingUGCItem;->operateItem:Lcom/transsion/home/bean/OperateItem;

    if-nez v0, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/transsion/home/bean/OperateItem;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    return-void
.end method
