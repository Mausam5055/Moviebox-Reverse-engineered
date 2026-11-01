.class public Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$EjP;,
        Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;,
        Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$c;,
        Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$b;

.field public final b:Ljava/util/List;

.field public final c:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$b;Ljava/util/List;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$b;

    iput-object p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;->c:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;
    .locals 4

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Lf6/a;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_0

    invoke-static {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$b;->a(Ljava/lang/String;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$b;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$c;->a(Ljava/lang/String;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$c;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    new-instance v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

    invoke-static {v1, p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;->a(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$b;Ljava/util/List;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$b;Ljava/util/List;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;)V

    return-object v0

    :cond_2
    new-instance p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$EjP;

    const-string v0, "request line is null"

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$EjP;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request{requestLine="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;->c:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
