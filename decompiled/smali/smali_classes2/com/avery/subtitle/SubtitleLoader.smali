.class public final Lcom/avery/subtitle/SubtitleLoader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avery/subtitle/SubtitleLoader$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/avery/subtitle/SubtitleLoader;

.field private static final b:Ljava/lang/String;

.field private static c:Lkotlinx/coroutines/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/avery/subtitle/SubtitleLoader;

    invoke-direct {v0}, Lcom/avery/subtitle/SubtitleLoader;-><init>()V

    sput-object v0, Lcom/avery/subtitle/SubtitleLoader;->a:Lcom/avery/subtitle/SubtitleLoader;

    const-class v0, Lcom/avery/subtitle/SubtitleLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avery/subtitle/SubtitleLoader;->b:Ljava/lang/String;

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    sput-object v0, Lcom/avery/subtitle/SubtitleLoader;->c:Lkotlinx/coroutines/n0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/avery/subtitle/SubtitleLoader;Ljava/lang/String;Ljava/lang/String;)Lk5/d;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/avery/subtitle/SubtitleLoader;->d(Ljava/lang/String;Ljava/lang/String;)Lk5/d;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/avery/subtitle/SubtitleLoader;Ljava/lang/String;Ljava/lang/String;)Lk5/d;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/avery/subtitle/SubtitleLoader;->f(Ljava/lang/String;Ljava/lang/String;)Lk5/d;

    move-result-object p0

    return-object p0
.end method

.method private final c(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lk5/d;
    .locals 8

    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "/"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->v0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "this as java.lang.String).substring(startIndex)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-string v3, "."

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p2

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->v0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse: name = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ext = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".srt"

    invoke-static {v0, v2, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string v3, "FormatSRT().parseFile(fileName, unicode, `is`)"

    if-eqz v0, :cond_0

    new-instance v0, Lj5/b;

    invoke-direct {v0}, Lj5/b;-><init>()V

    invoke-virtual {v0, p2, p3, p1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lk5/d;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const-string v0, ".ass"

    invoke-static {v0, v2, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, ".ssa"

    invoke-static {v0, v2, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ".stl"

    invoke-static {v0, v2, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string v4, "FormatSTL().parseFile(fileName, unicode, `is`)"

    if-eqz v0, :cond_2

    new-instance v0, Lj5/c;

    invoke-direct {v0}, Lj5/c;-><init>()V

    invoke-virtual {v0, p2, p3, p1}, Lj5/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lk5/d;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_2
    const-string v0, ".ttml"

    invoke-static {v0, v2, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lj5/c;

    invoke-direct {v0}, Lj5/c;-><init>()V

    invoke-virtual {v0, p2, p3, p1}, Lj5/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lk5/d;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_3
    const-string v0, ".sub"

    invoke-static {v0, v2, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lj5/d;

    invoke-direct {v0}, Lj5/d;-><init>()V

    invoke-virtual {v0, p2, p3, p1}, Lj5/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lk5/d;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance v0, Lj5/b;

    invoke-direct {v0}, Lj5/b;-><init>()V

    invoke-virtual {v0, p2, p3, p1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lk5/d;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_5
    :goto_0
    new-instance v0, Lj5/a;

    invoke-direct {v0}, Lj5/a;-><init>()V

    invoke-virtual {v0, p2, p3, p1}, Lj5/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lk5/d;

    move-result-object p1

    const-string p2, "FormatASS().parseFile(fileName, unicode, `is`)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final d(Ljava/lang/String;Ljava/lang/String;)Lk5/d;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseLocal: localSubtitlePath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file.path"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/avery/subtitle/SubtitleLoader;->c(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lk5/d;

    move-result-object p1

    return-object p1
.end method

.method private final e(Ljava/lang/String;Ljava/lang/String;Lcom/avery/subtitle/SubtitleLoader$a;)V
    .locals 6

    sget-object v0, Lcom/avery/subtitle/SubtitleLoader;->c:Lkotlinx/coroutines/n0;

    new-instance v3, Lcom/avery/subtitle/SubtitleLoader$loadFromLocalAsync$1;

    const/4 v1, 0x0

    invoke-direct {v3, p1, p2, p3, v1}, Lcom/avery/subtitle/SubtitleLoader$loadFromLocalAsync$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/avery/subtitle/SubtitleLoader$a;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final f(Ljava/lang/String;Ljava/lang/String;)Lk5/d;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseRemote: remoteSubtitlePath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->openStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object p1

    const-string v1, "url.openStream()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "url.path"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/avery/subtitle/SubtitleLoader;->c(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lk5/d;

    move-result-object p1

    return-object p1
.end method

.method private final g(Ljava/lang/String;Ljava/lang/String;Lcom/avery/subtitle/SubtitleLoader$a;)V
    .locals 6

    sget-object v0, Lcom/avery/subtitle/SubtitleLoader;->c:Lkotlinx/coroutines/n0;

    new-instance v3, Lcom/avery/subtitle/SubtitleLoader$loadFromRemoteAsync$1;

    const/4 v1, 0x0

    invoke-direct {v3, p1, p2, p3, v1}, Lcom/avery/subtitle/SubtitleLoader$loadFromRemoteAsync$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/avery/subtitle/SubtitleLoader$a;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/String;Ljava/lang/String;Lcom/avery/subtitle/SubtitleLoader$a;)V
    .locals 4

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unicode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "http://"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "https://"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/avery/subtitle/SubtitleLoader;->e(Ljava/lang/String;Ljava/lang/String;Lcom/avery/subtitle/SubtitleLoader$a;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/avery/subtitle/SubtitleLoader;->g(Ljava/lang/String;Ljava/lang/String;Lcom/avery/subtitle/SubtitleLoader$a;)V

    :goto_1
    return-void
.end method
