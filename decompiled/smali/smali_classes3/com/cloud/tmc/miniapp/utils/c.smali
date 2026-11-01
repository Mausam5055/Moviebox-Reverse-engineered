.class public final synthetic Lcom/cloud/tmc/miniapp/utils/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/cloud/tmc/miniapp/prepare/callback/OooO00o;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/miniapp/prepare/callback/OooO00o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/utils/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/utils/c;->c:Lcom/cloud/tmc/miniapp/prepare/callback/OooO00o;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/utils/c;->c:Lcom/cloud/tmc/miniapp/prepare/callback/OooO00o;

    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->c(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/miniapp/prepare/callback/OooO00o;)V

    return-void
.end method
