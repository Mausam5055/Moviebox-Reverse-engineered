.class public interface abstract Lcom/cloud/tmc/kernel/security/Group;
.super Ljava/lang/Object;


# virtual methods
.method public abstract assignPermissions(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/cloud/tmc/kernel/security/Permission;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract description()Ljava/lang/String;
.end method

.method public abstract groupName()Ljava/lang/String;
.end method

.method public abstract permissions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/cloud/tmc/kernel/security/Permission;",
            ">;"
        }
    .end annotation
.end method
