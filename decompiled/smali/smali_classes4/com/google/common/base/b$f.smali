.class final Lcom/google/common/base/b$f;
.super Lcom/google/common/base/b$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# static fields
.field static final b:Lcom/google/common/base/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/base/b$f;

    invoke-direct {v0}, Lcom/google/common/base/b$f;-><init>()V

    sput-object v0, Lcom/google/common/base/b$f;->b:Lcom/google/common/base/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "CharMatcher.none()"

    invoke-direct {p0, v0}, Lcom/google/common/base/b$e;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/CharSequence;I)I
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-static {p2, p1}, Lcom/google/common/base/m;->r(II)I

    const/4 p1, -0x1

    return p1
.end method

.method public g(C)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public h(Ljava/lang/CharSequence;)Z
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
