.class public final synthetic Lcom/transsion/player/orplayer/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function0;

.field public final synthetic b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/player/orplayer/l;->a:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/transsion/player/orplayer/l;->b:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/player/orplayer/l;->a:Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Lcom/transsion/player/orplayer/l;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1}, Lcom/transsion/player/orplayer/w;->l(Lkotlin/jvm/functions/Function0;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
