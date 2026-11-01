.class public final synthetic Landroidx/browser/customtabs/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/browser/customtabs/l;

.field public final synthetic b:I

.field public final synthetic c:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroidx/browser/customtabs/l;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/browser/customtabs/h;->a:Landroidx/browser/customtabs/l;

    iput p2, p0, Landroidx/browser/customtabs/h;->b:I

    iput-object p3, p0, Landroidx/browser/customtabs/h;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/browser/customtabs/h;->a:Landroidx/browser/customtabs/l;

    iget v1, p0, Landroidx/browser/customtabs/h;->b:I

    iget-object v2, p0, Landroidx/browser/customtabs/h;->c:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Landroidx/browser/customtabs/j$a;->b1(Landroidx/browser/customtabs/l;ILandroid/os/Bundle;)V

    return-void
.end method
