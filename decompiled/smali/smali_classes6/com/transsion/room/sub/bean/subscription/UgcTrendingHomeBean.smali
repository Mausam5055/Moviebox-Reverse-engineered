.class public final Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B!\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\u0011\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u00c6\u0003J%\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u00c6\u0001J\u0006\u0010\u0014\u001a\u00020\u0015J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u0015H\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001J\u0016\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0015R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\""
    }
    d2 = {
        "Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;",
        "Landroid/os/Parcelable;",
        "pager",
        "Lcom/transsion/room/sub/bean/subscription/PagerTrending;",
        "items",
        "",
        "Lcom/transsion/room/sub/bean/subscription/ItemTrending;",
        "<init>",
        "(Lcom/transsion/room/sub/bean/subscription/PagerTrending;Ljava/util/List;)V",
        "getPager",
        "()Lcom/transsion/room/sub/bean/subscription/PagerTrending;",
        "setPager",
        "(Lcom/transsion/room/sub/bean/subscription/PagerTrending;)V",
        "getItems",
        "()Ljava/util/List;",
        "setItems",
        "(Ljava/util/List;)V",
        "component1",
        "component2",
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
        "Room_psRelease"
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
            "Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/room/sub/bean/subscription/ItemTrending;",
            ">;"
        }
    .end annotation
.end field

.field private pager:Lcom/transsion/room/sub/bean/subscription/PagerTrending;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean$a;

    invoke-direct {v0}, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean$a;-><init>()V

    sput-object v0, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/room/sub/bean/subscription/PagerTrending;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/room/sub/bean/subscription/PagerTrending;",
            "Ljava/util/List<",
            "Lcom/transsion/room/sub/bean/subscription/ItemTrending;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;->pager:Lcom/transsion/room/sub/bean/subscription/PagerTrending;

    iput-object p2, p0, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;->items:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/room/sub/bean/subscription/PagerTrending;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 8

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    new-instance p1, Lcom/transsion/room/sub/bean/subscription/PagerTrending;

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/transsion/room/sub/bean/subscription/PagerTrending;-><init>(ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;-><init>(Lcom/transsion/room/sub/bean/subscription/PagerTrending;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;Lcom/transsion/room/sub/bean/subscription/PagerTrending;Ljava/util/List;ILjava/lang/Object;)Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;->pager:Lcom/transsion/room/sub/bean/subscription/PagerTrending;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;->items:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;->copy(Lcom/transsion/room/sub/bean/subscription/PagerTrending;Ljava/util/List;)Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/transsion/room/sub/bean/subscription/PagerTrending;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;->pager:Lcom/transsion/room/sub/bean/subscription/PagerTrending;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/room/sub/bean/subscription/ItemTrending;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;->items:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Lcom/transsion/room/sub/bean/subscription/PagerTrending;Ljava/util/List;)Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/room/sub/bean/subscription/PagerTrending;",
            "Ljava/util/List<",
            "Lcom/transsion/room/sub/bean/subscription/ItemTrending;",
            ">;)",
            "Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;"
        }
    .end annotation

    const-string v0, "pager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;

    invoke-direct {v0, p1, p2}, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;-><init>(Lcom/transsion/room/sub/bean/subscription/PagerTrending;Ljava/util/List;)V

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
    instance-of v1, p1, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;

    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;->pager:Lcom/transsion/room/sub/bean/subscription/PagerTrending;

    iget-object v3, p1, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;->pager:Lcom/transsion/room/sub/bean/subscription/PagerTrending;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;->items:Ljava/util/List;

    iget-object p1, p1, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;->items:Ljava/util/List;

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
            "Lcom/transsion/room/sub/bean/subscription/ItemTrending;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;->items:Ljava/util/List;

    return-object v0
.end method

.method public final getPager()Lcom/transsion/room/sub/bean/subscription/PagerTrending;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;->pager:Lcom/transsion/room/sub/bean/subscription/PagerTrending;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;->pager:Lcom/transsion/room/sub/bean/subscription/PagerTrending;

    invoke-virtual {v0}, Lcom/transsion/room/sub/bean/subscription/PagerTrending;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;->items:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/room/sub/bean/subscription/ItemTrending;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;->items:Ljava/util/List;

    return-void
.end method

.method public final setPager(Lcom/transsion/room/sub/bean/subscription/PagerTrending;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;->pager:Lcom/transsion/room/sub/bean/subscription/PagerTrending;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;->pager:Lcom/transsion/room/sub/bean/subscription/PagerTrending;

    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;->items:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UgcTrendingHomeBean(pager="

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
    .locals 2

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;->pager:Lcom/transsion/room/sub/bean/subscription/PagerTrending;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/room/sub/bean/subscription/PagerTrending;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;->items:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/room/sub/bean/subscription/ItemTrending;

    invoke-virtual {v1, p1, p2}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
