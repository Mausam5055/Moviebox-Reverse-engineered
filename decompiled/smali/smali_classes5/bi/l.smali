.class public final Lbi/l;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lbi/l;

.field private static b:[Ljava/lang/String;

.field private static c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbi/l;

    invoke-direct {v0}, Lbi/l;-><init>()V

    sput-object v0, Lbi/l;->a:Lbi/l;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lbi/l;->b:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lbi/l;->c:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "path"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lbi/l;->b:[Ljava/lang/String;

    invoke-static {v0, p0}, Lkotlin/collections/ArraysKt;->O([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "path"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lbi/l;->c:[Ljava/lang/String;

    invoke-static {v0, p0}, Lkotlin/collections/ArraysKt;->O([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
