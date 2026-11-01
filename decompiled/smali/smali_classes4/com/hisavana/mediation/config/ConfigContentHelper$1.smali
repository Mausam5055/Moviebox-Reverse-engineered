.class Lcom/hisavana/mediation/config/ConfigContentHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/mediation/config/ConfigContentHelper;->e(Ljava/lang/String;)Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisavana/mediation/config/ConfigContentHelper;


# direct methods
.method public constructor <init>(Lcom/hisavana/mediation/config/ConfigContentHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/mediation/config/ConfigContentHelper$1;->this$0:Lcom/hisavana/mediation/config/ConfigContentHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/config/ConfigContentHelper$1;->this$0:Lcom/hisavana/mediation/config/ConfigContentHelper;

    invoke-virtual {v0}, Lcom/hisavana/mediation/config/ConfigContentHelper;->h()V

    return-void
.end method
