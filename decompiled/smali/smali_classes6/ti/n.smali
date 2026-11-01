.class public final Lti/n;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lti/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lti/n;

    invoke-direct {v0}, Lti/n;-><init>()V

    sput-object v0, Lti/n;->a:Lti/n;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lti/n;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
