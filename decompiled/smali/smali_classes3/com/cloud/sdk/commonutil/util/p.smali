.class public final synthetic Lcom/cloud/sdk/commonutil/util/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/sdk/commonutil/util/p;->a:Ljava/lang/String;

    iput p2, p0, Lcom/cloud/sdk/commonutil/util/p;->b:I

    return-void
.end method


# virtual methods
.method public final onRun()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/sdk/commonutil/util/p;->a:Ljava/lang/String;

    iget v1, p0, Lcom/cloud/sdk/commonutil/util/p;->b:I

    invoke-static {v0, v1}, Lcom/cloud/sdk/commonutil/util/q;->a(Ljava/lang/String;I)V

    return-void
.end method
