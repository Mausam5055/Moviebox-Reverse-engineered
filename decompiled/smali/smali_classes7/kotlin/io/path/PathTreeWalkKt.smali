.class public final Lkotlin/io/path/PathTreeWalkKt;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u001a\'\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0001\u001a\u00020\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u001a\u0013\u0010\n\u001a\u00020\t*\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Ljava/nio/file/Path;",
        "path",
        "",
        "Ljava/nio/file/LinkOption;",
        "linkOptions",
        "",
        "d",
        "(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/lang/Object;",
        "Lkotlin/io/path/h;",
        "",
        "c",
        "(Lkotlin/io/path/h;)Z",
        "kotlin-stdlib-jdk7"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic a(Lkotlin/io/path/h;)Z
    .locals 0

    invoke-static {p0}, Lkotlin/io/path/PathTreeWalkKt;->c(Lkotlin/io/path/h;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic b(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lkotlin/io/path/PathTreeWalkKt;->d(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final c(Lkotlin/io/path/h;)Z
    .locals 4

    invoke-virtual {p0}, Lkotlin/io/path/h;->c()Lkotlin/io/path/h;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lkotlin/io/path/h;->b()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lkotlin/io/path/h;->b()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lkotlin/io/path/h;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lkotlin/io/path/h;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lkotlin/io/path/h;->d()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {p0}, Lkotlin/io/path/h;->d()Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/io/path/o;->a(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    return v2

    :catch_0
    :cond_1
    invoke-virtual {v0}, Lkotlin/io/path/h;->c()Lkotlin/io/path/h;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static final d(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/nio/file/LinkOption;

    invoke-static {}, Lkotlin/io/path/m;->a()Ljava/lang/Class;

    move-result-object v0

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v0, p1}, Lkotlin/io/path/n;->a(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object p0

    const-string p1, "readAttributes(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/io/path/d;->a(Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
