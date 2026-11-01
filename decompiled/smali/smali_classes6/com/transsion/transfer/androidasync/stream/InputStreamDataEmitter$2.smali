.class Lcom/transsion/transfer/androidasync/stream/InputStreamDataEmitter$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transfer/androidasync/stream/InputStreamDataEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/transfer/androidasync/stream/InputStreamDataEmitter;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/stream/InputStreamDataEmitter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    invoke-static {v0, v1}, Lcom/transsion/transfer/androidasync/stream/InputStreamDataEmitter;->c(Lcom/transsion/transfer/androidasync/stream/InputStreamDataEmitter;Ljava/lang/Exception;)V

    return-void
.end method
