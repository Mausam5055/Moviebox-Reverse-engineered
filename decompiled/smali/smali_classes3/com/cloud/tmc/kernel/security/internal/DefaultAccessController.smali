.class public Lcom/cloud/tmc/kernel/security/internal/DefaultAccessController;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/security/AccessController;


# static fields
.field private static final TAG:Ljava/lang/String; = "TmcKernel:Permission"


# instance fields
.field private accessControlManagement:Lcom/cloud/tmc/kernel/security/AccessControlManagement;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private apply(Lcom/cloud/tmc/kernel/security/Accessor;Ljava/util/List;Lcom/cloud/tmc/kernel/security/AccessController$ApplyCallback;)V
    .locals 1
    .param p3    # Lcom/cloud/tmc/kernel/security/AccessController$ApplyCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/security/Accessor;",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/kernel/security/Permission;",
            ">;",
            "Lcom/cloud/tmc/kernel/security/AccessController$ApplyCallback;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/cloud/tmc/kernel/security/internal/DefaultAccessController$1;

    invoke-direct {v0, p0, p3}, Lcom/cloud/tmc/kernel/security/internal/DefaultAccessController$1;-><init>(Lcom/cloud/tmc/kernel/security/internal/DefaultAccessController;Lcom/cloud/tmc/kernel/security/AccessController$ApplyCallback;)V

    invoke-interface {p1, p2, v0}, Lcom/cloud/tmc/kernel/security/Accessor;->inquiry(Ljava/util/List;Lcom/cloud/tmc/kernel/security/Accessor$InquiryCallback;)V

    return-void
.end method

.method private checkGroup(Lcom/cloud/tmc/kernel/security/Permission;Lcom/cloud/tmc/kernel/security/Group;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloud/tmc/kernel/security/AccessControlException;
        }
    .end annotation

    invoke-interface {p2}, Lcom/cloud/tmc/kernel/security/Group;->permissions()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/security/Permission;

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/security/Permission;->authority()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/security/Permission;->authority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public check(Lcom/cloud/tmc/kernel/security/Accessor;Ljava/util/List;Lcom/cloud/tmc/kernel/security/AccessController$ApplyCallback;)Z
    .locals 0
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

    const/4 p1, 0x0

    return p1
.end method

.method public setAccessControlManagement(Lcom/cloud/tmc/kernel/security/AccessControlManagement;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/security/internal/DefaultAccessController;->accessControlManagement:Lcom/cloud/tmc/kernel/security/AccessControlManagement;

    return-void
.end method
