.class public Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O$OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->onFinish(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/Oooo0;

    if-eqz v0, :cond_0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/dialog/Oooo0;->OooO00o(I)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/Oooo0;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    :cond_0
    return-void
.end method
