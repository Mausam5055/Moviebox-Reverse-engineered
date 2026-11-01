.class public final synthetic Lcy/c0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcy/d0;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lcy/d0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcy/c0;->a:Landroid/view/View;

    iput-object p2, p0, Lcy/c0;->b:Lcy/d0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcy/c0;->a:Landroid/view/View;

    iget-object v1, p0, Lcy/c0;->b:Lcy/d0;

    invoke-static {v0, v1}, Lcy/d0;->D(Landroid/view/View;Lcy/d0;)V

    return-void
.end method
