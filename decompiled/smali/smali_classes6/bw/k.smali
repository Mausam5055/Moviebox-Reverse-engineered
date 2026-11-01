.class public final synthetic Lbw/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic c:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbw/k;->a:Ljava/lang/String;

    iput p2, p0, Lbw/k;->b:I

    iput-object p3, p0, Lbw/k;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lbw/k;->a:Ljava/lang/String;

    iget v1, p0, Lbw/k;->b:I

    iget-object v2, p0, Lbw/k;->c:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lbw/l;->f(Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method
