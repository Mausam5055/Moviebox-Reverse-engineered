.class abstract Ltz/g;
.super Ltz/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltz/g$w;,
        Ltz/g$x;,
        Ltz/g$o;,
        Ltz/g$p;,
        Ltz/g$n;,
        Ltz/g$r;,
        Ltz/g$s;,
        Ltz/g$q;,
        Ltz/g$t;,
        Ltz/g$v;,
        Ltz/g$u;,
        Ltz/g$m;,
        Ltz/g$l;,
        Ltz/g$k;,
        Ltz/g$j;,
        Ltz/g$i;,
        Ltz/g$h;,
        Ltz/g$g;,
        Ltz/g$f;,
        Ltz/g$e;,
        Ltz/g$d;,
        Ltz/g$c;,
        Ltz/g$b;,
        Ltz/g$a;,
        Ltz/g$y;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ltz/h;-><init>()V

    return-void
.end method


# virtual methods
.method d(Ltz/a;[I[B)I
    .locals 1

    const/16 v0, 0x20

    invoke-virtual {p0, p1, p2, p3, v0}, Ltz/g;->e(Ltz/a;[I[BB)I

    move-result p1

    return p1
.end method

.method e(Ltz/a;[I[BB)I
    .locals 1

    new-instance v0, Ltz/g$w;

    invoke-direct {v0, p2, p3}, Ltz/g$w;-><init>([I[B)V

    invoke-virtual {v0, p1, p4}, Ltz/g$w;->d(Ltz/a;B)I

    move-result p1

    return p1
.end method

.method f(Ltz/a;[I[BB)I
    .locals 1

    new-instance v0, Ltz/g$x;

    invoke-direct {v0, p2, p3}, Ltz/g$x;-><init>([I[B)V

    invoke-virtual {v0, p1, p4}, Ltz/g$w;->d(Ltz/a;B)I

    move-result p1

    return p1
.end method
