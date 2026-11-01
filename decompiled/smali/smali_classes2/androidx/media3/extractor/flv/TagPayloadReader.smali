.class abstract Landroidx/media3/extractor/flv/TagPayloadReader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/flv/TagPayloadReader$UnsupportedFormatException;
    }
.end annotation


# instance fields
.field protected final a:Ll2/s0;


# direct methods
.method protected constructor <init>(Ll2/s0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/flv/TagPayloadReader;->a:Ll2/s0;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/common/util/j0;J)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/flv/TagPayloadReader;->b(Landroidx/media3/common/util/j0;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/extractor/flv/TagPayloadReader;->c(Landroidx/media3/common/util/j0;J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected abstract b(Landroidx/media3/common/util/j0;)Z
.end method

.method protected abstract c(Landroidx/media3/common/util/j0;J)Z
.end method
