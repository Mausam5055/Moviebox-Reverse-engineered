.class public final Lcom/transsion/postdetail/comment/SocialStatus;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0016\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B/\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J1\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\u00032\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u00d6\u0003J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\n\"\u0004\u0008\u000e\u0010\u000cR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\n\"\u0004\u0008\u0010\u0010\u000cR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\n\"\u0004\u0008\u0012\u0010\u000c\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/transsion/postdetail/comment/SocialStatus;",
        "Ljava/io/Serializable;",
        "showTint",
        "",
        "showLike",
        "showShare",
        "showDownload",
        "<init>",
        "(ZZZZ)V",
        "getShowTint",
        "()Z",
        "setShowTint",
        "(Z)V",
        "getShowLike",
        "setShowLike",
        "getShowShare",
        "setShowShare",
        "getShowDownload",
        "setShowDownload",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "PostDetail_psRelease"
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
.field private showDownload:Z

.field private showLike:Z

.field private showShare:Z

.field private showTint:Z


# direct methods
.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/transsion/postdetail/comment/SocialStatus;-><init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/transsion/postdetail/comment/SocialStatus;->showTint:Z

    iput-boolean p2, p0, Lcom/transsion/postdetail/comment/SocialStatus;->showLike:Z

    iput-boolean p3, p0, Lcom/transsion/postdetail/comment/SocialStatus;->showShare:Z

    iput-boolean p4, p0, Lcom/transsion/postdetail/comment/SocialStatus;->showDownload:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x1

    if-eqz p6, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move p4, v0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/postdetail/comment/SocialStatus;-><init>(ZZZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/postdetail/comment/SocialStatus;ZZZZILjava/lang/Object;)Lcom/transsion/postdetail/comment/SocialStatus;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-boolean p1, p0, Lcom/transsion/postdetail/comment/SocialStatus;->showTint:Z

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-boolean p2, p0, Lcom/transsion/postdetail/comment/SocialStatus;->showLike:Z

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lcom/transsion/postdetail/comment/SocialStatus;->showShare:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lcom/transsion/postdetail/comment/SocialStatus;->showDownload:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/postdetail/comment/SocialStatus;->copy(ZZZZ)Lcom/transsion/postdetail/comment/SocialStatus;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/postdetail/comment/SocialStatus;->showTint:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/postdetail/comment/SocialStatus;->showLike:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/postdetail/comment/SocialStatus;->showShare:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/postdetail/comment/SocialStatus;->showDownload:Z

    return v0
.end method

.method public final copy(ZZZZ)Lcom/transsion/postdetail/comment/SocialStatus;
    .locals 1

    new-instance v0, Lcom/transsion/postdetail/comment/SocialStatus;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/transsion/postdetail/comment/SocialStatus;-><init>(ZZZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/postdetail/comment/SocialStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/postdetail/comment/SocialStatus;

    iget-boolean v1, p0, Lcom/transsion/postdetail/comment/SocialStatus;->showTint:Z

    iget-boolean v3, p1, Lcom/transsion/postdetail/comment/SocialStatus;->showTint:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/transsion/postdetail/comment/SocialStatus;->showLike:Z

    iget-boolean v3, p1, Lcom/transsion/postdetail/comment/SocialStatus;->showLike:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/transsion/postdetail/comment/SocialStatus;->showShare:Z

    iget-boolean v3, p1, Lcom/transsion/postdetail/comment/SocialStatus;->showShare:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/transsion/postdetail/comment/SocialStatus;->showDownload:Z

    iget-boolean p1, p1, Lcom/transsion/postdetail/comment/SocialStatus;->showDownload:Z

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getShowDownload()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/postdetail/comment/SocialStatus;->showDownload:Z

    return v0
.end method

.method public final getShowLike()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/postdetail/comment/SocialStatus;->showLike:Z

    return v0
.end method

.method public final getShowShare()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/postdetail/comment/SocialStatus;->showShare:Z

    return v0
.end method

.method public final getShowTint()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/postdetail/comment/SocialStatus;->showTint:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/postdetail/comment/SocialStatus;->showTint:Z

    invoke-static {v0}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/postdetail/comment/SocialStatus;->showLike:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/postdetail/comment/SocialStatus;->showShare:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/postdetail/comment/SocialStatus;->showDownload:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setShowDownload(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/postdetail/comment/SocialStatus;->showDownload:Z

    return-void
.end method

.method public final setShowLike(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/postdetail/comment/SocialStatus;->showLike:Z

    return-void
.end method

.method public final setShowShare(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/postdetail/comment/SocialStatus;->showShare:Z

    return-void
.end method

.method public final setShowTint(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/postdetail/comment/SocialStatus;->showTint:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-boolean v0, p0, Lcom/transsion/postdetail/comment/SocialStatus;->showTint:Z

    iget-boolean v1, p0, Lcom/transsion/postdetail/comment/SocialStatus;->showLike:Z

    iget-boolean v2, p0, Lcom/transsion/postdetail/comment/SocialStatus;->showShare:Z

    iget-boolean v3, p0, Lcom/transsion/postdetail/comment/SocialStatus;->showDownload:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SocialStatus(showTint="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", showLike="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", showShare="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", showDownload="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
