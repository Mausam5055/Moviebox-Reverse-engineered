.class Lcom/transsion/push/PushManager$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/PushManager;->setPushConfig(Lcom/transsion/push/bean/PushConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/push/PushManager;

.field final synthetic val$config:Lcom/transsion/push/bean/PushConfig;


# direct methods
.method constructor <init>(Lcom/transsion/push/PushManager;Lcom/transsion/push/bean/PushConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/push/PushManager$5;->this$0:Lcom/transsion/push/PushManager;

    iput-object p2, p0, Lcom/transsion/push/PushManager$5;->val$config:Lcom/transsion/push/bean/PushConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/push/PushManager$5;->val$config:Lcom/transsion/push/bean/PushConfig;

    invoke-static {v0}, Lcom/transsion/push/utils/PushUtils;->v(Lcom/transsion/push/bean/PushConfig;)V

    return-void
.end method
