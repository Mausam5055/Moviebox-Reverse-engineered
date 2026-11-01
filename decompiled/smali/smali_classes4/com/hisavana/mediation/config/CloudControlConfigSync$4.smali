.class Lcom/hisavana/mediation/config/CloudControlConfigSync$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisavana/mediation/config/CloudControlConfigSync;
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
    .locals 2

    const v0, 0x11171

    const-string v1, "The cloud control reaches 15s timeout"

    invoke-static {v0, v1}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->c(ILjava/lang/String;)V

    return-void
.end method
