.class public final Lcom/transsion/shorttv/bean/ShortTVRespData;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0014\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B/\u0012\u0010\u0008\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0011\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0008H\u00c6\u0003J1\u0010\u0019\u001a\u00020\u00002\u0010\u0008\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u00082\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001R\"\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006 "
    }
    d2 = {
        "Lcom/transsion/shorttv/bean/ShortTVRespData;",
        "",
        "items",
        "",
        "Lcom/transsion/shorttv/bean/Subject;",
        "pager",
        "Lcom/transsion/shorttv/bean/Pager;",
        "isRefresh",
        "",
        "<init>",
        "(Ljava/util/List;Lcom/transsion/shorttv/bean/Pager;Z)V",
        "getItems",
        "()Ljava/util/List;",
        "setItems",
        "(Ljava/util/List;)V",
        "getPager",
        "()Lcom/transsion/shorttv/bean/Pager;",
        "setPager",
        "(Lcom/transsion/shorttv/bean/Pager;)V",
        "()Z",
        "setRefresh",
        "(Z)V",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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
.field private transient isRefresh:Z

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/shorttv/bean/Subject;",
            ">;"
        }
    .end annotation
.end field

.field private pager:Lcom/transsion/shorttv/bean/Pager;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv/bean/ShortTVRespData;-><init>(Ljava/util/List;Lcom/transsion/shorttv/bean/Pager;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/transsion/shorttv/bean/Pager;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/shorttv/bean/Subject;",
            ">;",
            "Lcom/transsion/shorttv/bean/Pager;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/bean/ShortTVRespData;->items:Ljava/util/List;

    iput-object p2, p0, Lcom/transsion/shorttv/bean/ShortTVRespData;->pager:Lcom/transsion/shorttv/bean/Pager;

    iput-boolean p3, p0, Lcom/transsion/shorttv/bean/ShortTVRespData;->isRefresh:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/transsion/shorttv/bean/Pager;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

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
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/shorttv/bean/ShortTVRespData;-><init>(Ljava/util/List;Lcom/transsion/shorttv/bean/Pager;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/shorttv/bean/ShortTVRespData;Ljava/util/List;Lcom/transsion/shorttv/bean/Pager;ZILjava/lang/Object;)Lcom/transsion/shorttv/bean/ShortTVRespData;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/transsion/shorttv/bean/ShortTVRespData;->items:Ljava/util/List;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/transsion/shorttv/bean/ShortTVRespData;->pager:Lcom/transsion/shorttv/bean/Pager;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lcom/transsion/shorttv/bean/ShortTVRespData;->isRefresh:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/shorttv/bean/ShortTVRespData;->copy(Ljava/util/List;Lcom/transsion/shorttv/bean/Pager;Z)Lcom/transsion/shorttv/bean/ShortTVRespData;

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
            "Lcom/transsion/shorttv/bean/Subject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/shorttv/bean/ShortTVRespData;->items:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Lcom/transsion/shorttv/bean/Pager;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/bean/ShortTVRespData;->pager:Lcom/transsion/shorttv/bean/Pager;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/shorttv/bean/ShortTVRespData;->isRefresh:Z

    return v0
.end method

.method public final copy(Ljava/util/List;Lcom/transsion/shorttv/bean/Pager;Z)Lcom/transsion/shorttv/bean/ShortTVRespData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/shorttv/bean/Subject;",
            ">;",
            "Lcom/transsion/shorttv/bean/Pager;",
            "Z)",
            "Lcom/transsion/shorttv/bean/ShortTVRespData;"
        }
    .end annotation

    new-instance v0, Lcom/transsion/shorttv/bean/ShortTVRespData;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/shorttv/bean/ShortTVRespData;-><init>(Ljava/util/List;Lcom/transsion/shorttv/bean/Pager;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/shorttv/bean/ShortTVRespData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/shorttv/bean/ShortTVRespData;

    iget-object v1, p0, Lcom/transsion/shorttv/bean/ShortTVRespData;->items:Ljava/util/List;

    iget-object v3, p1, Lcom/transsion/shorttv/bean/ShortTVRespData;->items:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/shorttv/bean/ShortTVRespData;->pager:Lcom/transsion/shorttv/bean/Pager;

    iget-object v3, p1, Lcom/transsion/shorttv/bean/ShortTVRespData;->pager:Lcom/transsion/shorttv/bean/Pager;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/transsion/shorttv/bean/ShortTVRespData;->isRefresh:Z

    iget-boolean p1, p1, Lcom/transsion/shorttv/bean/ShortTVRespData;->isRefresh:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/shorttv/bean/Subject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/shorttv/bean/ShortTVRespData;->items:Ljava/util/List;

    return-object v0
.end method

.method public final getPager()Lcom/transsion/shorttv/bean/Pager;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/bean/ShortTVRespData;->pager:Lcom/transsion/shorttv/bean/Pager;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/shorttv/bean/ShortTVRespData;->items:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/shorttv/bean/ShortTVRespData;->pager:Lcom/transsion/shorttv/bean/Pager;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Pager;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/shorttv/bean/ShortTVRespData;->isRefresh:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isRefresh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/shorttv/bean/ShortTVRespData;->isRefresh:Z

    return v0
.end method

.method public final setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/shorttv/bean/Subject;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/shorttv/bean/ShortTVRespData;->items:Ljava/util/List;

    return-void
.end method

.method public final setPager(Lcom/transsion/shorttv/bean/Pager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/bean/ShortTVRespData;->pager:Lcom/transsion/shorttv/bean/Pager;

    return-void
.end method

.method public final setRefresh(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/shorttv/bean/ShortTVRespData;->isRefresh:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/transsion/shorttv/bean/ShortTVRespData;->items:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/shorttv/bean/ShortTVRespData;->pager:Lcom/transsion/shorttv/bean/Pager;

    iget-boolean v2, p0, Lcom/transsion/shorttv/bean/ShortTVRespData;->isRefresh:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShortTVRespData(items="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", pager="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isRefresh="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
