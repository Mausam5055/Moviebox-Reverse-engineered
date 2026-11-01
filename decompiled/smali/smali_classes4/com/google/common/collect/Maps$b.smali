.class Lcom/google/common/collect/Maps$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps;->a(Lcom/google/common/collect/Maps$j;)Lcom/google/common/base/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/Maps$j;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$j;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/Maps$b;->a:Lcom/google/common/collect/Maps$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/Maps$b;->a:Lcom/google/common/collect/Maps$j;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->z(Lcom/google/common/collect/Maps$j;Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Maps$b;->a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method
