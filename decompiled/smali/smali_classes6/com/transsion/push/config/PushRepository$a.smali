.class Lcom/transsion/push/config/PushRepository$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/push/utils/FirebaseUtils$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/config/PushRepository;->getClientId(Lcom/transsion/push/IClientIdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/push/IClientIdListener;

.field final synthetic b:Lcom/transsion/push/config/PushRepository;


# direct methods
.method constructor <init>(Lcom/transsion/push/config/PushRepository;Lcom/transsion/push/IClientIdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/push/config/PushRepository$a;->b:Lcom/transsion/push/config/PushRepository;

    iput-object p2, p0, Lcom/transsion/push/config/PushRepository$a;->a:Lcom/transsion/push/IClientIdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/push/config/PushRepository$a;->a:Lcom/transsion/push/IClientIdListener;

    if-eqz v0, :cond_0

    const-string v1, "get token fail"

    invoke-interface {v0, v1}, Lcom/transsion/push/IClientIdListener;->onFail(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/push/config/PushRepository$a;->b:Lcom/transsion/push/config/PushRepository;

    iget-object v1, p0, Lcom/transsion/push/config/PushRepository$a;->a:Lcom/transsion/push/IClientIdListener;

    invoke-static {v0, v1}, Lcom/transsion/push/config/PushRepository;->b(Lcom/transsion/push/config/PushRepository;Lcom/transsion/push/IClientIdListener;)V

    return-void
.end method
