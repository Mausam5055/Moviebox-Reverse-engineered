.class public final Lu/w;
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
.method public next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lu/u;->h()Z

    move-result v0

    invoke-static {v0}, Lw/a;->a(Z)V

    invoke-virtual {p0}, Lu/u;->f()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lu/u;->o(I)V

    invoke-virtual {p0}, Lu/u;->e()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lu/u;->f()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    aget-object v0, v0, v1

    return-object v0
.end method
