.class public final synthetic Lkr/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lkr/c;

.field public final synthetic b:Ljr/a;


# direct methods
.method public synthetic constructor <init>(Lkr/c;Ljr/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkr/b;->a:Lkr/c;

    iput-object p2, p0, Lkr/b;->b:Ljr/a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lkr/b;->a:Lkr/c;

    iget-object v1, p0, Lkr/b;->b:Ljr/a;

    invoke-static {v0, v1, p1}, Lkr/c;->g(Lkr/c;Ljr/a;Landroid/view/View;)V

    return-void
.end method
