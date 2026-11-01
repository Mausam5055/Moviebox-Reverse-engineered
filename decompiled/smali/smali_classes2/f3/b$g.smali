.class final Lf3/b$g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lf3/b$g;->a:Z

    iput-boolean p2, p0, Lf3/b$g;->b:Z

    iput-boolean p3, p0, Lf3/b$g;->c:Z

    return-void
.end method

.method static synthetic a(Lf3/b$g;)Z
    .locals 0

    iget-boolean p0, p0, Lf3/b$g;->a:Z

    return p0
.end method

.method static synthetic b(Lf3/b$g;)Z
    .locals 0

    iget-boolean p0, p0, Lf3/b$g;->b:Z

    return p0
.end method

.method static synthetic c(Lf3/b$g;)Z
    .locals 0

    iget-boolean p0, p0, Lf3/b$g;->c:Z

    return p0
.end method
