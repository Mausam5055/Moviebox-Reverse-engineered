.class public final synthetic Lcom/cloud/config/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/config/i;->a:Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/config/i;->a:Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;

    invoke-static {v0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader$run$2;->a(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;)V

    return-void
.end method
