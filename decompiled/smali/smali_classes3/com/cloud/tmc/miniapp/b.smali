.class public final synthetic Lcom/cloud/tmc/miniapp/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/app/Application;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Application;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/b;->a:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/b;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/ByteAppManager;->c(Landroid/app/Application;)V

    return-void
.end method
