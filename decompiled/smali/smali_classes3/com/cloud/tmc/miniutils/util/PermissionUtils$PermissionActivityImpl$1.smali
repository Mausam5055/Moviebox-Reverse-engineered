.class Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniutils/util/Utils$Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl;->start(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/cloud/tmc/miniutils/util/Utils$Consumer<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$type:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput p1, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "TYPE"

    iget v1, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl$1;->val$type:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl$1;->accept(Landroid/content/Intent;)V

    return-void
.end method
