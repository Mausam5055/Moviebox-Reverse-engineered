.class public final Landroidx/media3/common/a0$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/a0$b$a;
    }
.end annotation


# static fields
.field public static final b:Landroidx/media3/common/a0$b;

.field private static final c:Ljava/lang/String;


# instance fields
.field private final a:Landroidx/media3/common/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/media3/common/a0$b$a;

    invoke-direct {v0}, Landroidx/media3/common/a0$b$a;-><init>()V

    invoke-virtual {v0}, Landroidx/media3/common/a0$b$a;->e()Landroidx/media3/common/a0$b;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/a0$b;->b:Landroidx/media3/common/a0$b;

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/a0$b;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/a0$b;->a:Landroidx/media3/common/p;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/p;Landroidx/media3/common/a0$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/common/a0$b;-><init>(Landroidx/media3/common/p;)V

    return-void
.end method

.method static synthetic a(Landroidx/media3/common/a0$b;)Landroidx/media3/common/p;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/a0$b;->a:Landroidx/media3/common/p;

    return-object p0
.end method


# virtual methods
.method public b(I)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/a0$b;->a:Landroidx/media3/common/p;

    invoke-virtual {v0, p1}, Landroidx/media3/common/p;->a(I)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Landroidx/media3/common/a0$b;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Landroidx/media3/common/a0$b;

    iget-object v0, p0, Landroidx/media3/common/a0$b;->a:Landroidx/media3/common/p;

    iget-object p1, p1, Landroidx/media3/common/a0$b;->a:Landroidx/media3/common/p;

    invoke-virtual {v0, p1}, Landroidx/media3/common/p;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/a0$b;->a:Landroidx/media3/common/p;

    invoke-virtual {v0}, Landroidx/media3/common/p;->hashCode()I

    move-result v0

    return v0
.end method
