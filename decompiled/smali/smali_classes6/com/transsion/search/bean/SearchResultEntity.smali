.class public final Lcom/transsion/search/bean/SearchResultEntity;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001BQ\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0010\u0008\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005\u0012\u0010\u0008\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\t\u0010\u001f\u001a\u00020\u0003H\u00c6\u0003J\u0011\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u0011\u0010\"\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005H\u00c6\u0003J\u0011\u0010#\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0005H\u00c6\u0003JU\u0010$\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0010\u0008\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00052\u0010\u0008\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0005H\u00c6\u0001J\u0006\u0010%\u001a\u00020&J\u0013\u0010\'\u001a\u00020(2\u0008\u0010)\u001a\u0004\u0018\u00010*H\u00d6\u0003J\t\u0010+\u001a\u00020&H\u00d6\u0001J\t\u0010,\u001a\u00020\u0008H\u00d6\u0001J\u0016\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020&R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R(\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\"\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0014\"\u0004\u0008\u001c\u0010\u0016R\"\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0014\"\u0004\u0008\u001e\u0010\u0016\u00a8\u00062"
    }
    d2 = {
        "Lcom/transsion/search/bean/SearchResultEntity;",
        "Landroid/os/Parcelable;",
        "pager",
        "Lcom/transsion/search/bean/Pager;",
        "results",
        "",
        "Lcom/transsion/search/bean/SearchList;",
        "tabId",
        "",
        "tabs",
        "Lcom/transsion/search/bean/TabItem;",
        "convertData",
        "Lcom/transsion/search/fragment/result/ResultWrapData;",
        "<init>",
        "(Lcom/transsion/search/bean/Pager;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V",
        "getPager",
        "()Lcom/transsion/search/bean/Pager;",
        "getResults$annotations",
        "()V",
        "getResults",
        "()Ljava/util/List;",
        "setResults",
        "(Ljava/util/List;)V",
        "getTabId",
        "()Ljava/lang/String;",
        "setTabId",
        "(Ljava/lang/String;)V",
        "getTabs",
        "setTabs",
        "getConvertData",
        "setConvertData",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
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
            "Lcom/transsion/search/bean/SearchResultEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private convertData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/search/fragment/result/ResultWrapData;",
            ">;"
        }
    .end annotation
.end field

.field private final pager:Lcom/transsion/search/bean/Pager;

.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/search/bean/SearchList;",
            ">;"
        }
    .end annotation
.end field

.field private tabId:Ljava/lang/String;

.field private tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/search/bean/TabItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/search/bean/SearchResultEntity$a;

    invoke-direct {v0}, Lcom/transsion/search/bean/SearchResultEntity$a;-><init>()V

    sput-object v0, Lcom/transsion/search/bean/SearchResultEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/search/bean/Pager;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/search/bean/Pager;",
            "Ljava/util/List<",
            "Lcom/transsion/search/bean/SearchList;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/search/bean/TabItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/search/fragment/result/ResultWrapData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/search/bean/SearchResultEntity;->pager:Lcom/transsion/search/bean/Pager;

    iput-object p2, p0, Lcom/transsion/search/bean/SearchResultEntity;->results:Ljava/util/List;

    iput-object p3, p0, Lcom/transsion/search/bean/SearchResultEntity;->tabId:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/search/bean/SearchResultEntity;->tabs:Ljava/util/List;

    iput-object p5, p0, Lcom/transsion/search/bean/SearchResultEntity;->convertData:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/search/bean/Pager;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object v5, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    move-object v6, v0

    goto :goto_3

    :cond_3
    move-object v6, p5

    :goto_3
    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/search/bean/SearchResultEntity;-><init>(Lcom/transsion/search/bean/Pager;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/search/bean/SearchResultEntity;Lcom/transsion/search/bean/Pager;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/transsion/search/bean/SearchResultEntity;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/transsion/search/bean/SearchResultEntity;->pager:Lcom/transsion/search/bean/Pager;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/transsion/search/bean/SearchResultEntity;->results:Ljava/util/List;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/transsion/search/bean/SearchResultEntity;->tabId:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/transsion/search/bean/SearchResultEntity;->tabs:Ljava/util/List;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/transsion/search/bean/SearchResultEntity;->convertData:Ljava/util/List;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/transsion/search/bean/SearchResultEntity;->copy(Lcom/transsion/search/bean/Pager;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/transsion/search/bean/SearchResultEntity;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getResults$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final component1()Lcom/transsion/search/bean/Pager;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search/bean/SearchResultEntity;->pager:Lcom/transsion/search/bean/Pager;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/search/bean/SearchList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/search/bean/SearchResultEntity;->results:Ljava/util/List;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search/bean/SearchResultEntity;->tabId:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/search/bean/TabItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/search/bean/SearchResultEntity;->tabs:Ljava/util/List;

    return-object v0
.end method

.method public final component5()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/search/fragment/result/ResultWrapData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/search/bean/SearchResultEntity;->convertData:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Lcom/transsion/search/bean/Pager;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/transsion/search/bean/SearchResultEntity;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/search/bean/Pager;",
            "Ljava/util/List<",
            "Lcom/transsion/search/bean/SearchList;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/search/bean/TabItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/search/fragment/result/ResultWrapData;",
            ">;)",
            "Lcom/transsion/search/bean/SearchResultEntity;"
        }
    .end annotation

    const-string v0, "pager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/search/bean/SearchResultEntity;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/transsion/search/bean/SearchResultEntity;-><init>(Lcom/transsion/search/bean/Pager;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

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
    instance-of v1, p1, Lcom/transsion/search/bean/SearchResultEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/search/bean/SearchResultEntity;

    iget-object v1, p0, Lcom/transsion/search/bean/SearchResultEntity;->pager:Lcom/transsion/search/bean/Pager;

    iget-object v3, p1, Lcom/transsion/search/bean/SearchResultEntity;->pager:Lcom/transsion/search/bean/Pager;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/search/bean/SearchResultEntity;->results:Ljava/util/List;

    iget-object v3, p1, Lcom/transsion/search/bean/SearchResultEntity;->results:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/search/bean/SearchResultEntity;->tabId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/search/bean/SearchResultEntity;->tabId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/transsion/search/bean/SearchResultEntity;->tabs:Ljava/util/List;

    iget-object v3, p1, Lcom/transsion/search/bean/SearchResultEntity;->tabs:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/transsion/search/bean/SearchResultEntity;->convertData:Ljava/util/List;

    iget-object p1, p1, Lcom/transsion/search/bean/SearchResultEntity;->convertData:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getConvertData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/search/fragment/result/ResultWrapData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/search/bean/SearchResultEntity;->convertData:Ljava/util/List;

    return-object v0
.end method

.method public final getPager()Lcom/transsion/search/bean/Pager;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search/bean/SearchResultEntity;->pager:Lcom/transsion/search/bean/Pager;

    return-object v0
.end method

.method public final getResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/search/bean/SearchList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/search/bean/SearchResultEntity;->results:Ljava/util/List;

    return-object v0
.end method

.method public final getTabId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search/bean/SearchResultEntity;->tabId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/search/bean/TabItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/search/bean/SearchResultEntity;->tabs:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/search/bean/SearchResultEntity;->pager:Lcom/transsion/search/bean/Pager;

    invoke-virtual {v0}, Lcom/transsion/search/bean/Pager;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/search/bean/SearchResultEntity;->results:Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/search/bean/SearchResultEntity;->tabId:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/search/bean/SearchResultEntity;->tabs:Ljava/util/List;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/search/bean/SearchResultEntity;->convertData:Ljava/util/List;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    return v0
.end method

.method public final setConvertData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/search/fragment/result/ResultWrapData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/search/bean/SearchResultEntity;->convertData:Ljava/util/List;

    return-void
.end method

.method public final setResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/search/bean/SearchList;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/search/bean/SearchResultEntity;->results:Ljava/util/List;

    return-void
.end method

.method public final setTabId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search/bean/SearchResultEntity;->tabId:Ljava/lang/String;

    return-void
.end method

.method public final setTabs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/search/bean/TabItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/search/bean/SearchResultEntity;->tabs:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/transsion/search/bean/SearchResultEntity;->pager:Lcom/transsion/search/bean/Pager;

    iget-object v1, p0, Lcom/transsion/search/bean/SearchResultEntity;->results:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/search/bean/SearchResultEntity;->tabId:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/search/bean/SearchResultEntity;->tabs:Ljava/util/List;

    iget-object v4, p0, Lcom/transsion/search/bean/SearchResultEntity;->convertData:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SearchResultEntity(pager="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", results="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", tabId="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tabs="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", convertData="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/search/bean/SearchResultEntity;->pager:Lcom/transsion/search/bean/Pager;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/transsion/search/bean/SearchResultEntity;->tabId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/search/bean/SearchResultEntity;->tabs:Ljava/util/List;

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

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/search/bean/TabItem;

    invoke-virtual {v3, p1, p2}, Lcom/transsion/search/bean/TabItem;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/transsion/search/bean/SearchResultEntity;->convertData:Ljava/util/List;

    if-nez v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/search/fragment/result/ResultWrapData;

    invoke-virtual {v1, p1, p2}, Lcom/transsion/search/fragment/result/ResultWrapData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method
