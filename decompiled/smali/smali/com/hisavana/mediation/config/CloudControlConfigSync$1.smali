.class Lcom/hisavana/mediation/config/CloudControlConfigSync$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/mediation/config/CloudControlConfigSync;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->a()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->b(I)V

    return-void
.end method
