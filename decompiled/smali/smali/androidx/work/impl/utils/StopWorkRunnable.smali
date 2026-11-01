.class public final Landroidx/work/impl/utils/StopWorkRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bB!\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\n\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0010R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0011R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0012R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/work/impl/utils/StopWorkRunnable;",
        "Ljava/lang/Runnable;",
        "Landroidx/work/impl/s;",
        "processor",
        "Landroidx/work/impl/y;",
        "token",
        "",
        "stopInForeground",
        "",
        "reason",
        "<init>",
        "(Landroidx/work/impl/s;Landroidx/work/impl/y;ZI)V",
        "(Landroidx/work/impl/s;Landroidx/work/impl/y;Z)V",
        "",
        "run",
        "()V",
        "Landroidx/work/impl/s;",
        "Landroidx/work/impl/y;",
        "Z",
        "I",
        "work-runtime_release"
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
.field private final processor:Landroidx/work/impl/s;

.field private final reason:I

.field private final stopInForeground:Z

.field private final token:Landroidx/work/impl/y;


# direct methods
.method public constructor <init>(Landroidx/work/impl/s;Landroidx/work/impl/y;Z)V
    .locals 1

    const-string v0, "processor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, -0x200

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/work/impl/utils/StopWorkRunnable;-><init>(Landroidx/work/impl/s;Landroidx/work/impl/y;ZI)V

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/s;Landroidx/work/impl/y;ZI)V
    .locals 1

    const-string v0, "processor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/utils/StopWorkRunnable;->processor:Landroidx/work/impl/s;

    iput-object p2, p0, Landroidx/work/impl/utils/StopWorkRunnable;->token:Landroidx/work/impl/y;

    iput-boolean p3, p0, Landroidx/work/impl/utils/StopWorkRunnable;->stopInForeground:Z

    iput p4, p0, Landroidx/work/impl/utils/StopWorkRunnable;->reason:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-boolean v0, p0, Landroidx/work/impl/utils/StopWorkRunnable;->stopInForeground:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/utils/StopWorkRunnable;->processor:Landroidx/work/impl/s;

    iget-object v1, p0, Landroidx/work/impl/utils/StopWorkRunnable;->token:Landroidx/work/impl/y;

    iget v2, p0, Landroidx/work/impl/utils/StopWorkRunnable;->reason:I

    invoke-virtual {v0, v1, v2}, Landroidx/work/impl/s;->u(Landroidx/work/impl/y;I)Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/work/impl/utils/StopWorkRunnable;->processor:Landroidx/work/impl/s;

    iget-object v1, p0, Landroidx/work/impl/utils/StopWorkRunnable;->token:Landroidx/work/impl/y;

    iget v2, p0, Landroidx/work/impl/utils/StopWorkRunnable;->reason:I

    invoke-virtual {v0, v1, v2}, Landroidx/work/impl/s;->v(Landroidx/work/impl/y;I)Z

    move-result v0

    :goto_0
    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v1

    const-string v2, "StopWorkRunnable"

    invoke-static {v2}, Landroidx/work/t;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StopWorkRunnable for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/work/impl/utils/StopWorkRunnable;->token:Landroidx/work/impl/y;

    invoke-virtual {v4}, Landroidx/work/impl/y;->a()Landroidx/work/impl/model/x;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/work/impl/model/x;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; Processor.stopWork = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
