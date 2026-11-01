.class public final synthetic Lcom/cloud/tmc/offline/download/task/queue/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/queue/a;->a:Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/queue/a;->a:Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;

    invoke-static {v0, p1}, Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;->a(Lcom/cloud/tmc/offline/download/task/queue/TaskQueue;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
