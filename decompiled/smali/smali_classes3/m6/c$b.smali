.class public final Lm6/c$b;
.super Landroidx/recyclerview/widget/DiffUtil$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm6/c;->f(Ljava/util/List;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lm6/c;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Lm6/c;)V
    .locals 0

    iput-object p1, p0, Lm6/c$b;->a:Ljava/util/List;

    iput-object p2, p0, Lm6/c$b;->b:Ljava/util/List;

    iput-object p3, p0, Lm6/c$b;->c:Lm6/c;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)Z
    .locals 1

    iget-object v0, p0, Lm6/c$b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lm6/c$b;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lm6/c$b;->c:Lm6/c;

    invoke-static {v0}, Lm6/c;->c(Lm6/c;)Lm6/d;

    move-result-object v0

    invoke-virtual {v0}, Lm6/d;->b()Landroidx/recyclerview/widget/DiffUtil$e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/DiffUtil$e;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public b(II)Z
    .locals 1

    iget-object v0, p0, Lm6/c$b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lm6/c$b;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lm6/c$b;->c:Lm6/c;

    invoke-static {v0}, Lm6/c;->c(Lm6/c;)Lm6/d;

    move-result-object v0

    invoke-virtual {v0}, Lm6/d;->b()Landroidx/recyclerview/widget/DiffUtil$e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/DiffUtil$e;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(II)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lm6/c$b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lm6/c$b;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lm6/c$b;->c:Lm6/c;

    invoke-static {v0}, Lm6/c;->c(Lm6/c;)Lm6/d;

    move-result-object v0

    invoke-virtual {v0}, Lm6/d;->b()Landroidx/recyclerview/widget/DiffUtil$e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/DiffUtil$e;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lm6/c$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lm6/c$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
