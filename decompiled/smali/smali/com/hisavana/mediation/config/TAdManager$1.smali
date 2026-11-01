.class Lcom/hisavana/mediation/config/TAdManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/mediation/config/TAdManager;->init(Landroid/content/Context;Lcom/hisavana/mediation/config/TAdManager$AdConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hisavana/mediation/config/TAdManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/config/TAdManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/MitNetUtil;->c(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->setIsNetAvailable(Z)V

    invoke-static {}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->q()V

    return-void
.end method
