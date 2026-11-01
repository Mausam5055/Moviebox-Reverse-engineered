.class public final synthetic Lj2/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/n;


# instance fields
.field public final synthetic a:Lj2/n;

.field public final synthetic b:Lj2/n$e;


# direct methods
.method public synthetic constructor <init>(Lj2/n;Lj2/n$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj2/m;->a:Lj2/n;

    iput-object p2, p0, Lj2/m;->b:Lj2/n$e;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj2/m;->a:Lj2/n;

    iget-object v1, p0, Lj2/m;->b:Lj2/n$e;

    check-cast p1, Landroidx/media3/common/r;

    invoke-static {v0, v1, p1}, Lj2/n;->t(Lj2/n;Lj2/n$e;Landroidx/media3/common/r;)Z

    move-result p1

    return p1
.end method
