.class public final Lcom/transsion/postdetail/comment/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/postdetail/comment/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lro/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/comment/g$a;->a:Landroid/content/Context;

    new-instance p1, Lro/a;

    invoke-direct {p1}, Lro/a;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/comment/g$a;->b:Lro/a;

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/postdetail/comment/g;
    .locals 3

    new-instance v0, Lcom/transsion/postdetail/comment/g;

    iget-object v1, p0, Lcom/transsion/postdetail/comment/g$a;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/postdetail/comment/g;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, p0, Lcom/transsion/postdetail/comment/g$a;->b:Lro/a;

    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/comment/g;->k(Lro/a;)V

    return-object v0
.end method

.method public final b(Landroid/text/Editable;)Lcom/transsion/postdetail/comment/g$a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/comment/g$a;->b:Lro/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lro/a;->g(Landroid/text/Editable;)V

    :cond_0
    return-object p0
.end method

.method public final c(Lcom/transsion/postdetail/comment/i0;)Lcom/transsion/postdetail/comment/g$a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/comment/g$a;->b:Lro/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lro/a;->f(Lcom/transsion/postdetail/comment/i0;)V

    :cond_0
    return-object p0
.end method

.method public final d(I)Lcom/transsion/postdetail/comment/g$a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/comment/g$a;->b:Lro/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lro/a;->h(I)V

    :cond_0
    return-object p0
.end method

.method public final e(Lcom/transsion/moviedetailapi/bean/CommentBean;)Lcom/transsion/postdetail/comment/g$a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/comment/g$a;->b:Lro/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lro/a;->i(Lcom/transsion/moviedetailapi/bean/CommentBean;)V

    :cond_0
    return-object p0
.end method
