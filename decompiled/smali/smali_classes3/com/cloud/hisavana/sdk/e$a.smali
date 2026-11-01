.class Lcom/cloud/hisavana/sdk/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/l4$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/e;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/e;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/e$a;->a:Lcom/cloud/hisavana/sdk/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e$a;->a:Lcom/cloud/hisavana/sdk/e;

    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/e;->s(Lcom/cloud/hisavana/sdk/e;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e$a;->a:Lcom/cloud/hisavana/sdk/e;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/e;->g(Lcom/cloud/hisavana/sdk/e;Ljava/util/List;)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/e$a;->a:Lcom/cloud/hisavana/sdk/e;

    if-gez p1, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/e;->k(Lcom/cloud/hisavana/sdk/e;)Lcom/cloud/hisavana/sdk/q3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->a()I

    move-result p1

    :goto_0
    invoke-static {p2, p1}, Lcom/cloud/hisavana/sdk/e;->r(Lcom/cloud/hisavana/sdk/e;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e$a;->a:Lcom/cloud/hisavana/sdk/e;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/e;->B(Lcom/cloud/hisavana/sdk/e;Ljava/util/List;)Ljava/util/List;

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v0, "ssp"

    const-string v1, "onWebRecommendInfoSuccess"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e$a;->a:Lcom/cloud/hisavana/sdk/e;

    invoke-static {v0, p2}, Lcom/cloud/hisavana/sdk/e;->s(Lcom/cloud/hisavana/sdk/e;Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/e$a;->a:Lcom/cloud/hisavana/sdk/e;

    invoke-static {p2, p1}, Lcom/cloud/hisavana/sdk/e;->g(Lcom/cloud/hisavana/sdk/e;Ljava/util/List;)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/e$a;->a:Lcom/cloud/hisavana/sdk/e;

    if-gez p1, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/e;->k(Lcom/cloud/hisavana/sdk/e;)Lcom/cloud/hisavana/sdk/q3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->a()I

    move-result p1

    :goto_0
    invoke-static {p2, p1}, Lcom/cloud/hisavana/sdk/e;->r(Lcom/cloud/hisavana/sdk/e;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public c(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e$a;->a:Lcom/cloud/hisavana/sdk/e;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/e;->A(Lcom/cloud/hisavana/sdk/e;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e$a;->a:Lcom/cloud/hisavana/sdk/e;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/e;->A(Lcom/cloud/hisavana/sdk/e;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e$a;->a:Lcom/cloud/hisavana/sdk/e;

    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/e;->x(Lcom/cloud/hisavana/sdk/e;Z)Z

    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e$a;->a:Lcom/cloud/hisavana/sdk/e;

    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/e;->s(Lcom/cloud/hisavana/sdk/e;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e$a;->a:Lcom/cloud/hisavana/sdk/e;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/e;->g(Lcom/cloud/hisavana/sdk/e;Ljava/util/List;)I

    move-result p1

    if-eq p1, v0, :cond_2

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/e$a;->a:Lcom/cloud/hisavana/sdk/e;

    if-gez p1, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/e;->k(Lcom/cloud/hisavana/sdk/e;)Lcom/cloud/hisavana/sdk/q3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->a()I

    move-result p1

    :goto_0
    invoke-static {p2, p1}, Lcom/cloud/hisavana/sdk/e;->r(Lcom/cloud/hisavana/sdk/e;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method
