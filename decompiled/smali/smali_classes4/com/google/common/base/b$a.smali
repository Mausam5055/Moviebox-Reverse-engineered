.class final Lcom/google/common/base/b$a;
.super Lcom/google/common/base/b$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field static final b:Lcom/google/common/base/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/base/b$a;

    invoke-direct {v0}, Lcom/google/common/base/b$a;-><init>()V

    sput-object v0, Lcom/google/common/base/b$a;->b:Lcom/google/common/base/b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const-string v0, "CharMatcher.ascii()"

    invoke-direct {p0, v0}, Lcom/google/common/base/b$e;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public g(C)Z
    .locals 1

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
