.class public final synthetic Lcf/l0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcf/o0;


# direct methods
.method public synthetic constructor <init>(Lcf/o0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcf/l0;->a:Lcf/o0;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcf/l0;->a:Lcf/o0;

    invoke-static {v0, p1}, Lcf/o0;->e(Lcf/o0;Landroid/content/DialogInterface;)V

    return-void
.end method
