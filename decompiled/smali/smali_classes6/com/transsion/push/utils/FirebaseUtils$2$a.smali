.class Lcom/transsion/push/utils/FirebaseUtils$2$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/utils/FirebaseUtils$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/push/utils/FirebaseUtils$2;


# direct methods
.method constructor <init>(Lcom/transsion/push/utils/FirebaseUtils$2;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/push/utils/FirebaseUtils$2$a;->a:Lcom/transsion/push/utils/FirebaseUtils$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v0

    const-string v1, "push_token"

    invoke-virtual {v0, v1, p1}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/push/utils/FirebaseUtils$2$a;->a:Lcom/transsion/push/utils/FirebaseUtils$2;

    iget-object p1, p1, Lcom/transsion/push/utils/FirebaseUtils$2;->val$listener:Lcom/transsion/push/utils/FirebaseUtils$b;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/transsion/push/utils/FirebaseUtils$b;->onSuccess()V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "firebase  token is empty"

    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/push/utils/FirebaseUtils$2$a;->a:Lcom/transsion/push/utils/FirebaseUtils$2;

    iget-object p1, p1, Lcom/transsion/push/utils/FirebaseUtils$2;->val$listener:Lcom/transsion/push/utils/FirebaseUtils$b;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/transsion/push/utils/FirebaseUtils$b;->onFail()V

    :cond_2
    :goto_0
    return-void
.end method
