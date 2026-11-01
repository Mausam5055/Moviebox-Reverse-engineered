.class public final Lu/y;
.super Lu/u;


# instance fields
.field private final d:Lu/i;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lu/i;)V
    .locals 0

    invoke-direct {p0}, Lu/u;-><init>()V

    iput-object p1, p0, Lu/y;->d:Lu/i;

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lu/y;->p()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/util/Map$Entry;
    .locals 5

    invoke-virtual {p0}, Lu/u;->h()Z

    move-result v0

    invoke-static {v0}, Lw/a;->a(Z)V

    invoke-virtual {p0}, Lu/u;->f()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lu/u;->o(I)V

    new-instance v0, Lu/c;

    iget-object v1, p0, Lu/y;->d:Lu/i;

    invoke-virtual {p0}, Lu/u;->e()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lu/u;->f()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    aget-object v2, v2, v3

    invoke-virtual {p0}, Lu/u;->e()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lu/u;->f()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-direct {v0, v1, v2, v3}, Lu/c;-><init>(Lu/i;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
