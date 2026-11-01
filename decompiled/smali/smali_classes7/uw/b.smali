.class public final synthetic Luw/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Luw/c;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Luw/c;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luw/b;->a:Luw/c;

    iput-boolean p2, p0, Luw/b;->b:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Luw/b;->a:Luw/c;

    iget-boolean v1, p0, Luw/b;->b:Z

    invoke-static {v0, v1, p1}, Luw/c;->b(Luw/c;ZLandroid/view/View;)V

    return-void
.end method
