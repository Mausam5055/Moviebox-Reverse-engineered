.class public abstract Ld10/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Lorg/jsoup/Connection;
    .locals 0

    invoke-static {p0}, Lorg/jsoup/helper/b;->d(Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0}, Lorg/jsoup/parser/e;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/e;)Lorg/jsoup/nodes/Document;
    .locals 0

    invoke-virtual {p2, p0, p1}, Lorg/jsoup/parser/e;->f(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method
