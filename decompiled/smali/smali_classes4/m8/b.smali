.class public Lm8/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;I)Ll8/e;
    .locals 1

    invoke-static {}, Lm8/a;->a()Ll8/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Ll8/a;->o(I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Ll8/a;->e(Ljava/lang/String;Ljava/util/Map;)Ll8/e;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;ILjava/lang/String;)Ll8/e;
    .locals 1

    invoke-static {}, Lm8/a;->a()Ll8/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Ll8/a;->o(I)V

    const-string p1, "UTF-8"

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string p2, "application/json"

    invoke-virtual {v0, p0, p2, p1}, Ll8/a;->j(Ljava/lang/String;Ljava/lang/String;[B)Ll8/e;

    move-result-object p0

    return-object p0
.end method
