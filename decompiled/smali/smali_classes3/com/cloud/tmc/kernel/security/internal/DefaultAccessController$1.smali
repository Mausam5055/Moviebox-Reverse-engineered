.class Lcom/cloud/tmc/kernel/security/internal/DefaultAccessController$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/security/Accessor$InquiryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/kernel/security/internal/DefaultAccessController;->apply(Lcom/cloud/tmc/kernel/security/Accessor;Ljava/util/List;Lcom/cloud/tmc/kernel/security/AccessController$ApplyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/kernel/security/internal/DefaultAccessController;

.field final synthetic val$callback:Lcom/cloud/tmc/kernel/security/AccessController$ApplyCallback;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/kernel/security/internal/DefaultAccessController;Lcom/cloud/tmc/kernel/security/AccessController$ApplyCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/kernel/security/internal/DefaultAccessController$1;->this$0:Lcom/cloud/tmc/kernel/security/internal/DefaultAccessController;

    iput-object p2, p0, Lcom/cloud/tmc/kernel/security/internal/DefaultAccessController$1;->val$callback:Lcom/cloud/tmc/kernel/security/AccessController$ApplyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/cloud/tmc/kernel/security/Permission;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/cloud/tmc/kernel/security/Permission;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/cloud/tmc/kernel/security/internal/DefaultAccessController$1;->val$callback:Lcom/cloud/tmc/kernel/security/AccessController$ApplyCallback;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/kernel/security/internal/DefaultAccessController$1;->val$callback:Lcom/cloud/tmc/kernel/security/AccessController$ApplyCallback;

    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/security/AccessController$ApplyCallback;->onFailure(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/kernel/security/internal/DefaultAccessController$1;->val$callback:Lcom/cloud/tmc/kernel/security/AccessController$ApplyCallback;

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/security/AccessController$ApplyCallback;->onSuccess()V

    :cond_1
    :goto_0
    return-void
.end method
