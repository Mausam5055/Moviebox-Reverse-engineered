.class public final synthetic Lfx/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lfx/h;


# direct methods
.method public synthetic constructor <init>(Lfx/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfx/d;->a:Lfx/h;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lfx/d;->a:Lfx/h;

    invoke-static {v0, p1}, Lfx/h;->j(Lfx/h;Landroid/content/DialogInterface;)V

    return-void
.end method
