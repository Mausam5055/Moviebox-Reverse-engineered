.class public final Landroidx/window/layout/SidecarCompat$d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/window/layout/SidecarCompat;->j(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/window/layout/SidecarCompat;

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroidx/window/layout/SidecarCompat;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Landroidx/window/layout/SidecarCompat$d;->a:Landroidx/window/layout/SidecarCompat;

    iput-object p2, p0, Landroidx/window/layout/SidecarCompat$d;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/window/layout/SidecarCompat$d;->a:Landroidx/window/layout/SidecarCompat;

    invoke-static {p1}, Landroidx/window/layout/SidecarCompat;->d(Landroidx/window/layout/SidecarCompat;)Landroidx/window/layout/n$a;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/window/layout/SidecarCompat$d;->b:Landroid/app/Activity;

    iget-object v1, p0, Landroidx/window/layout/SidecarCompat$d;->a:Landroidx/window/layout/SidecarCompat;

    invoke-virtual {v1, v0}, Landroidx/window/layout/SidecarCompat;->h(Landroid/app/Activity;)Landroidx/window/layout/a0;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/window/layout/n$a;->a(Landroid/app/Activity;Landroidx/window/layout/a0;)V

    :goto_0
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method
