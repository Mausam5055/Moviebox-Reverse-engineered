.class public final Lcom/transsion/moviedetailapi/bean/LikeBean;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0016\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u00002\u00020\u0001B%\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000fJ\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J2\u0010\u001a\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001\u00a2\u0006\u0002\u0010\u001bJ\u0013\u0010\u001c\u001a\u00020\u00032\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u00d6\u0003J\t\u0010\u001f\u001a\u00020\u0005H\u00d6\u0001J\t\u0010 \u001a\u00020\u0007H\u00d6\u0001R\"\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010\r\u001a\u0004\u0008\u0002\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\"\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0012\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006!"
    }
    d2 = {
        "Lcom/transsion/moviedetailapi/bean/LikeBean;",
        "Ljava/io/Serializable;",
        "isAffected",
        "",
        "likes",
        "",
        "postId",
        "",
        "<init>",
        "(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;)V",
        "()Ljava/lang/Boolean;",
        "setAffected",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "getLikes",
        "()Ljava/lang/Integer;",
        "setLikes",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getPostId",
        "()Ljava/lang/String;",
        "setPostId",
        "(Ljava/lang/String;)V",
        "component1",
        "component2",
        "component3",
        "copy",
        "(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;)Lcom/transsion/moviedetailapi/bean/LikeBean;",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "MovieDetailApi_psRelease"
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
.field private isAffected:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isAffected"
    .end annotation
.end field

.field private likes:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "likes"
    .end annotation
.end field

.field private postId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/LikeBean;->isAffected:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/transsion/moviedetailapi/bean/LikeBean;->likes:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/transsion/moviedetailapi/bean/LikeBean;->postId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/moviedetailapi/bean/LikeBean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/moviedetailapi/bean/LikeBean;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/transsion/moviedetailapi/bean/LikeBean;->isAffected:Ljava/lang/Boolean;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/transsion/moviedetailapi/bean/LikeBean;->likes:Ljava/lang/Integer;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/transsion/moviedetailapi/bean/LikeBean;->postId:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/moviedetailapi/bean/LikeBean;->copy(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;)Lcom/transsion/moviedetailapi/bean/LikeBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/LikeBean;->isAffected:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component2()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/LikeBean;->likes:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/LikeBean;->postId:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;)Lcom/transsion/moviedetailapi/bean/LikeBean;
    .locals 1

    new-instance v0, Lcom/transsion/moviedetailapi/bean/LikeBean;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/moviedetailapi/bean/LikeBean;-><init>(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/moviedetailapi/bean/LikeBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/moviedetailapi/bean/LikeBean;

    iget-object v1, p0, Lcom/transsion/moviedetailapi/bean/LikeBean;->isAffected:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/transsion/moviedetailapi/bean/LikeBean;->isAffected:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/moviedetailapi/bean/LikeBean;->likes:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/transsion/moviedetailapi/bean/LikeBean;->likes:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/moviedetailapi/bean/LikeBean;->postId:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/moviedetailapi/bean/LikeBean;->postId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getLikes()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/LikeBean;->likes:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPostId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/LikeBean;->postId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/LikeBean;->isAffected:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/moviedetailapi/bean/LikeBean;->likes:Ljava/lang/Integer;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/moviedetailapi/bean/LikeBean;->postId:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final isAffected()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/LikeBean;->isAffected:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final setAffected(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/LikeBean;->isAffected:Ljava/lang/Boolean;

    return-void
.end method

.method public final setLikes(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/LikeBean;->likes:Ljava/lang/Integer;

    return-void
.end method

.method public final setPostId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/LikeBean;->postId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/LikeBean;->isAffected:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/transsion/moviedetailapi/bean/LikeBean;->likes:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/transsion/moviedetailapi/bean/LikeBean;->postId:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LikeBean(isAffected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", likes="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", postId="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
