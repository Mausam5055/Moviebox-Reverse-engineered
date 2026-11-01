.class public final Landroidx/datastore/core/okio/OkioStorage;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/datastore/core/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/core/okio/OkioStorage$a;
    }
.end annotation


# static fields
.field public static final f:Landroidx/datastore/core/okio/OkioStorage$a;

.field private static final g:Ljava/util/Set;

.field private static final h:Landroidx/datastore/core/okio/d;


# instance fields
.field private final a:Lokio/FileSystem;

.field private final b:Landroidx/datastore/core/okio/b;

.field private final c:Lkotlin/jvm/functions/Function2;

.field private final d:Lkotlin/jvm/functions/Function0;

.field private final e:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/datastore/core/okio/OkioStorage$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/datastore/core/okio/OkioStorage$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/datastore/core/okio/OkioStorage;->f:Landroidx/datastore/core/okio/OkioStorage$a;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Landroidx/datastore/core/okio/OkioStorage;->g:Ljava/util/Set;

    new-instance v0, Landroidx/datastore/core/okio/d;

    invoke-direct {v0}, Landroidx/datastore/core/okio/d;-><init>()V

    sput-object v0, Landroidx/datastore/core/okio/OkioStorage;->h:Landroidx/datastore/core/okio/d;

    return-void
.end method

.method public constructor <init>(Lokio/FileSystem;Landroidx/datastore/core/okio/b;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "fileSystem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coordinatorProducer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "producePath"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/core/okio/OkioStorage;->a:Lokio/FileSystem;

    iput-object p2, p0, Landroidx/datastore/core/okio/OkioStorage;->b:Landroidx/datastore/core/okio/b;

    iput-object p3, p0, Landroidx/datastore/core/okio/OkioStorage;->c:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Landroidx/datastore/core/okio/OkioStorage;->d:Lkotlin/jvm/functions/Function0;

    new-instance p1, Landroidx/datastore/core/okio/OkioStorage$canonicalPath$2;

    invoke-direct {p1, p0}, Landroidx/datastore/core/okio/OkioStorage$canonicalPath$2;-><init>(Landroidx/datastore/core/okio/OkioStorage;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/core/okio/OkioStorage;->e:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Lokio/FileSystem;Landroidx/datastore/core/okio/b;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    sget-object p3, Landroidx/datastore/core/okio/OkioStorage$1;->INSTANCE:Landroidx/datastore/core/okio/OkioStorage$1;

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/datastore/core/okio/OkioStorage;-><init>(Lokio/FileSystem;Landroidx/datastore/core/okio/b;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic b()Ljava/util/Set;
    .locals 1

    sget-object v0, Landroidx/datastore/core/okio/OkioStorage;->g:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic c()Landroidx/datastore/core/okio/d;
    .locals 1

    sget-object v0, Landroidx/datastore/core/okio/OkioStorage;->h:Landroidx/datastore/core/okio/d;

    return-object v0
.end method

.method public static final synthetic d(Landroidx/datastore/core/okio/OkioStorage;)Lokio/Path;
    .locals 0

    invoke-direct {p0}, Landroidx/datastore/core/okio/OkioStorage;->f()Lokio/Path;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Landroidx/datastore/core/okio/OkioStorage;)Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Landroidx/datastore/core/okio/OkioStorage;->d:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method private final f()Lokio/Path;
    .locals 1

    iget-object v0, p0, Landroidx/datastore/core/okio/OkioStorage;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokio/Path;

    return-object v0
.end method


# virtual methods
.method public a()Landroidx/datastore/core/t;
    .locals 10

    invoke-direct {p0}, Landroidx/datastore/core/okio/OkioStorage;->f()Lokio/Path;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Path;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroidx/datastore/core/okio/OkioStorage;->h:Landroidx/datastore/core/okio/d;

    monitor-enter v1

    :try_start_0
    sget-object v2, Landroidx/datastore/core/okio/OkioStorage;->g:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    new-instance v0, Landroidx/datastore/core/okio/OkioStorageConnection;

    iget-object v5, p0, Landroidx/datastore/core/okio/OkioStorage;->a:Lokio/FileSystem;

    invoke-direct {p0}, Landroidx/datastore/core/okio/OkioStorage;->f()Lokio/Path;

    move-result-object v6

    iget-object v7, p0, Landroidx/datastore/core/okio/OkioStorage;->b:Landroidx/datastore/core/okio/b;

    iget-object v1, p0, Landroidx/datastore/core/okio/OkioStorage;->c:Lkotlin/jvm/functions/Function2;

    invoke-direct {p0}, Landroidx/datastore/core/okio/OkioStorage;->f()Lokio/Path;

    move-result-object v2

    iget-object v3, p0, Landroidx/datastore/core/okio/OkioStorage;->a:Lokio/FileSystem;

    invoke-interface {v1, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/datastore/core/k;

    new-instance v9, Landroidx/datastore/core/okio/OkioStorage$createConnection$2;

    invoke-direct {v9, p0}, Landroidx/datastore/core/okio/OkioStorage$createConnection$2;-><init>(Landroidx/datastore/core/okio/OkioStorage;)V

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Landroidx/datastore/core/okio/OkioStorageConnection;-><init>(Lokio/FileSystem;Lokio/Path;Landroidx/datastore/core/okio/b;Landroidx/datastore/core/k;Lkotlin/jvm/functions/Function0;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There are multiple DataStores active for the same file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". You should either maintain your DataStore as a singleton or confirm that there is no two DataStore\'s active on the same file (by confirming that the scope is cancelled)."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v1

    throw v0
.end method
