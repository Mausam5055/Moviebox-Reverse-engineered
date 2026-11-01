.class public final Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\r2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;",
        "Ljava/io/Serializable;",
        "content",
        "",
        "name",
        "",
        "<init>",
        "(FLjava/lang/String;)V",
        "getContent",
        "()F",
        "getName",
        "()Ljava/lang/String;",
        "isSelect",
        "",
        "()Z",
        "setSelect",
        "(Z)V",
        "component1",
        "component2",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
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
.field private final content:F

.field private isSelect:Z

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(FLjava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;->content:F

    iput-object p2, p0, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;->name:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;FLjava/lang/String;ILjava/lang/Object;)Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;->content:F

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;->name:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;->copy(FLjava/lang/String;)Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 1

    iget v0, p0, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;->content:F

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(FLjava/lang/String;)Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;
    .locals 1

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;

    invoke-direct {v0, p1, p2}, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;-><init>(FLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;

    iget v1, p0, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;->content:F

    iget v3, p1, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;->content:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;->name:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getContent()F
    .locals 1

    iget v0, p0, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;->content:F

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;->content:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isSelect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;->isSelect:Z

    return v0
.end method

.method public final setSelect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;->isSelect:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;->content:F

    iget-object v1, p0, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;->name:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ShortTvVideoCtrBean(content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
