.class public final synthetic Lcom/cloud/config/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/config/f;->a:Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/config/f;->a:Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;

    invoke-static {v0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig$run$1;->b(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;)V

    return-void
.end method
