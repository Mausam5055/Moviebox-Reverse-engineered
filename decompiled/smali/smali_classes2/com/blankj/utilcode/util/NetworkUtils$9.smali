.class Lcom/blankj/utilcode/util/NetworkUtils$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$consumer:Lcom/blankj/utilcode/util/Utils$b;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/Utils$b;)V
    .locals 0

    iput-object p1, p0, Lcom/blankj/utilcode/util/NetworkUtils$9;->val$consumer:Lcom/blankj/utilcode/util/Utils$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->a()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/blankj/utilcode/util/NetworkUtils$9;->val$consumer:Lcom/blankj/utilcode/util/Utils$b;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->g()V

    :cond_0
    return-void
.end method
