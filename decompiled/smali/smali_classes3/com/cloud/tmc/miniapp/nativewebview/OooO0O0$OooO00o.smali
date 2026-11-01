.class public final Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0$OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/nativewebview/listener/OooO00o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OooO00o"
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$json"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0O0:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWebviewEvent eventName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " $ json = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;->postEventMessage(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0O0:Ljava/lang/String;

    const-string p2, "onWebviewEvent"

    invoke-static {p0, p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 3

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;

    new-instance v2, Lcom/cloud/tmc/miniapp/nativewebview/a;

    invoke-direct {v2, v1, p1, p2}, Lcom/cloud/tmc/miniapp/nativewebview/a;-><init>(Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;

    iget-object p2, p2, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0O0:Ljava/lang/String;

    const-string v0, "onWebviewEvent"

    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
