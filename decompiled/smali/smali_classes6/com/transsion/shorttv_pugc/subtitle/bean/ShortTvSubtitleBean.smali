.class public final Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0017\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0006H\u00c6\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J?\u0010\u001c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u00d6\u0003J\t\u0010!\u001a\u00020\u0006H\u00d6\u0001J\t\u0010\"\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000c\"\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011\"\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u000c\"\u0004\u0008\u0016\u0010\u000f\u00a8\u0006#"
    }
    d2 = {
        "Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;",
        "Ljava/io/Serializable;",
        "subjectId",
        "",
        "id",
        "ep",
        "",
        "se",
        "videoId",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V",
        "getSubjectId",
        "()Ljava/lang/String;",
        "getId",
        "setId",
        "(Ljava/lang/String;)V",
        "getEp",
        "()I",
        "getSe",
        "setSe",
        "(I)V",
        "getVideoId",
        "setVideoId",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "shortTvLib_release"
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
.field private final ep:I

.field private id:Ljava/lang/String;

.field private se:I

.field private final subjectId:Ljava/lang/String;

.field private videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    const-string v0, "subjectId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->subjectId:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->id:Ljava/lang/String;

    iput p3, p0, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->ep:I

    iput p4, p0, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->se:I

    iput-object p5, p0, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->videoId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1

    const/4 p4, 0x0

    :cond_1
    move v5, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_2

    move-object v6, v0

    goto :goto_1

    :cond_2
    move-object v6, p5

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/Object;)Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->subjectId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->id:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->ep:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->se:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->videoId:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move p5, v0

    move p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->copy(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->subjectId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->ep:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->se:I

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;
    .locals 7

    const-string v0, "subjectId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->subjectId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->subjectId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->ep:I

    iget v3, p1, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->ep:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->se:I

    iget v3, p1, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->se:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->videoId:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->videoId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getEp()I
    .locals 1

    iget v0, p0, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->ep:I

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getSe()I
    .locals 1

    iget v0, p0, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->se:I

    return v0
.end method

.method public final getSubjectId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->subjectId:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->subjectId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->id:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->ep:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->se:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->videoId:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->id:Ljava/lang/String;

    return-void
.end method

.method public final setSe(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->se:I

    return-void
.end method

.method public final setVideoId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->videoId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->subjectId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->id:Ljava/lang/String;

    iget v2, p0, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->ep:I

    iget v3, p0, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->se:I

    iget-object v4, p0, Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;->videoId:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ShortTvSubtitleBean(subjectId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", id="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ep="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", se="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", videoId="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
