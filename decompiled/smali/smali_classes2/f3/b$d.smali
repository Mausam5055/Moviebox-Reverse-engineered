.class final Lf3/b$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final a:Lf3/b$g;


# direct methods
.method public constructor <init>(Lf3/b$g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf3/b$d;->a:Lf3/b$g;

    return-void
.end method

.method static synthetic a(Lf3/b$d;)Lf3/b$g;
    .locals 0

    iget-object p0, p0, Lf3/b$d;->a:Lf3/b$g;

    return-object p0
.end method
