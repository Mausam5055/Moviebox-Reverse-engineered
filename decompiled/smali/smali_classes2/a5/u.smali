.class public La5/u;
.super Ljava/lang/Object;

# interfaces
.implements La5/z0;
.implements Lz4/b2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La5/u$a;
    }
.end annotation


# static fields
.field public static final a:La5/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La5/u;

    invoke-direct {v0}, La5/u;-><init>()V

    sput-object v0, La5/u;->a:La5/u;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method public c(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const-class p2, La5/u$a;

    invoke-virtual {p1, p2}, Ly4/a;->m0(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La5/u$a;

    invoke-virtual {p1}, La5/u$a;->a()Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public d(La5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 0

    check-cast p2, Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p3

    iget-object p1, p1, La5/o0;->k:La5/j1;

    const/16 p4, 0x7b

    invoke-virtual {p1, p4}, La5/j1;->write(I)V

    const-string p4, "array"

    invoke-virtual {p1, p4}, La5/j1;->w(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, La5/j1;->t([B)V

    const-string p3, "limit"

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result p4

    const/16 p5, 0x2c

    invoke-virtual {p1, p5, p3, p4}, La5/j1;->U(CLjava/lang/String;I)V

    const-string p3, "position"

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result p2

    invoke-virtual {p1, p5, p3, p2}, La5/j1;->U(CLjava/lang/String;I)V

    const/16 p2, 0x7d

    invoke-virtual {p1, p2}, La5/j1;->write(I)V

    return-void
.end method
