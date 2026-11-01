.class Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint$1;->this$0:Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint$1;->this$0:Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    invoke-static {p1}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->a(Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/ReflectUtils;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method
