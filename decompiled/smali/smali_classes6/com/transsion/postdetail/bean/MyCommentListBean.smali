.class public final Lcom/transsion/postdetail/bean/MyCommentListBean;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B!\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0011\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\'\u0010\u0013\u001a\u00020\u00002\u0010\u0008\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001R&\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR \u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/transsion/postdetail/bean/MyCommentListBean;",
        "Ljava/io/Serializable;",
        "commentList",
        "",
        "Lcom/transsion/moviedetailapi/bean/CommentBean;",
        "pager",
        "Lcom/transsion/postdetail/bean/Pager;",
        "<init>",
        "(Ljava/util/List;Lcom/transsion/postdetail/bean/Pager;)V",
        "getCommentList",
        "()Ljava/util/List;",
        "setCommentList",
        "(Ljava/util/List;)V",
        "getPager",
        "()Lcom/transsion/postdetail/bean/Pager;",
        "setPager",
        "(Lcom/transsion/postdetail/bean/Pager;)V",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
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
.field private commentList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/CommentBean;",
            ">;"
        }
    .end annotation
.end field

.field private pager:Lcom/transsion/postdetail/bean/Pager;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pager"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/transsion/postdetail/bean/Pager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/CommentBean;",
            ">;",
            "Lcom/transsion/postdetail/bean/Pager;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/bean/MyCommentListBean;->commentList:Ljava/util/List;

    iput-object p2, p0, Lcom/transsion/postdetail/bean/MyCommentListBean;->pager:Lcom/transsion/postdetail/bean/Pager;

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/postdetail/bean/MyCommentListBean;Ljava/util/List;Lcom/transsion/postdetail/bean/Pager;ILjava/lang/Object;)Lcom/transsion/postdetail/bean/MyCommentListBean;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/transsion/postdetail/bean/MyCommentListBean;->commentList:Ljava/util/List;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/transsion/postdetail/bean/MyCommentListBean;->pager:Lcom/transsion/postdetail/bean/Pager;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/bean/MyCommentListBean;->copy(Ljava/util/List;Lcom/transsion/postdetail/bean/Pager;)Lcom/transsion/postdetail/bean/MyCommentListBean;

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
            "Lcom/transsion/moviedetailapi/bean/CommentBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/postdetail/bean/MyCommentListBean;->commentList:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Lcom/transsion/postdetail/bean/Pager;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/bean/MyCommentListBean;->pager:Lcom/transsion/postdetail/bean/Pager;

    return-object v0
.end method

.method public final copy(Ljava/util/List;Lcom/transsion/postdetail/bean/Pager;)Lcom/transsion/postdetail/bean/MyCommentListBean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/CommentBean;",
            ">;",
            "Lcom/transsion/postdetail/bean/Pager;",
            ")",
            "Lcom/transsion/postdetail/bean/MyCommentListBean;"
        }
    .end annotation

    new-instance v0, Lcom/transsion/postdetail/bean/MyCommentListBean;

    invoke-direct {v0, p1, p2}, Lcom/transsion/postdetail/bean/MyCommentListBean;-><init>(Ljava/util/List;Lcom/transsion/postdetail/bean/Pager;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/postdetail/bean/MyCommentListBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/postdetail/bean/MyCommentListBean;

    iget-object v1, p0, Lcom/transsion/postdetail/bean/MyCommentListBean;->commentList:Ljava/util/List;

    iget-object v3, p1, Lcom/transsion/postdetail/bean/MyCommentListBean;->commentList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/postdetail/bean/MyCommentListBean;->pager:Lcom/transsion/postdetail/bean/Pager;

    iget-object p1, p1, Lcom/transsion/postdetail/bean/MyCommentListBean;->pager:Lcom/transsion/postdetail/bean/Pager;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getCommentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/CommentBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/postdetail/bean/MyCommentListBean;->commentList:Ljava/util/List;

    return-object v0
.end method

.method public final getPager()Lcom/transsion/postdetail/bean/Pager;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/bean/MyCommentListBean;->pager:Lcom/transsion/postdetail/bean/Pager;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/postdetail/bean/MyCommentListBean;->commentList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/postdetail/bean/MyCommentListBean;->pager:Lcom/transsion/postdetail/bean/Pager;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/transsion/postdetail/bean/Pager;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final setCommentList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/CommentBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/postdetail/bean/MyCommentListBean;->commentList:Ljava/util/List;

    return-void
.end method

.method public final setPager(Lcom/transsion/postdetail/bean/Pager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/bean/MyCommentListBean;->pager:Lcom/transsion/postdetail/bean/Pager;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/transsion/postdetail/bean/MyCommentListBean;->commentList:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/postdetail/bean/MyCommentListBean;->pager:Lcom/transsion/postdetail/bean/Pager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MyCommentListBean(commentList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", pager="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
