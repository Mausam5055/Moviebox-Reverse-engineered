.class public final Lqo/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lqo/a;

.field private b:Lcom/transsion/postdetail/bean/CommentListBean;


# direct methods
.method public constructor <init>(Lqo/a;Lcom/transsion/postdetail/bean/CommentListBean;)V
    .locals 1

    const-string v0, "commentBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqo/b;->a:Lqo/a;

    iput-object p2, p0, Lqo/b;->b:Lcom/transsion/postdetail/bean/CommentListBean;

    return-void
.end method


# virtual methods
.method public final a()Lqo/a;
    .locals 1

    iget-object v0, p0, Lqo/b;->a:Lqo/a;

    return-object v0
.end method

.method public final b()Lcom/transsion/postdetail/bean/CommentListBean;
    .locals 1

    iget-object v0, p0, Lqo/b;->b:Lcom/transsion/postdetail/bean/CommentListBean;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lqo/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lqo/b;

    iget-object v1, p0, Lqo/b;->a:Lqo/a;

    iget-object v3, p1, Lqo/b;->a:Lqo/a;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lqo/b;->b:Lcom/transsion/postdetail/bean/CommentListBean;

    iget-object p1, p1, Lqo/b;->b:Lcom/transsion/postdetail/bean/CommentListBean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lqo/b;->a:Lqo/a;

    invoke-virtual {v0}, Lqo/a;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lqo/b;->b:Lcom/transsion/postdetail/bean/CommentListBean;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/transsion/postdetail/bean/CommentListBean;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lqo/b;->a:Lqo/a;

    iget-object v1, p0, Lqo/b;->b:Lcom/transsion/postdetail/bean/CommentListBean;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubCommentData(commentBean="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", commentListBean="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
