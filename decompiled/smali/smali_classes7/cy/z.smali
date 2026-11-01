.class public final synthetic Lcy/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcy/b0;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lcy/b0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcy/z;->a:Landroid/view/View;

    iput-object p2, p0, Lcy/z;->b:Lcy/b0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcy/z;->a:Landroid/view/View;

    iget-object v1, p0, Lcy/z;->b:Lcy/b0;

    invoke-static {v0, v1}, Lcy/b0;->D(Landroid/view/View;Lcy/b0;)V

    return-void
.end method
