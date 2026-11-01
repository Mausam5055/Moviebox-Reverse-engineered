.class public final synthetic Lcom/cloud/tmc/miniapp/defaultimpl/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;


# direct methods
.method public synthetic constructor <init>(ILcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/i;->a:I

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/i;->b:Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/i;->a:I

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/i;->b:Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o(ILcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;)V

    return-void
.end method
