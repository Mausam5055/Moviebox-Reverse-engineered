.class public final Lcom/transsion/videodetail/bean/VideoDetailStreamList;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0014\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u00002\u00020\u0001B5\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0006H\u00c6\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\tH\u00c6\u0003J9\u0010\u001c\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\tH\u00c6\u0001J\u0013\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u00d6\u0003J\t\u0010!\u001a\u00020\u0006H\u00d6\u0001J\t\u0010\"\u001a\u00020\tH\u00d6\u0001R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000f\"\u0004\u0008\u0013\u0010\u0011R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006#"
    }
    d2 = {
        "Lcom/transsion/videodetail/bean/VideoDetailStreamList;",
        "Ljava/io/Serializable;",
        "streams",
        "",
        "Lcom/transsion/videodetail/bean/VideoDetailStream;",
        "se",
        "",
        "ep",
        "title",
        "",
        "<init>",
        "(Ljava/util/List;IILjava/lang/String;)V",
        "getStreams",
        "()Ljava/util/List;",
        "getSe",
        "()I",
        "setSe",
        "(I)V",
        "getEp",
        "setEp",
        "getTitle",
        "()Ljava/lang/String;",
        "setTitle",
        "(Ljava/lang/String;)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "VideoDetail_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private ep:I

.field private se:I

.field private final streams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/videodetail/bean/VideoDetailStream;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;IILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/videodetail/bean/VideoDetailStream;",
            ">;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "streams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->streams:Ljava/util/List;

    iput p2, p0, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->se:I

    iput p3, p0, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->ep:I

    iput-object p4, p0, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->title:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;IILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/videodetail/bean/VideoDetailStreamList;-><init>(Ljava/util/List;IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/videodetail/bean/VideoDetailStreamList;Ljava/util/List;IILjava/lang/String;ILjava/lang/Object;)Lcom/transsion/videodetail/bean/VideoDetailStreamList;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->streams:Ljava/util/List;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->se:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->ep:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->title:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->copy(Ljava/util/List;IILjava/lang/String;)Lcom/transsion/videodetail/bean/VideoDetailStreamList;

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
            "Lcom/transsion/videodetail/bean/VideoDetailStream;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->streams:Ljava/util/List;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->se:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->ep:I

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/util/List;IILjava/lang/String;)Lcom/transsion/videodetail/bean/VideoDetailStreamList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/videodetail/bean/VideoDetailStream;",
            ">;II",
            "Ljava/lang/String;",
            ")",
            "Lcom/transsion/videodetail/bean/VideoDetailStreamList;"
        }
    .end annotation

    const-string v0, "streams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/videodetail/bean/VideoDetailStreamList;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/transsion/videodetail/bean/VideoDetailStreamList;-><init>(Ljava/util/List;IILjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/videodetail/bean/VideoDetailStreamList;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/videodetail/bean/VideoDetailStreamList;

    iget-object v1, p0, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->streams:Ljava/util/List;

    iget-object v3, p1, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->streams:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->se:I

    iget v3, p1, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->se:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->ep:I

    iget v3, p1, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->ep:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->title:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->title:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getEp()I
    .locals 1

    iget v0, p0, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->ep:I

    return v0
.end method

.method public final getSe()I
    .locals 1

    iget v0, p0, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->se:I

    return v0
.end method

.method public final getStreams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/videodetail/bean/VideoDetailStream;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->streams:Ljava/util/List;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->streams:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->se:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->ep:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->title:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final setEp(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->ep:I

    return-void
.end method

.method public final setSe(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->se:I

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->streams:Ljava/util/List;

    iget v1, p0, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->se:I

    iget v2, p0, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->ep:I

    iget-object v3, p0, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->title:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VideoDetailStreamList(streams="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", se="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", ep="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", title="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
