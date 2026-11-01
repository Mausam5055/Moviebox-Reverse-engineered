.class public final synthetic Lfh/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/ExecutorService;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfh/a;->a:Ljava/util/concurrent/ExecutorService;

    iput-object p2, p0, Lfh/a;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lfh/a;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lfh/a;->b:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lfh/c;->a(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    return-void
.end method
