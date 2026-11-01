.class public final Lcom/transsion/push/utils/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/push/utils/m$d;,
        Lcom/transsion/push/utils/m$c;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(ILjava/lang/String;Lcom/transsion/push/utils/m$c;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lqk/a;->a()Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0}, Lwl/a;->a(Landroid/content/Context;)Lyl/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lyl/a;->f(Z)Lyl/a;

    move-result-object v0

    invoke-static {}, Lqk/a;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lyl/b;->b(Z)Lyl/b;

    move-result-object v0

    check-cast v0, Lyl/a;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lyl/b;->a(I)Lyl/b;

    move-result-object v0

    check-cast v0, Lyl/a;

    invoke-virtual {v0, v1}, Lyl/b;->c(I)Lyl/b;

    move-result-object v0

    check-cast v0, Lyl/a;

    invoke-virtual {v0, p1}, Lyl/b;->d(Ljava/lang/String;)Lyl/b;

    move-result-object v0

    check-cast v0, Lyl/a;

    invoke-virtual {v0}, Lyl/a;->e()Lwl/b;

    move-result-object v0

    new-instance v1, Lcom/transsion/push/utils/m$b;

    invoke-direct {v1, p1, p2, p0}, Lcom/transsion/push/utils/m$b;-><init>(Ljava/lang/String;Lcom/transsion/push/utils/m$c;I)V

    invoke-virtual {v0, v1}, Lwl/b;->a(Lcom/transsion/http/impl/r;)V

    return-void

    :catch_0
    if-eqz p2, :cond_0

    const/4 p0, 0x0

    invoke-interface {p2, p1, p0}, Lcom/transsion/push/utils/m$c;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public static b(ILjava/util/List;Lcom/transsion/push/utils/m$d;)V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/transsion/push/utils/m$a;

    invoke-direct {v3, v0, v1, p2}, Lcom/transsion/push/utils/m$a;-><init>(Ljava/util/HashMap;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/transsion/push/utils/m$d;)V

    invoke-static {p0, v2, v3}, Lcom/transsion/push/utils/m;->a(ILjava/lang/String;Lcom/transsion/push/utils/m$c;)V

    goto :goto_0

    :cond_1
    return-void
.end method
