.class Lcom/transsion/push/config/PushRepository$2$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/push/ITopicListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/config/PushRepository$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/push/config/PushRepository$2;


# direct methods
.method constructor <init>(Lcom/transsion/push/config/PushRepository$2;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/push/config/PushRepository$2$a;->a:Lcom/transsion/push/config/PushRepository$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/push/config/PushRepository$2$a;->a:Lcom/transsion/push/config/PushRepository$2;

    iget-object v0, v0, Lcom/transsion/push/config/PushRepository$2;->val$listener:Lcom/transsion/push/ITopicListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/push/ITopicListener;->onFail(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/push/config/PushRepository$2$a;->a:Lcom/transsion/push/config/PushRepository$2;

    iget-object v0, v0, Lcom/transsion/push/config/PushRepository$2;->this$0:Lcom/transsion/push/config/PushRepository;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "topics"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/push/config/PushRepository;->getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/transsion/push/config/PushRepository$2$a;->a:Lcom/transsion/push/config/PushRepository$2;

    iget-object v1, v1, Lcom/transsion/push/config/PushRepository$2;->val$topic:Ljava/lang/String;

    const-string v3, "app_topic_unsubscribe_all"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/transsion/push/config/PushRepository$2$a;->a:Lcom/transsion/push/config/PushRepository$2;

    iget-object v1, v1, Lcom/transsion/push/config/PushRepository$2;->val$topic:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/push/config/PushRepository$2$a;->a:Lcom/transsion/push/config/PushRepository$2;

    iget-object v1, v1, Lcom/transsion/push/config/PushRepository$2;->val$topic:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/push/config/PushRepository$2$a;->a:Lcom/transsion/push/config/PushRepository$2;

    iget-object v1, v1, Lcom/transsion/push/config/PushRepository$2;->val$topic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/transsion/push/config/PushRepository$2$a;->a:Lcom/transsion/push/config/PushRepository$2;

    iget-object v1, v1, Lcom/transsion/push/config/PushRepository$2;->this$0:Lcom/transsion/push/config/PushRepository;

    invoke-virtual {v1, v2, v0}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/push/config/PushRepository$2$a;->a:Lcom/transsion/push/config/PushRepository$2;

    iget-object v0, v0, Lcom/transsion/push/config/PushRepository$2;->val$listener:Lcom/transsion/push/ITopicListener;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/transsion/push/ITopicListener;->onSuccess()V

    :cond_3
    return-void
.end method
