.class Lcom/blankj/utilcode/util/NetworkUtils$8;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/NetworkUtils;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->e()V

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->m()Lcom/blankj/utilcode/util/NetworkUtils$b;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->c()Lcom/blankj/utilcode/util/NetworkUtils$b;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/NetworkUtils$b;->a(Lcom/blankj/utilcode/util/NetworkUtils$b;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/NetworkUtils$b;->a(Lcom/blankj/utilcode/util/NetworkUtils$b;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/NetworkUtils;->f(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/blankj/utilcode/util/NetworkUtils;->d(Lcom/blankj/utilcode/util/NetworkUtils$b;)Lcom/blankj/utilcode/util/NetworkUtils$b;

    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$8$1;

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/NetworkUtils$8$1;-><init>(Lcom/blankj/utilcode/util/NetworkUtils$8;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/e0;->J(Ljava/lang/Runnable;)V

    return-void
.end method
