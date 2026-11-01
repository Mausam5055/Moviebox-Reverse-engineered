.class public final Lcom/cloud/tmc/miniapp/dialog/OooO00o$OooO0O0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/dialog/OooO00o;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO00o;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/dialog/OooO00o;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO00o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO00o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V
    .locals 0

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO00o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO00o;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooO00o:Lcom/cloud/tmc/integration/callback/LocalAuthPermissionCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/integration/callback/LocalAuthPermissionCallback;->onDenied()V

    :cond_0
    return-void
.end method
