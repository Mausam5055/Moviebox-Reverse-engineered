.class Lcom/mbridge/msdk/click/p$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/click/p;->a(Lcom/mbridge/msdk/foundation/same/task/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/click/p;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/click/p;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/click/p$b;->a:Lcom/mbridge/msdk/click/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/click/p$b;->a:Lcom/mbridge/msdk/click/p;

    invoke-static {v0}, Lcom/mbridge/msdk/click/p;->b(Lcom/mbridge/msdk/click/p;)Lcom/mbridge/msdk/click/g;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/click/p$b;->a:Lcom/mbridge/msdk/click/p;

    invoke-static {v0}, Lcom/mbridge/msdk/click/p;->a(Lcom/mbridge/msdk/click/p;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/click/p$b;->a:Lcom/mbridge/msdk/click/p;

    invoke-static {v0}, Lcom/mbridge/msdk/click/p;->b(Lcom/mbridge/msdk/click/p;)Lcom/mbridge/msdk/click/g;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/click/p$b;->a:Lcom/mbridge/msdk/click/p;

    invoke-static {v1}, Lcom/mbridge/msdk/click/p;->a(Lcom/mbridge/msdk/click/p;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/click/g;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/click/p$b;->a:Lcom/mbridge/msdk/click/p;

    invoke-static {v0}, Lcom/mbridge/msdk/click/p;->b(Lcom/mbridge/msdk/click/p;)Lcom/mbridge/msdk/click/g;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/click/p$b;->a:Lcom/mbridge/msdk/click/p;

    invoke-static {v1}, Lcom/mbridge/msdk/click/p;->a(Lcom/mbridge/msdk/click/p;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/click/p$b;->a:Lcom/mbridge/msdk/click/p;

    invoke-static {v2}, Lcom/mbridge/msdk/click/p;->a(Lcom/mbridge/msdk/click/p;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mbridge/msdk/click/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
