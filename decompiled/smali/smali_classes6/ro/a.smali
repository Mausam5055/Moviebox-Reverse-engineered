.class public final Lro/a;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Lcom/transsion/postdetail/comment/i0;

.field private c:Landroid/text/Editable;

.field private d:Lcom/transsion/moviedetailapi/bean/CommentBean;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    iput v0, p0, Lro/a;->a:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/postdetail/comment/i0;
    .locals 1

    iget-object v0, p0, Lro/a;->b:Lcom/transsion/postdetail/comment/i0;

    return-object v0
.end method

.method public final b()Landroid/text/Editable;
    .locals 1

    iget-object v0, p0, Lro/a;->c:Landroid/text/Editable;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lro/a;->a:I

    return v0
.end method

.method public final d()Lcom/transsion/moviedetailapi/bean/CommentBean;
    .locals 1

    iget-object v0, p0, Lro/a;->d:Lcom/transsion/moviedetailapi/bean/CommentBean;

    return-object v0
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lro/a;->d:Lcom/transsion/moviedetailapi/bean/CommentBean;

    iput-object v0, p0, Lro/a;->c:Landroid/text/Editable;

    return-void
.end method

.method public final f(Lcom/transsion/postdetail/comment/i0;)V
    .locals 0

    iput-object p1, p0, Lro/a;->b:Lcom/transsion/postdetail/comment/i0;

    return-void
.end method

.method public final g(Landroid/text/Editable;)V
    .locals 0

    iput-object p1, p0, Lro/a;->c:Landroid/text/Editable;

    return-void
.end method

.method public final h(I)V
    .locals 0

    iput p1, p0, Lro/a;->a:I

    return-void
.end method

.method public final i(Lcom/transsion/moviedetailapi/bean/CommentBean;)V
    .locals 0

    iput-object p1, p0, Lro/a;->d:Lcom/transsion/moviedetailapi/bean/CommentBean;

    return-void
.end method
