.class public Lrf/b;
.super Lrf/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lrf/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/File;)I
    .locals 0

    invoke-static {p1, p2, p3}, Lkf/a;->a(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/File;)I

    move-result p1

    return p1
.end method
