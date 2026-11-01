.class Lcom/mbridge/msdk/tracker/network/f$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/tracker/network/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/mbridge/msdk/tracker/network/t;

.field private final b:Lcom/mbridge/msdk/tracker/network/v;

.field private final c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/tracker/network/t;Lcom/mbridge/msdk/tracker/network/v;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/tracker/network/f$b;->a:Lcom/mbridge/msdk/tracker/network/t;

    iput-object p2, p0, Lcom/mbridge/msdk/tracker/network/f$b;->b:Lcom/mbridge/msdk/tracker/network/v;

    iput-object p3, p0, Lcom/mbridge/msdk/tracker/network/f$b;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/f$b;->a:Lcom/mbridge/msdk/tracker/network/t;

    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/network/t;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/f$b;->a:Lcom/mbridge/msdk/tracker/network/t;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/tracker/network/t;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/f$b;->b:Lcom/mbridge/msdk/tracker/network/v;

    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/network/v;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/f$b;->a:Lcom/mbridge/msdk/tracker/network/t;

    iget-object v1, p0, Lcom/mbridge/msdk/tracker/network/f$b;->b:Lcom/mbridge/msdk/tracker/network/v;

    iget-object v1, v1, Lcom/mbridge/msdk/tracker/network/v;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/tracker/network/t;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/f$b;->a:Lcom/mbridge/msdk/tracker/network/t;

    iget-object v1, p0, Lcom/mbridge/msdk/tracker/network/f$b;->b:Lcom/mbridge/msdk/tracker/network/v;

    iget-object v1, v1, Lcom/mbridge/msdk/tracker/network/v;->c:Lcom/mbridge/msdk/tracker/network/b0;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/tracker/network/t;->b(Lcom/mbridge/msdk/tracker/network/b0;)V

    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/f$b;->b:Lcom/mbridge/msdk/tracker/network/v;

    iget-boolean v0, v0, Lcom/mbridge/msdk/tracker/network/v;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/f$b;->a:Lcom/mbridge/msdk/tracker/network/t;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/tracker/network/t;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/f$b;->a:Lcom/mbridge/msdk/tracker/network/t;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/tracker/network/t;->c(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/f$b;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method
