.class public final synthetic Lcom/cloud/tmc/miniapp/utils/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/utils/g;->a:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/utils/g;->a:Z

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooOO0;->OooO0O0(Z)V

    return-void
.end method
