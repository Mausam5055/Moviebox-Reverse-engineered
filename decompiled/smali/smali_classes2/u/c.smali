.class final Lu/c;
.super Lu/b;

# interfaces
.implements Ljava/util/Map$Entry;
.implements Lkotlin/jvm/internal/markers/KMutableMap$Entry;


# instance fields
.field private final c:Lu/i;

.field private d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lu/i;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lu/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lu/c;->c:Lu/i;

    iput-object p3, p0, Lu/c;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lu/c;->d:Ljava/lang/Object;

    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lu/c;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lu/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1}, Lu/c;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lu/c;->c:Lu/i;

    invoke-virtual {p0}, Lu/b;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lu/i;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
