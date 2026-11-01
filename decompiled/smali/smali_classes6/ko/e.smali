.class public final synthetic Lko/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lko/d0;

.field public final synthetic b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lko/d0;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lko/e;->a:Lko/d0;

    iput-object p2, p0, Lko/e;->b:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lko/e;->a:Lko/d0;

    iget-object v1, p0, Lko/e;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1}, Lko/d0;->c(Lko/d0;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
