.class public Lcom/cloud/tmc/kernel/scheduler/internal/DefaultInterruptor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/scheduler/Interruptor;


# instance fields
.field private isInterrupted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/tmc/kernel/scheduler/internal/DefaultInterruptor;->isInterrupted:Z

    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/kernel/scheduler/internal/DefaultInterruptor;->isInterrupted:Z

    return-void
.end method

.method public isInterrupted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/kernel/scheduler/internal/DefaultInterruptor;->isInterrupted:Z

    return v0
.end method

.method public setInterrupted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/kernel/scheduler/internal/DefaultInterruptor;->isInterrupted:Z

    return-void
.end method
