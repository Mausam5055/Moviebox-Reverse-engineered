.class public final Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B+\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0006H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J/\u0010\u0017\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\u00062\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u00d6\u0003J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;",
        "Ljava/io/Serializable;",
        "list",
        "",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;",
        "isLoadDown",
        "",
        "pager",
        "Lcom/transsion/moviedetailapi/bean/Pager;",
        "<init>",
        "(Ljava/util/List;ZLcom/transsion/moviedetailapi/bean/Pager;)V",
        "getList",
        "()Ljava/util/List;",
        "()Z",
        "setLoadDown",
        "(Z)V",
        "getPager",
        "()Lcom/transsion/moviedetailapi/bean/Pager;",
        "setPager",
        "(Lcom/transsion/moviedetailapi/bean/Pager;)V",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "UGCVideoDetailApi_psRelease"
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
.field private isLoadDown:Z

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;",
            ">;"
        }
    .end annotation
.end field

.field private pager:Lcom/transsion/moviedetailapi/bean/Pager;


# direct methods
.method public constructor <init>(Ljava/util/List;ZLcom/transsion/moviedetailapi/bean/Pager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;",
            ">;Z",
            "Lcom/transsion/moviedetailapi/bean/Pager;",
            ")V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->list:Ljava/util/List;

    iput-boolean p2, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->isLoadDown:Z

    iput-object p3, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ZLcom/transsion/moviedetailapi/bean/Pager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;-><init>(Ljava/util/List;ZLcom/transsion/moviedetailapi/bean/Pager;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;Ljava/util/List;ZLcom/transsion/moviedetailapi/bean/Pager;ILjava/lang/Object;)Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->list:Ljava/util/List;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->isLoadDown:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->copy(Ljava/util/List;ZLcom/transsion/moviedetailapi/bean/Pager;)Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;

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
            "Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->list:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->isLoadDown:Z

    return v0
.end method

.method public final component3()Lcom/transsion/moviedetailapi/bean/Pager;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    return-object v0
.end method

.method public final copy(Ljava/util/List;ZLcom/transsion/moviedetailapi/bean/Pager;)Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;",
            ">;Z",
            "Lcom/transsion/moviedetailapi/bean/Pager;",
            ")",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;-><init>(Ljava/util/List;ZLcom/transsion/moviedetailapi/bean/Pager;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;

    iget-object v1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->list:Ljava/util/List;

    iget-object v3, p1, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->list:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->isLoadDown:Z

    iget-boolean v3, p1, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->isLoadDown:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    iget-object p1, p1, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->list:Ljava/util/List;

    return-object v0
.end method

.method public final getPager()Lcom/transsion/moviedetailapi/bean/Pager;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->list:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->isLoadDown:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Pager;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isLoadDown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->isLoadDown:Z

    return v0
.end method

.method public final setLoadDown(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->isLoadDown:Z

    return-void
.end method

.method public final setPager(Lcom/transsion/moviedetailapi/bean/Pager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->list:Ljava/util/List;

    iget-boolean v1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->isLoadDown:Z

    iget-object v2, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UGCImmVideoContent(list="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isLoadDown="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", pager="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
