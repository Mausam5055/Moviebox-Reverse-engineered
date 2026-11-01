.class Lcom/transsion/push/PushManager$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/PushManager;->setAppInfo(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/push/PushManager;


# direct methods
.method constructor <init>(Lcom/transsion/push/PushManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/push/PushManager$6;->this$0:Lcom/transsion/push/PushManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/push/config/PushRepository;->syncActive()V

    return-void
.end method
