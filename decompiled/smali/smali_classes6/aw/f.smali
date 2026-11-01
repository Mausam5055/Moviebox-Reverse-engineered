.class public final synthetic Law/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Law/i;


# direct methods
.method public synthetic constructor <init>(Law/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Law/f;->a:Law/i;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Law/f;->a:Law/i;

    invoke-static {v0, p1}, Law/i;->f(Law/i;Landroid/view/View;)V

    return-void
.end method
