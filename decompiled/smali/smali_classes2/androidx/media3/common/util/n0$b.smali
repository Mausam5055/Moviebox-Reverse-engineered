.class final Landroidx/media3/common/util/n0$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/util/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/util/n0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/os/Message;

.field private b:Landroidx/media3/common/util/n0;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/util/n0$a;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/common/util/n0$b;-><init>()V

    return-void
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/common/util/n0$b;->a:Landroid/os/Message;

    iput-object v0, p0, Landroidx/media3/common/util/n0$b;->b:Landroidx/media3/common/util/n0;

    invoke-static {p0}, Landroidx/media3/common/util/n0;->c(Landroidx/media3/common/util/n0$b;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/util/n0$b;->a:Landroid/os/Message;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0}, Landroidx/media3/common/util/n0$b;->b()V

    return-void
.end method

.method public c(Landroid/os/Handler;)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/util/n0$b;->a:Landroid/os/Message;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result p1

    invoke-direct {p0}, Landroidx/media3/common/util/n0$b;->b()V

    return p1
.end method

.method public d(Landroid/os/Message;Landroidx/media3/common/util/n0;)Landroidx/media3/common/util/n0$b;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/util/n0$b;->a:Landroid/os/Message;

    iput-object p2, p0, Landroidx/media3/common/util/n0$b;->b:Landroidx/media3/common/util/n0;

    return-object p0
.end method
