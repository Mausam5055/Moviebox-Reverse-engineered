.class public final synthetic Lgw/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lgw/b;


# direct methods
.method public synthetic constructor <init>(Lgw/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgw/a;->a:Lgw/b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lgw/a;->a:Lgw/b;

    invoke-static {v0, p1}, Lgw/b;->A(Lgw/b;Landroid/view/View;)V

    return-void
.end method
