.class Lmb/q$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmb/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Lmb/b0;

.field private final b:Z


# direct methods
.method private constructor <init>(Lmb/b0;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmb/q$c;->a:Lmb/b0;

    iput-boolean p2, p0, Lmb/q$c;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lmb/b0;ZLmb/q$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmb/q$c;-><init>(Lmb/b0;Z)V

    return-void
.end method

.method static synthetic a(Lmb/q$c;)Z
    .locals 0

    iget-boolean p0, p0, Lmb/q$c;->b:Z

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lmb/q$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lmb/q$c;

    iget-object v0, p1, Lmb/q$c;->a:Lmb/b0;

    iget-object v2, p0, Lmb/q$c;->a:Lmb/b0;

    invoke-virtual {v0, v2}, Lmb/b0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lmb/q$c;->b:Z

    iget-boolean v0, p0, Lmb/q$c;->b:Z

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lmb/q$c;->a:Lmb/b0;

    invoke-virtual {v0}, Lmb/b0;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-boolean v1, p0, Lmb/q$c;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
