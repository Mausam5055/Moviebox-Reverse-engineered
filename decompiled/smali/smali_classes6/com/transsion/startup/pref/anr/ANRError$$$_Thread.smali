.class Lcom/transsion/startup/pref/anr/ANRError$$$_Thread;
.super Ljava/lang/Throwable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/startup/pref/anr/ANRError$$;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "_Thread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/startup/pref/anr/ANRError$$;


# direct methods
.method private constructor <init>(Lcom/transsion/startup/pref/anr/ANRError$$;Lcom/transsion/startup/pref/anr/ANRError$$$_Thread;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/startup/pref/anr/ANRError$$$_Thread;->this$0:Lcom/transsion/startup/pref/anr/ANRError$$;

    invoke-static {p1}, Lcom/transsion/startup/pref/anr/ANRError$$;->a(Lcom/transsion/startup/pref/anr/ANRError$$;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/startup/pref/anr/ANRError$$;Lcom/transsion/startup/pref/anr/ANRError$$$_Thread;Lcom/transsion/startup/pref/anr/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/startup/pref/anr/ANRError$$$_Thread;-><init>(Lcom/transsion/startup/pref/anr/ANRError$$;Lcom/transsion/startup/pref/anr/ANRError$$$_Thread;)V

    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/transsion/startup/pref/anr/ANRError$$$_Thread;->this$0:Lcom/transsion/startup/pref/anr/ANRError$$;

    invoke-static {v0}, Lcom/transsion/startup/pref/anr/ANRError$$;->b(Lcom/transsion/startup/pref/anr/ANRError$$;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-object p0
.end method
