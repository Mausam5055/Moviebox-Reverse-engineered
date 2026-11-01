.class public Lyc/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyc/j$b;
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method private constructor <init>(Lyc/j$b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lyc/j$b;->a(Lyc/j$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lyc/j;->a:J

    invoke-static {p1}, Lyc/j$b;->b(Lyc/j$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lyc/j;->b:J

    return-void
.end method

.method synthetic constructor <init>(Lyc/j$b;Lyc/j$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lyc/j;-><init>(Lyc/j$b;)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lyc/j;->a:J

    return-wide v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lyc/j;->b:J

    return-wide v0
.end method
