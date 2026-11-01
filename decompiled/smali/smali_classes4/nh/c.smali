.class public final synthetic Lnh/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lnh/l;

.field public final synthetic b:Landroid/net/Network;

.field public final synthetic c:Landroid/net/NetworkCapabilities;


# direct methods
.method public synthetic constructor <init>(Lnh/l;Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnh/c;->a:Lnh/l;

    iput-object p2, p0, Lnh/c;->b:Landroid/net/Network;

    iput-object p3, p0, Lnh/c;->c:Landroid/net/NetworkCapabilities;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lnh/c;->a:Lnh/l;

    iget-object v1, p0, Lnh/c;->b:Landroid/net/Network;

    iget-object v2, p0, Lnh/c;->c:Landroid/net/NetworkCapabilities;

    invoke-static {v0, v1, v2}, Lnh/l;->j(Lnh/l;Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    return-void
.end method
