.class public final Lcom/cloud/tmc/miniapp/prestrategy/OooO0O0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/ipc/OooO0O0;


# instance fields
.field public final OooO00o:Ljava/lang/String;

.field public final OooO0O0:Ljava/lang/String;

.field public final synthetic OooO0OO:Landroid/content/Context;

.field public final synthetic OooO0Oo:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0O0;->OooO0OO:Landroid/content/Context;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0O0;->OooO0Oo:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0O0;->OooO00o:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0O0;->OooO0O0:Ljava/lang/String;

    return-void
.end method

.method public static final OooO00o(Landroid/content/Context;Lcom/cloud/tmc/miniapp/prestrategy/OooO0O0;Lkotlin/jvm/functions/Function1;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/prestrategy/PreStrategyManager;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PreStrategyManager;

    iget-object v1, p1, Lcom/cloud/tmc/miniapp/prestrategy/OooO0O0;->OooO00o:Ljava/lang/String;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/prestrategy/OooO0O0;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/cloud/tmc/miniapp/prestrategy/PreStrategyManager;->OooO0O0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/cloud/tmc/miniapp/prestrategy/PreStrategyManager;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PreStrategyManager;

    const-string p1, "Prefetch:PreStrategyManager"

    invoke-static {p1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .locals 0

    sget-object p1, Lcom/cloud/tmc/miniapp/prestrategy/PreStrategyManager;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PreStrategyManager;

    const-string p1, "Prefetch:PreStrategyManager"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public OooO00o(Z)V
    .locals 3

    if-nez p1, :cond_0

    :try_start_0
    sget-object p1, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0O0;->OooO0OO:Landroid/content/Context;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0O0;->OooO0Oo:Lkotlin/jvm/functions/Function1;

    new-instance v2, Lcom/cloud/tmc/miniapp/prestrategy/a;

    invoke-direct {v2, v0, p0, v1}, Lcom/cloud/tmc/miniapp/prestrategy/a;-><init>(Landroid/content/Context;Lcom/cloud/tmc/miniapp/prestrategy/OooO0O0;Lkotlin/jvm/functions/Function1;)V

    invoke-static {p1, v2}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lcom/cloud/tmc/miniapp/prestrategy/PreStrategyManager;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PreStrategyManager;

    const-string v0, "Prefetch:PreStrategyManager"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
