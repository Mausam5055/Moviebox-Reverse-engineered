.class Lcom/transsion/push/utils/FirebaseUtils$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/utils/FirebaseUtils;->d(Lcom/transsion/push/utils/FirebaseUtils$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/transsion/push/utils/FirebaseUtils$b;


# direct methods
.method constructor <init>(Lcom/transsion/push/utils/FirebaseUtils$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/push/utils/FirebaseUtils$2;->val$listener:Lcom/transsion/push/utils/FirebaseUtils$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/transsion/push/utils/FirebaseUtils;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "firebase  is not integrated"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->p()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->s()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/transsion/push/utils/FirebaseUtils$2$a;

    invoke-direct {v1, p0}, Lcom/transsion/push/utils/FirebaseUtils$2$a;-><init>(Lcom/transsion/push/utils/FirebaseUtils$2;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/push/utils/FirebaseUtils$2;->val$listener:Lcom/transsion/push/utils/FirebaseUtils$b;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/push/utils/FirebaseUtils$b;->onFail()V

    :cond_1
    return-void
.end method
