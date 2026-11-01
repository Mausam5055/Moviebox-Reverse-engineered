.class Lcom/transsion/startup/pref/anr/ANRWatchDog$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/startup/pref/anr/ANRWatchDog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/startup/pref/anr/ANRWatchDog;


# direct methods
.method constructor <init>(Lcom/transsion/startup/pref/anr/ANRWatchDog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog$4;->this$0:Lcom/transsion/startup/pref/anr/ANRWatchDog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog$4;->this$0:Lcom/transsion/startup/pref/anr/ANRWatchDog;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/transsion/startup/pref/anr/ANRWatchDog;->b(Lcom/transsion/startup/pref/anr/ANRWatchDog;J)V

    iget-object v0, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog$4;->this$0:Lcom/transsion/startup/pref/anr/ANRWatchDog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/startup/pref/anr/ANRWatchDog;->a(Lcom/transsion/startup/pref/anr/ANRWatchDog;Z)V

    return-void
.end method
