.class public final Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->l(Landroid/content/Context;Landroid/content/res/Configuration;Landroidx/compose/runtime/i;I)Li0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/res/Configuration;

.field final synthetic b:Li0/d;


# direct methods
.method constructor <init>(Landroid/content/res/Configuration;Li0/d;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$a;->a:Landroid/content/res/Configuration;

    iput-object p2, p0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$a;->b:Li0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$a;->a:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$a;->b:Li0/d;

    invoke-virtual {v1, v0}, Li0/d;->c(I)V

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$a;->a:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$a;->b:Li0/d;

    invoke-virtual {v0}, Li0/d;->a()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$a;->b:Li0/d;

    invoke-virtual {p1}, Li0/d;->a()V

    return-void
.end method
