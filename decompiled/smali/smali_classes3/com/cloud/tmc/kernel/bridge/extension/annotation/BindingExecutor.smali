.class public interface abstract annotation Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingExecutor;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/Bindable;
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingExecutor;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->SYNC:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract value()Lcom/cloud/tmc/kernel/executor/ExecutorType;
.end method
