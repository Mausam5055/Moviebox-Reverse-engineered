.class public final Lcom/transsion/search_pugc/bean/SearchSuggestItem;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J)\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001J\u0006\u0010\u0012\u001a\u00020\u0013J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u0003H\u00d6\u0001J\u0016\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0013R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/transsion/search_pugc/bean/SearchSuggestItem;",
        "Landroid/os/Parcelable;",
        "topicType",
        "",
        "word",
        "verticalRank",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;)V",
        "getTopicType",
        "()Ljava/lang/String;",
        "getWord",
        "getVerticalRank",
        "()Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;",
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
        "Search_psRelease"
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
            "Lcom/transsion/search_pugc/bean/SearchSuggestItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final topicType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "topicType"
    .end annotation
.end field

.field private final verticalRank:Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "verticalRank"
    .end annotation
.end field

.field private final word:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "word"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/search_pugc/bean/SearchSuggestItem$a;

    invoke-direct {v0}, Lcom/transsion/search_pugc/bean/SearchSuggestItem$a;-><init>()V

    sput-object v0, Lcom/transsion/search_pugc/bean/SearchSuggestItem;->CREATOR:Landroid/os/Parcelable$Creator;

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

    invoke-direct/range {v0 .. v5}, Lcom/transsion/search_pugc/bean/SearchSuggestItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;)V
    .locals 1

    const-string v0, "topicType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "word"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/search_pugc/bean/SearchSuggestItem;->topicType:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/search_pugc/bean/SearchSuggestItem;->word:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/search_pugc/bean/SearchSuggestItem;->verticalRank:Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const-string v0, ""

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/search_pugc/bean/SearchSuggestItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/search_pugc/bean/SearchSuggestItem;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;ILjava/lang/Object;)Lcom/transsion/search_pugc/bean/SearchSuggestItem;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/transsion/search_pugc/bean/SearchSuggestItem;->topicType:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/transsion/search_pugc/bean/SearchSuggestItem;->word:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/transsion/search_pugc/bean/SearchSuggestItem;->verticalRank:Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/search_pugc/bean/SearchSuggestItem;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;)Lcom/transsion/search_pugc/bean/SearchSuggestItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search_pugc/bean/SearchSuggestItem;->topicType:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search_pugc/bean/SearchSuggestItem;->word:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search_pugc/bean/SearchSuggestItem;->verticalRank:Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;)Lcom/transsion/search_pugc/bean/SearchSuggestItem;
    .locals 1

    const-string v0, "topicType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "word"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/search_pugc/bean/SearchSuggestItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/search_pugc/bean/SearchSuggestItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;)V

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
    instance-of v1, p1, Lcom/transsion/search_pugc/bean/SearchSuggestItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/search_pugc/bean/SearchSuggestItem;

    iget-object v1, p0, Lcom/transsion/search_pugc/bean/SearchSuggestItem;->topicType:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/search_pugc/bean/SearchSuggestItem;->topicType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/search_pugc/bean/SearchSuggestItem;->word:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/search_pugc/bean/SearchSuggestItem;->word:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/search_pugc/bean/SearchSuggestItem;->verticalRank:Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;

    iget-object p1, p1, Lcom/transsion/search_pugc/bean/SearchSuggestItem;->verticalRank:Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getTopicType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search_pugc/bean/SearchSuggestItem;->topicType:Ljava/lang/String;

    return-object v0
.end method

.method public final getVerticalRank()Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search_pugc/bean/SearchSuggestItem;->verticalRank:Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;

    return-object v0
.end method

.method public final getWord()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search_pugc/bean/SearchSuggestItem;->word:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/search_pugc/bean/SearchSuggestItem;->topicType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/search_pugc/bean/SearchSuggestItem;->word:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/search_pugc/bean/SearchSuggestItem;->verticalRank:Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/transsion/search_pugc/bean/SearchSuggestItem;->topicType:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/search_pugc/bean/SearchSuggestItem;->word:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/search_pugc/bean/SearchSuggestItem;->verticalRank:Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SearchSuggestItem(topicType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", word="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", verticalRank="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/search_pugc/bean/SearchSuggestItem;->topicType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/search_pugc/bean/SearchSuggestItem;->word:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/search_pugc/bean/SearchSuggestItem;->verticalRank:Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
