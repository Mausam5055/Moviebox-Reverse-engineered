.class final Lcom/amazonaws/event/ProgressListenerCallbackExecutor$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$listener:Lcom/amazonaws/event/ProgressListener;

.field final synthetic val$progressEvent:Lcom/amazonaws/event/ProgressEvent;


# direct methods
.method constructor <init>(Lcom/amazonaws/event/ProgressListener;Lcom/amazonaws/event/ProgressEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$1;->val$listener:Lcom/amazonaws/event/ProgressListener;

    iput-object p2, p0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$1;->val$progressEvent:Lcom/amazonaws/event/ProgressEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$1;->val$listener:Lcom/amazonaws/event/ProgressListener;

    iget-object v1, p0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$1;->val$progressEvent:Lcom/amazonaws/event/ProgressEvent;

    invoke-interface {v0, v1}, Lcom/amazonaws/event/ProgressListener;->a(Lcom/amazonaws/event/ProgressEvent;)V

    return-void
.end method
