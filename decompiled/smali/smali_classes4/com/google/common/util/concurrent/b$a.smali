.class Lcom/google/common/util/concurrent/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/util/concurrent/ListenerCallQueue$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/util/concurrent/x;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/x;->b()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/common/util/concurrent/x;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/b$a;->a(Lcom/google/common/util/concurrent/x;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "starting()"

    return-object v0
.end method
