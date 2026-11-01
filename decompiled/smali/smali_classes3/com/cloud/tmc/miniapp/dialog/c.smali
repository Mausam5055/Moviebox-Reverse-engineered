.class public final synthetic Lcom/cloud/tmc/miniapp/dialog/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

.field public final synthetic b:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0OO;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0OO;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/c;->a:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/c;->b:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0OO;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/c;->a:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/c;->b:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0OO;

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0OO;->OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0OO;)V

    return-void
.end method
