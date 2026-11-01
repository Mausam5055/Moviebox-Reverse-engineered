.class public Lcom/cloud/hisavana/sdk/common/tranmeasure/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/common/tranmeasure/e$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/16 v0, 0xa

    iput v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->b:I

    return-void
.end method

.method static synthetic a(Lcom/cloud/hisavana/sdk/common/tranmeasure/e;Ljava/lang/Object;)Lcom/cloud/hisavana/sdk/common/tranmeasure/d;
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->b(Ljava/lang/Object;)Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/Object;)Lcom/cloud/hisavana/sdk/common/tranmeasure/d;
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "ssp_measure"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->d(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v0, "MeasureSessionManager have existed session"

    invoke-virtual {p1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "MeasureSession create new session"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    invoke-direct {v0, p1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;
    .locals 1

    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e$b;->a()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    move-result-object v0

    return-object v0
.end method

.method private h()Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected d(Lcom/cloud/hisavana/sdk/common/tranmeasure/d;)V
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "ssp_measure"

    const-string v2, "registerSession(\u6ce8\u518c\u4e00\u4e2a \u9700\u8981\u76d1\u63a7\u7684 Session)"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/Monitor;->getInstance()Lcom/cloud/hisavana/sdk/common/tranmeasure/Monitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/Monitor;->start()V

    :cond_1
    return-void
.end method

.method public e(Ljava/lang/Object;Landroid/view/View;Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lcom/cloud/hisavana/sdk/common/tranmeasure/e$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e$a;-><init>(Lcom/cloud/hisavana/sdk/common/tranmeasure/e;Ljava/lang/Object;Landroid/view/View;Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->e(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string p2, "ssp_measure"

    const-string p3, "registerView: key or adView or listener is null"

    invoke-virtual {p1, p2, p3}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected f(Lcom/cloud/hisavana/sdk/common/tranmeasure/d;)V
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "ssp_measure"

    const-string v2, "unregisterSession(\u6ce8\u9500\u76d1\u63a7)"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/Monitor;->getInstance()Lcom/cloud/hisavana/sdk/common/tranmeasure/Monitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/Monitor;->end()V

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->d(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v0, "ssp_measure"

    const-string v2, "got existed session"

    invoke-virtual {p1, v0, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->a()V

    :cond_2
    return-void
.end method

.method protected i()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->j()V

    goto :goto_0

    :cond_1
    return-void
.end method
