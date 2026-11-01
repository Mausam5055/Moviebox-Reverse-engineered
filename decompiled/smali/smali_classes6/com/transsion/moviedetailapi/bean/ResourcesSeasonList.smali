.class public final Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B#\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u0011J\u0006\u0010\u0013\u001a\u00020\u0011J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\nJ\u0011\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u00c6\u0003J,\u0010\u0016\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0017J\u0006\u0010\u0018\u001a\u00020\u0003J\u0013\u0010\u0019\u001a\u00020\u00112\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001J\u0016\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0003R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\r\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006$"
    }
    d2 = {
        "Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;",
        "Landroid/os/Parcelable;",
        "subjectType",
        "",
        "seasons",
        "",
        "Lcom/transsion/moviedetailapi/bean/ResourcesSeason;",
        "<init>",
        "(Ljava/lang/Integer;Ljava/util/List;)V",
        "getSubjectType",
        "()Ljava/lang/Integer;",
        "setSubjectType",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getSeasons",
        "()Ljava/util/List;",
        "isMovie",
        "",
        "isSeries",
        "isNoSource",
        "component1",
        "component2",
        "copy",
        "(Ljava/lang/Integer;Ljava/util/List;)Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;",
        "describeContents",
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
        "MovieDetailApi_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final seasons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/ResourcesSeason;",
            ">;"
        }
    .end annotation
.end field

.field private subjectType:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList$a;

    invoke-direct {v0}, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList$a;-><init>()V

    sput-object v0, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/ResourcesSeason;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;->subjectType:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;->seasons:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;-><init>(Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;Ljava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;->subjectType:Ljava/lang/Integer;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;->seasons:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;->copy(Ljava/lang/Integer;Ljava/util/List;)Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;->subjectType:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/ResourcesSeason;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;->seasons:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/Integer;Ljava/util/List;)Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/ResourcesSeason;",
            ">;)",
            "Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;"
        }
    .end annotation

    new-instance v0, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;

    invoke-direct {v0, p1, p2}, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;-><init>(Ljava/lang/Integer;Ljava/util/List;)V

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
    instance-of v1, p1, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;

    iget-object v1, p0, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;->subjectType:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;->subjectType:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;->seasons:Ljava/util/List;

    iget-object p1, p1, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;->seasons:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getSeasons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/ResourcesSeason;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;->seasons:Ljava/util/List;

    return-object v0
.end method

.method public final getSubjectType()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;->subjectType:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;->subjectType:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;->seasons:Ljava/util/List;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final isMovie()Z
    .locals 4

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;->seasons:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getSe()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getMaxEp()I

    move-result v0

    if-nez v0, :cond_0

    move v1, v3

    :cond_0
    return v1
.end method

.method public final isNoSource()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;->seasons:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isSeries()Z
    .locals 5

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;->subjectType:Ljava/lang/Integer;

    sget-object v1, Lcom/transsion/moviedetailapi/SubjectType;->MOVIE:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;->seasons:Ljava/util/List;

    if-eqz v0, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getMaxEp()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    move v3, v2

    :cond_2
    return v3

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;->seasons:Ljava/util/List;

    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getSe()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getMaxEp()I

    move-result v1

    if-lez v1, :cond_4

    return v2

    :cond_5
    return v3
.end method

.method public final setSubjectType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;->subjectType:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;->subjectType:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;->seasons:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResourcesSeasonList(subjectType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", seasons="

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

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;->subjectType:Ljava/lang/Integer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;->seasons:Ljava/util/List;

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

    check-cast v1, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;

    invoke-virtual {v1, p1, p2}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method
