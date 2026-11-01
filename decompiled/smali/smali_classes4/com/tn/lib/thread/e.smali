.class public final Lcom/tn/lib/thread/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tn/lib/thread/a;


# instance fields
.field private final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "mRunnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tn/lib/thread/e;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 1

    iget-object v0, p0, Lcom/tn/lib/thread/e;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    sget-object v0, Lcom/tn/lib/thread/a;->a:Lcom/tn/lib/thread/a$a;

    invoke-virtual {v0}, Lcom/tn/lib/thread/a$a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    return v0
.end method
