.class public final Lcom/transsion/member/bean/Pager;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0017\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0008H\u00c6\u0003J5\u0010\u001d\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u001e\u001a\u00020\u00032\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u00d6\u0003J\t\u0010!\u001a\u00020\u0008H\u00d6\u0001J\t\u0010\"\u001a\u00020\u0005H\u00d6\u0001R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R \u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0010\"\u0004\u0008\u0014\u0010\u0012R\u001e\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006#"
    }
    d2 = {
        "Lcom/transsion/member/bean/Pager;",
        "Ljava/io/Serializable;",
        "hasMore",
        "",
        "nextPage",
        "",
        "page",
        "perPage",
        "",
        "<init>",
        "(ZLjava/lang/String;Ljava/lang/String;I)V",
        "getHasMore",
        "()Z",
        "setHasMore",
        "(Z)V",
        "getNextPage",
        "()Ljava/lang/String;",
        "setNextPage",
        "(Ljava/lang/String;)V",
        "getPage",
        "setPage",
        "getPerPage",
        "()I",
        "setPerPage",
        "(I)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "Member_psRelease"
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
.field public static final $stable:I = 0x8


# instance fields
.field private hasMore:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hasMore"
    .end annotation
.end field

.field private nextPage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nextPage"
    .end annotation
.end field

.field private page:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "page"
    .end annotation
.end field

.field private perPage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "perPage"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/transsion/member/bean/Pager;->hasMore:Z

    iput-object p2, p0, Lcom/transsion/member/bean/Pager;->nextPage:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/member/bean/Pager;->page:Ljava/lang/String;

    iput p4, p0, Lcom/transsion/member/bean/Pager;->perPage:I

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/member/bean/Pager;-><init>(ZLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/member/bean/Pager;ZLjava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lcom/transsion/member/bean/Pager;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-boolean p1, p0, Lcom/transsion/member/bean/Pager;->hasMore:Z

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/transsion/member/bean/Pager;->nextPage:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/transsion/member/bean/Pager;->page:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/transsion/member/bean/Pager;->perPage:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/member/bean/Pager;->copy(ZLjava/lang/String;Ljava/lang/String;I)Lcom/transsion/member/bean/Pager;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/member/bean/Pager;->hasMore:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/bean/Pager;->nextPage:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/bean/Pager;->page:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/transsion/member/bean/Pager;->perPage:I

    return v0
.end method

.method public final copy(ZLjava/lang/String;Ljava/lang/String;I)Lcom/transsion/member/bean/Pager;
    .locals 1

    new-instance v0, Lcom/transsion/member/bean/Pager;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/transsion/member/bean/Pager;-><init>(ZLjava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/member/bean/Pager;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/member/bean/Pager;

    iget-boolean v1, p0, Lcom/transsion/member/bean/Pager;->hasMore:Z

    iget-boolean v3, p1, Lcom/transsion/member/bean/Pager;->hasMore:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/member/bean/Pager;->nextPage:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/member/bean/Pager;->nextPage:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/member/bean/Pager;->page:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/member/bean/Pager;->page:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/transsion/member/bean/Pager;->perPage:I

    iget p1, p1, Lcom/transsion/member/bean/Pager;->perPage:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getHasMore()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/member/bean/Pager;->hasMore:Z

    return v0
.end method

.method public final getNextPage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/bean/Pager;->nextPage:Ljava/lang/String;

    return-object v0
.end method

.method public final getPage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/bean/Pager;->page:Ljava/lang/String;

    return-object v0
.end method

.method public final getPerPage()I
    .locals 1

    iget v0, p0, Lcom/transsion/member/bean/Pager;->perPage:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/member/bean/Pager;->hasMore:Z

    invoke-static {v0}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/member/bean/Pager;->nextPage:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/transsion/member/bean/Pager;->page:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/member/bean/Pager;->perPage:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setHasMore(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/member/bean/Pager;->hasMore:Z

    return-void
.end method

.method public final setNextPage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/bean/Pager;->nextPage:Ljava/lang/String;

    return-void
.end method

.method public final setPage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/bean/Pager;->page:Ljava/lang/String;

    return-void
.end method

.method public final setPerPage(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/member/bean/Pager;->perPage:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-boolean v0, p0, Lcom/transsion/member/bean/Pager;->hasMore:Z

    iget-object v1, p0, Lcom/transsion/member/bean/Pager;->nextPage:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/member/bean/Pager;->page:Ljava/lang/String;

    iget v3, p0, Lcom/transsion/member/bean/Pager;->perPage:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pager(hasMore="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", nextPage="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", page="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", perPage="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
