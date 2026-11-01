.class public final Lo0/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lo0/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IIII)J
    .locals 2

    const v0, 0x3fffe

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    const v1, 0x7fffffff

    if-ne p4, v1, :cond_0

    move p4, v1

    goto :goto_0

    :cond_0
    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result p4

    :goto_0
    if-ne p4, v1, :cond_1

    move v0, p3

    goto :goto_1

    :cond_1
    move v0, p4

    :goto_1
    invoke-static {v0}, Lo0/c;->c(I)I

    move-result v0

    if-ne p2, v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_2
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v1, p3, p4}, Lo0/c;->a(IIII)J

    move-result-wide p1

    return-wide p1
.end method

.method public final b(IIII)J
    .locals 2

    const v0, 0x3fffe

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const v1, 0x7fffffff

    if-ne p2, v1, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_0
    if-ne p2, v1, :cond_1

    move v0, p1

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    invoke-static {v0}, Lo0/c;->c(I)I

    move-result v0

    if-ne p4, v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_2
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-static {p1, p2, p3, v1}, Lo0/c;->a(IIII)J

    move-result-wide p1

    return-wide p1
.end method

.method public final c(II)J
    .locals 2

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "width("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") and height("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") must be >= 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo0/o;->a(Ljava/lang/String;)V

    :cond_1
    invoke-static {p1, p1, p2, p2}, Lo0/c;->j(IIII)J

    move-result-wide p1

    return-wide p1
.end method
