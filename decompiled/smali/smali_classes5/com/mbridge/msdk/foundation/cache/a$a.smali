.class Lcom/mbridge/msdk/foundation/cache/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/cache/a;->a(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/mbridge/msdk/foundation/cache/a$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/cache/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/cache/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/cache/a$a;->a:Lcom/mbridge/msdk/foundation/cache/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/foundation/cache/a$b;Lcom/mbridge/msdk/foundation/cache/a$b;)I
    .locals 2

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/cache/a$b;->a(Lcom/mbridge/msdk/foundation/cache/a$b;)D

    move-result-wide v0

    invoke-static {p2}, Lcom/mbridge/msdk/foundation/cache/a$b;->a(Lcom/mbridge/msdk/foundation/cache/a$b;)D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/mbridge/msdk/foundation/cache/a$b;

    check-cast p2, Lcom/mbridge/msdk/foundation/cache/a$b;

    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/foundation/cache/a$a;->a(Lcom/mbridge/msdk/foundation/cache/a$b;Lcom/mbridge/msdk/foundation/cache/a$b;)I

    move-result p1

    return p1
.end method
