.class public final Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOO0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/dialog/OooO0O0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooOO0"
.end annotation


# instance fields
.field public final OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOO0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo;

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOO0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo;

    if-eqz v0, :cond_1

    instance-of v1, p1, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    invoke-interface {v0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
