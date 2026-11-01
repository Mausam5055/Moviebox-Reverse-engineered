.class public Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvokeResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final isPending:Z

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ZLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->isPending:Z

    iput-object p2, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->result:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic a(Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->isPending:Z

    return p0
.end method

.method static bridge synthetic b(Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->result:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->result:Ljava/lang/Object;

    return-void
.end method

.method public static decide(Ljava/lang/Object;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;
    .locals 2

    new-instance v0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;-><init>(ZLjava/lang/Object;)V

    return-object v0
.end method

.method public static pending()Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;
    .locals 3

    new-instance v0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;-><init>(ZLjava/lang/Object;)V

    return-object v0
.end method

.method public static proceed()Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
