.class public interface abstract Lcom/cloud/tmc/kernel/debug/IDebugManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# virtual methods
.method public abstract addObserver(Ljava/lang/Object;Lcom/cloud/tmc/kernel/debug/DebugCallback;)V
.end method

.method public abstract notifyObserver()V
.end method

.method public abstract removeObserver(Ljava/lang/Object;)V
.end method
