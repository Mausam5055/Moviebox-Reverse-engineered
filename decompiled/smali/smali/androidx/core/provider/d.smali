.class abstract Landroidx/core/provider/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/provider/d$d;,
        Landroidx/core/provider/d$a;,
        Landroidx/core/provider/d$c;,
        Landroidx/core/provider/d$b;
    }
.end annotation


# static fields
.field private static final a:Landroidx/collection/z;

.field private static final b:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/collection/z;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/collection/z;-><init>(I)V

    sput-object v0, Landroidx/core/provider/d;->a:Landroidx/collection/z;

    new-instance v0, Landroidx/core/provider/b;

    invoke-direct {v0}, Landroidx/core/provider/b;-><init>()V

    sput-object v0, Landroidx/core/provider/d;->b:Ljava/util/Comparator;

    return-void
.end method

.method public static synthetic a([B[B)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/provider/d;->g([B[B)I

    move-result p0

    return p0
.end method

.method private static b([Landroid/content/pm/Signature;)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static c(Ljava/util/List;Ljava/util/List;)Z
    .locals 4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static d(Landroidx/core/provider/e;Landroid/content/res/Resources;)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Landroidx/core/provider/e;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/core/provider/e;->b()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroidx/core/provider/e;->c()I

    move-result p0

    invoke-static {p1, p0}, Ly0/e;->c(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static e(Landroid/content/Context;Ljava/util/List;Landroid/os/CancellationSignal;)Landroidx/core/provider/k$a;
    .locals 6

    const-string v0, "FontProvider.getFontFamilyResult"

    invoke-static {v0}, Lf4/a;->c(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/provider/e;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v4, v3, v5}, Landroidx/core/provider/d;->f(Landroid/content/pm/PackageManager;Landroidx/core/provider/e;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 p0, 0x1

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/core/provider/k$a;->b(I[Landroidx/core/provider/k$b;)Landroidx/core/provider/k$a;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lf4/a;->f()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p0, v3, v4, p2}, Landroidx/core/provider/d;->h(Landroid/content/Context;Landroidx/core/provider/e;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroidx/core/provider/k$b;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1, v0}, Landroidx/core/provider/k$a;->a(ILjava/util/List;)Landroidx/core/provider/k$a;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lf4/a;->f()V

    return-object p0

    :goto_1
    invoke-static {}, Lf4/a;->f()V

    throw p0
.end method

.method static f(Landroid/content/pm/PackageManager;Landroidx/core/provider/e;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;
    .locals 6

    const-string v0, "FontProvider.getProvider"

    invoke-static {v0}, Lf4/a;->c(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1, p2}, Landroidx/core/provider/d;->d(Landroidx/core/provider/e;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object p2

    new-instance v0, Landroidx/core/provider/d$d;

    invoke-virtual {p1}, Landroidx/core/provider/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/core/provider/e;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Landroidx/core/provider/d$d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    sget-object v1, Landroidx/core/provider/d;->a:Landroidx/collection/z;

    invoke-virtual {v1, v0}, Landroidx/collection/z;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-static {}, Lf4/a;->f()V

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroidx/core/provider/e;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/core/provider/e;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object p1, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v1, 0x40

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {p0}, Landroidx/core/provider/d;->b([Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object p0

    sget-object p1, Landroidx/core/provider/d;->b:Ljava/util/Comparator;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, Landroidx/core/provider/d;->b:Ljava/util/Comparator;

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {p0, p1}, Landroidx/core/provider/d;->c(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p0, Landroidx/core/provider/d;->a:Landroidx/collection/z;

    invoke-virtual {p0, v0, v3}, Landroidx/collection/z;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lf4/a;->f()V

    return-object v3

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lf4/a;->f()V

    const/4 p0, 0x0

    return-object p0

    :cond_3
    :try_start_2
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Found content provider "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", but package was not "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/core/provider/e;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No package found for authority: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-static {}, Lf4/a;->f()V

    throw p0
.end method

.method private static synthetic g([B[B)I
    .locals 4

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    array-length p0, p0

    array-length p1, p1

    sub-int/2addr p0, p1

    return p0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_1

    sub-int/2addr v2, v3

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method static h(Landroid/content/Context;Landroidx/core/provider/e;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroidx/core/provider/k$b;
    .locals 16

    move-object/from16 v0, p2

    const-string v1, "content"

    const-string v2, "FontProvider.query"

    invoke-static {v2}, Lf4/a;->c(Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v3, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v4, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-static {v1, v3}, Landroidx/core/provider/c;->a(Landroid/content/Context;Landroid/net/Uri;)Landroidx/core/provider/d$a;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v11, 0x0

    :try_start_1
    const-string v4, "_id"

    const-string v5, "file_id"

    const-string v6, "font_ttc_index"

    const-string v7, "font_variation_settings"

    const-string v8, "font_weight"

    const-string v9, "font_italic"

    const-string v10, "result_code"

    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v6

    const-string v4, "ContentQueryWrapper.query"

    invoke-static {v4}, Lf4/a;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v7, "query = ?"

    invoke-virtual/range {p1 .. p1}, Landroidx/core/provider/e;->g()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v4, v1

    move-object v5, v3

    move-object/from16 v10, p3

    invoke-interface/range {v4 .. v10}, Landroidx/core/provider/d$a;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {}, Lf4/a;->f()V

    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_6

    const-string v2, "result_code"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "_id"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "file_id"

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "font_ttc_index"

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "font_weight"

    invoke-interface {v11, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "font_italic"

    invoke-interface {v11, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v12, -0x1

    if-eq v2, v12, :cond_0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_0
    const/4 v13, 0x0

    :goto_1
    if-eq v8, v12, :cond_1

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    goto :goto_2

    :cond_1
    const/4 v14, 0x0

    :goto_2
    if-ne v7, v12, :cond_2

    move-object/from16 p1, v5

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto :goto_3

    :cond_2
    move-object/from16 p1, v5

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    :goto_3
    if-eq v9, v12, :cond_3

    invoke-interface {v11, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    goto :goto_4

    :cond_3
    const/16 v5, 0x190

    :goto_4
    if-eq v10, v12, :cond_4

    invoke-interface {v11, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v15, 0x1

    if-ne v12, v15, :cond_4

    goto :goto_5

    :cond_4
    const/4 v15, 0x0

    :goto_5
    invoke-static {v4, v14, v5, v15, v13}, Landroidx/core/provider/k$b;->a(Landroid/net/Uri;IIZI)Landroidx/core/provider/k$b;

    move-result-object v4

    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_5
    move-object v2, v5

    :cond_6
    if-eqz v11, :cond_7

    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_8

    :cond_7
    :goto_6
    invoke-interface {v1}, Landroidx/core/provider/d$a;->close()V

    const/4 v0, 0x0

    new-array v0, v0, [Landroidx/core/provider/k$b;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/core/provider/k$b;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lf4/a;->f()V

    return-object v0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-static {}, Lf4/a;->f()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_7
    if-eqz v11, :cond_8

    :try_start_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_8
    invoke-interface {v1}, Landroidx/core/provider/d$a;->close()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_8
    invoke-static {}, Lf4/a;->f()V

    throw v0
.end method
