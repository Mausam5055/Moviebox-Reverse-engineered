.class public final Lcom/cloud/tmc/miniapp/dialog/o00oO0o$OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/dialog/o00oO0o;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/dialog/o00oO0o;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/dialog/o00oO0o;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/o00oO0o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V
    .locals 3

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/o00oO0o;

    iget-object v0, p1, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO00o:Ljava/lang/String;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO0oo:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MiniDevUserAgreementDialog.onDismiss->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/o00oO0o;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO0oo:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    sget-object p1, Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge;->Companion:Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge$OooO00o;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge;->access$getDauDialogMap$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/o00oO0o;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO0oo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
