.class public interface abstract Lcom/cloud/tmc/kernel/security/AccessControlManagement;
.super Ljava/lang/Object;


# virtual methods
.method public abstract asyncPermissionCheck(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/security/Accessor;)Z
.end method

.method public abstract bizPermissionCheck(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/security/Accessor;)Z
.end method

.method public abstract manageAccessorGroup(Lcom/cloud/tmc/kernel/security/Accessor;)Lcom/cloud/tmc/kernel/security/Group;
.end method

.method public abstract manageAccessorPermissions(Lcom/cloud/tmc/kernel/security/Accessor;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/security/Accessor;",
            ")",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/kernel/security/Permission;",
            ">;"
        }
    .end annotation
.end method

.method public abstract needPermissionCheck(Lcom/cloud/tmc/kernel/security/Accessor;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/security/Accessor;",
            "Ljava/util/List<",
            "+",
            "Lcom/cloud/tmc/kernel/security/Guard;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract permissionCheck(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/security/Accessor;)Z
.end method
