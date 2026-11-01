.class public interface abstract Lcom/cloud/tmc/miniapp/action/HandlerAction;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/action/HandlerAction$Companion;,
        Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/action/HandlerAction$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/action/HandlerAction$Companion;->$$INSTANCE:Lcom/cloud/tmc/miniapp/action/HandlerAction$Companion;

    sput-object v0, Lcom/cloud/tmc/miniapp/action/HandlerAction;->Companion:Lcom/cloud/tmc/miniapp/action/HandlerAction$Companion;

    return-void
.end method


# virtual methods
.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract post(Ljava/lang/Runnable;)Z
.end method

.method public abstract postAtTime(Ljava/lang/Runnable;J)Z
.end method

.method public abstract postDelayed(Ljava/lang/Object;JLjava/lang/Runnable;)Z
.end method

.method public abstract postDelayed(Ljava/lang/Runnable;J)Z
.end method

.method public abstract removeCallbacks()V
.end method

.method public abstract removeCallbacks(Ljava/lang/Runnable;)V
.end method

.method public abstract removeCallbacksAndMessages(Ljava/lang/Object;)V
.end method
