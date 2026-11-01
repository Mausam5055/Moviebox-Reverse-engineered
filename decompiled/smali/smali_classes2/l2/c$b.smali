.class final Ll2/c$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:Z

.field public e:I

.field public f:I


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ll2/c$b;->a:Z

    const/4 v1, -0x1

    iput v1, p0, Ll2/c$b;->b:I

    iput v1, p0, Ll2/c$b;->c:I

    iput-boolean v0, p0, Ll2/c$b;->d:Z

    const/4 v0, 0x2

    iput v0, p0, Ll2/c$b;->e:I

    const/4 v0, 0x0

    iput v0, p0, Ll2/c$b;->f:I

    return-void
.end method

.method synthetic constructor <init>(Ll2/c$a;)V
    .locals 0

    invoke-direct {p0}, Ll2/c$b;-><init>()V

    return-void
.end method
