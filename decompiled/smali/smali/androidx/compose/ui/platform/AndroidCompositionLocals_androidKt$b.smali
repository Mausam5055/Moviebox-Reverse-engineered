.class public final Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->m(Landroid/content/Context;Landroidx/compose/runtime/i;I)Li0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Li0/f;


# direct methods
.method constructor <init>(Li0/f;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$b;->a:Li0/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$b;->a:Li0/f;

    invoke-virtual {p1}, Li0/f;->a()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$b;->a:Li0/f;

    invoke-virtual {v0}, Li0/f;->a()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$b;->a:Li0/f;

    invoke-virtual {p1}, Li0/f;->a()V

    return-void
.end method
