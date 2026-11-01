.class public final Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/baselib/report/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackgroundStatusChange(Z)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;->a:Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver$b;

    invoke-static {p1}, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver$b;->a(Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver$b;)V

    :cond_0
    return-void
.end method
