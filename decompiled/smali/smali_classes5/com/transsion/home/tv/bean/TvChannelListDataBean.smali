.class public final Lcom/transsion/home/tv/bean/TvChannelListDataBean;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B!\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0011\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u00c6\u0003J\'\u0010\u001a\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u00c6\u0001J\u0006\u0010\u001b\u001a\u00020\u001cJ\u0013\u0010\u001d\u001a\u00020\u00122\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u00d6\u0003J\t\u0010 \u001a\u00020\u001cH\u00d6\u0001J\t\u0010!\u001a\u00020\"H\u00d6\u0001J\u0016\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u001cR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R \u0010\u0011\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0011\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006("
    }
    d2 = {
        "Lcom/transsion/home/tv/bean/TvChannelListDataBean;",
        "Landroid/os/Parcelable;",
        "pager",
        "Lcom/transsion/home/tv/bean/Pager;",
        "items",
        "",
        "Lcom/transsion/home/tv/bean/TvChannelItem;",
        "<init>",
        "(Lcom/transsion/home/tv/bean/Pager;Ljava/util/List;)V",
        "getPager",
        "()Lcom/transsion/home/tv/bean/Pager;",
        "setPager",
        "(Lcom/transsion/home/tv/bean/Pager;)V",
        "getItems",
        "()Ljava/util/List;",
        "setItems",
        "(Ljava/util/List;)V",
        "isRefresh",
        "",
        "isRefresh$annotations",
        "()V",
        "()Z",
        "setRefresh",
        "(Z)V",
        "component1",
        "component2",
        "copy",
        "describeContents",
        "",
        "equals",
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
            "Lcom/transsion/home/tv/bean/TvChannelListDataBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient isRefresh:Z

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/home/tv/bean/TvChannelItem;",
            ">;"
        }
    .end annotation
.end field

.field private pager:Lcom/transsion/home/tv/bean/Pager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/home/tv/bean/TvChannelListDataBean$a;

    invoke-direct {v0}, Lcom/transsion/home/tv/bean/TvChannelListDataBean$a;-><init>()V

    sput-object v0, Lcom/transsion/home/tv/bean/TvChannelListDataBean;->CREATOR:Landroid/os/Parcelable$Creator;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/home/tv/bean/TvChannelListDataBean;->$stable:I

    return-void
.end method

.method public constructor <init>(Lcom/transsion/home/tv/bean/Pager;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/home/tv/bean/Pager;",
            "Ljava/util/List<",
            "Lcom/transsion/home/tv/bean/TvChannelItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/tv/bean/TvChannelListDataBean;->pager:Lcom/transsion/home/tv/bean/Pager;

    iput-object p2, p0, Lcom/transsion/home/tv/bean/TvChannelListDataBean;->items:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/home/tv/bean/TvChannelListDataBean;Lcom/transsion/home/tv/bean/Pager;Ljava/util/List;ILjava/lang/Object;)Lcom/transsion/home/tv/bean/TvChannelListDataBean;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/transsion/home/tv/bean/TvChannelListDataBean;->pager:Lcom/transsion/home/tv/bean/Pager;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/transsion/home/tv/bean/TvChannelListDataBean;->items:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/tv/bean/TvChannelListDataBean;->copy(Lcom/transsion/home/tv/bean/Pager;Ljava/util/List;)Lcom/transsion/home/tv/bean/TvChannelListDataBean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic isRefresh$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final component1()Lcom/transsion/home/tv/bean/Pager;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/tv/bean/TvChannelListDataBean;->pager:Lcom/transsion/home/tv/bean/Pager;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/home/tv/bean/TvChannelItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/home/tv/bean/TvChannelListDataBean;->items:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Lcom/transsion/home/tv/bean/Pager;Ljava/util/List;)Lcom/transsion/home/tv/bean/TvChannelListDataBean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/home/tv/bean/Pager;",
            "Ljava/util/List<",
            "Lcom/transsion/home/tv/bean/TvChannelItem;",
            ">;)",
            "Lcom/transsion/home/tv/bean/TvChannelListDataBean;"
        }
    .end annotation

    new-instance v0, Lcom/transsion/home/tv/bean/TvChannelListDataBean;

    invoke-direct {v0, p1, p2}, Lcom/transsion/home/tv/bean/TvChannelListDataBean;-><init>(Lcom/transsion/home/tv/bean/Pager;Ljava/util/List;)V

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
    instance-of v1, p1, Lcom/transsion/home/tv/bean/TvChannelListDataBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/home/tv/bean/TvChannelListDataBean;

    iget-object v1, p0, Lcom/transsion/home/tv/bean/TvChannelListDataBean;->pager:Lcom/transsion/home/tv/bean/Pager;

    iget-object v3, p1, Lcom/transsion/home/tv/bean/TvChannelListDataBean;->pager:Lcom/transsion/home/tv/bean/Pager;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/home/tv/bean/TvChannelListDataBean;->items:Ljava/util/List;

    iget-object p1, p1, Lcom/transsion/home/tv/bean/TvChannelListDataBean;->items:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/home/tv/bean/TvChannelItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/home/tv/bean/TvChannelListDataBean;->items:Ljava/util/List;

    return-object v0
.end method

.method public final getPager()Lcom/transsion/home/tv/bean/Pager;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/tv/bean/TvChannelListDataBean;->pager:Lcom/transsion/home/tv/bean/Pager;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/tv/bean/TvChannelListDataBean;->pager:Lcom/transsion/home/tv/bean/Pager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/home/tv/bean/Pager;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/home/tv/bean/TvChannelListDataBean;->items:Ljava/util/List;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final isRefresh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/home/tv/bean/TvChannelListDataBean;->isRefresh:Z

    return v0
.end method

.method public final setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/home/tv/bean/TvChannelItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/home/tv/bean/TvChannelListDataBean;->items:Ljava/util/List;

    return-void
.end method

.method public final setPager(Lcom/transsion/home/tv/bean/Pager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/tv/bean/TvChannelListDataBean;->pager:Lcom/transsion/home/tv/bean/Pager;

    return-void
.end method

.method public final setRefresh(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/home/tv/bean/TvChannelListDataBean;->isRefresh:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/transsion/home/tv/bean/TvChannelListDataBean;->pager:Lcom/transsion/home/tv/bean/Pager;

    iget-object v1, p0, Lcom/transsion/home/tv/bean/TvChannelListDataBean;->items:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TvChannelListDataBean(pager="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", items="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/home/tv/bean/TvChannelListDataBean;->pager:Lcom/transsion/home/tv/bean/Pager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/transsion/home/tv/bean/Pager;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-object v0, p0, Lcom/transsion/home/tv/bean/TvChannelListDataBean;->items:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/home/tv/bean/TvChannelItem;

    invoke-virtual {v1, p1, p2}, Lcom/transsion/home/tv/bean/TvChannelItem;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method
