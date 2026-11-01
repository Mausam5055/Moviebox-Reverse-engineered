.class public final Lu/v;
.super Lu/u;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lu/u;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lu/v;->p()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/util/Map$Entry;
    .locals 4

    invoke-virtual {p0}, Lu/u;->h()Z

    move-result v0

    invoke-static {v0}, Lw/a;->a(Z)V

    invoke-virtual {p0}, Lu/u;->f()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lu/u;->o(I)V

    new-instance v0, Lu/b;

    invoke-virtual {p0}, Lu/u;->e()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lu/u;->f()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    aget-object v1, v1, v2

    invoke-virtual {p0}, Lu/u;->e()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lu/u;->f()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Lu/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
