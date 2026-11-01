.class Lcom/hisavana/mediation/config/ConfigContentHelper$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/mediation/config/ConfigContentHelper;->j(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisavana/mediation/config/ConfigContentHelper;

.field final synthetic val$codeSeat:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;


# direct methods
.method public constructor <init>(Lcom/hisavana/mediation/config/ConfigContentHelper;Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hisavana/mediation/config/ConfigContentHelper$2;->this$0:Lcom/hisavana/mediation/config/ConfigContentHelper;

    iput-object p2, p0, Lcom/hisavana/mediation/config/ConfigContentHelper$2;->val$codeSeat:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/hisavana/mediation/config/ConfigContentHelper$2;->this$0:Lcom/hisavana/mediation/config/ConfigContentHelper;

    invoke-static {v0}, Lcom/hisavana/mediation/config/ConfigContentHelper;->a(Lcom/hisavana/mediation/config/ConfigContentHelper;)Lbe/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/mediation/config/ConfigContentHelper$2;->this$0:Lcom/hisavana/mediation/config/ConfigContentHelper;

    invoke-static {v0}, Lcom/hisavana/mediation/config/ConfigContentHelper;->a(Lcom/hisavana/mediation/config/ConfigContentHelper;)Lbe/j;

    move-result-object v0

    iget-object v1, p0, Lcom/hisavana/mediation/config/ConfigContentHelper$2;->val$codeSeat:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-interface {v0, v1}, Lbe/j;->a(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)V

    :cond_0
    return-void
.end method
