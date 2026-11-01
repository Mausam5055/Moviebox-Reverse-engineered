.class public final synthetic Lg2/g;
.super Ljava/lang/Object;

# interfaces
.implements Ll2/x;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/source/i;

.field public final synthetic c:Landroidx/media3/common/r;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/i;Landroidx/media3/common/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg2/g;->b:Landroidx/media3/exoplayer/source/i;

    iput-object p2, p0, Lg2/g;->c:Landroidx/media3/common/r;

    return-void
.end method


# virtual methods
.method public synthetic a(Li3/s$a;)Ll2/x;
    .locals 0

    invoke-static {p0, p1}, Ll2/w;->d(Ll2/x;Li3/s$a;)Ll2/x;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(I)Ll2/x;
    .locals 0

    invoke-static {p0, p1}, Ll2/w;->b(Ll2/x;I)Ll2/x;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Landroid/net/Uri;Ljava/util/Map;)[Ll2/r;
    .locals 0

    invoke-static {p0, p1, p2}, Ll2/w;->a(Ll2/x;Landroid/net/Uri;Ljava/util/Map;)[Ll2/r;

    move-result-object p1

    return-object p1
.end method

.method public final createExtractors()[Ll2/r;
    .locals 2

    iget-object v0, p0, Lg2/g;->b:Landroidx/media3/exoplayer/source/i;

    iget-object v1, p0, Lg2/g;->c:Landroidx/media3/common/r;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/source/i;->g(Landroidx/media3/exoplayer/source/i;Landroidx/media3/common/r;)[Ll2/r;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Z)Ll2/x;
    .locals 0

    invoke-static {p0, p1}, Ll2/w;->c(Ll2/x;Z)Ll2/x;

    move-result-object p1

    return-object p1
.end method
