.class Lcom/transsion/push/config/PushRepository$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/config/PushRepository;->unsubscribeFromTopic(Ljava/lang/String;Lcom/transsion/push/ITopicListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/push/config/PushRepository;

.field final synthetic val$listener:Lcom/transsion/push/ITopicListener;

.field final synthetic val$topic:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/push/config/PushRepository;Ljava/lang/String;Lcom/transsion/push/ITopicListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/push/config/PushRepository$2;->this$0:Lcom/transsion/push/config/PushRepository;

    iput-object p2, p0, Lcom/transsion/push/config/PushRepository$2;->val$topic:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/push/config/PushRepository$2;->val$listener:Lcom/transsion/push/ITopicListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/push/config/PushRepository$2;->this$0:Lcom/transsion/push/config/PushRepository;

    invoke-static {v0}, Lcom/transsion/push/config/PushRepository;->a(Lcom/transsion/push/config/PushRepository;)Lcom/transsion/push/config/a;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/push/config/PushRepository$2;->val$topic:Ljava/lang/String;

    new-instance v2, Lcom/transsion/push/config/PushRepository$2$a;

    invoke-direct {v2, p0}, Lcom/transsion/push/config/PushRepository$2$a;-><init>(Lcom/transsion/push/config/PushRepository$2;)V

    const-string v3, "unsubscribe"

    invoke-virtual {v0, v1, v3, v2}, Lcom/transsion/push/config/a;->g(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/push/ITopicListener;)V

    return-void
.end method
