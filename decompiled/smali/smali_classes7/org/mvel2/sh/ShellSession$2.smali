.class Lorg/mvel2/sh/ShellSession$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/mvel2/sh/a;

.field final synthetic val$outStream:Ljava/io/OutputStream;

.field final synthetic val$p:Ljava/lang/Process;

.field final synthetic val$runState:Lorg/mvel2/sh/a$a;

.field final synthetic val$sysPrintStream:Ljava/io/PrintStream;


# direct methods
.method constructor <init>(Lorg/mvel2/sh/a;Lorg/mvel2/sh/a$a;Ljava/io/OutputStream;Ljava/lang/Process;Ljava/io/PrintStream;)V
    .locals 0

    iput-object p1, p0, Lorg/mvel2/sh/ShellSession$2;->this$0:Lorg/mvel2/sh/a;

    iput-object p3, p0, Lorg/mvel2/sh/ShellSession$2;->val$outStream:Ljava/io/OutputStream;

    iput-object p4, p0, Lorg/mvel2/sh/ShellSession$2;->val$p:Ljava/lang/Process;

    iput-object p5, p0, Lorg/mvel2/sh/ShellSession$2;->val$sysPrintStream:Ljava/io/PrintStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/mvel2/sh/ShellSession$2$1;

    invoke-direct {v1, p0}, Lorg/mvel2/sh/ShellSession$2$1;-><init>(Lorg/mvel2/sh/ShellSession$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :try_start_0
    iget-object v0, p0, Lorg/mvel2/sh/ShellSession$2;->val$p:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lorg/mvel2/sh/ShellSession$2;->val$sysPrintStream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    const/4 v0, 0x0

    throw v0
.end method
