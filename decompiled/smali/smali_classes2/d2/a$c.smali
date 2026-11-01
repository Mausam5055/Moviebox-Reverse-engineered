.class public final Ld2/a$c;
.super Ljava/lang/Object;

# interfaces
.implements Ld2/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final b:Ld2/a$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld2/b;

    invoke-direct {v0}, Ld2/b;-><init>()V

    iput-object v0, p0, Ld2/a$c;->b:Ld2/a$b;

    return-void
.end method

.method public static synthetic c([BI)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0, p1}, Ld2/a$c;->e([BI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic e([BI)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0, p1}, Ld2/a;->t([BI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroidx/media3/common/r;)I
    .locals 1

    iget-object v0, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroidx/media3/common/y;->q(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/common/util/a1;->E0(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    invoke-static {p1}, Landroidx/media3/exoplayer/x3;->a(I)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/media3/exoplayer/x3;->a(I)I

    move-result p1

    :goto_0
    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/media3/exoplayer/x3;->a(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic b()Ld2/c;
    .locals 1

    invoke-virtual {p0}, Ld2/a$c;->d()Ld2/a;

    move-result-object v0

    return-object v0
.end method

.method public d()Ld2/a;
    .locals 3

    new-instance v0, Ld2/a;

    iget-object v1, p0, Ld2/a$c;->b:Ld2/a$b;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ld2/a;-><init>(Ld2/a$b;Ld2/a$a;)V

    return-object v0
.end method
