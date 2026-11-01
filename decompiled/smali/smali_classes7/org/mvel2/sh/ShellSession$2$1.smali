.class Lorg/mvel2/sh/ShellSession$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mvel2/sh/ShellSession$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/mvel2/sh/ShellSession$2;


# direct methods
.method constructor <init>(Lorg/mvel2/sh/ShellSession$2;)V
    .locals 0

    iput-object p1, p0, Lorg/mvel2/sh/ShellSession$2$1;->this$1:Lorg/mvel2/sh/ShellSession$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/mvel2/sh/ShellSession$2$1;->this$1:Lorg/mvel2/sh/ShellSession$2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
