.class public final synthetic Lsr/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lsr/r;


# direct methods
.method public synthetic constructor <init>(Lsr/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsr/n;->a:Lsr/r;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lsr/n;->a:Lsr/r;

    invoke-static {v0, p1}, Lsr/r;->e(Lsr/r;Landroid/view/View;)V

    return-void
.end method
