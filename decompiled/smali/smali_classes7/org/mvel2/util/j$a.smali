.class Lorg/mvel2/util/j$a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/mvel2/util/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mvel2/util/j;->b()Lorg/mvel2/util/j$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mvel2/util/j;


# direct methods
.method constructor <init>(Lorg/mvel2/util/j;)V
    .locals 0

    iput-object p1, p0, Lorg/mvel2/util/j$a;->a:Lorg/mvel2/util/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 3

    iget-object v0, p0, Lorg/mvel2/util/j$a;->a:Lorg/mvel2/util/j;

    invoke-static {v0}, Lorg/mvel2/util/j;->a(Lorg/mvel2/util/j;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mvel2/util/j$c;

    invoke-virtual {v1, p1}, Lorg/mvel2/util/j$c;->d(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/mvel2/util/j$c;->b()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
