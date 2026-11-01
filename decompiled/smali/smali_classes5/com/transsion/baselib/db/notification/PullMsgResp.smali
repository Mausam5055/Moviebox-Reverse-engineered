.class public final Lcom/transsion/baselib/db/notification/PullMsgResp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B7\u0012\u0010\u0010\u0002\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0012\u0008\u0002\u0010\u0007\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0013\u0010\u0014\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u0013\u0010\u0016\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003H\u00c6\u0003J=\u0010\u0017\u001a\u00020\u00002\u0012\u0008\u0002\u0010\u0002\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0012\u0008\u0002\u0010\u0007\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0006\u0010\u0018\u001a\u00020\u0019J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u0019H\u00d6\u0001J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001J\u0016\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0019R$\u0010\u0002\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R$\u0010\u0007\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000b\"\u0004\u0008\u0013\u0010\r\u00a8\u0006&"
    }
    d2 = {
        "Lcom/transsion/baselib/db/notification/PullMsgResp;",
        "Landroid/os/Parcelable;",
        "items",
        "",
        "Lcom/transsion/baselib/db/notification/MsgBean;",
        "config",
        "Lcom/transsion/baselib/db/notification/MsgConfig;",
        "seekingItems",
        "<init>",
        "(Ljava/util/List;Lcom/transsion/baselib/db/notification/MsgConfig;Ljava/util/List;)V",
        "getItems",
        "()Ljava/util/List;",
        "setItems",
        "(Ljava/util/List;)V",
        "getConfig",
        "()Lcom/transsion/baselib/db/notification/MsgConfig;",
        "setConfig",
        "(Lcom/transsion/baselib/db/notification/MsgConfig;)V",
        "getSeekingItems",
        "setSeekingItems",
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
        "",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "BaseLib_psRelease"
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
            "Lcom/transsion/baselib/db/notification/PullMsgResp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private config:Lcom/transsion/baselib/db/notification/MsgConfig;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/baselib/db/notification/MsgBean;",
            ">;"
        }
    .end annotation
.end field

.field private seekingItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/baselib/db/notification/MsgBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/baselib/db/notification/PullMsgResp$a;

    invoke-direct {v0}, Lcom/transsion/baselib/db/notification/PullMsgResp$a;-><init>()V

    sput-object v0, Lcom/transsion/baselib/db/notification/PullMsgResp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/transsion/baselib/db/notification/MsgConfig;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/baselib/db/notification/MsgBean;",
            ">;",
            "Lcom/transsion/baselib/db/notification/MsgConfig;",
            "Ljava/util/List<",
            "Lcom/transsion/baselib/db/notification/MsgBean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baselib/db/notification/PullMsgResp;->items:Ljava/util/List;

    iput-object p2, p0, Lcom/transsion/baselib/db/notification/PullMsgResp;->config:Lcom/transsion/baselib/db/notification/MsgConfig;

    iput-object p3, p0, Lcom/transsion/baselib/db/notification/PullMsgResp;->seekingItems:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/transsion/baselib/db/notification/MsgConfig;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/baselib/db/notification/PullMsgResp;-><init>(Ljava/util/List;Lcom/transsion/baselib/db/notification/MsgConfig;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/baselib/db/notification/PullMsgResp;Ljava/util/List;Lcom/transsion/baselib/db/notification/MsgConfig;Ljava/util/List;ILjava/lang/Object;)Lcom/transsion/baselib/db/notification/PullMsgResp;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/transsion/baselib/db/notification/PullMsgResp;->items:Ljava/util/List;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/transsion/baselib/db/notification/PullMsgResp;->config:Lcom/transsion/baselib/db/notification/MsgConfig;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/transsion/baselib/db/notification/PullMsgResp;->seekingItems:Ljava/util/List;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/baselib/db/notification/PullMsgResp;->copy(Ljava/util/List;Lcom/transsion/baselib/db/notification/MsgConfig;Ljava/util/List;)Lcom/transsion/baselib/db/notification/PullMsgResp;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/baselib/db/notification/MsgBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/baselib/db/notification/PullMsgResp;->items:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Lcom/transsion/baselib/db/notification/MsgConfig;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/notification/PullMsgResp;->config:Lcom/transsion/baselib/db/notification/MsgConfig;

    return-object v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/baselib/db/notification/MsgBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/baselib/db/notification/PullMsgResp;->seekingItems:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/util/List;Lcom/transsion/baselib/db/notification/MsgConfig;Ljava/util/List;)Lcom/transsion/baselib/db/notification/PullMsgResp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/baselib/db/notification/MsgBean;",
            ">;",
            "Lcom/transsion/baselib/db/notification/MsgConfig;",
            "Ljava/util/List<",
            "Lcom/transsion/baselib/db/notification/MsgBean;",
            ">;)",
            "Lcom/transsion/baselib/db/notification/PullMsgResp;"
        }
    .end annotation

    new-instance v0, Lcom/transsion/baselib/db/notification/PullMsgResp;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/baselib/db/notification/PullMsgResp;-><init>(Ljava/util/List;Lcom/transsion/baselib/db/notification/MsgConfig;Ljava/util/List;)V

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
    instance-of v1, p1, Lcom/transsion/baselib/db/notification/PullMsgResp;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/baselib/db/notification/PullMsgResp;

    iget-object v1, p0, Lcom/transsion/baselib/db/notification/PullMsgResp;->items:Ljava/util/List;

    iget-object v3, p1, Lcom/transsion/baselib/db/notification/PullMsgResp;->items:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/baselib/db/notification/PullMsgResp;->config:Lcom/transsion/baselib/db/notification/MsgConfig;

    iget-object v3, p1, Lcom/transsion/baselib/db/notification/PullMsgResp;->config:Lcom/transsion/baselib/db/notification/MsgConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/baselib/db/notification/PullMsgResp;->seekingItems:Ljava/util/List;

    iget-object p1, p1, Lcom/transsion/baselib/db/notification/PullMsgResp;->seekingItems:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getConfig()Lcom/transsion/baselib/db/notification/MsgConfig;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/notification/PullMsgResp;->config:Lcom/transsion/baselib/db/notification/MsgConfig;

    return-object v0
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/baselib/db/notification/MsgBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/baselib/db/notification/PullMsgResp;->items:Ljava/util/List;

    return-object v0
.end method

.method public final getSeekingItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/baselib/db/notification/MsgBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/baselib/db/notification/PullMsgResp;->seekingItems:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/baselib/db/notification/PullMsgResp;->items:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/baselib/db/notification/PullMsgResp;->config:Lcom/transsion/baselib/db/notification/MsgConfig;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/transsion/baselib/db/notification/MsgConfig;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/baselib/db/notification/PullMsgResp;->seekingItems:Ljava/util/List;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final setConfig(Lcom/transsion/baselib/db/notification/MsgConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baselib/db/notification/PullMsgResp;->config:Lcom/transsion/baselib/db/notification/MsgConfig;

    return-void
.end method

.method public final setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/baselib/db/notification/MsgBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/baselib/db/notification/PullMsgResp;->items:Ljava/util/List;

    return-void
.end method

.method public final setSeekingItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/baselib/db/notification/MsgBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/baselib/db/notification/PullMsgResp;->seekingItems:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/transsion/baselib/db/notification/PullMsgResp;->items:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/baselib/db/notification/PullMsgResp;->config:Lcom/transsion/baselib/db/notification/MsgConfig;

    iget-object v2, p0, Lcom/transsion/baselib/db/notification/PullMsgResp;->seekingItems:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PullMsgResp(items="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", config="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", seekingItems="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/baselib/db/notification/PullMsgResp;->items:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/baselib/db/notification/MsgBean;

    if-nez v3, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p1, p2}, Lcom/transsion/baselib/db/notification/MsgBean;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/transsion/baselib/db/notification/PullMsgResp;->config:Lcom/transsion/baselib/db/notification/MsgConfig;

    if-nez v0, :cond_3

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/transsion/baselib/db/notification/MsgConfig;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    iget-object v0, p0, Lcom/transsion/baselib/db/notification/PullMsgResp;->seekingItems:Ljava/util/List;

    if-nez v0, :cond_4

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/baselib/db/notification/MsgBean;

    if-nez v3, :cond_5

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p1, p2}, Lcom/transsion/baselib/db/notification/MsgBean;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_6
    :goto_4
    return-void
.end method
