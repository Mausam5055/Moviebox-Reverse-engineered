.class public final synthetic Lf7/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lf7/d;

.field public final synthetic b:Lf7/e;


# direct methods
.method public synthetic constructor <init>(Lf7/d;Lf7/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf7/c;->a:Lf7/d;

    iput-object p2, p0, Lf7/c;->b:Lf7/e;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lf7/c;->a:Lf7/d;

    iget-object v1, p0, Lf7/c;->b:Lf7/e;

    invoke-static {v0, v1, p1}, Lf7/d;->b(Lf7/d;Lf7/e;Landroid/view/View;)V

    return-void
.end method
