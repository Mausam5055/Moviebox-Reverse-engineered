.class Lcom/transsion/push/config/PushRepository$1$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/push/ITopicListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/config/PushRepository$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashSet;

.field final synthetic b:Lcom/transsion/push/config/PushRepository$1;


# direct methods
.method constructor <init>(Lcom/transsion/push/config/PushRepository$1;Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/push/config/PushRepository$1$a;->b:Lcom/transsion/push/config/PushRepository$1;

    iput-object p2, p0, Lcom/transsion/push/config/PushRepository$1$a;->a:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/push/config/PushRepository$1$a;->b:Lcom/transsion/push/config/PushRepository$1;

    iget-object v0, v0, Lcom/transsion/push/config/PushRepository$1;->val$listener:Lcom/transsion/push/ITopicListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/push/ITopicListener;->onFail(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/push/config/PushRepository$1$a;->b:Lcom/transsion/push/config/PushRepository$1;

    iget-object v0, v0, Lcom/transsion/push/config/PushRepository$1;->val$topic:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/push/config/PushRepository$1$a;->b:Lcom/transsion/push/config/PushRepository$1;

    iget-object v0, v0, Lcom/transsion/push/config/PushRepository$1;->val$topic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/transsion/push/config/PushRepository$1$a;->a:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/push/config/PushRepository$1$a;->a:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/transsion/push/config/PushRepository$1$a;->b:Lcom/transsion/push/config/PushRepository$1;

    iget-object v1, v1, Lcom/transsion/push/config/PushRepository$1;->val$topic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v0

    const-string v1, "topics"

    iget-object v2, p0, Lcom/transsion/push/config/PushRepository$1$a;->a:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/push/config/PushRepository$1$a;->b:Lcom/transsion/push/config/PushRepository$1;

    iget-object v0, v0, Lcom/transsion/push/config/PushRepository$1;->val$listener:Lcom/transsion/push/ITopicListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/transsion/push/ITopicListener;->onSuccess()V

    :cond_2
    return-void
.end method
