.class public final Landroidx/emoji2/text/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/n$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/emoji2/text/flatbuffer/c;

.field private final b:[C

.field private final c:Landroidx/emoji2/text/n$a;

.field private final d:Landroid/graphics/Typeface;


# direct methods
.method private constructor <init>(Landroid/graphics/Typeface;Landroidx/emoji2/text/flatbuffer/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/n;->d:Landroid/graphics/Typeface;

    iput-object p2, p0, Landroidx/emoji2/text/n;->a:Landroidx/emoji2/text/flatbuffer/c;

    new-instance p1, Landroidx/emoji2/text/n$a;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Landroidx/emoji2/text/n$a;-><init>(I)V

    iput-object p1, p0, Landroidx/emoji2/text/n;->c:Landroidx/emoji2/text/n$a;

    invoke-virtual {p2}, Landroidx/emoji2/text/flatbuffer/c;->l()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [C

    iput-object p1, p0, Landroidx/emoji2/text/n;->b:[C

    invoke-direct {p0, p2}, Landroidx/emoji2/text/n;->a(Landroidx/emoji2/text/flatbuffer/c;)V

    return-void
.end method

.method private a(Landroidx/emoji2/text/flatbuffer/c;)V
    .locals 5

    invoke-virtual {p1}, Landroidx/emoji2/text/flatbuffer/c;->l()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    new-instance v1, Landroidx/emoji2/text/p;

    invoke-direct {v1, p0, v0}, Landroidx/emoji2/text/p;-><init>(Landroidx/emoji2/text/n;I)V

    invoke-virtual {v1}, Landroidx/emoji2/text/p;->f()I

    move-result v2

    iget-object v3, p0, Landroidx/emoji2/text/n;->b:[C

    mul-int/lit8 v4, v0, 0x2

    invoke-static {v2, v3, v4}, Ljava/lang/Character;->toChars(I[CI)I

    invoke-virtual {p0, v1}, Landroidx/emoji2/text/n;->h(Landroidx/emoji2/text/p;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b(Landroid/graphics/Typeface;Ljava/nio/ByteBuffer;)Landroidx/emoji2/text/n;
    .locals 1

    :try_start_0
    const-string v0, "EmojiCompat.MetadataRepo.create"

    invoke-static {v0}, Landroidx/core/os/s;->a(Ljava/lang/String;)V

    new-instance v0, Landroidx/emoji2/text/n;

    invoke-static {p1}, Landroidx/emoji2/text/m;->b(Ljava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/c;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroidx/emoji2/text/n;-><init>(Landroid/graphics/Typeface;Landroidx/emoji2/text/flatbuffer/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroidx/core/os/s;->b()V

    return-object v0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroidx/core/os/s;->b()V

    throw p0
.end method


# virtual methods
.method public c()[C
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/text/n;->b:[C

    return-object v0
.end method

.method public d()Landroidx/emoji2/text/flatbuffer/c;
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/text/n;->a:Landroidx/emoji2/text/flatbuffer/c;

    return-object v0
.end method

.method e()I
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/text/n;->a:Landroidx/emoji2/text/flatbuffer/c;

    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/c;->m()I

    move-result v0

    return v0
.end method

.method f()Landroidx/emoji2/text/n$a;
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/text/n;->c:Landroidx/emoji2/text/n$a;

    return-object v0
.end method

.method g()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/text/n;->d:Landroid/graphics/Typeface;

    return-object v0
.end method

.method h(Landroidx/emoji2/text/p;)V
    .locals 4

    const-string v0, "emoji metadata cannot be null"

    invoke-static {p1, v0}, Landroidx/core/util/i;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroidx/emoji2/text/p;->c()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "invalid metadata codepoint length"

    invoke-static {v0, v3}, Landroidx/core/util/i;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Landroidx/emoji2/text/n;->c:Landroidx/emoji2/text/n$a;

    invoke-virtual {p1}, Landroidx/emoji2/text/p;->c()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, p1, v1, v3}, Landroidx/emoji2/text/n$a;->c(Landroidx/emoji2/text/p;II)V

    return-void
.end method
