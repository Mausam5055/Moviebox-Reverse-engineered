.class public final synthetic Lcom/cloud/tmc/miniapp/defaultimpl/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/h;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/h;->b:Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/h;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/h;->b:Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;)V

    return-void
.end method
