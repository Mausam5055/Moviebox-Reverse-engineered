.class public final Lcom/cloud/tmc/miniapp/dialog/o000OOo$OooO0O0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/dialog/o000OOo;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/dialog/o000OOo;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/dialog/o000OOo;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o000OOo$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/o000OOo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V
    .locals 0

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o000OOo$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/o000OOo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/dialog/o000OOo;->OooO0O0:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
