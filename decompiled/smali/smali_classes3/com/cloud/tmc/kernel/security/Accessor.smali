.class public interface abstract Lcom/cloud/tmc/kernel/security/Accessor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/kernel/security/Accessor$InquiryCallback;
    }
.end annotation


# virtual methods
.method public abstract getGroup()Lcom/cloud/tmc/kernel/security/Group;
.end method

.method public abstract inquiry(Ljava/util/List;Lcom/cloud/tmc/kernel/security/Accessor$InquiryCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/cloud/tmc/kernel/security/Permission;",
            ">;",
            "Lcom/cloud/tmc/kernel/security/Accessor$InquiryCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract usePermissions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/kernel/security/Permission;",
            ">;"
        }
    .end annotation
.end method
