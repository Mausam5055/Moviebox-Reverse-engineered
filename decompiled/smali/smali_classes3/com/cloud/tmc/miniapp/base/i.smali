.class public final synthetic Lcom/cloud/tmc/miniapp/base/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/i;->a:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/i;->a:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->b0(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method
