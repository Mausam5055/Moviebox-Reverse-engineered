.class public final Liv/h$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/impl/PingPongHelper$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liv/h;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Liv/h;


# direct methods
.method constructor <init>(Liv/h;)V
    .locals 0

    iput-object p1, p0, Liv/h$c;->a:Liv/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/b0;)V
    .locals 2

    const-string v0, "remoteIp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socket"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Liv/h;->v()Ljava/lang/String;

    iget-object p2, p0, Liv/h$c;->a:Liv/h;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "server detach socket has closed, clientIp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", delay check again"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Liv/h$c;->a:Liv/h;

    invoke-static {p2}, Liv/h;->q(Liv/h;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Liv/h$c;->a:Liv/h;

    invoke-static {p2}, Liv/h;->w(Liv/h;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Liv/h$c;->a:Liv/h;

    invoke-static {p1}, Liv/h;->s(Liv/h;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Liv/h$c;->a:Liv/h;

    invoke-static {p2}, Liv/h;->o(Liv/h;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
