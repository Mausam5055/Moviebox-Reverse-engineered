.class Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/HiB$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/HiB;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/HiB;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/HiB;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/HiB$1;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/HiB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "systemHttp Dispatcher"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    return-object v0
.end method
