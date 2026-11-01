.class public interface abstract Lcom/cloud/tmc/kernel/security/AccessController;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/kernel/security/AccessController$ApplyCallback;
    }
.end annotation


# virtual methods
.method public abstract check(Lcom/cloud/tmc/kernel/security/Accessor;Ljava/util/List;Lcom/cloud/tmc/kernel/security/AccessController$ApplyCallback;)Z
    .param p3    # Lcom/cloud/tmc/kernel/security/AccessController$ApplyCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/security/Accessor;",
            "Ljava/util/List<",
            "+",
            "Lcom/cloud/tmc/kernel/security/Guard;",
            ">;",
            "Lcom/cloud/tmc/kernel/security/AccessController$ApplyCallback;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloud/tmc/kernel/security/AccessControlException;
        }
    .end annotation
.end method

.method public abstract setAccessControlManagement(Lcom/cloud/tmc/kernel/security/AccessControlManagement;)V
.end method
