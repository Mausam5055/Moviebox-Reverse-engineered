.class public final synthetic Lcom/cloud/tmc/miniapp/defaultimpl/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:J

.field public final synthetic c:Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;JLcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/g;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/g;->b:J

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/defaultimpl/g;->c:Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/g;->a:Ljava/lang/String;

    iget-wide v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/g;->b:J

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/defaultimpl/g;->c:Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;

    invoke-static {v0, v1, v2, v3}, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o(Ljava/lang/String;JLcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;)V

    return-void
.end method
