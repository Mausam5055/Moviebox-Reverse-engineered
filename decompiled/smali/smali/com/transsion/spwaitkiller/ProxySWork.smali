.class public final Lcom/transsion/spwaitkiller/ProxySWork;
.super Ljava/util/LinkedList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/spwaitkiller/ProxySWork$AboveAndroid12Processor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedList<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001\u001aB\'\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0002J\u0015\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0013J\u0008\u0010\u0018\u001a\u00020\u000fH\u0016J\u0008\u0010\u0019\u001a\u00020\u0011H\u0016R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u00020\u00158VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/transsion/spwaitkiller/ProxySWork;",
        "T",
        "Ljava/util/LinkedList;",
        "proxy",
        "looper",
        "Landroid/os/Looper;",
        "aboveAndroid12Processor",
        "Lcom/transsion/spwaitkiller/ProxySWork$AboveAndroid12Processor;",
        "<init>",
        "(Ljava/util/LinkedList;Landroid/os/Looper;Lcom/transsion/spwaitkiller/ProxySWork$AboveAndroid12Processor;)V",
        "sHandler",
        "Landroid/os/Handler;",
        "clone",
        "",
        "delegateWork",
        "",
        "add",
        "",
        "t",
        "(Ljava/lang/Object;)Z",
        "size",
        "",
        "getSize",
        "()I",
        "clear",
        "isEmpty",
        "AboveAndroid12Processor",
        "SpWaitKiller_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final aboveAndroid12Processor:Lcom/transsion/spwaitkiller/ProxySWork$AboveAndroid12Processor;

.field private final proxy:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private sHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/util/LinkedList;Landroid/os/Looper;Lcom/transsion/spwaitkiller/ProxySWork$AboveAndroid12Processor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "TT;>;",
            "Landroid/os/Looper;",
            "Lcom/transsion/spwaitkiller/ProxySWork$AboveAndroid12Processor;",
            ")V"
        }
    .end annotation

    const-string v0, "proxy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "looper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/transsion/spwaitkiller/ProxySWork;->proxy:Ljava/util/LinkedList;

    iput-object p3, p0, Lcom/transsion/spwaitkiller/ProxySWork;->aboveAndroid12Processor:Lcom/transsion/spwaitkiller/ProxySWork$AboveAndroid12Processor;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/spwaitkiller/ProxySWork;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Ljava/util/LinkedList;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/spwaitkiller/ProxySWork;->delegateWork$lambda$0(Ljava/util/LinkedList;)V

    return-void
.end method

.method private final delegateWork()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/spwaitkiller/ProxySWork;->proxy:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/spwaitkiller/ProxySWork;->proxy:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type java.util.LinkedList<java.lang.Runnable>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/transsion/spwaitkiller/ProxySWork;->proxy:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    iget-object v1, p0, Lcom/transsion/spwaitkiller/ProxySWork;->sHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    new-instance v2, Lcom/transsion/spwaitkiller/a;

    invoke-direct {v2, v0}, Lcom/transsion/spwaitkiller/a;-><init>(Ljava/util/LinkedList;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private static final delegateWork$lambda$0(Ljava/util/LinkedList;)V
    .locals 2

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, "iterator(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "next(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/spwaitkiller/ProxySWork;->proxy:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/spwaitkiller/ProxySWork;->proxy:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/transsion/spwaitkiller/ProxySWork;->delegateWork()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/spwaitkiller/ProxySWork;->proxy:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public getSize()I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lcom/transsion/spwaitkiller/ProxySWork;->delegateWork()V

    iget-object v0, p0, Lcom/transsion/spwaitkiller/ProxySWork;->aboveAndroid12Processor:Lcom/transsion/spwaitkiller/ProxySWork$AboveAndroid12Processor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/spwaitkiller/ProxySWork$AboveAndroid12Processor;->reProxySWork()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/spwaitkiller/ProxySWork;->proxy:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final bridge remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/transsion/spwaitkiller/ProxySWork;->removeAt(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge removeAt(I)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final bridge size()I
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/spwaitkiller/ProxySWork;->getSize()I

    move-result v0

    return v0
.end method
