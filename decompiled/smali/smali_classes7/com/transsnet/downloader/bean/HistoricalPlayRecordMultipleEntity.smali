.class public final Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ln6/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0019\n\u0002\u0010!\n\u0002\u0008\t\u0008\u0086\u0008\u0018\u0000 ?2\u00020\u00012\u00020\u0002:\u0001@B3\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\r\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J>\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\tH\u00c6\u0001\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u0007H\u00d6\u0001\u00a2\u0006\u0004\u0008\u001a\u0010\u0015J\u0010\u0010\u001b\u001a\u00020\u0003H\u00d6\u0001\u00a2\u0006\u0004\u0008\u001b\u0010\u0011J\u001a\u0010\u001f\u001a\u00020\u001e2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u00d6\u0003\u00a2\u0006\u0004\u0008\u001f\u0010 R\"\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010!\u001a\u0004\u0008\"\u0010\u0011\"\u0004\u0008#\u0010$R$\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010%\u001a\u0004\u0008&\u0010\u0013\"\u0004\u0008\'\u0010(R$\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010)\u001a\u0004\u0008*\u0010\u0015\"\u0004\u0008+\u0010,R$\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010-\u001a\u0004\u0008.\u0010\u0017\"\u0004\u0008/\u00100R\"\u00101\u001a\u00020\u001e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00081\u00102\u001a\u0004\u00081\u00103\"\u0004\u00084\u00105R\"\u00106\u001a\u00020\u001e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00086\u00102\u001a\u0004\u00086\u00103\"\u0004\u00087\u00105R\u001d\u00109\u001a\u0008\u0012\u0004\u0012\u00020\u0000088\u0006\u00a2\u0006\u000c\n\u0004\u00089\u0010:\u001a\u0004\u0008;\u0010<R\u0014\u0010>\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008=\u0010\u0011\u00a8\u0006A"
    }
    d2 = {
        "Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;",
        "Ljava/io/Serializable;",
        "Ln6/a;",
        "",
        "type",
        "Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;",
        "historical",
        "",
        "title",
        "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;",
        "nonAdDelegate",
        "<init>",
        "(ILcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V",
        "",
        "setSeriesDownloadBean2Entity",
        "()V",
        "component1",
        "()I",
        "component2",
        "()Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;",
        "component3",
        "()Ljava/lang/String;",
        "component4",
        "()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;",
        "copy",
        "(ILcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;",
        "toString",
        "hashCode",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "I",
        "getType",
        "setType",
        "(I)V",
        "Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;",
        "getHistorical",
        "setHistorical",
        "(Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;)V",
        "Ljava/lang/String;",
        "getTitle",
        "setTitle",
        "(Ljava/lang/String;)V",
        "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;",
        "getNonAdDelegate",
        "setNonAdDelegate",
        "(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V",
        "isCheck",
        "Z",
        "()Z",
        "setCheck",
        "(Z)V",
        "isSeriesAllCheck",
        "setSeriesAllCheck",
        "",
        "seriesList",
        "Ljava/util/List;",
        "getSeriesList",
        "()Ljava/util/List;",
        "getItemType",
        "itemType",
        "Companion",
        "a",
        "Downloader_psRelease"
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
.field public static final Companion:Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity$a;

.field public static final ITEM_TYPE_AD:I = 0x3

.field public static final ITEM_TYPE_CONTENT:I = 0x2

.field public static final ITEM_TYPE_HEADER:I = 0x1


# instance fields
.field private historical:Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

.field private isCheck:Z

.field private isSeriesAllCheck:Z

.field private nonAdDelegate:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

.field private final seriesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->Companion:Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity$a;

    return-void
.end method

.method public constructor <init>(ILcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->type:I

    iput-object p2, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->historical:Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    iput-object p3, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->title:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->nonAdDelegate:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->isSeriesAllCheck:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->seriesList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;-><init>(ILcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;ILcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;ILjava/lang/Object;)Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->type:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->historical:Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->title:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->nonAdDelegate:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->copy(ILcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->type:I

    return v0
.end method

.method public final component2()Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->historical:Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->nonAdDelegate:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    return-object v0
.end method

.method public final copy(ILcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;
    .locals 1

    new-instance v0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;-><init>(ILcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;

    iget v1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->type:I

    iget v3, p1, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->type:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->historical:Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    iget-object v3, p1, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->historical:Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->nonAdDelegate:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    iget-object p1, p1, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->nonAdDelegate:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getHistorical()Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->historical:Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    iget v0, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->type:I

    return v0
.end method

.method public final getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->nonAdDelegate:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    return-object v0
.end method

.method public final getSeriesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->seriesList:Ljava/util/List;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->type:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->historical:Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->title:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->nonAdDelegate:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final isCheck()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->isCheck:Z

    return v0
.end method

.method public final isSeriesAllCheck()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->isSeriesAllCheck:Z

    return v0
.end method

.method public final setCheck(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->isCheck:Z

    return-void
.end method

.method public final setHistorical(Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->historical:Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    return-void
.end method

.method public final setNonAdDelegate(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->nonAdDelegate:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    return-void
.end method

.method public final setSeriesAllCheck(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->isSeriesAllCheck:Z

    return-void
.end method

.method public final setSeriesDownloadBean2Entity()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->seriesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->historical:Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSeriesList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/transsion/baselib/db/download/DownloadBean;

    new-instance v15, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;

    new-instance v16, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    move-result v4

    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadBean;->getLastPlayTimeStamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadBean;->getLastPlayTimeStamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/transsion/baseui/util/TimeUtilKt;->m(J)Ljava/lang/String;

    move-result-object v6

    sget-object v2, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadBean;->getLastPlayTimeStamp()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcom/transsnet/downloader/viewmodel/a0;->z(J)Ljava/lang/String;

    move-result-object v7

    const/16 v13, 0x1c0

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v3, v16

    invoke-direct/range {v3 .. v14}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;-><init>(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/audio/AudioBean;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/Boolean;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v7, 0xc

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v15

    move-object/from16 v4, v16

    invoke-direct/range {v2 .. v8}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;-><init>(ILcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v2, v0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->seriesList:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->title:Ljava/lang/String;

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->type:I

    iget-object v1, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->historical:Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    iget-object v2, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->nonAdDelegate:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HistoricalPlayRecordMultipleEntity(type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", historical="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", title="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", nonAdDelegate="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
