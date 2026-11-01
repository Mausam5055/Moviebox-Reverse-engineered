.class Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/security/AccessController$ApplyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker;->onInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$guardList:Ljava/util/List;

.field final synthetic val$method:Ljava/lang/reflect/Method;

.field final synthetic val$proxy:Ljava/lang/Object;

.field final synthetic val$t1:J


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker;Ljava/lang/reflect/Method;JLjava/lang/Object;[Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->this$0:Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker;

    iput-object p2, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->val$method:Ljava/lang/reflect/Method;

    iput-wide p3, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->val$t1:J

    iput-object p5, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->val$proxy:Ljava/lang/Object;

    iput-object p6, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->val$args:[Ljava/lang/Object;

    iput-object p7, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->val$guardList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/cloud/tmc/kernel/security/Permission;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->this$0:Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker;

    iget-object v0, v0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;->mutable()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/security/Permission;

    iget-object v2, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->val$guardList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/security/Guard;

    invoke-interface {v3}, Lcom/cloud/tmc/kernel/security/Guard;->permit()Lcom/cloud/tmc/kernel/security/Permission;

    move-result-object v4

    invoke-interface {v4}, Lcom/cloud/tmc/kernel/security/Permission;->authority()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/security/Permission;->authority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->val$method:Ljava/lang/reflect/Method;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cost "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->val$t1:J

    sub-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Tmcintegration:ExtensionInvoker:Security"

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->this$0:Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker;

    new-instance v1, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    invoke-direct {v1, v0}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;-><init>(Ljava/util/List;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->val$proxy:Ljava/lang/Object;

    iget-object v2, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->val$method:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->val$args:[Ljava/lang/Object;

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->proceedSafe(Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onSuccess()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->val$method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cost "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->val$t1:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tmcintegration:ExtensionInvoker:Security"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->this$0:Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker;

    iget-object v1, v0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    iget-object v2, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->val$proxy:Ljava/lang/Object;

    iget-object v3, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->val$method:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;->val$args:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->proceedSafe(Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
