.class Lxf/i$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxf/i;->h()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lxf/i;


# direct methods
.method constructor <init>(Lxf/i;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lxf/i$a;->b:Lxf/i;

    iput-object p2, p0, Lxf/i$a;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lxf/h;
    .locals 1

    iget-object v0, p0, Lxf/i$a;->b:Lxf/i;

    invoke-static {v0}, Lxf/i;->b(Lxf/i;)V

    iget-object v0, p0, Lxf/i$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxf/h;

    return-object v0
.end method

.method public hasMoreElements()Z
    .locals 1

    iget-object v0, p0, Lxf/i$a;->b:Lxf/i;

    invoke-static {v0}, Lxf/i;->b(Lxf/i;)V

    iget-object v0, p0, Lxf/i$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lxf/i$a;->a()Lxf/h;

    move-result-object v0

    return-object v0
.end method
